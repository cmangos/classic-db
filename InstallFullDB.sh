#!/bin/bash

####################################################################################################
#
#   Simple helper script to insert clean classic DB
#
####################################################################################################

#internal use
SCRIPT_FILE="InstallFullDB.sh"
CONFIG_FILE="InstallFullDB.config"
# testing only
ADDITIONAL_PATH=""

#variables assigned and read from $CONFIG_FILE
DB_HOST="localhost"
DATABASE=""
USERNAME=""
PASSWORD=""
MYSQL=""
CORE_PATH=""
DEV_UPDATES="NO"

function create_config {
# Re(create) config file
cat >  $CONFIG_FILE << EOF
####################################################################################################
# This is the config file for the '$SCRIPT_FILE' script
#
# You need to insert
#   DB_HOST:      Host on which the database resides
#   DATABASE:     Your database
#   USERNAME:     Your username
#   PASSWORD:     Your password
#   CORE_PATH:    Your path to core's directory (OPTIONAL: Use if you want to apply remaining core updates automatically)
#   SD2_PATH:     Your path to SD2's directory (OPTIONAL: Use if you want to apply SD2 database automatically)
#   ACID_PATH:    Your path to a git-clone of ACID (OPTIONAL: Use it if you want to install recent downloaded acid)
#   MYSQL:        Your mysql command (usually mysql)
#
####################################################################################################

## Define the host on which the mangos database resides (typically localhost)
DB_HOST="localhost"

## Define the database in which you want to add clean classic DB
DATABASE="mangos"

## Define your username
USERNAME="mangos"

## Define your password (It is suggested to restrict read access to this file!)
PASSWORD="mangos"

## Define the path to your core's folder (This is optional)
##   If set the core updates located under sql/updates from this mangos-directory will be added automatically
CORE_PATH=""

## Define the path to the folder into which the SD2 database is located (This is optional)
##   If set the file scriptdev2.sql will be applied from this folder
SD2_PATH=""

## Define the path to the folder into which you cloned ACID (This is optional)
##   If set the file acid_classic.sql will be applied from this folder
ACID_PATH=""

## Define your mysql programm if this differs
MYSQL="mysql"

## Define if the 'dev' directory for processing development SQL files needs to be used
##   Set the variable to "YES" to use the dev directory 
DEV_UPDATES="NO"

# Enjoy using the tool
EOF
}

function display_help {
echo
echo "Welcome to the classic DB helper $SCRIPT_FILE"
echo
echo "Run this tool from a bash compatible terminal (on windows like Git Bash)"
echo
echo "To configure edit the file $CONFIG_FILE"
echo
}

# Check if config file present
if [ ! -f $CONFIG_FILE ]
then
  create_config
  display_help
  exit 1
fi

. $CONFIG_FILE

MYSQL_COMMAND="$MYSQL -h$DB_HOST -u$USERNAME -p$PASSWORD $DATABASE"

## Print header
echo
echo "Welcome to the classic DB helper $SCRIPT_FILE"
echo
echo "ATTENTION: Your database $DATABASE will be reset to classic DB!"
echo "Please bring your repositories up-to-date!"
echo "Press CTRL+C to exit"
# show a mini progress bar
for i in {1..19}
do
 echo -ne .
 sleep 1
done
echo .

## Full Database
echo "Process classic database v1.6.5 'The Wailing Pet, The MidSummer Joy and all that sort of things'."
$MYSQL_COMMAND < ${ADDITIONAL_PATH}Full_DB/ClassicDB_1_6_5_z2683.sql
[[ $? != 0 ]] && exit 1

## Updates
echo "Process database updates"
for UPDATEFILE in ${ADDITIONAL_PATH}updates/[0-9]*.sql
do
    if [ -e "$UPDATEFILE" ]
    then
        for UPDATE in ${ADDITIONAL_PATH}updates/[0-9]*.sql
        do
            echo "   process update $UPDATE"
            $MYSQL_COMMAND < $UPDATE
            [[ $? != 0 ]] && exit 1
        done
        echo "Updates applied"
    else
        echo "   No update to process"
    fi
    break
done

LAST_CORE_REV="2684"
# process future release folders
NEXT_MILESTONES="0.12.4 0.12.5"

if [ "$CORE_PATH" != "" ]
then
  if [ ! -e $CORE_PATH ]
  then
    echo "Path to core provided, but directory not found! $CORE_PATH"
    exit 1
  fi
#
#               Core updates
#
  echo
  echo
  echo "Applying additional core updates from path $CORE_PATH"
  echo

  for NEXT_MILESTONE in ${NEXT_MILESTONES};
  do
    # A new milestone was released, apply additional updates
    if [ -e ${CORE_PATH}/sql/updates/${NEXT_MILESTONE}/ ]
    then
      echo "Apply core updates from milestone $NEXT_MILESTONE"
      for f in ${CORE_PATH}/sql/archives/${NEXT_MILESTONE}/z*_*_mangos_*.sql
      do
        CUR_REV=`basename $f | sed 's/^\([0-9]*\)_.*/\1/' `
        if [ "$CUR_REV" -gt "$LAST_CORE_REV" ]
        then
          # found a newer core update file
          echo "Append core update `basename $f` to database $DATABASE"
          $MYSQL_COMMAND < $f
          [[ $? != 0 ]] && exit 1
        fi
      done
    fi
  done

  # Apply remaining files from main folder
  for f in $CORE_PATH/sql/updates/mangos/z*_*_mangos_*.sql
  do
    CUR_REV=`basename $f | sed 's/^\z\([0-9]*\)_.*/\1/' `
    if [ "$CUR_REV" -gt "$LAST_CORE_REV" ]
    then
      # found a newer core update file
      echo "Append core update `basename $f` to database $DATABASE"
      $MYSQL_COMMAND < $f
      [[ $? != 0 ]] && exit 1
    fi
  done
  echo "All core updates applied"
fi

#
#               SD2 Full DB file
#

if [ "$SD2_PATH" != "" ]
then
  if [ ! -e $SD2_PATH ]
  then
    echo "Path to SD2 database provided, but directory not found! $SD2_PATH"
    exit 1
  fi

  # Apply scriptdev2.sql
  echo "Applying $SD2_PATH/scriptdev2.sql ..."
  $MYSQL_COMMAND < ${SD2_PATH}/scriptdev2.sql
  [[ $? != 0 ]] && exit 1
  echo "Recent state of ScriptDev2 applied"
fi

#
#               ACID Full file
#

if [ "$ACID_PATH" != "" ]
then
  if [ ! -e $ACID_PATH ]
  then
    echo "Path to acid provided, but directory not found! $ACID_PATH"
    exit 1
  fi

  # Apply acid_classic.sql
  echo "Applying $ACID_PATH/acid_classic.sql ..."
  $MYSQL_COMMAND < ${ACID_PATH}/acid_classic.sql
  [[ $? != 0 ]] && exit 1
  echo "Recent state of ACID applied"
fi

#
#    DEVELOPERS UPDATES
#
if [ "$DEV_UPDATES" == "YES" ]
then
  echo "Process development updates"
  for UPDATEFILE in ${ADDITIONAL_PATH}dev/*.sql
  do
    if [ -e "$UPDATEFILE" ]
    then
        for UPDATE in ${ADDITIONAL_PATH}dev/*.sql
        do
            echo "   process update $UPDATE"
            $MYSQL_COMMAND < $UPDATE
            [[ $? != 0 ]] && exit 1
        done
        echo "Development updates applied"
    else
        echo "   No development update to process"
    fi
    break
done
  
fi

echo
echo "You have now a clean and recent classic DB database loaded into $DATABASE"
echo "Enjoy using classic DB"
echo
