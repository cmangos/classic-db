/*
BLPConverter.cpp - Converts BLP files to TGA and back.
See the Usage() function for info on using this application.

///////////////////////////////////////////////////////////////////////////////

	(C) 2006 Patrick Cyr (damagemeters@yahoo.com)

	This program is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

///////////////////////////////////////////////////////////////////////////////

This program requires quite a few things in order to compile correctly:

- Windows 2000 and up.  I'm unsure about the various libraries but at the very 
  least this file calls win32 functions to handle input wildcards.
- palbmp: A pallete library (C) Charles Bloom.  http://www.cbloom.com/
	I'm opting to comply with section 0 of the Bloom Public License: I'm 
	distributing this program using the GPL.  I've also made some very small 
	changes to it: I commented out the stderr spam.
- libpng: The offical PNG reference library. http://www.libpng.org/
- ATICompress: This is used for DXT conversions.

///////////////////////////////////////////////////////////////////////////////

Versions:
* 4 * 
- Added -e and -n options.
- -g option now works when doing a rgb png -> p8 blp.
- -g option will automatically create an alpha channel for RGB source PNGs.
- Removed palettization spam.
- -m option now supports wildcards, ie. *.blp.

* 3 *
- Removed dependency on DirectX.
- Added -m, -i, and -c options.

* 2 * 
- Fixed bug preventing files from being processed if there was a '.' in their path.
- Now setting device format to current display format, in hopes of fixing an error
that people are reporting when the program tries to call CreateDevice().

* 1 * 
- Initial release


///////////////////////////////////////////////////////////////////////////////

Personal Notes:

*** PNG -> BLP ***
- P8 -> uncompressed, 0 bit alpha
- P8 with transparency -> uncompressed, 8bit alpha  (Note: Don't know how to make PNGs of this type, except for transparency count = 1)
- RGB -> compressed, DXT1
- RGBA	-> compressed, DXT3
	*OR*
		-> P8 with transparency [Use this option to preserve BLP format ]

*** BLP -> PNG ***
- uncompressed, 0 bit alpha -> P8
	Ex. Character Skins.
- uncompressed, 1 bit alpha -> P8 with alpha palette (1 entry)
	Ex. Some clothing (Deckhand's shirt for example)
- uncompressed, 8 bit alpha -> P8 with alpha palette (1 entry) [This is what WowImage does: retains palette, destroys alpha detail.]
	*OR*
							-> RGBA [Destroys palette, retains alpha detail.]
	Ex. Most clothing.  Item\TextureComponents\TorsoUpperTexture\Cloth_Horde_C_01Purple_Chest_TU_U.png for example.

  - compressed, 0 bit alpha -> DXT1
	Ex. Sansam root
- compressed, 1 bit alpha -> DXT1
	Ex. peaceflower
- compressed, 8 bit alpha -> DXT3
	Ex. sungrass


uncomp 1-bit:
- Deckhand's shirt (Cloth_A_03Crewman_Chest_TU_F.blp).  WowImage doesn't give an error when trying to decode this blp
but doesn't create a png, either.
 */

#include "stdafx.h"
#include <stdio.h>
#include <conio.h>

///////////////////////////////////////////////////////////////////////////////
// Windows Stuff

#include <windows.h>

///////////////////////////////////////////////////////////////////////////////
// Includes.

#include "..\\ATI_COMPRESS\\ATI_Compress.h"
#include "png.h"


///////////////////////////////////////////////////////////////////////////////
// Generic stuff.

enum IMGFORMAT
{
	FMT_P8,
	FMT_A8P8,
	FMT_X8R8G8B8,
	FMT_A8R8G8B8,
	FMT_DXT1,
	FMT_DXT3,
};

const char* ATI_ERROR_STRINGS[] = 
{
    "OK",
    "ABORTED",
    "INVALID_SOURCE_TEXTURE",
    "INVALID_DEST_TEXTURE",
    "UNSUPPORTED_SOURCE_FORMAT",
    "UNSUPPORTED_DEST_FORMAT",
    "SIZE_MISMATCH",
    "UNABLE_TO_INIT_CODEC",
    "GENERIC"
};

///////////////////////////////////////////////////////////////////////////////
// Settings.

bool g_bVerbose = true;
float g_fGammaFactor = 1.0f;
bool g_bPauseAtEnd = false;
UCHAR g_byAlphaThreshold = 0x80;
bool g_bSavePaletteWithAlphaToRGBA = false;
bool g_bMultiFileMode = false;
bool g_bInfoMode = false;
bool g_bCreateMipTestImage = false;
bool g_bPauseOnError = false;
bool g_bNoMips = false;
bool g_bDebugPauseOnExit = false;

///////////////////////////////////////////////////////////////////////////////
// BLP Stuff

const char BLPID[4] = {'B', 'L', 'P', '2'};

struct BLPHeader
{
	char id[4];
	unsigned int version;
	unsigned char compression; // 1 = uncompressed
	unsigned char alphaBitDepth;
	unsigned char alphaUnknown; // No idea.  On clothing this has no apparent impact.
	unsigned char mipUnknown;
	unsigned int xResolution;
	unsigned int yResolution;
	unsigned int mipOffsets[16];
	unsigned int mipSizes[16];
};

#define BLP_UNCOMPRESSED	1
#define BLP_COMPRESSED		2

const char* compressionStrings[] =
{
	"[Invalid]",
	"Uncompressed",
	"Compressed",
};

const char* pAlphaStyleNames[] = 
{
	"Fully Opaque",
	"Effectively 1-bit",
	"8-bit",
};

enum AlphaStyle
{
	ALPHA_OPAQUE,
	ALPHA_BINARY,
	ALPHA_NORMAL,
};

// This class is used for LOADING BLP files.
class BLPFile
{
public:
	BLPHeader* pHeader;
	DWORD dwFileBytes;
	UCHAR* pPalette;
	UCHAR* buffer;
	AlphaStyle alphaStyle; // Only applies to 8-bit uncompressed alpha.

public:
	BLPFile()
	{
		pHeader = NULL;
		pPalette = NULL;
		buffer = NULL;
	}

	~BLPFile()
	{
		Unload();
	}

	bool Load(const char* pszFilename, bool bOutputInfo = false)
	{
		Unload();

		FILE* fileInput = ::fopen(pszFilename, "rb");
		if (NULL == fileInput)
		{
			printf("ERROR opening %s\n", pszFilename);
			return false;
		}

		// Load the entire file into a buffer.
		::fseek(fileInput, 0, SEEK_END);
		dwFileBytes = ::ftell(fileInput);
		buffer = new UCHAR[dwFileBytes];
		::fseek(fileInput, 0, SEEK_SET);
		::fread(buffer, dwFileBytes, 1, fileInput);
		::fclose(fileInput);

		pHeader = (BLPHeader*) buffer;
		pPalette = (UCHAR*) &(buffer[sizeof(BLPHeader)]);
		
		// Determine the actual alpha style from the data
		alphaStyle = ALPHA_OPAQUE;

		if (BLP_UNCOMPRESSED == pHeader->compression && 8 == pHeader->alphaBitDepth)
		{
			DWORD dwPixels = pHeader->xResolution * pHeader->yResolution;
			DWORD dwOffset = pHeader->mipOffsets[0] + dwPixels;
			for (UINT ii = 0; ii < dwPixels; ++ii)
			{
				UCHAR alpha = buffer[dwOffset + ii];
				if (alpha < 0xFF)
				{
					if (alpha != 0x00)
					{
						alphaStyle = ALPHA_NORMAL;
						break;
					}
					else
					{
						alphaStyle = ALPHA_BINARY;
					}
				}
			}
		}

		if (bOutputInfo) 
		{
			int mipCount = 0;
			while (pHeader->mipOffsets[mipCount])
				++mipCount;

			printf("%s:\n", pszFilename);
			printf("\t%d x %d : %d mip levels\n", pHeader->xResolution, pHeader->yResolution, mipCount);
			printf("\tAlpha bit depth = %d\n", pHeader->alphaBitDepth);
			printf("\tCompression = %s", compressionStrings[pHeader->compression]);
			if (pHeader->compression == BLP_COMPRESSED)
				printf(" (DXT%d)\n", (pHeader->alphaBitDepth == 8) ? 3 : 1);
			else
				printf("\n");

			if (BLP_UNCOMPRESSED == pHeader->compression)
			{
				if (0 == pHeader->alphaBitDepth)
				{
					// OK
				}
				else if (1 == pHeader->alphaBitDepth)
				{
					printf("\tAlpha style = 1-bit.\n");
				}
				else if (8 == pHeader->alphaBitDepth)
				{
					printf("\tAlpha style = '%s'.\n", pAlphaStyleNames[alphaStyle]);
				}
				else
				{
					printf("WARNING: Invalid bit depth = %d ?\n", pHeader->alphaBitDepth);
				}
			}
		}

		return true;
	}

	void Unload()
	{
		pHeader = NULL;
		pPalette = NULL;
		delete[] buffer;
		buffer = NULL;
	}

	bool Save(const char* pszFilename)
	{
		FILE* hOutputFile = ::fopen(pszFilename, "wb");
		if (NULL == hOutputFile)
		{
			printf("ERROR: Couldn't open %s for writing.", pszFilename);
			return false;
		}
		// Dump the modified file buffer into it.
		::fwrite(buffer, dwFileBytes, 1, hOutputFile);
		// Close it.
		::fclose(hOutputFile);
		hOutputFile = NULL;

		return true;
	}
};

// This class is used for SAVING BLP files.
class BLPMemFile
{
public:
	BLPHeader aHeader;
	UCHAR aPalette[4 * 256];
	UCHAR* pMips[16];

public:
	BLPMemFile()
	{
		memcpy(aHeader.id, BLPID, 4);
		aHeader.version = 1;
		for (int iMip = 0; iMip < 16; ++iMip)
		{
			aHeader.mipSizes[iMip] = 0;
			aHeader.mipOffsets[iMip] = 0;
		}

		memset(&aPalette, 0, sizeof(UCHAR) * 4 * 256);

		int mipIndex;
		for (mipIndex = 0; mipIndex < 16; ++mipIndex)
		{
			pMips[mipIndex] = NULL;
		}
	}

	~BLPMemFile()
	{
		Unload();
	}

	void Unload()
	{
		int mipIndex;
		for (mipIndex = 0; mipIndex < 16; ++mipIndex)
		{
			delete[] pMips[mipIndex];
			pMips[mipIndex] = NULL;
		}
	}

	void SetPalette(const png_color* pPaletteEntries)
	{
		int ii;
		for (ii = 0; ii < 256; ++ii)
		{
			// BLP palettes are BGRA
			aPalette[ii * 4 + 2] = pPaletteEntries[ii].red;
			aPalette[ii * 4 + 1] = pPaletteEntries[ii].green;
			aPalette[ii * 4 + 0] = pPaletteEntries[ii].blue;
			aPalette[ii * 4 + 3] = 0; // guessing.
		}
	}

	bool Save(const char* pszFilename)
	{
		if (aHeader.compression == BLP_UNCOMPRESSED)
		{
			printf("\tPalettized\n");
			if (aHeader.alphaBitDepth == 0)
				printf("\tNo Alpha\n");
			else
				printf("\t8-bit Alpha\n");
		}
		else
		{
			if (aHeader.alphaBitDepth == 0)
				printf("\tDXT1\n");
			else
				printf("\tDXT3\n");
		}

		// Calculate the mip offsets.
		DWORD offset = sizeof(BLPHeader) + (sizeof(UCHAR) * 4 * 256);
		int mipIndex = 0;
		int mipCount = 0;
		for (mipIndex = 0; mipIndex < 16; ++mipIndex)
		{
			if (aHeader.mipSizes[mipIndex] > 0)
			{
				++mipCount;
				aHeader.mipOffsets[mipIndex] = offset;
				offset += aHeader.mipSizes[mipIndex];
			}
			else
			{
				break;
			}
		}
		printf("\t%d mip levels\n", mipCount);

		////////////////

		// Open the file for writing.
		FILE* hOutputFile = ::fopen(pszFilename, "wb");
		if (NULL == hOutputFile)
		{
			printf("ERROR: Couldn't open %s for writing.", pszFilename);
			return false;
		}

		/////////////////
		
		// Write the header.
		::fwrite(&aHeader, sizeof(BLPHeader), 1, hOutputFile);
		
		// Write the palette.
		::fwrite(&aPalette, sizeof(UCHAR) * 4, 256, hOutputFile);

		// Output each mip level.
		for (mipIndex = 0; mipIndex < 16; ++mipIndex)
		{
			if (aHeader.mipSizes[mipIndex] > 0)
			{
				::fwrite(pMips[mipIndex], sizeof(UCHAR), aHeader.mipSizes[mipIndex], hOutputFile);
			}
		}

		/////////////////

		// Close file.
		::fclose(hOutputFile);
		hOutputFile = NULL;

		return true;
	}
};

///////////////////////////////////////////////////////////////////////////////
// for palettizePlane24to8bit
#include "palbmp/palettize.h"
#include "palbmp/palcreate.h"

///////////////////////////////////////////////////////////////////////////////
// PNG Stuff

struct PNGLoadStruct
{
	IMGFORMAT format;
	UCHAR* buffer;
	int width;
	int height;
	png_color palette[256];

	PNGLoadStruct()
	{
		buffer = NULL;
	}

	void Clear()
	{
		delete[] buffer;
		buffer = NULL;
	}

	int LoadFile(const char* pszFilename)
	{
		bool retVal = true;

		// Clear any existing content.
		Clear();

		// Open the PNG.
		png_structp png_ptr;
		png_infop info_ptr;
		unsigned int sig_read = 0;
		FILE *fp;
		if ((fp = fopen(pszFilename, "rb")) == NULL)
		{
			printf("ERROR: Couldn't open '%s'.\n", pszFilename);
			return (ERROR);
		}

		/* Create and initialize the png_struct with the desired error handler
		* functions.  If you want to use the default stderr and longjump method,
		* you can supply NULL for the last three parameters.  We also supply the
		* the compiler header file version, so that we know if the application
		* was compiled with a compatible version of the library.  REQUIRED
		*/
		png_ptr = png_create_read_struct(PNG_LIBPNG_VER_STRING,  NULL, NULL, NULL);
		if (png_ptr == NULL)
		{
		  fclose(fp);
		  return (ERROR);
		}

		/* Allocate/initialize the memory for image information.  REQUIRED. */
		info_ptr = png_create_info_struct(png_ptr);
		if (info_ptr == NULL)
		{
		  fclose(fp);
		  png_destroy_read_struct(&png_ptr, png_infopp_NULL, png_infopp_NULL);
		  return (ERROR);
		}

		/* Set error handling if you are using the setjmp/longjmp method (this is
		* the normal method of doing things with libpng).  REQUIRED unless you
		* set up your own error handlers in the png_create_read_struct() earlier.
		*/
		if (setjmp(png_jmpbuf(png_ptr)))
		{
		  /* Free all of the memory associated with the png_ptr and info_ptr */
		  png_destroy_read_struct(&png_ptr, &info_ptr, png_infopp_NULL);
		  fclose(fp);
		  /* If we get here, we had a problem reading the file */
		  return (ERROR);
		}

		/* Set up the input control if you are using standard C streams */
		png_init_io(png_ptr, fp);

		/* If we have already read some of the signature */
		png_set_sig_bytes(png_ptr, sig_read);

		/*
		* If you have enough memory to read in the entire image at once,
		* and you need to specify only transforms that can be controlled
		* with one of the PNG_TRANSFORM_* bits (this presently excludes
		* dithering, filling, setting background, and doing gamma
		* adjustment), then you can read the entire image (including
		* pixels) into the info structure with this call:
		*/
		png_read_png(png_ptr, info_ptr, PNG_TRANSFORM_IDENTITY, png_voidp_NULL);

		/* At this point you have read the entire image */

		///////////////////////////////////////////////////////////////////////////

		width = info_ptr->width;
		height = info_ptr->height;

		// Create a buffer for the image data.
		DWORD imageBytes = info_ptr->rowbytes * info_ptr->height * (info_ptr->num_trans == 0 ? 1 : 2);
		if (info_ptr->color_type == PNG_COLOR_TYPE_RGB)
			imageBytes = width * height * 4;
		buffer = new UCHAR[imageBytes];

		// Copy the data in row by row.
		if (info_ptr->num_trans == 0)
		{
			if (info_ptr->color_type == PNG_COLOR_TYPE_RGB_ALPHA || info_ptr->color_type == PNG_COLOR_TYPE_PALETTE)
			{
				for (DWORD row = 0; row < info_ptr->height; ++row)
				{
					memcpy(&buffer[row*info_ptr->rowbytes], info_ptr->row_pointers[row], info_ptr->rowbytes);
				}
			}
			else if (info_ptr->color_type == PNG_COLOR_TYPE_RGB)
			{
				for (DWORD row = 0; row < info_ptr->height; ++row)
				{
					for (int ii = 0; ii < width; ++ii)
					{
						buffer[row*4*width + ii*4 + 0] = info_ptr->row_pointers[row][ii*3 + 0];
						buffer[row*4*width + ii*4 + 1] = info_ptr->row_pointers[row][ii*3 + 1];
						buffer[row*4*width + ii*4 + 2] = info_ptr->row_pointers[row][ii*3 + 2];
						buffer[row*4*width + ii*4 + 3] = 0xFF;
					}
				}
			}
			else
			{
				printf("ERROR: PNG format unsupported.  Format = %d", info_ptr->color_type);
				return false;
			}
		}
		else if (info_ptr->color_type == PNG_COLOR_TYPE_PALETTE)// a8p8
		{
			for (DWORD row = 0; row < info_ptr->height; ++row)
			{
				for (DWORD ii = 0; ii < info_ptr->width; ++ii)
				{
					buffer[row*info_ptr->rowbytes*2 + ii*2 + 0] = info_ptr->row_pointers[row][ii];
					UCHAR alpha = 255;
					UCHAR palIx = buffer[row*info_ptr->rowbytes*2 + ii*2 + 0];
					if (palIx < info_ptr->num_trans)
						alpha = info_ptr->trans[palIx];
					buffer[row*info_ptr->rowbytes*2 + ii*2 + 1] = alpha;
				}
			}
		}

		// Copy the palette.
		if (info_ptr->palette)
		{
			memcpy(palette, info_ptr->palette, info_ptr->num_palette*sizeof(png_color));
		}

		///////////////////////////////////////////////////////////////////////////
		// Palettized, uncompressed, no alpha PNG.
		// Palettized, uncompressed, no alpha BLP.

		// c:\program files\world of warcraft\data\character\troll\female
		// TrollFemaleSkin00_01.png
		// c:\program files\world of warcraft\data\item\texturecomponents\leguppertexture\
		// Plate_Horde_C_05Silver_Pant_LU_U.png
		if (PNG_COLOR_TYPE_PALETTE == info_ptr->color_type)
		{
			printf("\tPalettized\n");

			if (info_ptr->num_trans == 0)
			{
				printf("\tNo Alpha\n");
				format = FMT_P8;
			}
			else
			{
				printf("\t%d Transparency Values\n", info_ptr->num_trans);
				format = FMT_A8P8;
			}
		}
		else if (PNG_COLOR_TYPE_RGB_ALPHA == info_ptr->color_type)
		{
			printf("\tRGBA\n");
			format = FMT_A8R8G8B8;
		}
		else if (PNG_COLOR_TYPE_RGB == info_ptr->color_type)
		{
			printf("\tRGB\n");
			format = FMT_X8R8G8B8;
		}
		else
		{
			printf("ERROR: Unsupported PNG format.\n");
			retVal = false;
		}

		///////////////////////////////////////////////////////////////////////////

		/* clean up after the read, and free any memory allocated - REQUIRED */
		png_destroy_read_struct(&png_ptr, &info_ptr, png_infopp_NULL);

		/* close the file */
		fclose(fp);

		/* that's it */
		return retVal;
	}

	bool Save(const char* pszOutputFileName)
	{
		printf("-> %s:\n", pszOutputFileName);

		FILE *fp = fopen(pszOutputFileName, "wb");
		if (!fp)
		{
		   return false;
		}	

		// Allocate the png structures.
		png_structp png_ptr = png_create_write_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
		if (!png_ptr)
			return false;

		png_infop info_ptr = png_create_info_struct(png_ptr);
		if (!info_ptr)
		{
			png_destroy_write_struct(&png_ptr, (png_infopp)NULL);
			return false;
		}

		/* Set error handling if you are using the setjmp/longjmp method (this is
		* the normal method of doing things with libpng).  REQUIRED unless you
		* set up your own error handlers in the png_create_read_struct() earlier.
		*/
		if (setjmp(png_jmpbuf(png_ptr)))
		{
			/* Free all of the memory associated with the png_ptr and info_ptr */
			png_destroy_read_struct(&png_ptr, &info_ptr, png_infopp_NULL);
			fclose(fp);
			/* If we get here, we had a problem reading the file */
			return false;
		}

		/* Set up the input control if you are using standard C streams */
		png_init_io(png_ptr, fp);

		int colorFormat;
		int pitch;
		int transform = PNG_TRANSFORM_IDENTITY;
		switch (format)
		{
		case FMT_DXT1:
		case FMT_DXT3:
			printf("INTERNAL ERROR: Cannot save PNGs with DXT compression.\n");
			return false;
			break;
		case FMT_P8:
		case FMT_A8P8:
			colorFormat = PNG_COLOR_TYPE_PALETTE;
			pitch = width;
			png_set_PLTE(png_ptr, info_ptr, palette, 256);
			break;
		case FMT_X8R8G8B8:
		case FMT_A8R8G8B8:
			pitch = width * 4;
			colorFormat = PNG_COLOR_TYPE_RGB_ALPHA;
			//transform = PNG_TRANSFORM_BGR;
			break;
		}

		// Set the image type.
		png_set_IHDR(png_ptr, info_ptr, 
				width,
				height,
				8,	// Bit depth.
				colorFormat,
				PNG_INTERLACE_NONE,
				PNG_COMPRESSION_TYPE_DEFAULT,
				PNG_FILTER_TYPE_DEFAULT);

		UCHAR** pRowPointers = new UCHAR*[height];
		if (format == FMT_A8P8)
		{
			bool transFound = false;
			BYTE transparentAlphaIndex;
			for (int ii = 0; ii < (width * height * 2); ii += 2)
			{
				BYTE alpha = buffer[ii + 1];
				if (alpha < g_byAlphaThreshold)
				{
					transparentAlphaIndex = buffer[ii];

					// We want palette entry 0 to be our transparent one, so swap out
					// this color with 0 in the palette.^		
					palette[transparentAlphaIndex].red = palette[0].red;
					palette[transparentAlphaIndex].green = palette[0].green;
					palette[transparentAlphaIndex].blue = palette[0].blue;

					// Set to an annoying color for testing.
					palette[0].red = 0;
					palette[0].green = 0xFF;
					palette[0].blue = 0;

					transFound = true;
					break;
				}
			}

			if (transFound)
			{
				for (int ii = 0; ii < (width * height * 2); ii += 2)
				{
					// If this pixel was an original pallete 0, change it to the entry that 0 was moved to.
					if (buffer[ii] == 0)
						buffer[ii] = transparentAlphaIndex;

					// If this pixel is below the alpha threshold, set it to the 0 alpha palette entry (0).
					BYTE alpha = buffer[ii + 1];
					if (alpha < g_byAlphaThreshold)
						buffer[ii + 1] = 0;
				}
				
				png_byte trans[1];
				trans[0] = 0;
				png_set_tRNS(png_ptr, info_ptr, trans, 1, NULL);
			}

			int pitch = width*2;
			for (int row = 0; row < height; ++row)
			{
				pRowPointers[row] = new UCHAR[width];
				for (int x = 0; x < width; ++x)
				{
					pRowPointers[row][x] = buffer[row*pitch + x*2];
				}
			}
		}
		else
		{
			for (int row = 0; row < height; ++row)
			{
				pRowPointers[row] = &buffer[row*pitch];
			}
		}

		// Put our image data into the PNG.
		png_set_rows(png_ptr, info_ptr, pRowPointers);

		// *** Do the write.
		png_write_png(png_ptr, info_ptr, transform, NULL);

		// Clean up.
		if (format == FMT_A8P8)
		{
			for (int row = 0; row < height; ++row)
				delete[] pRowPointers[row];
		}

		delete[] pRowPointers;

		return true;
	}
};


///////////////////////////////////////////////////////////////////////////////
// Mip Stuff
// http://number-none.com/product/Mipmapping,%20Part%201/index.html

#define RO 0
#define GO 1
#define BO 2

/*
w = width of image, used to keep things within the borders.  this kicks in when converting from a 2x1->1x1 mip, etc.
h = height of image
c = "color", a byte offset.  for example, for an rgb image, specify 1 if you want the green component.
b = bytes per pixel, ie 2 = a8pi, 4 = rgba
*/
int OFFSET_RGB(int x, int y, int w, int h, int c, int b)
{
	if (x >= w) 
		x = w - 1;
	if (y >= h) 
		y = h - 1;
	return ((y * w * b) + (x * b) + c);
}

struct MIPInfo
{
	int width;
	int height;
	int bytes;
	UCHAR* buffer;

	MIPInfo()
	{
		buffer = NULL;
	}

	~MIPInfo()
	{
		delete[] buffer;
	}
};

const int SO[4][2] =
{
	(0, 0),
	(0, 1),
	(1, 0),
	(1, 1),
};


void BuildMipmap(IMGFORMAT format, png_color* palette, int sourceWidth, int sourceHeight, int destWidth, int destHeight, UCHAR* srcBuff, UCHAR* destBuff) 
{
	int w = sourceWidth;
	int h = sourceHeight;

    int i, j;
    for (j = 0; j < destHeight; j++)
	{
        for (i = 0; i < destWidth; i++) 
		{
			switch (format)
			{
				// The x8 case works for 3 or 4 byte formats (ignores the alpha channel if 4).
				case FMT_X8R8G8B8:
				case FMT_A8R8G8B8:
				{
					int destColor[4];
					// X8R8G8B8 is the same as A8, but all alphas are 0xFF
					//int colorCount = (FMT_A8R8G8B8 == format) ? 4 : 3;
					int colorCount = 4;

					// Average the colors of 4 adjacent pixels in the source texture.
					for (int c = 0; c < colorCount; ++c)
					{
						destColor[c] = (	srcBuff[OFFSET_RGB(i*2+0, j*2+0, w, h, c, 4)] + 
											srcBuff[OFFSET_RGB(i*2+0, j*2+1, w, h, c, 4)] +
											srcBuff[OFFSET_RGB(i*2+1, j*2+0, w, h, c, 4)] + 
											srcBuff[OFFSET_RGB(i*2+1, j*2+1, w, h, c, 4)]) / 4;
					}

					// Store those colors in the destination texture.
					for (c = 0; c < colorCount; ++c)
					{
						destBuff[OFFSET_RGB(i, j, destWidth, destHeight, c, 4)] = destColor[c];
					}
					
					break;
				}
				case FMT_P8:
				case FMT_A8P8:
				{
					int a = (format == FMT_A8P8) ? 2 : 1;

					png_color colors[4];
					for (int ii = 0; ii < 4; ++ii)
						colors[ii] = palette[srcBuff[OFFSET_RGB(i*2+SO[ii][0], j*2+SO[ii][1], w, h, 0, a)]];

					png_color average;
					average.red = (colors[0].red + colors[1].red + colors[2].red + colors[3].red) / 4;
					average.green = (colors[0].green + colors[1].green + colors[2].green + colors[3].green) / 4;
					average.blue = (colors[0].blue + colors[1].blue + colors[2].blue + colors[3].blue) / 4;

					// Figure out which of the 4 colors deviates least from the average.  Not using any fancy
					// system here, just taking the smallest numerical deviation.
					int deltas[4];
					int smallest = 10000;
					int smallestIx = 0;
					for (ii = 0; ii < 4; ++ii)
					{
						deltas[ii] = abs(colors[ii].red - average.red) + abs(colors[ii].green - average.green) + abs(colors[ii].blue - average.blue);
						if (deltas[ii] < smallest)
						{
							smallest = deltas[ii];
							smallestIx = ii;
						}
					}

					destBuff[OFFSET_RGB(i, j, destWidth, destHeight, 0, a)] = srcBuff[OFFSET_RGB(i*2+SO[smallestIx][0], j*2+SO[smallestIx][1], w, h, 0, a)];

					if (FMT_A8P8 == format)
					{
						int averageAlpha = 0;
						for (int ii = 0; ii < 4; ++ii)
							averageAlpha += srcBuff[OFFSET_RGB(i*2+SO[ii][0], j*2+SO[ii][1], w, h, 1, a)];
						averageAlpha /= 4;

						destBuff[OFFSET_RGB(i, j, destWidth, destHeight, 1, a)] = averageAlpha;
					}
					break;
				}
			}
        }
    }
}

void CreateMipDebugImage(const char* pszBaseFilename, IMGFORMAT format, png_color* palette, MIPInfo* pMipInfo, int mipInfoCount)
{
	DWORD totalHeight = 0;
	for (int ii = 0; ii < mipInfoCount; ++ii)
		totalHeight += pMipInfo[ii].height;

	int bytesPerPixel = 1;
	if (format == FMT_A8P8)
		bytesPerPixel = 2;
	else if (format == FMT_A8R8G8B8 || format == FMT_X8R8G8B8)
		bytesPerPixel = 4;

	PNGLoadStruct aPng;
	aPng.width = pMipInfo[0].width;
	aPng.height = totalHeight;
	aPng.format = format;
	DWORD pitch = aPng.width * bytesPerPixel; 
	aPng.buffer = new UCHAR[aPng.height * pitch];
	memset(aPng.buffer, 0, aPng.height * pitch);

	if (palette)
	{
		memcpy(aPng.palette, palette, sizeof(png_color) * 256);
	}

	DWORD destRow = 0;
	for (ii = 0; ii < mipInfoCount; ++ii)
	{
		for (int row = 0; row < pMipInfo[ii].height; ++row)
		{
			memcpy(&aPng.buffer[destRow++ * pitch], &pMipInfo[ii].buffer[row * pMipInfo[ii].width * bytesPerPixel], pMipInfo[ii].width * bytesPerPixel);
		}
	}

	char pszMipFilename[MAX_PATH];
	sprintf(pszMipFilename, "%s__mips.png", pszBaseFilename);
	aPng.Save(pszMipFilename);
}


///////////////////////////////////////////////////////////////////////////////

enum FileType
{
	FILETYPE_PNG,
	FILETYPE_BLP,
};

bool SavePNGToBLP(const char* pszFileName, PNGLoadStruct& aPng)
{
	// No compression for the time being.
	IMGFORMAT destFormat = aPng.format;

	///////////////////////

	// Create a structure to hold the BLP data.
	BLPMemFile aBLPFile;

	// Initialize its header.
	aBLPFile.aHeader.xResolution = aPng.width;
	aBLPFile.aHeader.yResolution = aPng.height;

	int mipBytesPerPixel;
	switch (aPng.format)
	{
	case FMT_P8:
		aBLPFile.aHeader.alphaBitDepth = 0;		// No alpha
		aBLPFile.aHeader.alphaUnknown = 8;		// 8 value taken from example
		aBLPFile.aHeader.compression = 1;		// 1 = no compression, 2 = DXT
		aBLPFile.aHeader.mipUnknown = 1;		// 1 value from example
		mipBytesPerPixel = 1;
		break;
	case FMT_A8P8:
		aBLPFile.aHeader.alphaBitDepth = 8;		// Regular alpha
		aBLPFile.aHeader.alphaUnknown = 8;		// 8 value taken from example
		aBLPFile.aHeader.compression = 1;		// 1 = no compression, 2 = DXT
		aBLPFile.aHeader.mipUnknown = 1;		// 1 value from example
		mipBytesPerPixel = 2;
		break;
	case FMT_X8R8G8B8:
		aBLPFile.aHeader.alphaBitDepth = 0;		// No alpha
		aBLPFile.aHeader.alphaUnknown = 0;		// 
		aBLPFile.aHeader.compression = 2;		// 1 = no compression, 2 = DXT
		aBLPFile.aHeader.mipUnknown = 1;		// 
		mipBytesPerPixel = 4;
		destFormat = FMT_DXT1;
		break;
	case FMT_A8R8G8B8:
		aBLPFile.aHeader.alphaBitDepth = 8;		// 
		aBLPFile.aHeader.alphaUnknown = 1;		// 
		aBLPFile.aHeader.compression = 2;		// 1 = no compression, 2 = DXT
		aBLPFile.aHeader.mipUnknown = 1;		// 
		mipBytesPerPixel = 4;
		destFormat = FMT_DXT3;
		break;
	default:
		printf("ERROR: Unsupported BLP save format.");
		return false;
	}

	///////////////////////

	MIPInfo mipInfos[16];

	int mipInfoCount = 1;
	mipInfos[0].width = aPng.width;
	mipInfos[0].height = aPng.height;
	mipInfos[0].buffer = aPng.buffer;
	mipInfos[0].bytes = aPng.width * aPng.height * (mipBytesPerPixel);

	if (g_bNoMips)
	{
		aBLPFile.aHeader.mipUnknown = 0;
	}
	else
	{
		aBLPFile.aHeader.mipUnknown = 1;

		DWORD mipWidth = aPng.width / 2;
		DWORD mipHeight = aPng.height / 2;

		// Generate each level of mip using the format of the file itself.
		do
		{
			mipInfos[mipInfoCount].width = mipWidth;
			mipInfos[mipInfoCount].height = mipHeight;
			mipInfos[mipInfoCount].bytes = mipWidth * mipHeight * mipBytesPerPixel;
			mipInfos[mipInfoCount].buffer = new UCHAR[mipInfos[mipInfoCount].bytes];

			// Generate mip level using the 
			BuildMipmap(aPng.format, 
					aPng.palette,
					mipInfos[mipInfoCount - 1].width,
					mipInfos[mipInfoCount - 1].height,
					mipInfos[mipInfoCount].width,
					mipInfos[mipInfoCount].height,
					mipInfos[mipInfoCount - 1].buffer, 
					mipInfos[mipInfoCount].buffer);

			++mipInfoCount;
			mipWidth /= 2;
			mipHeight /= 2;
			if (mipWidth == 0 && mipHeight != 0)
				mipWidth = 1;
			if (mipHeight == 0 && mipWidth != 0)
				mipHeight = 1;
		}
		while (mipWidth > 0 && mipHeight > 0);

		if (g_bCreateMipTestImage)
		{
			png_color* palette = (FMT_P8 == aPng.format || FMT_A8P8 == aPng.format) ? aPng.palette : NULL;
			CreateMipDebugImage(pszFileName, aPng.format, palette, (MIPInfo*) mipInfos, mipInfoCount);
		}
	}

	// Go through each mip level and do the conversion to the target format.
	// This might seem kind of backwards but we have to do it this way for the DXT textures.
	for (int iLevel = 0; iLevel < mipInfoCount; ++iLevel)
	{
		DWORD mipWidth = mipInfos[iLevel].width;
		DWORD mipHeight = mipInfos[iLevel].height;
		UCHAR* srcMipBuffer = mipInfos[iLevel].buffer;

		// Figure out how big the converted mip level needs to be.
		DWORD convertedMipBytes;
		switch (destFormat)
		{
			case FMT_P8:
				convertedMipBytes = mipWidth * mipHeight;
				break;
			case FMT_A8P8:
				convertedMipBytes = mipWidth * mipHeight * 2;
				break;
			case FMT_DXT1:
			{
				int blksize = 8; // 16 for dxt3
				int dx = (mipWidth + 3) >> 2;
				int dy = (mipHeight + 3) >> 2;
				convertedMipBytes = dx * dy * blksize;
				break;
			}
			case FMT_DXT3:
			{
				int blksize = 16; // 16 for dxt3
				int dx = (mipWidth  + 3) >> 2;
				int dy = (mipHeight + 3) >> 2;
				convertedMipBytes = dx * dy * blksize;
				break;
			}
		}
				
		// Allocate a buffer for the converted mip level.
		aBLPFile.aHeader.mipSizes[iLevel] = convertedMipBytes;
		aBLPFile.pMips[iLevel] = new UCHAR[convertedMipBytes];

		// Do the conversion.
		if (FMT_A8P8 == destFormat)
		{
			DWORD alphaOffset = convertedMipBytes / 2;

			// Copy the data into the file buffer directly.
			for (DWORD pixelIx = 0; pixelIx < mipWidth * mipHeight; ++pixelIx)
			{
				aBLPFile.pMips[iLevel][pixelIx]					= srcMipBuffer[pixelIx * 2 + 0];

				UCHAR pixelAlpha = srcMipBuffer[pixelIx * 2 + 1];
				aBLPFile.pMips[iLevel][pixelIx + alphaOffset]	= UCHAR(float(pixelAlpha) * g_fGammaFactor);
			}
		}
		else if (FMT_DXT1 == destFormat || FMT_DXT3 == destFormat)
		{
			// Set up the ATI source texture.
			ATI_TC_Texture atiSource;
			atiSource.dwSize = sizeof(ATI_TC_Texture);
			atiSource.dwWidth = mipWidth;
			atiSource.dwHeight = mipHeight;
			atiSource.dwDataSize = mipInfos[iLevel].bytes;
			atiSource.dwPitch = 4*mipWidth;
			atiSource.format = ATI_TC_FORMAT_ARGB_8888;
			// Convert RGB->BGR
			for (DWORD ii = 0; ii < (mipWidth * mipHeight); ++ii)
			{
				UCHAR save = mipInfos[iLevel].buffer[ii * 4 + 0];
				mipInfos[iLevel].buffer[ii * 4 + 0] = mipInfos[iLevel].buffer[ii * 4 + 2];
				mipInfos[iLevel].buffer[ii * 4 + 2] = save;
			}
			atiSource.pData = mipInfos[iLevel].buffer;

			// Set up the ATI destination texture.
			ATI_TC_Texture atiDest;
			atiDest.dwSize = sizeof(ATI_TC_Texture);
			atiDest.dwWidth = mipWidth;
			atiDest.dwHeight = mipHeight;
			atiDest.format = (destFormat == FMT_DXT1) ? ATI_TC_FORMAT_DXT1 : ATI_TC_FORMAT_DXT3;
			atiDest.dwPitch = convertedMipBytes / mipHeight;
			atiDest.dwDataSize = convertedMipBytes;
			atiDest.pData = new ATI_TC_BYTE[atiDest.dwDataSize];

			// Do the conversion.
			ATI_TC_ERROR error = ATI_TC_ConvertTexture(&atiSource, &atiDest, NULL, NULL, NULL, NULL);
			if (ATI_TC_OK != error)
			{
				printf("Error '%s' decompressing DXT source texture.\n", ATI_ERROR_STRINGS[error]);
				return false;
			}

			// Copy into the BLP structure.
			::memcpy(aBLPFile.pMips[iLevel], atiDest.pData, atiDest.dwDataSize);

			delete[] atiDest.pData;
		}
		else // FMT_P8
		{
			// Copy the data into the file buffer directly.
			::memcpy(aBLPFile.pMips[iLevel], srcMipBuffer, convertedMipBytes);
		}
	}

	// Set the palette.
	if (FMT_P8 == destFormat || FMT_A8P8 == destFormat)
	{
		aBLPFile.SetPalette(aPng.palette);
	}

	// Create a new blp.
	printf("-> %s:\n", pszFileName);
	if (!aBLPFile.Save(pszFileName))
		return false;

	return true;
}


/* 

*/
bool ConvertPNGToBLP(const char* pszInputFileName, const char* pszOutputFileName)
{
	////////////////////////////////////////////////////////
	// LOAD PNG
	////////////////////////////////////////////////////////

	printf("%s:\n", pszInputFileName);

	PNGLoadStruct aPng;
	if (!aPng.LoadFile(pszInputFileName))
		return false;

	if (g_bInfoMode)
		return true;

	// Clothing special case.
	if (aPng.format == FMT_A8R8G8B8 &&
		g_bSavePaletteWithAlphaToRGBA)
	{
		DWORD pixels = aPng.width * aPng.height;
		UCHAR palette[256 * 3];
		UCHAR* pImgBuffer = aPng.buffer;

		// Create a 24-bit version of the RGBA image.
		UCHAR* rgbPlane = new UCHAR[pixels * 3];
		for (DWORD ii = 0; ii < pixels; ++ii)
		{
			rgbPlane[ii*3 + 0] = pImgBuffer[ii*4 + 0];
			rgbPlane[ii*3 + 1] = pImgBuffer[ii*4 + 1];
			rgbPlane[ii*3 + 2] = pImgBuffer[ii*4 + 2];
		}

		// Create a buffer to hold the palettized data.
		UCHAR* palPlane = new UCHAR[pixels];

		// Build a palette for the image.
		createPalette(rgbPlane, pixels, palette, 256);

		// Palettize the image.
		if (!palettizePlane24to8bit(rgbPlane, palPlane, pixels, palette))
		{
			printf("ERROR: Palettization of RGB image failed.\n");
			return false;
		}

		/////////////
	
		// Create and fill the a8p8 buffer.
		UCHAR* a8p8Buffer = new UCHAR[pixels * 2];
		for (ii = 0; ii < pixels; ++ii)
		{
			a8p8Buffer[ii*2 + 0] = palPlane[ii];
			a8p8Buffer[ii*2 + 1] = UCHAR(float(pImgBuffer[ii*4 + 3]) * g_fGammaFactor);
		}

		delete[] aPng.buffer;
		aPng.buffer = a8p8Buffer;
		for (int iColor = 0; iColor < 256; ++iColor)
		{
			aPng.palette[iColor].red = palette[iColor*3 + 0];
			aPng.palette[iColor].green = palette[iColor*3 + 1];
			aPng.palette[iColor].blue = palette[iColor*3 + 2];
		}

		aPng.format = FMT_A8P8;

		/////////////		

		// Clean up.
		delete[] rgbPlane;
		delete[] palPlane;
	}

	// If gamma factor was specified but source had none, add an alpha channel.
	if (1.0f != g_fGammaFactor && FMT_X8R8G8B8 == aPng.format)
	{
		UCHAR alpha = UCHAR(255.0f * g_fGammaFactor);

		for (int ii = 0; ii < (aPng.width * aPng.height); ++ii)
			aPng.buffer[ii * 4 + 3] = alpha;

		aPng.format = FMT_A8R8G8B8;
	}

	////////////////////////////////////////////////////////
	// SAVE BLP
	////////////////////////////////////////////////////////

 	return SavePNGToBLP(pszOutputFileName, aPng);
}

UCHAR GetPalettizedAlpha(UCHAR* pAlphaBuffer, int pixelIndex, bool b8Bit)
{
	if (b8Bit)
	{
		return pAlphaBuffer[pixelIndex];
	}
	else
	{
		int byteIndex = pixelIndex / 8;
		int bitIndex = pixelIndex % 8;
		UCHAR mask = 0x0001 << bitIndex;
		return (pAlphaBuffer[byteIndex] & mask) ? 255 : 0;
	}
}

bool ConvertBLPToPNG(const char* pszInputFileName, const char* pszOutputFileName)
{
	BLPFile aBLPFile;
	if (!aBLPFile.Load(pszInputFileName, g_bVerbose))
	{
		return false;
	}

	if (g_bInfoMode)
		return true;
	
	///////////////////////////////////////////////////////////////////////////

	printf("-> %s:\n", pszOutputFileName);

	int imgWidth = aBLPFile.pHeader->xResolution;
	int imgHeight = aBLPFile.pHeader->yResolution;

	FILE *fp = fopen(pszOutputFileName, "wb");
	if (!fp)
	{
	   return false;
	}	

	// Allocate the png structures.
	png_structp png_ptr = png_create_write_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
	if (!png_ptr)
		return false;

	png_infop info_ptr = png_create_info_struct(png_ptr);
	if (!info_ptr)
	{
		png_destroy_write_struct(&png_ptr, (png_infopp)NULL);
		return false;
	}

	/* Set error handling if you are using the setjmp/longjmp method (this is
	* the normal method of doing things with libpng).  REQUIRED unless you
	* set up your own error handlers in the png_create_read_struct() earlier.
	*/
	if (setjmp(png_jmpbuf(png_ptr)))
	{
		/* Free all of the memory associated with the png_ptr and info_ptr */
		png_destroy_read_struct(&png_ptr, &info_ptr, png_infopp_NULL);
		fclose(fp);
		/* If we get here, we had a problem reading the file */
		return false;
	}

	/* Set up the input control if you are using standard C streams */
	png_init_io(png_ptr, fp);

	bool bPaletteToRGBASpecialCase = g_bSavePaletteWithAlphaToRGBA && 
				(BLP_UNCOMPRESSED == aBLPFile.pHeader->compression && 8 == aBLPFile.pHeader->alphaBitDepth);

	bool bDeleteRows = false;
	int transform = PNG_TRANSFORM_IDENTITY;
	UCHAR** pRowPointers = NULL;
	if (bPaletteToRGBASpecialCase)
	{
		// Set the image type.
		png_set_IHDR(png_ptr, info_ptr, 
				imgWidth,
				imgHeight,
				8,	// Bit depth.
				PNG_COLOR_TYPE_RGB_ALPHA,
				PNG_INTERLACE_NONE,
				PNG_COMPRESSION_TYPE_DEFAULT,
				PNG_FILTER_TYPE_DEFAULT);
		printf("\tRGBA\n");

		// Allocate our row pointers.
		pRowPointers = new UCHAR*[imgHeight];
		DWORD bufferOffset = aBLPFile.pHeader->mipOffsets[0];
		DWORD alphaOffset = bufferOffset + aBLPFile.pHeader->mipSizes[0] / 2;
		for (UINT row = 0; row < aBLPFile.pHeader->yResolution; ++row)
		{
			// Allocate.
			int pitch = 4 * aBLPFile.pHeader->xResolution;
			pRowPointers[row] = new UCHAR[pitch];

			for (UINT ii = 0; ii < aBLPFile.pHeader->xResolution; ++ii)
			{
				UCHAR paletteIx = aBLPFile.buffer[bufferOffset + ii + row * aBLPFile.pHeader->xResolution];
				// Do BGR->RGB conversion.
				pRowPointers[row][ii * 4 + 0] = aBLPFile.pPalette[paletteIx * 4 + 2];
				pRowPointers[row][ii * 4 + 1] = aBLPFile.pPalette[paletteIx * 4 + 1];
				pRowPointers[row][ii * 4 + 2] = aBLPFile.pPalette[paletteIx * 4 + 0];
				pRowPointers[row][ii * 4 + 3] = aBLPFile.buffer[alphaOffset + ii + row * aBLPFile.pHeader->xResolution];
			}
		}
	}
	else if (BLP_UNCOMPRESSED == aBLPFile.pHeader->compression)
	{
		// Create the PNG palette and set it.
		png_color pngPalette[256];
		for (int ii = 0; ii < 256; ++ii)
		{
			// BLP files are BGR.
			pngPalette[ii].red		= aBLPFile.pPalette[ii * 4 + 2];
			pngPalette[ii].green	= aBLPFile.pPalette[ii * 4 + 1];
			pngPalette[ii].blue		= aBLPFile.pPalette[ii * 4 + 0];
		}

		// Set the image type.
		png_set_IHDR(png_ptr, info_ptr, 
				imgWidth,
				imgHeight,
				8,	// Bit depth.
				PNG_COLOR_TYPE_PALETTE,
				PNG_INTERLACE_NONE,
				PNG_COMPRESSION_TYPE_DEFAULT,
				PNG_FILTER_TYPE_DEFAULT);
		printf("\tPalettized\n");

		// Create our row pointers.
		pRowPointers = new UCHAR*[imgHeight];
		DWORD bufferOffset = aBLPFile.pHeader->mipOffsets[0];
		for (UINT row = 0; row < aBLPFile.pHeader->yResolution; ++row)
		{
			pRowPointers[row] = &aBLPFile.buffer[bufferOffset];
			bufferOffset += imgWidth;
		}

		if (0 == aBLPFile.pHeader->alphaBitDepth)
		{
			// Nothing to do.
			printf("\tNo Alpha\n");
		}
		else // if (8 == aBLPFile.pHeader->alphaBitDepth)
		{
			DWORD bufferOffset = aBLPFile.pHeader->mipOffsets[0];
			UCHAR* pImgBuffer = &(aBLPFile.buffer[bufferOffset]);

			// Scan the image.  The palette entry of the first pixel with an alpha below a threshold
			// is chosen to be the 0 alpha entry.  The actual 0 entry is moved into the found palette entry.
			// All pixels that are below that alpha are set to the new palette entry 0.
			printf("\t1-bit Alpha (lossy)\n");
			
			DWORD bufferAlphaOffset = bufferOffset + (aBLPFile.pHeader->xResolution * aBLPFile.pHeader->yResolution);
			bool transFound = false;
			BYTE transparentAlphaIndex;
			DWORD pixelCount = aBLPFile.pHeader->xResolution * aBLPFile.pHeader->yResolution;
			for (DWORD ii = 0; ii < pixelCount; ++ii)
			{
				BYTE alpha = GetPalettizedAlpha(&aBLPFile.buffer[bufferAlphaOffset], ii, (8 == aBLPFile.pHeader->alphaBitDepth));
				if (alpha < g_byAlphaThreshold)
				{
					if (!transFound)
					{
						transparentAlphaIndex = aBLPFile.buffer[bufferOffset + ii];

						// We want palette entry 0 to be our transparent one, so swap out
						// this color with 0 in the palette.^		
						pngPalette[transparentAlphaIndex].red = pngPalette[0].red;
						pngPalette[transparentAlphaIndex].green = pngPalette[0].green;
						pngPalette[transparentAlphaIndex].blue = pngPalette[0].blue;

						// Set to an annoying color for testing.
						pngPalette[0].red = 0;
						pngPalette[0].green = 0xFF;
						pngPalette[0].blue = 0;

						transFound = true;
						break;
					}
				}
			}

			if (transFound)
			{
				for (DWORD ii = 0; ii < pixelCount; ++ii)
				{
					// If this pixel was an original pallete 0, change it to the entry that 0 was moved to.
					if (aBLPFile.buffer[bufferOffset + ii] == 0)
						aBLPFile.buffer[bufferOffset + ii] = transparentAlphaIndex;

					// If this pixel is below the alpha threshold, set it to the 0 alpha palette entry (0).
					BYTE alpha = GetPalettizedAlpha(&aBLPFile.buffer[bufferAlphaOffset], ii, (8 == aBLPFile.pHeader->alphaBitDepth));
					if (alpha < g_byAlphaThreshold)
						aBLPFile.buffer[bufferOffset + ii] = 0;
				}
				
				png_byte trans[1];
				trans[0] = 0;
				png_set_tRNS(png_ptr, info_ptr, trans, 1, NULL);
			}
		}

		// Set the palette.
		png_set_PLTE(png_ptr, info_ptr, pngPalette, 256);
	}
	else if (BLP_COMPRESSED == aBLPFile.pHeader->compression)
	{
		IMGFORMAT textureFormat;
		IMGFORMAT blpFormat;
		DWORD colorType;
		if (aBLPFile.pHeader->alphaBitDepth == 8) 
		{
			blpFormat = FMT_DXT3;
			printf("\tRGBA\n");
			textureFormat = FMT_A8R8G8B8;
			colorType = PNG_COLOR_TYPE_RGB_ALPHA;
		}
		else if (aBLPFile.pHeader->alphaBitDepth == 1)
		{
			blpFormat = FMT_DXT1;
			printf("\tRGBA\n");
			textureFormat = FMT_A8R8G8B8;
			colorType = PNG_COLOR_TYPE_RGB_ALPHA;
		}
		else
		{
			blpFormat = FMT_DXT1;
			printf("\tRGB\n");
			if (1)
			{
				// This is the original way: ignores the 1-bit alpha in the texture.
				textureFormat = FMT_X8R8G8B8;
				colorType = PNG_COLOR_TYPE_RGB;
			}
			else if (0)
			{
				textureFormat = FMT_A8R8G8B8;
				colorType = PNG_COLOR_TYPE_RGB_ALPHA;
			}
			else
			{
				// This makes the dxt1 alpha channel comes through ok, but i dont
				// know how to convert it back.

				textureFormat = FMT_X8R8G8B8;
				colorType = PNG_COLOR_TYPE_RGB;
				
				png_color_16 transValues;
				memset(&transValues, 0, sizeof(png_color_16));
				png_set_tRNS(png_ptr, info_ptr, NULL, 0, &transValues);
			}
		}
		transform = PNG_TRANSFORM_BGR;

		///////////////////////////////
		// Convert the image to ARGB.

		// DXT 1/3
		UINT srcPitch = 2 * aBLPFile.pHeader->xResolution;
		if (FMT_DXT3 == blpFormat)
			srcPitch *= 2;

		// Set up the ATI source texture.
		ATI_TC_Texture atiSource;
		atiSource.dwSize = sizeof(ATI_TC_Texture);
		atiSource.dwWidth = aBLPFile.pHeader->xResolution;
		atiSource.dwHeight = aBLPFile.pHeader->yResolution;
		atiSource.dwDataSize = aBLPFile.pHeader->mipSizes[0];
		atiSource.dwPitch = srcPitch;
		atiSource.format = (blpFormat == FMT_DXT1) ? ATI_TC_FORMAT_DXT1 : ATI_TC_FORMAT_DXT3;
		atiSource.pData = &(aBLPFile.buffer[aBLPFile.pHeader->mipOffsets[0]]);

		// Set up the ATI destination texture.
		ATI_TC_Texture atiDest;
		atiDest.dwSize = sizeof(ATI_TC_Texture);
		atiDest.dwWidth = aBLPFile.pHeader->xResolution;
		atiDest.dwHeight = aBLPFile.pHeader->yResolution;
		atiDest.format = ATI_TC_FORMAT_ARGB_8888;
		atiDest.dwPitch = atiDest.dwWidth * 4;
		atiDest.dwDataSize = ATI_TC_CalculateBufferSize(&atiDest);
		atiDest.pData = new ATI_TC_BYTE[atiDest.dwDataSize];

		// Do the conversion.
		ATI_TC_ERROR error = ATI_TC_ConvertTexture(&atiSource, &atiDest, NULL, NULL, NULL, NULL);
		if (ATI_TC_OK != error)
		{
			printf("Error '%s' decompressing DXT source texture.\n", ATI_ERROR_STRINGS[error]);
			return false;
		}

		pRowPointers = new UCHAR*[imgHeight];
		int rowPitch = atiDest.dwPitch;
		if (textureFormat == FMT_X8R8G8B8)
		{
			bDeleteRows = true;
			for (int row = 0; row < imgHeight; ++row)
			{
				pRowPointers[row] = new UCHAR[3*imgWidth];
				for (int ii = 0; ii < imgWidth; ++ii)
				{
					pRowPointers[row][3*ii + 0] = atiDest.pData[row * rowPitch + 4*ii + 0];
					pRowPointers[row][3*ii + 1] = atiDest.pData[row * rowPitch + 4*ii + 1];
					pRowPointers[row][3*ii + 2] = atiDest.pData[row * rowPitch + 4*ii + 2];
				}
			}
		}
		else
		{	
			for (int row = 0; row < imgHeight; ++row)
			{
				pRowPointers[row] = &((UCHAR*) atiDest.pData)[row * rowPitch];
			}
		}

		// Set the image type.
		png_set_IHDR(png_ptr, info_ptr, 
				imgWidth,
				imgHeight,
				8,	// Bit depth.
				colorType,
				PNG_INTERLACE_NONE,
				PNG_COMPRESSION_TYPE_DEFAULT,
				PNG_FILTER_TYPE_DEFAULT);
	}

	// Put our image data into the PNG.
	png_set_rows(png_ptr, info_ptr, pRowPointers);

	// *** Do the write.
	png_write_png(png_ptr, info_ptr, transform, NULL);

	// Clean up.
	if (bDeleteRows)
	{
		for (int ii = 0; ii < imgHeight; ++ii)
			delete[] pRowPointers[ii];
	}
	delete[] pRowPointers;

	return true;
}

int ProcessFile(const char* pszFilenameArgument, const char* pszDestinationFilename)
{
	char* pszPeriod = strrchr(pszFilenameArgument, '.');
	if (NULL == pszPeriod)
	{
		printf("Invalid filename '%s' (no . in it).\n", pszFilenameArgument);
		return - 1;
	}
	pszPeriod[0] = 0;
	pszPeriod = &pszPeriod[1];
	char pszPngFilename[MAX_PATH];
	sprintf(pszPngFilename, "%s.png", (char*) pszFilenameArgument);
	char pszBlpFilename[MAX_PATH];
	sprintf(pszBlpFilename, "%s.blp", (char*) pszFilenameArgument);
	if (0 == ::stricmp(pszPeriod, "blp"))
	{
		if (!ConvertBLPToPNG(pszBlpFilename, pszDestinationFilename ? pszDestinationFilename : pszPngFilename))
			return -1;

		return 0;
	}
	else if (0 == ::stricmp(pszPeriod, "png"))
	{
		if (!ConvertPNGToBLP(pszPngFilename, pszDestinationFilename ? pszDestinationFilename : pszBlpFilename))
			return -1;

		return 0;
	}

	printf("ERROR: Input file '%s' not a png or blp.\n", pszFilenameArgument);
	return -1;
}

void Usage()
{
	printf("BLPCONVERTER: Converts BLP files to PNGs and vice versa.\n");
	printf("Version 4.\n");
	printf("Usage: BLPCONVERTER [options] sourceFile [targetFile]\n");
	printf("\n");
	printf("sourceFile: The file to convert.\n");
	printf("targetFile: Optionally, the name of the converted file.  If omitted, target\n   file is given the same name as sourceFile but with the opposite extension.\n");
	printf("\n");
	printf("Options:\n");
	printf("-p : Pause upon completion. (Handy for drag-and-drop operation.)\n");
	printf("-g(factor) : (PNG->BLP only) Applies a Gamma factor to the entire image.\n   (factor) is a number between 0.0 and 1.0.  If source texture is PNG RGB,\n   an alpha channel will be added.\n");
	printf("-a(value) : Sets the Alpha threshold when converting from palettized, 8-bit\n   BLPs to palettized PNGs.  Value is a number between 0 and 255.  Source alpha\n   values below the threshold are fully transparent, above are fully opaque.\n   Default is %u.\n", g_byAlphaThreshold);
	printf("-r : pReserve alpha.  Changes the conversion formats so that 8-bit alpha\n   palettized BLPs <-> RGBA PNGs.  Alpha values are preserved in this process\n   but the palette can be changed so it isn't lossless.\n");
	printf("-m : Multi-file mode.  In this mode, multiple files can be input after options.\n   It is not possible to specify custom output names for them in this mode.\n");
	printf("-i : Info mode.  Only outputs information about the file(s) specified.  This\n   option automatically sets the -v and -m options.\n");
	printf("-c : Create mip test image.  Outputs an image which contains all of the\n   generated mip levels.\n");
	printf("-e : pause on Error.\n");
	printf("-n : No mips.  No mip levels will be generated when creating a BLP.\n");
}

int main(int argc, char* argv[])
{
	int result = 0;

	const char* pszSourceFilename = NULL;
	const char* pszDestFilename = NULL;

	if (argc == 1)
	{
		printf("ERROR: Missing filename argument.\n\n");
		Usage();
		result = -1;
		goto Finish;
	}
	
	int iArg;
	for (iArg = 1; iArg < argc; ++iArg)
	{
		if ('-' == argv[iArg][0])
		{
			switch (argv[iArg][1])
			{
			case 'p':
			case 'P':
				g_bPauseAtEnd = true;				
				break;
			case 'g':
			case 'G':
				g_fGammaFactor = (float) atof(&argv[iArg][2]);
				if (g_fGammaFactor < 0.0f || g_fGammaFactor > 1.0f)
				{
					printf("ERROR: Gamma factor must between 0.0 and 1.0.\n");
					result = -1;
					goto Finish;
				}
				break;
			case 'a':
			case 'A':
			{
				int threshold = atoi(&argv[iArg][2]);
				if (threshold < 0 || threshold > 255)
				{
					printf("ERROR: Alpha threshold must be between 0 and 255.\n");
					result = -1;
					goto Finish;
				}
				g_byAlphaThreshold = threshold;
				break;
			}
			case 'r':
			case 'R':
				g_bSavePaletteWithAlphaToRGBA = true;
				break;
			case 'm':
			case 'M':
				g_bMultiFileMode = true;
				break;
			case 'i':
			case 'I':
				printf("File Info Mode.\n");
				g_bInfoMode = true;
				g_bVerbose = true;
				g_bMultiFileMode = true;
				break;
			case 'c':
			case 'C':
				g_bCreateMipTestImage = true;
				break;
			case 'e':
			case 'E':
				g_bPauseOnError = true;
				break;
			case 'n':
			case 'N':
				g_bNoMips = true;
				break;
			//! verbose option, or quiet option.
			default:
				printf("ERROR; %c is not a valid option.\n", argv[iArg][1]);
				result = -1;
				goto Finish;
			}
		}
		else
		{
			break;
		}
	}

	if (iArg == argc)
	{
		printf("ERROR: Filename argument missing.\n");
		result = -1;
		goto Finish;
	}
	else if (g_bMultiFileMode)
	{
		do
		{
			//result = ProcessFile(argv[iArg], NULL);

			WIN32_FIND_DATA aFindData;
			HANDLE hFindFile = FindFirstFile(argv[iArg], &aFindData);
			if (INVALID_HANDLE_VALUE == hFindFile)
			{
				printf("ERROR: Couldn't find file '%s'.\n", argv[iArg]);
				result = -1;
				break;
			}

			do
			{
				result = ProcessFile(aFindData.cFileName, NULL);
				if (result != 0)
					break;
			}
			while (FindNextFile(hFindFile, &aFindData));

			FindClose(hFindFile);

			++iArg;
		}
		while ((result == 0) && (iArg < argc));
	}
	else
	{
		pszSourceFilename = argv[iArg++];
		if (!g_bMultiFileMode && iArg < argc)
		{
			pszDestFilename = argv[iArg];
		}
		result = ProcessFile(pszSourceFilename, pszDestFilename);
	}

	// Test:
	// BLP_U_A0			| ok
	// BLP_U_A8			| ok
	// BLP_U_A8	-> RGBA	| ok
	// BLP_C_A0			| ok
	// BLP_C_A1			| ? BLPConverter converts this to PNG_RGBA, but that converts back to dxt3. 
	//						in contrast, if you go blp->png->blp with wowimage it loses the alpha channel completely
	// BLP_C_A8			| ok
	// PNG_RGB			| ok, igok (pig)
	// PNG_RGBA			| ok, igok (horde armory sign)
	// PNG_RGBA	-> P A8	| ok, igok (fang top)
	// PNG_P8			| ok, igok (character skin)
	// PNG_P8_1trans	| ok, igok (fang top)
	// BLP_U_A1			| <unused>
	
Finish:
	if (g_bPauseAtEnd || (g_bPauseOnError && result != 0) || g_bDebugPauseOnExit)
	{
		printf("Press any key to continue...\n");
		_getch();
	}

	return result;
}
