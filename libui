#!/bin/bash
# TODO: implement 'retry until user does it correctly' everywhere
# TODO: at some places we should check if $1 etc is only 1 word because we often depend on that
# TODO: standardize. eg everything $1= question/title, $2=default. also default should probably be 'no' for no default everywhere
# TODO: figure out something to make dia windows always big enough, yet fit nicely in the terminal
# TODO: don't enforce default values in ask_string* functions, and maybe others

# you can call this function to change settings, before calling other libui functions or afterwards
# it must always be called at least once to set the right variables, but it gets automatically called once at the end of this file
# Don't set the variable or leave it empty to set the default value
# $1 ui type (dia or cli). default: cli
# $2 directory for tmp files. default: /tmp
# $3 logfile (or string of logfiles, separated by whitespace). default: no logging
# $4 array of categories you will use in debug calls. (useful when grepping logfiles). default: no debugging
# this library uses the UI debug category internally, you don't need to specify it. we add it automatically
libui_sh_init ()
{
	LIBUI_UI=${1:-cli}
	local allowed_uis=('cli' 'dia')
	check_is_in "$LIBUI_UI" "${allowed_uis[@]}" || die_error "libui_sh_init \$1 must be one of 'cli', 'dia' or '' (for cli)"
	[ "$LIBUI_UI" == 'dialog' ] && ! which dialog &>/dev/null && die_error "Required dependency dialog not found"
	LIBUI_TMP_DIR=/tmp
	if [ -n "$2" ]; then
		LIBUI_TMP_DIR=$2
		mkdir -p $LIBUI_TMP_DIR 2>/dev/null
	fi
	LIBUI_LOG=0
	if [ -n "$3" ]; then
		LIBUI_LOG=1
		LIBUI_LOG_FILE="$3"
	fi
	LIBUI_DEBUG=0
	shift 3 || true
	if [ -n "$1" ]; then
		LIBUI_DEBUG=1
		LIBUI_DEBUG_CATEGORIES=("$@")
		check_is_in 'UI' "${LIBUI_DEBUG_CATEGORIES[@]}" || LIBUI_DEBUG_CATEGORIES+=('UI')
	fi
	LIBUI_DIA_SUCCESSIVE_ITEMS=$LIBUI_TMP_DIR/libui-sh-dia-successive-items
	LIBUI_FOLLOW_PID=$LIBUI_TMP_DIR/libui-sh-follow-pid
	LIBUI_DIA_MENU_TEXT="Use the UP and DOWN arrows to navigate menus.  Use TAB to switch between buttons and ENTER to select."
	return 0
}


## Helper functions ##
# $1 needle
# $2 set (array) haystack
check_is_in ()
{
	[ -n "$1" ] || die_error "check_is_in needs a non-empty needle as \$1 and a haystack as \$2!(got: check_is_in '$1' '$2'" # haystack can be empty though

	local needle="$1" element
	shift
	for element
	do
		[[ $element != $needle ]] || return 0
	done
	return 1
}

# prompts user to choose an editor, and exports $EDITOR
# the list of choices is automatically adapted based on locally available editors
# if $EDITOR is non-empty and found, we return right away, unless $1 is 'force'
seteditor() {
	local default=nano
	if [ -n "$EDITOR" ] && which "$EDITOR" >/dev/null
	then
		[ "$1" != 'force' ] && return 0
		default=$EDITOR
	fi
	local editor
	local opts=()
	declare -A LIBUI_EDITORS=(["nano"]="nano (easy)" ["pico"]="pico (easy)" ["joe"]="joe (bit more powerful)" ["vi"]="vi (advanced)" ["vim"]="vim (advanced)")
	for editor in ${!LIBUI_EDITORS[@]}
	do
		which $editor &>/dev/null && opts+=($editor "${LIBUI_EDITORS[$editor]}")
	done
	ask_option $default "Text editor selection" "Select a Text Editor to Use" required "${opts[@]}" || return 1
	check_is_in "$ANSWER_OPTION" "${!LIBUI_EDITORS[@]}" && EDITOR=$ANSWER_OPTION || EDITOR=$default
	export EDITOR
}


### Functions that your code can use. Cli/dialog mode is fully transparant.  This library takes care of it ###
# you could write your own functions implementing other things (kdedialogs, zenity dialogs, ..),
# - just implement the functions below
# - source your library
# - libui-sh-init with the correct UI type


# display error message and die
die_error ()
{
    DIE_ERROR=1 # avoids functions the debug function relies on (i.e. check_is_in) calling us back, causing a loop
    debug 'UI' "die_error $@"
	echo -e "ERROR: $@" >&2
	exit 2
}

# like die_error, but only to be called by debug function, invocations of this function
# don't get debugged to avoid loops
die_error_raw ()
{
    echo -e "ERROR: $@" >&2
    exit 2
}


# display warning message
# $1 title
# $2 item to show
# $3 type of item.  msg or text if it's a file. (optional. defaults to msg)
show_warning ()
{
	[ -z "$1" ] && die_error "show_warning needs a title"
	[ -z "$2" ] && die_error "show_warning needs an item to show"
	[ -n "$3" -a "$3" != msg -a "$3" != text ] && die_error "show_warning \$3 must be text or msg"
	local type=msg
	[ -n "$3" ] && type=$3
	debug 'UI' "show_warning '$1': $2 ($type)"
	[ `type -t _${LIBUI_UI}_show_warning` == function ] || die_error "_${LIBUI_UI}_show_warning is not a function"
	_${LIBUI_UI}_show_warning "$1" "$2" $type
}


#notify user
notify ()
{
	debug 'UI' "notify: $@"
	[ `type -t _${LIBUI_UI}_notify` == function ] || die_error "_${LIBUI_UI}_notify is not a function"
	_${LIBUI_UI}_notify "$@"
}


# like notify, but user does not need to confirm explicitly when in dia mode
# $1 str
# $2 0/<listname> this inform call is part of a successive list of things (eg repeat previous things, keep adding items to a list) (only needed for dia, cli does this by design).
#   You can keep several "lists of successive things" by grouping them with <listname>
#   this is somewhat similar to follow_progress.  Note that this list isn't cleared unless you set $3 to 1.  default 0. (optional).
# $3 0/1 this is the last one of the group of several things (eg clear buffer).  default 0. (optional)
inform () #TODO: when using successive things, the screen can become full and you only see the old stuff, not the new
{
	local successive=${2:-0}
	local succ_last=${3:-0}
	debug 'UI' "inform: $1"
	[ `type -t _${LIBUI_UI}_inform` == function ] || die_error "_${LIBUI_UI}_inform is not a function"
	_${LIBUI_UI}_inform "$1" $successive $succ_last
}

# logging of stuff
log ()
{
	local file
	[ "$LIBUI_LOG" = 1 ] || return 0
	for file in $LIBUI_LOG_FILE; do
		[ -z "$file" ] && continue;
		local dir=$(dirname $file)
		mkdir -p $dir || die_error "Cannot create log directory $dir"
		local str="[LOG] `date +"%Y-%m-%d %H:%M:%S"` $@"
		echo -e "$str" >> $file || die_error "Cannot log $str to $file"
	done
}


# $1 = one or more debug categories (must be in a list of specified categories. see init function) (separated by spaces)
#      Useful when grepping in the logfile
# $2 = string to log
# always make sure this function never calls die_error, not even indirectly through other functions we call here, to avoid loops
debug ()
{
	local cat
	local file
	[ "$LIBUI_DEBUG" = "1" ] || return 0
	[ -n "$1" ] || die error_raw "you must specify at least one (non-empty) debug category"
	[ -n "$2" ] || die_error_raw "debug \$2 cannot be empty"
	for cat in $1
	do
		[ -n "$DIE_ERROR" ] || check_is_in $cat "${LIBUI_DEBUG_CATEGORIES[@]}" || die_error_raw "debug \$1 contains a value ($cat) which is not a valid debug category"
	done
	for file in $LIBUI_LOG_FILE; do
		[ -z "$file" ] && continue;
		local dir=$(dirname $file)
		mkdir -p $dir || die_error_raw "Cannot create log directory $dir"
		local str="[DEBUG $1 ] $2"
		echo -e "$str" >> $file || die_error_raw "Cannot debug $str to $file"
	done
}



# ask for a timezone.
# this is pretty similar to how tzselect looks, but we support dia+cli + we don't actually change the clock + we don't show a date/time and ask whether it's okay. that comes later.
ask_timezone ()
{
	local REGIONS=
	local region
	for region in $(grep '^[A-Z]' /usr/share/zoneinfo/zone.tab | cut -f 3 | sed -e 's#/.*##g'| sort -u); do
		REGIONS="$REGIONS $region -"
	done
	while true; do
		ask_option no "Please select a region" '' required $REGIONS || return 1
		region=$ANSWER_OPTION
		local ZONES=
		local zone
		for zone in $(grep '^[A-Z]' /usr/share/zoneinfo/zone.tab | grep $region/ | cut -f 3 | sed -e "s#$region/##g"| sort -u); do
			ZONES="$ZONES $zone -"
		done
		ask_option no "Please select a timezone" '' required $ZONES || return 1
		zone=$ANSWER_OPTION
		ANSWER_TIMEZONE="$region/$zone" && return
	done
}


# ask the user to make a selection from a certain group of things
# $1 question
# $2 whether each option gets an extra field for elaborate explanation: 1/0
# shift 2; $@ list of options, where each option is: $tag $item ON|OFF [elaborate_expl]
# if the tag suffices for you, you can set item to ^ for ON items and - for OFF items (for some visual indication). these items will not be shown in cli mode.
# tags may not contain newlines because we use that as output separator. (due to dialog limitation). quotes are ok.
# the extra explanation field may not contain newlines, and \n are not recognized in dia mode. (dialog limitation), in cli mode this is ok
# gives you $ANSWER_CHECKLIST, an array containing all tags
ask_checklist ()
{
	[ -z "$1" ] && die_error "ask_checklist needs a question!"
	[ "$2" != 0 -a "$2" != 1 ] && die_error "ask_checklist param 2 needs to be 0/1 to denote whether there's an elaborate explanation field per option"
	[ -z "$5" ] && debug 'UI' "ask_checklist args: $@" && die_error "ask_checklist makes only sense if you specify at least 1 thing (tag,item and ON/OFF switch)"
	[ `type -t _${LIBUI_UI}_ask_checklist` == function ] || die_error "_${LIBUI_UI}_ask_checklist is not a function"
	_${LIBUI_UI}_ask_checklist "$@"
}


ask_datetime ()
{
	[ `type -t _${LIBUI_UI}_ask_datetime` == function ] || die_error "_${LIBUI_UI}_ask_datetime is not a function"
	_${LIBUI_UI}_ask_datetime "$@"
}


# ask for a number.
# $1 question
# $2 lower limit (optional)
# $3 upper limit (optional. set 0 for none)
# $4 default (optional)
# sets $ANSWER_NUMBER to the number the user specified
# returns 1 if the user cancelled or did not enter a numeric, 0 otherwise
ask_number ()
{
	[ -z "$1" ] && die_error "ask_number needs a question!"
	[ -n "$2" ] && [[ "$2" = *[^0-9]* ]] && die_error "ask_number \$2 must be a number! not $2"
	[ -n "$3" ] && [[ "$3" = *[^0-9]* ]] && die_error "ask_number \$3 must be a number! not $3"
	[ -n "$4" ] && [[ "$4" = *[^0-9]* ]] && die_error "ask_number \$4 must be a number! not $4"
	[ `type -t _${LIBUI_UI}_ask_number` == function ] || die_error "_${LIBUI_UI}_ask_number is not a function"
	_${LIBUI_UI}_ask_number "$1" $2 $3 $4
}


# ask the user to choose something
# $1 default item (set to 'no' for none)
# $2 title
# $3 additional explanation (default: '')
# $4 type (required or optional). '' means required. cancel labels will be 'Cancel' and 'Skip' respectively.
# shift 4 ; $@ list of options. first tag. then name. (eg tagA itemA "tag B" 'item B' )

# $ANSWER_OPTION : selected answer (if none selected: default (if available), or empty string otherwise). if user hits cancel or skip, this is an empty string.
# $?             : 0 if the user selected anything or skipped (when optional), when user cancelled: 1
ask_option ()
{
	[ `type -t _${LIBUI_UI}_ask_option` == function ] || die_error "_${LIBUI_UI}_ask_option is not a function"
	[ -z "$1" ] && debug 'UI' "ask_option args: $@" && die_error "ask_option \$1 must be the default item (or 'no' for none"
	[ -z "$2" ] && debug 'UI' "ask_option args: $@" && die_error "ask_option \$2 must be the title"
	[ -z "$4" -o "$4" = required -o "$4" = optional ] && debug 'UI' "ask_option args: $@" || die_error "ask option \$4 must be required or optional or ''. not $4"
	[ -z "$6" ] && debug 'UI' "ask_option args: $@" && die_error "ask_option makes only sense if you specify at least one option (with tag and name)" #nothing wrong with only 1 option.  it still shows useful info to the user
	_${LIBUI_UI}_ask_option "$@"
}


# ask the user a password. return is stored in $PASSWORD or $<TYPE>_PASSWORD
# $1 type (optional.  eg 'svn', 'ssh').
ask_password ()
{
	[ `type -t _${LIBUI_UI}_ask_password` == function ] || die_error "_${LIBUI_UI}_ask_pasword is not a function"
	_${LIBUI_UI}_ask_password "$@"
}


# ask for a string.
# $1 question
# $2 default (optional)
# $3 exitcode to use when string is empty and there was no default, or default was ignored (1 default)
# Sets $ANSWER_STRING to response.
# returns 1 if the user cancelled, 0 otherwise
ask_string ()
{
	[ -z "$1" ] && die_error "ask_string needs a question!"
	[ `type -t _${LIBUI_UI}_ask_string` == function ] || die_error "_${LIBUI_UI}_ask_string is not a function"
	_${LIBUI_UI}_ask_string "$1" "$2" "$3"
}


# ask multiple questions te get multiple string answers (form).
# $1 question/title
# $2 exitcode to use when one of the strings is empty and there was no default, or default was ignored (1 default) (ignored in dia mode)
# [ $3 questionlabel, $4 questiondefaultvalue , .. ]
# returns 1 if the user cancelled, 0 otherwise
# populates $ANSWER_VALUES array, indexed by question number starting at 0.
ask_string_multiple ()
{
	[ -z "$1" ] && die_error "ask_string_multiple needs a question!"
	[ `type -t _${LIBUI_UI}_ask_string_multiple` == function ] || die_error "_${LIBUI_UI}_ask_string_multiple is not a function"
	_${LIBUI_UI}_ask_string_multiple "$@"
}


# ask a yes/no question.
# $1 question
# $2 default answer yes/no (optional)
# returns 0 if response is yes/y (case insensitive).  1 otherwise
ask_yesno ()
{
	[ -z "$1" ] && die_error "ask_yesno needs a question!"
	[ `type -t _${LIBUI_UI}_ask_yesno` == function ] || die_error "_${LIBUI_UI}_ask_yesno is not a function"
	_${LIBUI_UI}_ask_yesno "$@"
}





# follow the progress of something by showing it's log, updating real-time
# $1 title
# $2 logfile
# $3 pid to monitor. if process stopped, stop following (only used in cli mode)
follow_progress ()
{
	[ -z "$1" ] && die_error "follow_progress needs a title!"
	[ -z "$2" ] && die_error "follow_progress needs a logfile to follow!"
	[ `type -t _${LIBUI_UI}_follow_progress` == function ] || die_error "_${LIBUI_UI}_follow_progress is not a function"
	_${LIBUI_UI}_follow_progress "$@"
}






### Internal functions, supposed to be only used internally in this library ###


# DIALOG() taken from setup
# an el-cheapo dialog wrapper
#
# parameters: see dialog(1)
# returns: whatever dialog did
_dia_dialog()
{
	dialog --backtitle "$TITLE" --aspect 15 "$@" 3>&1 1>&2 2>&3 3>&-
}


_dia_show_warning ()
{
	_dia_dialog --title "$1" --exit-label "Continue" --$3box "$2" 0 0 || die_error "dialog could not show --$3box $2. often this means a file does not exist"
}


_dia_notify ()
{
	_dia_dialog --msgbox "$@" 0 0
}


_dia_inform ()
{
	local str="$1"
	if [ "$2" != 0 ]
	then
		echo "$1" >> $LIBUI_DIA_SUCCESSIVE_ITEMS-$2
		str=`cat $LIBUI_DIA_SUCCESSIVE_ITEMS-$2`
	fi
	[ "$3" = 1 ] && rm $LIBUI_DIA_SUCCESSIVE_ITEMS-$2
	_dia_dialog --infobox "$str" 0 0
}


_dia_ask_checklist ()
{
	local str=$1
	local elaborate=$2
	shift 2
	local list=()
	while [ -n "$1" ]
	do
		[ -z "$2" ] && die_error "no item given for element $1"
		[ -z "$3" ] && die_error "no ON/OFF switch given for element $1 (item $2)"
		[ "$3" != ON -a "$3" != OFF ] && die_error "element $1 (item $2) has status $3 instead of ON/OFF!"
		list+=("$1" "$2" $3)
		[ $elaborate -gt 0 ] && list+=("$4") # this can be an empty string, that's ok.
		shift 3
		[ $elaborate -gt 0 ] && shift
	done
	# i wish dialog would accept something like: --output-separator $'\0'
	# but it doesn't. there really is no good way to separate items currently
	# let's assume there are no newlines in the item tags
	ANSWER_CHECKLIST=()
	local elab=''
	[ $elaborate -gt 0 ] && elab='--item-help'
	local line
	while read -r line
	do
		ANSWER_CHECKLIST+=("$line")
	done < <(_dia_dialog --separate-output $elab --checklist "$str" 0 0 0 "${list[@]}")
	local ret=$?
	debug 'UI' "_dia_ask_checklist: user checked ON: ${ANSWER_CHECKLIST[@]}"
	return $ret
}


_dia_ask_datetime ()
{
	# display and ask to set date/time
	local _date _time
	_date=$(_dia_dialog --calendar "Set the date.\nUse <TAB> to navigate and arrow keys to change values." 0 0 0 0 0) || return 1 # form like: 07/12/2008
	_time=$(_dia_dialog --timebox "Set the time.\nUse <TAB> to navigate and up/down to change values." 0 0) || return 1 # form like: 15:26:46
	debug 'UI' "Date as specified by user $_date time: $_time"

	# DD/MM/YYYY hh:mm:ss -> MMDDhhmmYYYY.ss (date default format, set like date $ANSWER_DATETIME)  Not enabled because there is no use for it i think.
	# ANSWER_DATETIME=$(echo "$_date" "$_time" | sed 's#\(..\)/\(..\)/\(....\) \(..\):\(..\):\(..\)#\2\1\4\5\3\6#g')
	# DD/MM/YYYY hh:mm:ss -> YYYY-MM-DD hh:mm:ss ( date string format, set like date -s "$ANSWER_DATETIME")
	ANSWER_DATETIME="$(echo "$_date" "$_time" | sed 's#\(..\)/\(..\)/\(....\) \(..\):\(..\):\(..\)#\3-\2-\1 \4:\5:\6#g')"
}


_dia_ask_number ()
{
	#TODO: i'm not entirely sure this works perfectly. what if user doesnt give anything or wants to abort?
	while true
	do
		local str="$1"
		local str2
		[ -n $2 ] && str2="min $2"
		[ -n $3 -a $3 != '0' ] && str2="$str2 max $3"
		[ -n "$str2" ] && str="$str ( $str2 )"
		ANSWER_NUMBER=$(_dia_dialog --inputbox "$str" 0 0 $4)
		local ret=$?
		if [[ $ANSWER_NUMBER = *[^0-9]* ]] #TODO: handle exit state
		then
			show_warning 'Invalid number input' "$ANSWER_NUMBER is not a number! try again."
		else
			if [ -n "$3" ] && [ $3 != '0' -a $ANSWER_NUMBER -gt $3 ]
			then
				show_warning 'Invalid number input' "$ANSWER_NUMBER is bigger then the maximum,$3! try again."
			elif [ -n "$2" ] && [ $ANSWER_NUMBER -lt $2 ]
			then
				show_warning 'Invalid number input' "$ANSWER_NUMBER is smaller then the minimum,$2! try again."
			else
				break
			fi
		fi
	done
	debug 'UI' "_dia_ask_number: user entered: $ANSWER_NUMBER"
	[ -z "$ANSWER_NUMBER" ] && return 1
	return $ret
}


_dia_ask_option ()
{
	local DEFAULT=""
	[ "$1" != 'no' ] && DEFAULT="--default-item $1"
	local DIA_MENU_TITLE=$2
	local EXTRA_INFO=$3
	local TYPE=${4:-required}
	shift 4
	local CANCEL_LABEL=Cancel
	[ $TYPE == optional ] && CANCEL_LABEL='Skip'
	ANSWER_OPTION=$(_dia_dialog $DEFAULT --cancel-label $CANCEL_LABEL --colors --title " $DIA_MENU_TITLE " --menu "$LIBUI_DIA_MENU_TEXT $EXTRA_INFO" 0 0 0 "$@")
	local ret=$?
	debug 'UI' "dia_ask_option: ANSWER_OPTION: $ANSWER_OPTION, returncode (skip/cancel): $ret ($DIA_MENU_TITLE)"
	[ $TYPE == required ] && return $ret
	return 0 # TODO: check if dialog returned >0 because of an other reason then the user hitting 'cancel/skip'
}


_dia_ask_password ()
{
	local type_l=
	local type_u=
	if [ -n "$1" ]
	then
		type_l=`tr '[:upper:]' '[:lower:]' <<< $1`
		type_u=`tr '[:lower:]' '[:upper:]' <<< $1`
	fi

	local ANSWER=$(_dia_dialog --passwordbox  "Enter your $type_l password" 8 65 "$2")
	local ret=$?
	local ${type_u}_PASSWORD
	local PASSWORD
	[ -n "$type_u" ] && read ${type_u}_PASSWORD <<< $ANSWER
	[ -z "$type_u" ] && PASSWORD=$ANSWER
	echo $ANSWER
	debug 'UI' "_dia_ask_password: user entered <<hidden>>"
	return $ret
}


_dia_ask_string ()
{
	local exitcode=${3:-1}
	ANSWER_STRING=$(_dia_dialog --inputbox "$1" 0 0 "$2")
	local ret=$?
	debug 'UI' "_dia_ask_string: user entered $ANSWER_STRING"
	[ -z "$ANSWER_STRING" ] && return $exitcode
	return $ret
}


_dia_ask_string_multiple ()
{
	local MAXRESPONSE=0
	local formtitle="$1"
	local exitcode="${2:-1}"
	shift 2

	local items=()
	local line=1
	unset m; local i=0

	while [ -n "$1" ]
	do
		[ -z "$2" ] && die_error "No default value for $1"
		# format: Label Y X Value Y X display-size value-size
		items+=("$1" $line 1 "$2" $line 20 20 $MAXRESPONSE)
		let line++
		shift 2
	done

	ANSWER_VALUES=()
	while read -r line
	do
		ANSWER_VALUES+=("$line")
	done < <(_dia_dialog --form "$formtitle" 15 50 0 "${items[@]}")
}



_dia_ask_yesno ()
{
	local default
	str=$1
	# If $2 contains an explicit 'no' we set defaultno for yesno dialog
	[ "$2" == "no" ] && default="--defaultno"
	dialog $default --yesno "$str" 0 0 # returns 0 for yes, 1 for no
	local ret=$?
	[ $ret -eq 0 ] && debug 'UI' "dia_ask_yesno: User picked YES"
	[ $ret -gt 0 ] && debug 'UI' "dia_ask_yesno: User picked NO"
	return $ret
}

# sets FOLLOW_PID to the pid of dialog, so you can kill dialog when you no longer want to "tail"
_dia_follow_progress ()
{
	local title=$1
	local logfile=$2

	_dia_dialog --title "$1" --no-kill --tailboxbg "$2" 0 0 >$LIBUI_FOLLOW_PID
	FOLLOW_PID=`cat $LIBUI_FOLLOW_PID`
	rm $LIBUI_FOLLOW_PID

	# I wish something like this would work.  anyone who can explain me why it doesn't get's to be contributor of the month.
	# FOLLOW_PID=`_dia_dialog --title "$1" --no-kill --tailboxbg "$2" 0 0 2>&1 >/dev/null | head -n 1`

	# Also this doesn't work:
	# _dia_dialog --title "$1" --no-kill --tailboxbg "$2" 0 0 &>/dev/null &
	# FOLLOW_PID=$!

	# Also the new stdout-stderr-swapping isn't a clean solution for that. When command substitition is used bash will
	# wait until the command terminates, dialog's forking to background will fail.
	# FOLLOW_PID=$(_dia_dialog --title "$1" --no-kill --tailboxbg "$2" 0 0)
}




_cli_show_warning ()
{
	echo "WARNING: $1"
	[ "$3" = msg  ] && echo -e "$2"
	[ "$3" = text ] && (cat $2 || die_error "Could not cat $2")
}


_cli_notify ()
{
	echo -e "$@"
}


_cli_inform ()
{
	echo -e "$1"
}


_cli_ask_checklist ()
{
	local str=$1
	local elaborate=$2
	shift 2
	ANSWER_CHECKLIST=()
	local adv=0
	if [ -n "$9" ]
	then
		# if we have more then 2 elements, switch to advanced mode where we create a tmp file, and put all elements on a separate line
		# we open text editor where user can comment lines to disable items.  this is easier to navigate and manipulate.
		# to check for a 3rd element we use field 9. remember elaborate_expl field is optional, and when given can be zero-length.  so input could be one of:
		# t1 i1 ON|OFF '' t2 i2 ON|OFF '' t3 i3 ON|OFF ''
		# t1 i1 ON|OFF t2 i2 ON|OFF t3 i3 ON|OFF
		local adv=1 && seteditor || return 1
		local tmpfile=$(mktemp --tmpdir=$LIBUI_TMP_DIR _cli_ask_checklist-data.XXXX) || return 1
		echo "Comment sign in front of a line indicates OFF-setting." >> $tmpfile
		echo "Edit this file, when done, just exit the editor" >> $tmpfile
		echo >> $tmpfile
		local allowed_tags=()
	fi
	declare -A defaults
	defaults['ON']=yes
	defaults['OFF']=no
	while [ -n "$1" ]
	do
		[ -z "$2" ] && die_error "no item given for element $1"
		[ -z "$3" ] && die_error "no ON/OFF switch given for element $1 (item $2)"
		[ "$3" != ON -a "$3" != OFF ] && die_error "element $1 (item $2) has status $3 instead of ON/OFF!"
		local item=$1
		local elab=
		[ $elaborate -gt 0 ] && elab=$4
		[ "$2" != '-' -a "$2" != '^' ] && item="$1 ($2)"
		if [ $adv -eq 0 ]
		then
			[ -n "$elab" ] && elab="\n$elab"
			ask_yesno "Enable $1 ?$elab" ${defaults[$3]} && ANSWER_CHECKLIST+=("$1")
		else
			local allowed_tags+=($1)
			[ "$3" = OFF ] && echo -n '#' >> $tmpfile
			echo "$item $elab" >> $tmpfile
		fi
		shift 3
		[ $elaborate -gt 0 ] && shift
	done
	if [ $adv -eq 1 ]
	then
		$EDITOR $tmpfile || return 1
		for i in $(grep -v ^# $tmpfile | cut -d' ' -f1)
		do
			check_is_in "$i" "${allowed_tags[@]}" && ANSWER_CHECKLIST+=("$i")
		done
	fi
	return 0
}


_cli_ask_datetime ()
{
	ask_string "Enter date [YYYY-MM-DD hh:mm:ss]"
	ANSWER_DATETIME=$ANSWER_STRING
	debug 'UI' "Date as picked by user: $ANSWER_STRING"
}


_cli_ask_number ()
{
	#TODO: i'm not entirely sure this works perfectly. what if user doesnt give anything or wants to abort?
	while true
	do
		str="$1"
		[ -n $2 ] && str2="min $2"
		[ -n $3 -a $3 != '0' ] && str2="$str2 max $3"
		[ -n $4 ] && str2=" default $4"
		[ -n "$str2" ] && str="$str ( $str2 )"
		echo "$str"
		read ANSWER_NUMBER
		if [[ $ANSWER_NUMBER = *[^0-9]* ]]
		then
			show_warning 'Invalid number input' "$ANSWER_NUMBER is not a number! try again."
		else
			if [ -n "$3" ] && [ $3 != '0' -a $ANSWER_NUMBER -gt $3 ]
			then
				show_warning 'Invalid number input' "$ANSWER_NUMBER is bigger then the maximum,$3! try again."
			elif [ -n "$2" ] && [ $ANSWER_NUMBER -lt $2 ]
			then
				show_warning 'Invalid number input' "$ANSWER_NUMBER is smaller then the minimum,$2! try again."
			else
				break
			fi
		fi
	done
	debug 'UI' "cli_ask_number: user entered: $ANSWER_NUMBER"
	[ -z "$ANSWER_NUMBER" ] && return 1
	return 0
}


_cli_ask_option ()
{
	#TODO: strip out color codes
	#TODO: if user entered incorrect choice, ask him again
	local DEFAULT=
	[ "$1" != 'no' ] && DEFAULT=$1

	local MENU_TITLE=$2
	local EXTRA_INFO=$3
	local TYPE=${4:-required}
	shift 4

	echo "$MENU_TITLE"
	[ -n "$EXTRA_INFO" ] && echo "$EXTRA_INFO"
	while [ -n "$1" ]
	do
		[ -z "$2" ] && die_error "ask_option error: tag $1 has no item"
		echo "$1 ] $2"
		shift 2
	done
	local CANCEL_LABEL=CANCEL
	[ $TYPE == optional ] && CANCEL_LABEL=SKIP
	echo "$CANCEL_LABEL ] $CANCEL_LABEL"
	[ -n "$DEFAULT" ] && echo -n " > [ $DEFAULT ] "
	[ -z "$DEFAULT" ] && echo -n " > "
	read ANSWER_OPTION
	local ret=0
	[ -z "$ANSWER_OPTION" -a -n "$DEFAULT" ] && ANSWER_OPTION="$DEFAULT"
	[ "$ANSWER_OPTION" == CANCEL ] && ret=1 && ANSWER_OPTION=
	[ "$ANSWER_OPTION" == SKIP   ] && ret=0 && ANSWER_OPTION=
	[ -z "$ANSWER_OPTION" -a "$TYPE" == required ] && ret=1

	debug 'UI' "cli_ask_option: ANSWER_OPTION: $ANSWER_OPTION, returncode (skip/cancel): $ret ($MENU_TITLE)"
	return $ret
}


_cli_ask_password ()
{
	local type_l=
	local type_u=
	if [ -n "$1" ]
	then
		type_l=`tr '[:upper:]' '[:lower:]' <<< $1`
		type_u=`tr '[:lower:]' '[:upper:]' <<< $1`
	fi

	echo -n "Enter your $type_l password: "
	stty -echo
	[ -n "$type_u" ] && read ${type_u}_PASSWORD
	[ -z "$type_u" ] && read PASSWORD
	stty echo
	echo
}


# $3 -z string behavior: always take default if applicable, but if no default then $3 is the returncode (1 is default)
_cli_ask_string ()
{
	local exitcode=${3:-1}
	echo "$1: "
	[ -n "$2" ] && echo "(Press enter for default.  Default: $2)"
	echo -n ">"
	read ANSWER_STRING
	debug 'UI' "cli_ask_string: User entered: $ANSWER_STRING"
	if [ -z "$ANSWER_STRING" ]
	then
		if [ -n "$2" ]
		then
			ANSWER_STRING=$2
		else
			return $exitcode
		fi
	fi
	return 0
}


_cli_ask_string_multiple () {
	echo "$1"
	local exitcode=${2:-1}
	shift 2

	ANSWER_VALUES=()
	local i=0
	while [ $# -gt 0 ]; do
		_cli_ask_string "$1" "$2" $exitcode
		ANSWER_VALUES[$i]="$ANSWER_STRING"
		let i++
		shift 2
	done
}

_cli_ask_yesno ()
{
	[ -z "$2"    ] && echo -ne "$1 (y/n): "
	[ "$2" = yes ] && echo -ne "$1 (Y/n): "
	[ "$2" = no  ] && echo -ne "$1 (y/N): "

	local answer
	read answer
	answer=`tr '[:upper:]' '[:lower:]' <<< $answer`
	if [ "$answer" = y -o "$answer" = yes ] || [ -z "$answer" -a "$2" = yes ]
	then
		debug 'UI' "cli_ask_yesno: User picked YES"
		return 0
	else
		debug 'UI' "cli_ask_yesno: User picked NO"
		return 1
	fi
}


_cli_follow_progress ()
{
	local title=$1
	local logfile=$2
	echo "Title: $1"
	[ -n "$3" ] && tail -f $2 --pid=$3
	[ -z "$3" ] && tail -f $2
}


libui_sh_init

