#!/bin/bash

####################################################################################################
#
#   Helper script to install and manage CMaNGOS Classic-DB
#
####################################################################################################

# need to be changed on each official DB/CORE release
FULLDB_FILE_ZIP="ClassicDB_1_11_z2757.sql.gz"
FULLDB_FILE=${FULLDB_FILE_ZIP%.gz}
DB_TITLE="v1.11 'Into the Frozen Heart of Naxxramas'"
NEXT_MILESTONES="0.19 0.20"

# specific to this core
EXPENSION="Classic" #warning only 'Classic' or 'TBC' or 'WoTLK' else acid filename will be wrong
DATABASE_UPDATE_FILE_PREFIX="z"
DATABASE_NAME_PREFIX="${EXPENSION,,}"

# internal use
SCRIPT_FILE="InstallFullDB.sh"
CONFIG_FILE="InstallFullDB.config"
SOURCE_LOGSDB_VER="0"
SOURCE_REALMDB_VER="0"
SOURCE_CHARACTERDB_VER="0"
SOURCE_WORLDDB_VER="0"
DB_RELEASE_TITLE="$DB_TITLE"
DB_RELEASE_NEXT_MILESTONE=""
DB_WORLDDB_VERSION=""
DB_REALMDB_VERSION=""
DB_CHARDB_VERSION=""
DB_LOGSDB_VERSION=""
ROOTUSERNAME=""
ROOTPASSWORD=""
STATUS_ROOT_SUCCESS=false
STATUS_USER_SUCCESS=false
STATUS_WORLD_DB_FOUND=false
STATUS_CHAR_DB_FOUND=false
STATUS_REALM_DB_FOUND=false
STATUS_LOGS_DB_FOUND=false
STATUS_CONFIG_JUST_CREATED=false
OLDIFS="$IFS"

# testing only
ADDITIONAL_PATH=""

# default value
MYSQL_HOST_DEFAULT="localhost"
MYSQL_PORT_DEFAULT="3306"
MYSQL_USERNAME_DEFAULT="mangos"
MYSQL_PASSWORD_DEFAULT="mangos"
MYSQL_USERIP_DEFAULT="localhost"
WORLD_DB_NAME_DEFAULT="${DATABASE_NAME_PREFIX}mangos"
REALM_DB_NAME_DEFAULT="${DATABASE_NAME_PREFIX}realmd"
CHAR_DB_NAME_DEFAULT="${DATABASE_NAME_PREFIX}characters"
LOGS_DB_NAME_DEFAULT="${DATABASE_NAME_PREFIX}logs"
MYSQL_PATH_DEFAULT=""
CORE_PATH_DEFAULT=""
LOCALES_DEFAULT="YES"
DEV_UPDATES_DEFAULT="NO"
AHBOT_DEFAULT="NO"
FORCE_WAIT_DEFAULT="YES"

# variables assigned and read from $CONFIG_FILE
MYSQL_HOST="${MYSQL_HOST_DEFAULT}"
MYSQL_PORT="${MYSQL_PORT_DEFAULT}"
MYSQL_USERNAME="${MYSQL_USERNAME_DEFAULT}"
MYSQL_PASSWORD="${MYSQL_PASSWORD_DEFAULT}"
MYSQL_USERIP="${MYSQL_USERIP_DEFAULT}"
WORLD_DB_NAME="${WORLD_DB_NAME_DEFAULT}"
REALM_DB_NAME="${REALM_DB_NAME_DEFAULT}"
CHAR_DB_NAME="${CHAR_DB_NAME_DEFAULT}"
LOGS_DB_NAME="${LOGS_DB_NAME_DEFAULT}"
MYSQL_PATH="${MYSQL_PATH_DEFAULT}"
CORE_PATH="${CORE_PATH_DEFAULT}"
LOCALES="${LOCALES_DEFAULT}"
DEV_UPDATES="${DEV_UPDATES_DEFAULT}"
AHBOT="${AHBOT_DEFAULT}"
FORCE_WAIT="${FORCE_WAIT_DEFAULT}"

#possible search folder for core path
DEFAULT_CORE_FOLDER="${EXPENSION,,}"

## All SQLs used in this script
function set_sql_queries
{
  # create databases
  SQL_CREATE_WORLD_DB="CREATE DATABASE \`$WORLD_DB_NAME\` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;"
  SQL_CREATE_CHAR_DB="CREATE DATABASE \`$CHAR_DB_NAME\` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;"
  SQL_CREATE_REALM_DB="CREATE DATABASE \`$REALM_DB_NAME\` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;"
  SQL_CREATE_LOGS_DB="CREATE DATABASE \`$LOGS_DB_NAME\` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;"

  # create database user and grant privileges
  SQL_CREATE_DATABASE_USER="CREATE USER IF NOT EXISTS '$MYSQL_USERNAME'@'$MYSQL_USERIP' IDENTIFIED BY '$MYSQL_PASSWORD';"
  SQL_GRANT_TO_WORLD_DATABASE="GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, ALTER, LOCK TABLES, CREATE TEMPORARY TABLES, EXECUTE, ALTER ROUTINE, CREATE ROUTINE ON \`$WORLD_DB_NAME\`.* TO '$MYSQL_USERNAME'@'$MYSQL_USERIP';"
  SQL_GRANT_TO_CHAR_DATABASE=("GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, ALTER, LOCK TABLES, CREATE TEMPORARY TABLES ON \`$CHAR_DB_NAME\`.* TO '$MYSQL_USERNAME'@'$MYSQL_USERIP';")
  SQL_GRANT_TO_REALM_DATABASE=("GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, ALTER, LOCK TABLES, CREATE TEMPORARY TABLES ON \`$REALM_DB_NAME\`.* TO '$MYSQL_USERNAME'@'$MYSQL_USERIP';")
  SQL_GRANT_TO_LOGS_DATABASE=("GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, ALTER, LOCK TABLES, CREATE TEMPORARY TABLES ON \`$LOGS_DB_NAME\`.* TO '$MYSQL_USERNAME'@'$MYSQL_USERIP';")

  # delete user
  SQL_DROP_DATABASE_USER="DROP USER IF EXISTS '$MYSQL_USERNAME'@'$MYSQL_USERIP';"

  # deletes databases
  SQL_DROP_WORLD_DB="DROP DATABASE IF EXISTS \`$WORLD_DB_NAME\`;"
  SQL_DROP_CHAR_DB="DROP DATABASE IF EXISTS \`$CHAR_DB_NAME\`;"
  SQL_DROP_REALM_DB="DROP DATABASE IF EXISTS \`$REALM_DB_NAME\`;"
  SQL_DROP_LOGS_DB="DROP DATABASE IF EXISTS \`$LOGS_DB_NAME\`;"

  # query realm list
  SQL_QUERY_REALM_LIST="SELECT * FROM realmlist;"
  SQL_UPDATE_REALM_LIST="UPDATE realmlist SET " # field=value WHERE id=choosenid
  SQL_INSERT_REALM_LIST="INSERT INTO realmlist (\`id\`,\`name\`,\`address\`,\`port\`) VALUES "
  SQL_DELETE_REALM_ID="DELETE FROM realmlist WHERE id="

  # base files from core
  SQL_FILE_BASE_WORLD="${CORE_PATH}/sql/base/mangos.sql"
  SQL_FILE_BASE_CHAR="${CORE_PATH}/sql/base/characters.sql"
  SQL_FILE_BASE_REALM="${CORE_PATH}/sql/base/realmd.sql"
  SQL_FILE_BASE_LOGS="${CORE_PATH}/sql/base/logs.sql"
}

# save current setting to $CONFIG_FILE
function save_settings()
{
  local allsettings=()
  allsettings=("####################################################################################################")
  allsettings+=("# This is the config file for the '$SCRIPT_FILE' script")
  allsettings+=("#")
  allsettings+=("# You need to customize")
  allsettings+=("#   MYSQL_HOST:      Host on which the database resides")
  allsettings+=("#   MYSQL_PORT:      Port on which the database is running")
  allsettings+=("#   MYSQL_USERNAME:  Your a valid mysql username")
  allsettings+=("#   MYSQL_PASSWORD:  Your corresponding mysql password")
  allsettings+=("#   MYSQL_PATH:      Your mysql command (usually mysql)")
  allsettings+=("#   WORLD_DB_NAME:   Your content database")
  allsettings+=("#   CORE_PATH:       Your path to core's directory")
  allsettings+=("#")
  allsettings+=("####################################################################################################")
  allsettings+=("")
  allsettings+=("## Define the host on which the mangos database resides (typically localhost)")
  allsettings+=("MYSQL_HOST=\"$MYSQL_HOST\"")
  allsettings+=("")
  allsettings+=("## Define the port on which the mangos database is running (typically 3306)")
  allsettings+=("MYSQL_PORT=\"$MYSQL_PORT\"")
  allsettings+=("")
  allsettings+=("## Define your username")
  allsettings+=("MYSQL_USERNAME=\"$MYSQL_USERNAME\"")
  allsettings+=("")
  allsettings+=("## Define your password (It is suggested to restrict read access to this file!)")
  allsettings+=("MYSQL_PASSWORD=\"$MYSQL_PASSWORD\"")
  allsettings+=("")
  allsettings+=("## Define default mysql address binding(you can set \"%\" to be able to connect from any computer)")
  allsettings+=("MYSQL_USERIP=\"$MYSQL_USERIP\"")
  allsettings+=("")
  allsettings+=("## Define the databases names (let them empty for default name '"$DATABASE_NAME_PREFIX"dbtype')")
  allsettings+=("WORLD_DB_NAME=\"$WORLD_DB_NAME\"")
  allsettings+=("REALM_DB_NAME=\"$REALM_DB_NAME\"")
  allsettings+=("CHAR_DB_NAME=\"$CHAR_DB_NAME\"")
  allsettings+=("LOGS_DB_NAME=\"$LOGS_DB_NAME\"")
  allsettings+=("")
  allsettings+=("## Define your mysql programm if this differs")
  allsettings+=("MYSQL_PATH=\"$MYSQL_PATH\"")
  allsettings+=("")
  allsettings+=("## Define the path to your core's folder")
  allsettings+=("CORE_PATH=\"$CORE_PATH\"")
  allsettings+=("")
  allsettings+=("## Define if the 'locales' directory for processing localization/multi-language SQL files needs to be used")
  allsettings+=("##   Set the variable to \"YES\" to use the locales directory")
  allsettings+=("LOCALES=\"$LOCALES\"")
  allsettings+=("")
  allsettings+=("## Define if you want to wait a bit before applying the full database")
  allsettings+=("FORCE_WAIT=\"$FORCE_WAIT\"")
  allsettings+=("")
  allsettings+=("## Define if the 'dev' directory for processing development SQL files needs to be used")
  allsettings+=("##   Set the variable to \"YES\" to use the dev directory")
  allsettings+=("DEV_UPDATES=\"$DEV_UPDATES\"")
  allsettings+=("")
  allsettings+=("## Define if AHBot SQL updates need to be applied (by default, assume the core is built without AHBot)")
  allsettings+=("## Set the variable to \"YES\" to import AHBot sql.")
  allsettings+=("AHBOT=\"$AHBOT\"")
  allsettings+=("")
  allsettings+=("# Enjoy using the tool")

  # save to file
  for j in "${allsettings[@]}"; do
    echo $j
  done > $CONFIG_FILE
}

# Give chance to break the script
function force_wait()
{
  if [ "$FORCE_WAIT" != "NO" ];then
    echo "ATTENTION: Your database will be reset to ${EXPENSION}-DB!"
    echo "Please bring your repositories up-to-date!"
    echo "Press CTRL+C to exit"
    # show a mini progress bar
    for i in {9..0}; do
    echo -ne "$i"
    echo -ne "\033[0K\r"
    sleep 1
    done
    echo
  fi
}

# some basic check to see if argument $1 is a cmangos core folder
# return false and error message in ERRORS varible or true
function check_core_folders()
{
  ERRORS=""
  if [[ "$1" == "" ]];then
    ERRORS="CORE_PATH is not set. please try (8) to autodetect it or manyally edit $CONFIG_FILE"
    false
    return
  fi

  if [[ ! -e "${1}/sql/updates/mangos" ]];then
    ERRORS="Unable to locate core update directory in '${1}/sql/updates/mangos'"
    false
    return
  fi

  if [[ ! -e "${1}/sql/base/dbc/original_data" ]];then
    ERRORS="Unable to locate core update directory in '${1}/sql/base/dbc/original_data'"
    false
    return
  fi

  if [[ ! -e "${1}/sql/base/dbc/cmangos_fixes" ]];then
    ERRORS="Unable to locate core update directory in '${1}/sql/base/dbc/cmangos_fixes'"
    false
    return
  fi

  if [[ ! -e "${1}/sql/scriptdev2" ]];then
    ERRORS="Unable to locate core update directory in '${1}/sql/scriptdev2'"
    false
    return
  fi

  true
}

# try to found CORE_PATH in current folder and parents folders.
# will not search in root folder to avoid too much time for find
# also limit search to 5 subfolder to not go too deep
# if it fail CORE_PATH will remain empty
function try_set_core_path()
{
  currentFolder=$(pwd)
  IFS=$'\n'

  #avoid searchinig in entire root
  while [[ "$currentFolder" != "/" ]] && [[ "$CORE_PATH" == "" ]]
  do
    for foundfolder in $(find "$currentFolder" -mindepth 1 -maxdepth 5 -iname "*$DEFAULT_CORE_FOLDER*" -type d 2> /dev/null)
    do
      if [[ "$foundfolder" != "" ]]; then
        if check_core_folders "$foundfolder";then
          CORE_PATH="${foundfolder}"
          break
        fi
      fi
    done
    currentFolder=$(dirname "$currentFolder")
  done
  IFS="$OLDIFS"
}

# try to set MYSQL_PATH
function try_set_mysql_path()
{
  if [[ $MYSQL_PATH != "" ]]
  then
    return
  fi

  local foundMysqlPath=$(type -P "mysql" 2> /dev/null)
  if [ foundMysqlPath != "" ]
  then
    MYSQL_PATH="$foundMysqlPath"
    return
  fi

  local defaultMysqlFolders="program files"

  IFS=$'\n'
  #avoid searchinig in entire root
  for foundfolder in $(find "/c" -mindepth 1 -maxdepth 1 -iname "$defaultMysqlFolders*" -type d 2> /dev/null)
  do
    if [[ "$foundfolder" != "" ]]; then
      for foundFile in $(find "$foundfolder/MySQL" -mindepth 1 -maxdepth 3 -iname "mysql.exe" -type f 2> /dev/null)
      do
        if [[ "$foundFile" != "" ]];then
          MYSQL_PATH="${foundFile}"
          break
        fi
      done
    fi
  done
  IFS="$OLDIFS"
}

function display_help()
{
  clear
  echo
  echo "Welcome to the Classic-DB helper $SCRIPT_FILE"
  echo
  echo "New default $CONFIG_FILE as just been created!"
  echo
  if [ "$CORE_PATH" != "" ]
  then
    echo "Found core path : $CORE_PATH"
  else
    echo "Unable to autodetect $DEFAULT_CORE_FOLDER folder, please edit config file!"
  fi

  if [ "$MYSQL_PATH" != "" ]
  then
    echo "Found mysql path: $MYSQL_PATH"
  else
    echo "Unable to autodetect mysql folder, please edit config file!"
  fi

  echo
  echo "Right after reviewing $CONFIG_FILE you can restart this script."
  echo "Please check login credential, server address, server port, core path and mysql."
}

# print string and add underline to it.
# (arg1 is string to print and arg2 is the char to use to for underline)
print_underline()
{
  echo $1
  echo "${1//?/${2:--}}"
}

function print_header()
{
  clear
  print_underline "Welcome to the CMaNGOS $EXPENSION databases manager" "="
  echo
}

# try connect to db
function try_connect_to_db()
{
  export MYSQL_PWD="$MYSQL_PASSWORD"
  ERRORS=$("$MYSQL_PATH" -h$MYSQL_HOST -P$MYSQL_PORT -u$MYSQL_USERNAME --connect-timeout=2 -s -e';' 2>&1)
  if [[ $? != 0 ]]
  then
    STATUS_USER_SUCCESS=false
    false
    return
  fi
  true
  STATUS_USER_SUCCESS=true
}

# Set root access right
# return true if success or already set
# arg 1 type bool disable any output if false
# arg 2 type bool force to set new root access if already set
function set_try_root_connect_to_db
{
  local showstatus=${1:true}
  local forceset=${2:false}
  if [ "$STATUS_ROOT_SUCCESS" = true ]; then
    true
    return
  fi

  while true; do
    if [ "$showstatus" = true ]; then
      clear
      print_underline "Root access required to continue" "="
      echo
      read -e -p    "Enter MySQL root user...........: " ROOTUSERNAME
      read -e -s -p "Enter MySQL root password.......: " ROOTPASSWORD
      echo "**********"
      echo -n "Checking mysql database accessibility with root access..."
    fi
    export MYSQL_PWD="$ROOTPASSWORD"
    ERRORS=$("$MYSQL_PATH" -u"$ROOTUSERNAME" -h"$MYSQL_HOST" -P"$MYSQL_PORT" --connect-timeout=3 -s -N -e";" 2>&1)
    if [[ $? != 0 ]]
    then
      if [ "$showstatus" = true ]; then echo "FAILED!"; fi
      echo ">>> $ERRORS"
      STATUS_ROOT_SUCCESS=false
      read -n 1 -e -p "Do you want to retry? (y/N).....: " CHOICE
      if [ "${CHOICE}" = "y" ] || [ "${CHOICE}" = "Y"]; then
        continue
      fi
      false
      return
    else
      if [ "$showstatus" = true ]; then echo "SUCCESS"; fi
      break;
    fi
  done
  export MYSQL_PWD="$MYSQL_PASSWORD"
  STATUS_ROOT_SUCCESS=true
  true
}

# Check mysql binary
function check_mysql_binary()
{
  ERRORS=""
  local foundMysqlPath=""
  if [[ "$MYSQL_PATH" != "" ]]; then
    foundMysqlPath=$(type -P "$MYSQL_PATH" 2> /dev/null)
  else
    ERRORS="MYSQL_PATH is not set! Please try (7) to autodetect it or manyally edit $CONFIG_FILE"
    false
    return
  fi

  if [[ "$foundMysqlPath" == "" ]];  then
    ERRORS="Unable to find mysql binaries using '$MYSQL_PATH'"
    false
    return
  fi
  true
}

# Check core folder
function check_core_path_setting()
{
  ERRORS=""
  # check_core_folders will fill ERRORS if any
  if ! check_core_folders "${CORE_PATH}"; then
    false
    return
  fi
  true
}

# Check pre requisite
function check_minimum_requierements()
{
  local current_errors=()

  if ! check_core_path_setting; then
    current_errors+=("$ERRORS")
  fi

  if ! check_mysql_binary; then
    current_errors+=("$ERRORS")
  else
    if ! try_connect_to_db; then
      local normal_connection_error="$ERRORS"
      if [[ "$STATUS_ROOT_SUCCESS" = false ]] ; then
        current_errors+=("$normal_connection_error")
      fi
    fi
  fi

  ERRORS=("${current_errors[@]}")

  if [[ ${#ERRORS[@]} > 0 ]]; then
    false
    return
  fi

  true
}


# execute sql command and print error if any
# execute_sql_command "database" "sql" "message"(if empty no message is shown) return true if success
function execute_sql_command()
{
  if [ ! -z "$3" ]; then echo -n "$3 ... "; fi
  export MYSQL_PWD="$MYSQL_PASSWORD"
  MYSQL_ERROR=$("$MYSQL_PATH" -u"$MYSQL_USERNAME" -h"$MYSQL_HOST" -P"$MYSQL_PORT" -s -N -D "$1" -e"$2" 2>&1)
  if [[ $? != 0 ]]; then
    if [ ! -z "$3" ]; then
      echo "FAILED!"
      echo ">>> $MYSQL_ERROR";
    fi
    false
    return
  else
    if [ ! -z "$3" ]; then echo "SUCCESS"; fi
  fi
  true
}

# execute file that contain sql and print error if any message is provided
# execute_sql_file "database" "filename" "message"(if empty no message is shown) return true if success else MYSQL_ERROR contain the error
function execute_sql_file()
{
  local showstatus=true
  if [[ "$3" == "" ]]; then showstatus=false; fi
  if $showstatus; then echo -n "$3 ... "; fi
  export MYSQL_PWD="$MYSQL_PASSWORD"
  ERRORS=$("$MYSQL_PATH" -u"$MYSQL_USERNAME" -h"$MYSQL_HOST" -P"$MYSQL_PORT" -s -N -D "$1" < "$2" 2>&1)
  if [[ $? != 0 ]]; then
    if $showstatus; then
      echo "FAILED!"
      echo ">>> $ERRORS";
    fi
    false
    return
  else
    if $showstatus; then echo "SUCCESS"; fi
  fi
  true
}

function show_db_name()
{
  echo -e "World database name.....: $WORLD_DB_NAME"
  echo -e "Character database name.: $CHAR_DB_NAME"
  echo -e "Realm database name.....: $REALM_DB_NAME"
  echo -e "Logs database name......: $LOGS_DB_NAME"
}

function show_mysql_settings()
{
  echo -e "Database host...........: $MYSQL_HOST"
  echo -e "Database port...........: $MYSQL_PORT"
  echo -e "MySQL user..............: $MYSQL_USERNAME (password is defined in $CONFIG_FILE)"
  echo -e "MySQL user ip access....: $MYSQL_USERIP"
  echo -e "MySQL path..............: $MYSQL_PATH"
  echo -e "Core path...............: $CORE_PATH"
  show_db_name
  echo -e "LOCALES.................: $LOCALES"
  echo -e "DEV_UPDATES.............: $DEV_UPDATES"
  echo -e "AHBOT...................: $AHBOT"
}

function change_db_name()
{
  read -e -p    "Enter world database name.......: " -i $WORLD_DB_NAME WORLD_DB_NAME
  read -e -p    "Enter characters database name..: " -i $CHAR_DB_NAME CHAR_DB_NAME
  read -e -p    "Enter realm database name.......: " -i $REALM_DB_NAME REALM_DB_NAME
  read -e -p    "Enter log database name.........: " -i $LOGS_DB_NAME LOGS_DB_NAME
}

function change_mysql_settings()
{
  print_header
  read -e -p    "Enter MySQL host................: " -i $MYSQL_HOST MYSQL_HOST
  read -e -p    "Enter MySQL port................: " -i $MYSQL_PORT MYSQL_PORT
  read -e -p    "Enter MySQL user................: " -i $MYSQL_USERNAME MYSQL_USERNAME
  read -e -s -p "Enter MySQL password............: " MYSQL_PASSWORD
  echo "***********"
  read -e -p    "MySQL user ip access............: " -i $MYSQL_USERIP MYSQL_USERIP
  read -e -p    "Enter MySQL path................: " -i "$MYSQL_PATH" MYSQL_PATH
  read -e -p    "Enter Core path.................: " -i "$CORE_PATH" CORE_PATH
  change_db_name
  echo -e "Choose YES or NO for following options"
  read -e -p    "LOCALE(default:YES).............: " -i "$LOCALES" LOCALES
  read -e -p    "DEV_UPDATES(default:NO).........: " -i "$DEV_UPDATES" DEV_UPDATES
  read -e -p    "AHBOT(default:NO)...............: " -i "$AHBOT" AHBOT

  # some basic check
  if [[ "$MYSQL_HOST" == "" ]];then MYSQL_HOST="${MYSQL_HOST_DEFAULT}"; fi
  if [[ "$MYSQL_PORT" == "" ]];then MYSQL_PORT="${MYSQL_PORT_DEFAULT}"; fi
  if [[ "$MYSQL_USERNAME" == "" ]];then MYSQL_USERNAME="${MYSQL_USERNAME_DEFAULT}"; fi
  if [[ "$MYSQL_PASSWORD" == "" ]];then MYSQL_PASSWORD="${MYSQL_PASSWORD_DEFAULT}"; fi
  if [[ "$MYSQL_USERIP" == "" ]];then MYSQL_USERIP="${MYSQL_USERIP_DEFAULT}"; fi
  if [[ "$WORLD_DB_NAME" == "" ]];then WORLD_DB_NAME="${WORLD_DB_NAME_DEFAULT}"; fi
  if [[ "$CHAR_DB_NAME" == "" ]];then CHAR_DB_NAME="${CHAR_DB_NAME_DEFAULT}"; fi
  if [[ "$REALM_DB_NAME" == "" ]];then REALM_DB_NAME="${REALM_DB_NAME_DEFAULT}"; fi
  if [[ "$LOGS_DB_NAME" == "" ]];then LOGS_DB_NAME="${LOGS_DB_NAME_DEFAULT}"; fi
  LOCALES="${LOCALES^^}"
  DEV_UPDATES="${DEV_UPDATES^^}"
  AHBOT="${AHBOT^^}"
}

function wait_key()
{
  read -n1 -r -p "Press space to continue..." key
}

function print_mysql_connection_status()
{
  echo -ne "Trying to connect to DATABASE: "
  if ! try_connect_to_db ; then
    echo "Error, unable to connect to db"
    echo "$ERRORS"
  else
    echo "CONNECTED"
    MYSQL_CONNECTED=true
  fi
}

# Get current db version
# get_current_db_version "database name" "table name"
# result will be in CURRENT_DB_VERSION
function get_current_db_version()
{
  CURRENT_DB_VERSION=""
  sql="SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA='$1' AND TABLE_NAME='$2';"
  #echo "$sql"
  while read -a row
  do
    #echo "${row[0]}"
    case "${row[0]}" in
      *required_*)
        CURRENT_DB_VERSION=$(echo "${row[0]//[$'\n\r']}") # remove eventual carriage return
        CURRENT_DB_VERSION=$(echo -n "${CURRENT_DB_VERSION//required_}") # remove "required_"
        return;;
     esac
  done < <("$MYSQL_PATH" -u"$MYSQL_USERNAME" -h"$MYSQL_HOST" -P"$MYSQL_PORT" -s -N -e"$sql")
  CURRENT_DB_VERSION="Revision not found in db"
}

# check if we can access dbs and retrieve their version
# check_dbs_accessibility bool (if parameter is true the result is displayed)
function check_dbs_accessibility()
{
  local showstatus="${1:false}"
  local current_error
  local UNAVAILABLE_DB=()
  ERRORS=()
  DB_WORLDDB_VERSION="0"
  DB_REALMDB_VERSION="0"
  DB_CHARDB_VERSION="0"
  DB_LOGSDB_VERSION="0"
  STATUS_WORLD_DB_FOUND=false
  STATUS_CHAR_DB_FOUND=false
  STATUS_REALM_DB_FOUND=false
  STATUS_LOGS_DB_FOUND=false
  if ! try_connect_to_db ; then
    false
    return
  fi

  if $showstatus; then echo -ne "Checking '$WORLD_DB_NAME' db access, please wait..."; fi
  ERRORS+=($("$MYSQL_PATH" -h$MYSQL_HOST -P$MYSQL_PORT -u$MYSQL_USERNAME -D$WORLD_DB_NAME --connect-timeout=2 -s -e";" 2>&1))
  if [[ $? != 0 ]];  then
    DB_WORLDDB_VERSION="0"
    UNAVAILABLE_DB+=("$WORLD_DB_NAME")
  else
    if $showstatus; then echo -ne "SUCCESS"; fi
    get_current_db_version "$WORLD_DB_NAME" "db_version"
    DB_WORLDDB_VERSION="$CURRENT_DB_VERSION"
    STATUS_WORLD_DB_FOUND=true
  fi

  if $showstatus; then echo -ne "\033[0K\r"; echo -ne "Checking '$REALM_DB_NAME' db access, please wait...          "; fi
  ERRORS+=($("$MYSQL_PATH" -h$MYSQL_HOST -P$MYSQL_PORT -u$MYSQL_USERNAME -D$REALM_DB_NAME --connect-timeout=2 -s -e";" 2>&1))
  if [[ $? != 0 ]]
  then
    DB_REALMDB_VERSION="0"
    UNAVAILABLE_DB+=("$REALM_DB_NAME")
  else
    if $showstatus; then echo -ne "SUCCESS"; fi
    get_current_db_version "$REALM_DB_NAME" "realmd_db_version"
    DB_REALMDB_VERSION="$CURRENT_DB_VERSION"
    STATUS_REALM_DB_FOUND=true
  fi

  if $showstatus; then echo -ne "\033[0K\r"; echo -ne "Checking '$CHAR_DB_NAME' db access, please wait...          "; fi
  ERRORS+=($("$MYSQL_PATH" -h$MYSQL_HOST -P$MYSQL_PORT -u$MYSQL_USERNAME -D$CHAR_DB_NAME --connect-timeout=2 -s -e";" 2>&1))
  if [[ $? != 0 ]]
  then
    DB_CHARDB_VERSION="0"
    UNAVAILABLE_DB+=("$CHAR_DB_NAME")
  else
    if $showstatus; then echo -ne "SUCCESS"; fi
    get_current_db_version "$CHAR_DB_NAME" "character_db_version"
    DB_CHARDB_VERSION="$CURRENT_DB_VERSION"
    STATUS_CHAR_DB_FOUND=true
  fi

  if $showstatus; then echo -ne "\033[0K\r"; echo -ne "Checking '$LOGS_DB_NAME' db access, please wait...          "; fi
  ERRORS+=($("$MYSQL_PATH" -h$MYSQL_HOST -P$MYSQL_PORT -u$MYSQL_USERNAME -D$LOGS_DB_NAME --connect-timeout=2 -s -e";" 2>&1))
  if [[ $? != 0 ]]
  then
    DB_LOGSDB_VERSION="0"
    UNAVAILABLE_DB+=("$LOGS_DB_NAME")
  else
    if $showstatus; then echo -ne "SUCCESS"; fi
    get_current_db_version "$LOGS_DB_NAME" "logs_db_version"
    DB_LOGSDB_VERSION="$CURRENT_DB_VERSION"
    STATUS_LOGS_DB_FOUND=true
  fi

  if $showstatus; then
    if [[ "${#UNAVAILABLE_DB[@]}" > 0 ]]; then
      echo -ne "\033[0K\r"
      echo -ne "                                                                    "
      echo -ne "\033[0K\r"
      echo -ne ">>> Error: Found some inaccessible DB> "
      for mdb in "${UNAVAILABLE_DB[@]}";do
        echo -ne "'$mdb' "
      done
      echo
      echo ">>> Either you want to create new DB or there is spelling problem."
    else
      echo -ne "\033[0K\r"
      echo -ne "                                                                    "
      echo -ne "\033[0K\r"
    fi
  fi

  if [[ "${#UNAVAILABLE_DB[@]}" > 0 ]]; then
    false
  else
    true
  fi
}

function show_installation_status()
{
  local db_need_update=()
  local db_need_create=()
  local pullNeeded=false

  if [[ "$STATUS_USER_SUCCESS" = false ]]; then
    echo "Info> MySQL is not able to connect with the current user, you can create it using option 5"
  fi

  if [[ "$STATUS_USER_SUCCESS" = false ]] && [[ "$STATUS_ROOT_SUCCESS" = false ]]; then
    return
  fi

  if [[ "$STATUS_WORLD_DB_FOUND" = true ]]; then
    if [[ "$SOURCE_WORLDDB_VER" > "$DB_WORLDDB_VERSION" ]]; then
      db_need_update+=("$WORLD_DB_NAME")
    else
      if [[ "$SOURCE_WORLDDB_VER" < "$DB_WORLDDB_VERSION" ]]; then
        pullNeeded=true
      fi
    fi
  else
    db_need_create+=("$WORLD_DB_NAME")
  fi

  if [[ "$STATUS_REALM_DB_FOUND" = true ]]; then
    if [[ "$SOURCE_REALMDB_VER" > "$DB_REALMDB_VERSION" ]]; then
      db_need_update+=("$REALM_DB_NAME")
    else
      if [[ "$SOURCE_REALMDB_VER" < "$DB_REALMDB_VERSION" ]]; then
        pullNeeded=true
      fi
    fi
  else
    db_need_create+=("$REALM_DB_NAME")
  fi

  if [[ "$STATUS_REALM_DB_FOUND" = true ]]; then
    if [[ "$SOURCE_CHARACTERDB_VER" > "$DB_CHARDB_VERSION" ]]; then
      db_need_update+=("$CHAR_DB_NAME")
    else
      if [[ "$SOURCE_CHARACTERDB_VER" < "$DB_CHARDB_VERSION" ]]; then
        pullNeeded=true
      fi
    fi
  else
    db_need_create+=("$CHAR_DB_NAME")
  fi

  if [[ "$STATUS_REALM_DB_FOUND" = true ]]; then
    if [[ "$SOURCE_LOGSDB_VER" > "$DB_LOGSDB_VERSION" ]]; then
      db_need_update+=("$LOGS_DB_NAME")
    else
      if [[ "$SOURCE_LOGSDB_VER" < "$DB_LOGSDB_VERSION" ]]; then
        pullNeeded=true
      fi
    fi
  else
    db_need_create+=("$LOGS_DB_NAME")
  fi

  if [ "$pullNeeded" = true ]; then
    echo "Info> your local core have to be updated, use git pull in your core folder"
  fi

  if [[ "${#db_need_update}" > 0 ]]; then
    echo -ne "Info> Those DB need core update: "
    for nu in "${db_need_update[@]}"; do
      echo -ne "'$nu' "
    done
    echo
  fi

  if [[ "${#db_need_create}" > 0 ]]; then
    echo -ne "Info> Create or made accessible those DB: "
    for nc in "${db_need_create[@]}"; do
      echo -ne "'$nc' "
    done
    echo
  fi
}

function are_you_sure()
{
  local word=${1:yes}
  clear
  read -e -p "All previous changes will be lost. Type '$word' if you are sure : " CHANGESETTING
  if [[ "$CHANGESETTING" != $word ]]; then
    false
    return
  fi
  echo
  true
}

###############################################
## DB work function ###########################
###############################################

# Unzip main file
function unzip_main_file()
{
  if [ ! -f "${ADDITIONAL_PATH}Full_DB/$FULLDB_FILE_ZIP" ]; then
    echo "Unable to locate full db file ${ADDITIONAL_PATH}Full_DB/$FULLDB_FILE_ZIP"
    false
    return
  fi

  local foundGZPath=$(type -P "gzip") # 2> /dev/null)

  if [[ "$foundGZPath" == "" ]];  then
    echo "Unable to find gzip binaries on your system!"
    echo "GZIP 1.6 or greater should be installed"
    echo "Aborting..."
    false
    return
  fi

  echo -n "  - Unziping $FULLDB_FILE_ZIP ... "
  gzip -kdf "${ADDITIONAL_PATH}Full_DB/$FULLDB_FILE_ZIP"
  if [[ $? != 0 ]]; then
    echo "ERROR: cannot unzip ${ADDITIONAL_PATH}Full_DB/$FULLDB_FILE_ZIP"
    echo "GZIP 1.6 or greater should be installed"
    false
  else
    echo "SUCCESS"
    true
  fi
}

# Apply main file to db
function apply_main_file()
{
  if ! unzip_main_file; then
    false
    return
  fi
  if ! execute_sql_file "$WORLD_DB_NAME" "${ADDITIONAL_PATH}Full_DB/$FULLDB_FILE" "  - Applying $FULLDB_FILE"; then
    false
    return
  fi
  echo
  echo
  true
}

# retrieve current revision from source file
function get_current_source_db_version()
{
  revision_file="$CORE_PATH/src/shared/revision_sql.h"
  while IFS= read -r line
  do
    case "$line" in
      # try to read realmd db revision
      *REVISION_DB_REALMD*)
      sarray=($line)
      SOURCE_REALMDB_VER=${sarray[2]//[$'\"\r\n']}
      SOURCE_REALMDB_VER=${SOURCE_REALMDB_VER//required_};;

      # try to read character db revision
      *REVISION_DB_CHARACTERS*)
      sarray=($line)
      SOURCE_CHARACTERDB_VER=${sarray[2]//[$'\"\r\n']}
      SOURCE_CHARACTERDB_VER=${SOURCE_CHARACTERDB_VER//required_};;

      # try to read world db revision
      *REVISION_DB_MANGOS*)
      sarray=($line)
      SOURCE_WORLDDB_VER=${sarray[2]//[$'\"\r\n']}
      SOURCE_WORLDDB_VER=${SOURCE_WORLDDB_VER//required_};;

      # try to read logs db revision
      *REVISION_DB_LOGS*)
      sarray=($line)
      SOURCE_LOGSDB_VER=${sarray[2]//[$'\"\r\n']}
      SOURCE_LOGSDB_VER=${SOURCE_LOGSDB_VER//required_};;

    esac
  done <"$revision_file"
  IFS="$OLDIFS"
}

# Update world db using core update
function apply_world_db_core_update()
{
  echo "> Trying to process last world(mangos) CORE updates"

  if [[ "$STATUS_WORLD_DB_FOUND" == "false" ]] || [[ "$DB_WORLDDB_VERSION" == "0" ]]; then
    echo ">>> ERROR: cannot get last core revision in DB"
    false
    return
  fi

  # ex: z2778_01_logs_anticheat
  local regex="$DATABASE_UPDATE_FILE_PREFIX([0-9]+)_([0-9]+)"
  # extract group1/2
  [[ "$DB_WORLDDB_VERSION" =~ $regex ]]
  # concatenate group1/2
  local rev="${BASH_REMATCH[1]}${BASH_REMATCH[2]}"
  # convert to int
  local LAST_CORE_REV=$((10#$rev))

  if [ "$LAST_CORE_REV" -eq 0 ]
  then
    echo ">>> ERROR: cannot get last core revision in DB"
    false
    return
  fi

  local UPD_PROCESSED=0
  local UPD_FOUND=0
  local CORE_REVS=()
  for NEXT_MILESTONE in ${NEXT_MILESTONES};
  do
    # A new milestone was released, apply additional updates
    if [ -e "${CORE_PATH}/sql/updates/${NEXT_MILESTONE}/" ]
    then
      echo "  Trying to process core updates from milestone $NEXT_MILESTONE ..."
      for f in "${CORE_PATH}/sql/archives/${NEXT_MILESTONE}/${DATABASE_UPDATE_FILE_PREFIX}*_*_mangos_*.sql"
      do
        CUR_REV=`basename "$f" | sed 's/^\z\([0-9]*\)_.*/\1/' `
        if [ "$CUR_REV" -gt "$LAST_CORE_REV" ]
        then
          # found a newer core update file
          local fName=$(basename "$f")
          if ! execute_sql_file "$WORLD_DB_NAME" "$f" "  - Applying $fName"; then
            false
            return
          fi
          ((UPD_PROCESSED++))
        else
          ((UPD_FOUND++))
        fi
      done
    fi
  done

  #local wdbrev=$(echo "$SOURCE_WORLDDB_VER" |sed 's/[a-z]*\([0-9]*\)_\([0-9]*\).*/\1\2/g')
  #echo "    $EXPENSION DB core rev($LAST_CORE_REV), expected core rev($wdbrev)"
  for f in "$CORE_PATH/sql/updates/mangos/"*_mangos_*.sql
  do
    CUR_REV=$(basename "$f" | sed "s/^$DATABASE_UPDATE_FILE_PREFIX\([0-9]*\)_\([0-9]*\).*/\1\2/")
    if [ "$CUR_REV" -gt "$LAST_CORE_REV" ]; then
      # found a newer core update file
      local fName=$(basename "$f")
      if ! execute_sql_file "$WORLD_DB_NAME" "$f" "  - Applying $fName"; then
        false
        return
      fi
      ((UPD_PROCESSED++))
    else
      ((UPD_FOUND++))
    fi
  done
  echo
  echo "  CORE UPDATE PROCESSED: $UPD_PROCESSED"
  echo "  CORE UPDATE FOUND BUT ALREADY IN DB: $UPD_FOUND"
  echo
  true
}

function apply_char_db_core_update()
{
  echo "> Trying to process last Characters CORE updates"
  if [[ "$STATUS_CHAR_DB_FOUND" == "false" ]] || [[ "$DB_CHARDB_VERSION" == "0" ]]; then
    echo ">>> ERROR: cannot get last core revision in DB"
    false
    return
  fi

  # ex: z2778_01_logs_anticheat
  local regex="$DATABASE_UPDATE_FILE_PREFIX([0-9]+)_([0-9]+)"
  # extract group1/2
  [[ "$DB_CHARDB_VERSION" =~ $regex ]]
  # concatenate group1/2
  local rev="${BASH_REMATCH[1]}${BASH_REMATCH[2]}"
  # convert to int
  local LAST_CORE_REV=$((10#$rev))

  if [ "$LAST_CORE_REV" -eq 0 ]
  then
    echo ">>> ERROR: cannot get last core revision in DB"
    false
    return
  fi

  local UPD_PROCESSED=0
  local UPD_FOUND=0
  local CORE_REVS=()

  for f in "$CORE_PATH/sql/updates/characters/"*characters_*.sql
  do
    CUR_REV=$(basename "$f" | sed "s/^$DATABASE_UPDATE_FILE_PREFIX\([0-9]*\)_\([0-9]*\).*/\1\2/")
    if [ "$CUR_REV" -gt "$LAST_CORE_REV" ]; then
      # found a newer core update file
      local fName=$(basename "$f")
      if ! execute_sql_file "$CHAR_DB_NAME" "$f" "  - Applying $fName"; then
        false
        return
      fi
      ((UPD_PROCESSED++))
    else
      ((UPD_FOUND++))
    fi
  done
  echo
  echo "  CORE UPDATE PROCESSED: $UPD_PROCESSED"
  echo "  CORE UPDATE FOUND BUT ALREADY IN DB: $UPD_FOUND"
  echo
  true
}

function apply_realm_db_core_update()
{
  echo "> Trying to process last Realm CORE updates"

  if [[ "$STATUS_REALM_DB_FOUND" == "false" ]] || [[ "$DB_REALMDB_VERSION" == "0" ]]; then
    echo ">>> ERROR: cannot get last core revision in DB"
    false
    return
  fi

  # ex: z2778_01_logs_anticheat
  local regex="$DATABASE_UPDATE_FILE_PREFIX([0-9]+)_([0-9]+)"
  # extract group1/2
  [[ "$DB_REALMDB_VERSION" =~ $regex ]]
  # concatenate group1/2
  local rev="${BASH_REMATCH[1]}${BASH_REMATCH[2]}"
  # convert to int
  local LAST_CORE_REV=$((10#$rev))

  if [ "$LAST_CORE_REV" -eq 0 ]
  then
    echo ">>> ERROR: cannot get last core revision in DB"
    false
    return
  fi

  local UPD_PROCESSED=0
  local UPD_FOUND=0
  local CORE_REVS=()

  for f in "$CORE_PATH/sql/updates/realmd/"*realmd*.sql
  do
    CUR_REV=$(basename "$f" | sed "s/^$DATABASE_UPDATE_FILE_PREFIX\([0-9]*\)_\([0-9]*\).*/\1\2/")
    if [ "$CUR_REV" -gt "$LAST_CORE_REV" ]; then
      # found a newer core update file
      local fName=$(basename "$f")
      if ! execute_sql_file "$REALM_DB_NAME" "$f" "  - Applying $fName"; then
        false
        return
      fi
      ((UPD_PROCESSED++))
    else
      ((UPD_FOUND++))
    fi
  done
  echo
  echo "  CORE UPDATE PROCESSED: $UPD_PROCESSED"
  echo "  CORE UPDATE FOUND BUT ALREADY IN DB: $UPD_FOUND"
  echo
  true
}

function apply_logs_db_core_update()
{
  echo "> Trying to process last Logs CORE updates"

  if [[ "$STATUS_LOGS_DB_FOUND" == "false" ]] || [[ "$DB_LOGSDB_VERSION" == "0" ]]; then
    echo ">>> ERROR: cannot get last core revision in DB"
    false
    return
  fi

  # ex: z2778_01_logs_anticheat
  local regex="$DATABASE_UPDATE_FILE_PREFIX([0-9]+)_([0-9]+)"
  # extract group1/2
  [[ "$DB_LOGSDB_VERSION" =~ $regex ]]
  # concatenate group1/2
  local rev="${BASH_REMATCH[1]}${BASH_REMATCH[2]}"
  # convert to int
  local LAST_CORE_REV=$((10#$rev))

  if [ "$LAST_CORE_REV" -eq 0 ]
  then
    echo ">>> ERROR: cannot get last core revision in DB"
    false
    return
  fi

  local UPD_PROCESSED=0
  local UPD_FOUND=0
  local CORE_REVS=()

  for f in "$CORE_PATH/sql/updates/logs/"*logs*.sql
  do
    CUR_REV=$(basename "$f" | sed "s/^$DATABASE_UPDATE_FILE_PREFIX\([0-9]*\)_\([0-9]*\).*/\1\2/")
    if [ "$CUR_REV" -gt "$LAST_CORE_REV" ]; then
      # found a newer core update file
      local fName=$(basename "$f")
      if ! execute_sql_file "$LOGS_DB_NAME" "$f" "  - Applying $fName"; then
        false
        return
      fi
      ((UPD_PROCESSED++))
    else
      ((UPD_FOUND++))
    fi
  done
  echo
  echo "  CORE UPDATE PROCESSED: $UPD_PROCESSED"
  echo "  CORE UPDATE FOUND BUT ALREADY IN DB: $UPD_FOUND"
  echo
  true
}

function apply_core_update()
{
  check_dbs_accessibility
  if ! apply_world_db_core_update;then
    false
    return
  fi
  if ! apply_char_db_core_update;then
    false
    return
  fi
  if ! apply_realm_db_core_update;then
    false
    return
  fi
  if ! apply_logs_db_core_update;then
    false
    return
  fi
  true
}

function apply_ahbot_data()
{
  # Apply optional AHBot commands documentation
  if [ "$AHBOT" == "YES" ]; then
    echo "> Trying to apply $CORE_PATH/sql/base/ahbot ..."
    for f in "$CORE_PATH/sql/base/ahbot/"*.sql
    do
        if ! execute_sql_file "$WORLD_DB_NAME" "$f" "  - Applying $f"; then
          false
          return
        fi
    done
    echo
  fi
  true
}

# Apply dbc folder
function apply_full_dbc_data()
{
  echo "> Trying to apply dbc datas"
  for f in "$CORE_PATH/sql/base/dbc/original_data/"*.sql
  do
    local fName=$(basename "$f")
    if ! execute_sql_file "$WORLD_DB_NAME" "$f" "  - Applying $fName"; then
      false
      return
    fi
  done
  echo "  Original DBC data were applyed successfully!"
  echo

    # Apply dbc changes (specific fixes to known wrong/missing data)
  echo "> Trying to apply CMaNGOS fixes to dbc datas ... "
  for f in "$CORE_PATH/sql/base/dbc/cmangos_fixes/"*.sql;do
    local fName=$(basename "$f")
    if ! execute_sql_file "$WORLD_DB_NAME" "$f" "  - Applying $fName"; then
      false
      return
    fi
  done
  echo "  CMaNGOS fixes for DBC data were applyed successfully!"
  echo
  true
}

# Apply scriptdev2.sql
function apply_full_scriptdev2_data()
{
  if ! execute_sql_file "$WORLD_DB_NAME" "$CORE_PATH/sql/scriptdev2/scriptdev2.sql" "> Trying to apply ScripDev2 data"; then
    false
    return
  fi
  echo
  true
}

# Apply full ACID file
function apply_acid_data()
{
  if ! execute_sql_file "$WORLD_DB_NAME" "ACID/acid_${EXPENSION,,}.sql" "> Trying to apply ACID file"; then
    false
    return
  fi
  echo
  true
}

# Apply cmangos_custom.sql
function apply_custom_data()
{
  if ! execute_sql_file "$WORLD_DB_NAME" "${ADDITIONAL_PATH}utilities/cmangos_custom.sql" "> Trying to apply cmangos_custom.sql"; then
    false
    return
  fi
  echo
  true
}

# Apply locales
function apply_locales()
{
  if [ "$LOCALES" == "YES" ]; then
    echo "> Trying to apply locales data (May take some minutes) ..."
    for UPDATEFILE in ${ADDITIONAL_PATH}locales/*.sql
    do
      if [ -e "$UPDATEFILE" ]; then
        for UPDATE in ${ADDITIONAL_PATH}locales/*.sql
        do
          if ! execute_sql_file "$WORLD_DB_NAME" "$UPDATE" "  - Applying $UPDATE"; then
            false
            return
          fi
        done
      fi
    done
  fi
  echo
  true
}

# Apply dev custom changes
function apply_dev_content
{
  if [ "$DEV_UPDATES" != "YES" ]; then
    true
    return
  fi

  echo "> Trying to apply development updates"
  for UPDATEFILE in "${ADDITIONAL_PATH}dev/*.sql"
  do
    if [ -e "$UPDATEFILE" ]; then
      for UPDATE in "${ADDITIONAL_PATH}dev/*.sql";do
        local fName=$(basename "$f")
        if ! execute_sql_file "$WORLD_DB_NAME" "$UPDATE" "  - Applying $fName"; then
          false
          return
        fi
      done
    fi
    break
  done

  # processing individual folder in dev folder
  for UPDATEFILE in "${ADDITIONAL_PATH}dev/*/*.sql"
  do
    if [ -e "$UPDATEFILE" ]; then
      for UPDATE in "${ADDITIONAL_PATH}dev/*/*.sql";do
        local fName=$(basename "$f")
        if ! execute_sql_file "$WORLD_DB_NAME" "$UPDATE" "  - Applying $fName"; then
          false
          return
        fi
      done
    fi
    break
  done
  echo
  true
}

# Content db installation
function apply_content_db()
{
    ## Full Database
  echo "> Processing main ${EXPENSION}-DB release file \"$DB_RELEASE_TITLE\" ... "
  if ! apply_main_file; then
    false
    return
  fi

  ## Updates
  echo "> Trying to process ${EXPENSION}-DB updates"
  COUNT=0
  for UPDATE in "${ADDITIONAL_PATH}Updates/"[0-9]*.sql
  do
    if [ -e "$UPDATE" ]; then
      if ! execute_sql_file "$WORLD_DB_NAME" "$UPDATE" "  - Applying $UPDATE"; then
        false
        return
      fi
      ((COUNT++))
    fi
  done
  echo "  $COUNT successfully added."
  echo
  true
}

# Content db installation
function apply_full_content_db()
{
  if [[ "$1" = true ]]; then
    if ! are_you_sure "Install"; then
      return
    fi
  fi

  # apply content db
  if ! apply_content_db; then
    false
    return
  fi

  check_dbs_accessibility
  # apply core updates
  if ! apply_world_db_core_update; then
    false
    return
  fi

  # Apply ahbot folder
  if ! apply_ahbot_data; then
    false
    return
  fi

  # Apply dbc folder
  if ! apply_full_dbc_data; then
    false
    return
  fi

  # Apply scriptdev2.sql
  if ! apply_full_scriptdev2_data; then
    false
    return
  fi

  # Apply apply acid data sql file
  if ! apply_acid_data; then
    false
    return
  fi

  # Apply cmangos custom sql
  if ! apply_custom_data; then
    false
    return
  fi

  # Apply locales
  if ! apply_locales; then
    false
    return
  fi

  # DEVELOPERS UPDATES
  if ! apply_dev_content; then
    false
    return
  fi

  true
}

function create_db_user_and_set_privileges()
{
  if [[ "$1" = true ]]; then
    if ! are_you_sure "CreateAll"; then
      return
    fi
  fi
  echo -n "> Creating $MYSQL_USERNAME user in database ... "
  local sqlcreate=("$SQL_DROP_DATABASE_USER")
  sqlcreate+=("$SQL_CREATE_DATABASE_USER")
  sqlcreate+=("$SQL_GRANT_TO_WORLD_DATABASE")
  sqlcreate+=("$SQL_GRANT_TO_CHAR_DATABASE")
  sqlcreate+=("$SQL_GRANT_TO_REALM_DATABASE")
  sqlcreate+=("$SQL_GRANT_TO_LOGS_DATABASE")
  export MYSQL_PWD="$ROOTPASSWORD"
  for sql in "${sqlcreate[@]}"
  do
    ERRORS=$("$MYSQL_PATH" -u"$ROOTUSERNAME" -h"$MYSQL_HOST" -P"$MYSQL_PORT" -s -N -e"$sql" 2>&1)
    if [[ $? != 0 ]]; then
      echo "FAILED!"
      echo ">>> $ERRORS"
      false
      return
    fi
  done
  echo "SUCCESS"
  unset sqlcreate
  export MYSQL_PWD="$MYSQL_PASSWORD"
  true
}

function delete_all_databases_and_user
{
  if [[ "$1" = true ]]; then
    if ! are_you_sure "DeleteAll"; then
      return
    fi
  fi
  echo -n "> Deleting all current cmangos database and current user in database..."
  local sqlcreate=("$SQL_DROP_DATABASE_USER")
  sqlcreate+=("$SQL_DROP_WORLD_DB")
  sqlcreate+=("$SQL_DROP_CHAR_DB")
  sqlcreate+=("$SQL_DROP_REALM_DB")
  sqlcreate+=("$SQL_DROP_LOGS_DB")
  export MYSQL_PWD="$ROOTPASSWORD"
  for sql in "${sqlcreate[@]}"
  do
    ERRORS=$("$MYSQL_PATH" -u"$ROOTUSERNAME" -h"$MYSQL_HOST" -P"$MYSQL_PORT" -s -N -e"$sql" 2>&1)
    if [[ $? != 0 ]]; then
      echo "FAILED!"
      echo ">>> $ERRORS"
      false
      return
    fi
  done
  echo "SUCCESS"
  unset sqlcreate
  true
}

function create_and_fill_world_db()
{
  if [[ "$1" = true ]]; then
    if ! are_you_sure "World"; then
      return
    fi
  fi
  echo -n "> Creating $WORLD_DB_NAME database ... "
  local sqlcreate=("$SQL_DROP_WORLD_DB")
  sqlcreate+=("$SQL_CREATE_WORLD_DB")
  export MYSQL_PWD="$ROOTPASSWORD"
  for sql in "${sqlcreate[@]}"
  do

    ERRORS=$("$MYSQL_PATH" -u"$ROOTUSERNAME" -h"$MYSQL_HOST" -P"$MYSQL_PORT" -s -N -e"$sql" 2>&1)
    if [[ $? != 0 ]]; then
      echo "FAILED!"
      echo ">>> $ERRORS"
      echo "$?"
      false
      return
    fi
  done

  if ! execute_sql_file "$WORLD_DB_NAME" "$SQL_FILE_BASE_WORLD"; then
    echo "FAILED!"
    echo ">>> $ERRORS"
    false
    return
  fi
  echo "SUCCESS"

  if ! apply_full_content_db; then
    false
    return
  fi
  true
}

function create_and_fill_char_db()
{
  if [[ "$1" = true ]]; then
    if ! are_you_sure "Characters"; then
      return
    fi
  fi
  echo -n "> Creating $CHAR_DB_NAME database ... "
  local sqlcreate=("$SQL_DROP_CHAR_DB")
  sqlcreate+=("$SQL_CREATE_CHAR_DB")
  export MYSQL_PWD="$ROOTPASSWORD"
  for sql in "${sqlcreate[@]}"
  do
    ERRORS=$("$MYSQL_PATH" -u"$ROOTUSERNAME" -h"$MYSQL_HOST" -P"$MYSQL_PORT" -s -N -e"$sql" 2>&1)
    if [[ $? != 0 ]]; then
      echo "FAILED!"
      echo ">>> $ERRORS"
      export MYSQL_PWD="$MYSQL_PASSWORD"
      false
      return
    fi
  done

  if ! execute_sql_file "$CHAR_DB_NAME" "$SQL_FILE_BASE_CHAR"; then
    echo "FAILED!"
    echo ">>> $ERRORS"
    false
    return
  fi
  echo "SUCCESS"
  true
}

function create_and_fill_realm_db()
{
  if [[ "$1" = true ]]; then
    if ! are_you_sure "Realmd"; then
      return
    fi
  fi
  echo -n "> Creating $REALM_DB_NAME database..."
  local sqlcreate=("$SQL_DROP_REALM_DB")
  sqlcreate+=("$SQL_CREATE_REALM_DB")
  export MYSQL_PWD="$ROOTPASSWORD"
  for sql in "${sqlcreate[@]}"
  do
    ERRORS=$("$MYSQL_PATH" -u"$ROOTUSERNAME" -h"$MYSQL_HOST" -P"$MYSQL_PORT" -s -N -e"$sql" 2>&1)
    if [[ $? != 0 ]]; then
      echo "FAILED!"
      echo ">>> $ERRORS"
      export MYSQL_PWD="$MYSQL_PASSWORD"
      false
      return
    fi
  done

  if ! execute_sql_file "$REALM_DB_NAME" "$SQL_FILE_BASE_REALM"; then
    echo "FAILED!"
    echo ">>> $ERRORS"
    false
    return
  fi
  echo "SUCCESS"
  true
}

function create_and_fill_logs_db()
{
  if [[ "$1" = true ]]; then
    if ! are_you_sure "Logs"; then
      return
    fi
  fi
  echo -n "> Creating $LOGS_DB_NAME database..."
  local sqlcreate=("$SQL_DROP_LOGS_DB")
  sqlcreate+=("$SQL_CREATE_LOGS_DB")
  export MYSQL_PWD="$ROOTPASSWORD"
  for sql in "${sqlcreate[@]}"
  do
    ERRORS=$("$MYSQL_PATH" -u"$ROOTUSERNAME" -h"$MYSQL_HOST" -P"$MYSQL_PORT" -s -N -e"$sql" 2>&1)
    if [[ $? != 0 ]]; then
      echo "FAILED!"
      echo ">>> $ERRORS"
      false
      return
    fi
  done

  if ! execute_sql_file "$LOGS_DB_NAME" "$SQL_FILE_BASE_LOGS"; then
    echo "FAILED!"
    echo ">>> $ERRORS"
    false
    return
  fi
  echo "SUCCESS"
  true
}

function create_all_databases_and_user()
{
  if ! are_you_sure "DeleteAll"; then
    return
  fi

  if ! create_db_user_and_set_privileges; then
    return
  fi

  if ! create_and_fill_world_db; then
    return
  fi

  if ! create_and_fill_char_db; then
    return
  fi

  if ! create_and_fill_realm_db; then
    return
  fi

  if ! create_and_fill_logs_db; then
    return
  fi
}

###############################################
## User Menu ##################################
###############################################
function print_realm_list()
{
  printf "%0.1s" "="{1..80};printf "\n"
  printf "%-4.4s| %-32.32s| %-31.31s| %-6.6s|\n" "Id" "Name" "Address" "Port"
  printf "%0.1s" "="{1..80};printf "\n"
  export MYSQL_PWD="$MYSQL_PASSWORD"
  local result=$("$MYSQL_PATH" -u"$MYSQL_USERNAME" -h"$MYSQL_HOST" -P"$MYSQL_PORT" -s -N -D"$REALM_DB_NAME" -e"$SQL_QUERY_REALM_LIST" 2>&1)
  if [[ $? != 0 ]];then
    echo "Error unable to read realm list"
    echo "$result"
    return
  fi

  IFS='\n'
  while read line
  do
    # clean the result that might contain LF or CR char
    line=${line//[$'\r\n']}
    CURRENT_REALM_LIST+=("$line")

    # fill our array variable
    IFS=$'\t'; realmdata=($line); IFS="$OLDIFS"

    # split result so we can print them on specific places (result are separed using tab) realmdata=($line)
    printf "%-4.4s| %-32.32s| %-31.31s| %-6.6s| \n" "${realmdata[0]}" "${realmdata[1]}" "${realmdata[2]}" "${realmdata[3]}"
    printf "%0.1s" "-"{1..80};printf "\n"
  done < <(printf '%s\n' $result)
  IFS="$OLDIFS"
}

function realm_edit()
{
  local found=false
  local choice
  read -e -p "Please enter your realm id .....: " choice
  for realmdata in "${CURRENT_REALM_LIST[@]}"
  do
    # split result so we can print them on specific places (result are separed using tab)
    IFS=$'\t';realmdata=($realmdata); IFS="$OLDIFS"

    if [ ${realmdata[0]} = "$choice" ]; then
      found=true
      echo "found"
      break
    fi
  done
  if [ ! "$found" = true ]; then
    echo "> Unable to found the choosen id($choice)!"
    return
  fi
  local orival="$realmdata"
  read -e -p "Enter realm id.....................: " -i "${realmdata[0]}" realmdata[0]
  read -e -p "Enter realm name...................: " -i "${realmdata[1]}" realmdata[1]
  read -e -p "Enter realm address................: " -i "${realmdata[2]}" realmdata[2]
  read -e -p "Enter realm port...................: " -i "${realmdata[3]}" realmdata[3]
  echo
  sql="$SQL_DELETE_REALM_ID'${realmdata[0]}'"
  if ! execute_sql_command "$REALM_DB_NAME" "$sql" "Apllying realm change"; then
    echo "Aborting..."
    return
  fi

  sql="$SQL_INSERT_REALM_LIST('${realmdata[0]}','${realmdata[1]}','${realmdata[2]}','${realmdata[3]}');"
  if ! execute_sql_command "$REALM_DB_NAME" "$sql"; then
    sql="$SQL_INSERT_REALM_LIST('${orival[0]}','${orival[1]}','${orival[2]}','${orival[3]}');"
    echo "> Trying to restore old datas ... "
    if ! execute_sql_command "$REALM_DB_NAME" "$sql"; then
      return
    fi
  fi
}

function realm_add()
{
  clear
  local realmdata
  realmdata=("0" "CMaNGOS" "localhost" "8085")
  read -e -p "Enter realm id (should be unique id).: " -i "${realmdata[0]}" realmdata[0]
  read -e -p "Enter realm name.....................: " -i "${realmdata[1]}" realmdata[1]
  read -e -p "Enter realm address..................: " -i "${realmdata[2]}" realmdata[2]
  read -e -p "Enter realm port.....................: " -i "${realmdata[3]}" realmdata[3]

  local choice
  read -e -p "Is that correct [y/N]? " choice
  if [[ ! "$choice" =~ ^[Yy]$ ]]; then
      return
  fi

  sql="$SQL_INSERT_REALM_LIST('${realmdata[0]}','${realmdata[1]}','${realmdata[2]}','${realmdata[3]}');"
  execute_sql_command "$REALM_DB_NAME" "$sql" "Adding new realm to database"
}

function realm_remove()
{
  local choice
  read -e -p "Please enter realm id that you want to delete.....: " choice

  sql="$SQL_DELETE_REALM_ID '$choice';"
  execute_sql_command "$REALM_DB_NAME" "$sql" "Deleting from realm to database"
}

function manage_realmlist_menu()
{
  while true
  do
    clear
    print_underline "Manage your realm list"
    echo
    print_realm_list
    echo
    echo "> 1) Edit one realm"
    echo "> 2) Add a realm"
    echo "> 3) Remove a realm"
    echo "> 4) Refresh realm list"
    echo "> 9) Return to main menu"
    echo
    read -n 1 -e -p "Please enter your choice.....: " CHOICE

    case $CHOICE in
    "1") realm_edit; wait_key;;
    "2") realm_add; wait_key;;
    "3") realm_remove; wait_key;;
    "4") ;;
    *) break;;
  esac
  done
}

function advanced_db_install_menu()
{
  while true
  do
    if ! set_try_root_connect_to_db true; then
      return
    fi

    clear
    print_underline "Advanced databases management"
    show_mysql_settings
    echo
    echo "> 1) Edit settings"
    echo "> 2) Create and fill world database"
    echo "> 3) Create and fill character database"
    echo "> 4) Create and fill realmd database"
    echo "> 5) Create and fill logs database"
    echo "> 6) Create 'core user' for db and set its default privileges"
    echo "> 7) Delete all databases and users"
    echo "> 9) Return to previous menu"
    echo
    read -n 1 -e -p "Please enter your choice.....: " CHOICE

    case $CHOICE in
    "1") check_settings_menu;;
    "2") create_and_fill_world_db true; wait_key;;
    "3") create_and_fill_char_db true; wait_key;;
    "4") create_and_fill_realm_db true; wait_key;;
    "5") create_and_fill_logs_db true; wait_key;;
    "6") create_db_user_and_set_privileges true; wait_key;;
    "7") delete_all_databases_and_user true; wait_key;;
    *) break;;
  esac
  done
}

function full_db_install_menu()
{
  while true
  do
    if ! set_try_root_connect_to_db true; then
      return
    fi

    clear
    print_underline "Create databases and fill them with latest data" "="
    echo
    echo
    show_mysql_settings
    echo
    echo "Info: If its your first DB installation you can safely choose option 1 and ignore warning."
    echo
    echo
    echo
    echo "> 1) Full default CMaNGOS-core and ${EXPENSION}-DB installation (all DB with MySQL user)"
    echo "> 2) Edit settings"
    echo "> 3) Install fresh ${EXPENSION}-DB only to '${WORLD_DB_NAME}'"
    echo "> 8) Advanced database management menu"
    echo "> 9) Return to main menu"
    echo
    read -n 1 -e -p "Please enter your choice.....: " CHOICE

    case $CHOICE in
    "1") create_all_databases_and_user; wait_key;;
    "2") check_settings_menu;;
    "3") apply_full_content_db;;
    "8") advanced_db_install_menu;;
    *) break;;
  esac
  done
}

function check_settings_menu()
{
  while true
  do
    clear
    print_underline "Manage all important settings"
    show_mysql_settings
    echo
    local current_errors=()
    local mysql_ok=false
    local core_path_ok=false
    local connection_ok=false
    if ! check_mysql_binary; then
      current_errors+=("$ERRORS")
      mysql_ok=false
    else
      mysql_ok=true
      echo -ne "Connecting to DB server, please wait..."
      if ! try_connect_to_db; then
        current_errors+=("$ERRORS")
        connection_ok=false
      fi
      echo -ne "\033[0K\r"
      echo -ne "                                                                           "
      echo -ne "\033[0K\r"
    fi
    if ! check_core_path_setting; then
      current_errors+=("$ERRORS")
      core_path_ok=false
    else
      core_path_ok=true
    fi

    if [ ${#current_errors[@]} -gt 0 ];then
      print_underline "Following errors should be fixed to be able to run this script:" "-"
      for err in "${current_errors[@]}";do
        echo ">>> $err"
      done
    else
      echo
      check_dbs_accessibility
    fi
    if [[ "$STATUS_USER_SUCCESS" = false ]] && [[ "$STATUS_ROOT_SUCCESS" = false ]]; then
      echo ">>> At least root access or user access should be possible to exit from this menu"
    fi
    echo
    echo "> 1) Edit current settings to connect with normal user"
    echo "> 2) Set root access to be able to create full db and normal user"
    echo "> 3) Retry current settings"
    if [ "$mysql_ok" == false ]; then
      echo "> 7) Try to autodetect mysql binary"
    fi
    if [ "$core_path_ok" == false ]; then
      echo "> 8) Try to autodetect cmangos core path"
    fi
    if [ ${#current_errors[@]} = 0 ] || [ "$STATUS_ROOT_SUCCESS" = true ];then
      echo "> 9) Go to main menu"
    else
      echo "> 9) Exit"
    fi
    echo
    read -n 1 -e -p "Please enter your choice.....: " CHOICE

    case $CHOICE in
      "1") change_mysql_settings; save_settings; set_sql_queries;;
      "2") set_try_root_connect_to_db true;;
      "3") ;;
      "7") if [ "$mysql_ok" == false ]; then try_set_mysql_path; fi;;
      "8") if [ "$core_path_ok" == false ]; then try_set_core_path; fi;;
      "9") if [ ${#current_errors[@]} = 0 ] || [ "$STATUS_ROOT_SUCCESS" = true ];then return; else break; fi;;
      *) break;;
    esac
  done
  exit 0
}

# normal user menu
function main_menu()
{
  while true
  do
    # dont go further if minimal requirement is not satisfied
    while true;do
      clear
      echo "Checking minimum requirement please wait..."
      if check_minimum_requierements; then
        break
      fi
      check_settings_menu
    done

    print_header
    get_current_source_db_version
    check_dbs_accessibility

    echo
    printf "%0.1s" "="{1..110};printf "\n"
    printf "%-25s | %-40s | %-40s\n" "DATABASE NAME" "REQUIRED VERSION FOR THIS CORE" "YOUR CURRENT DB VERSION"
    printf "%0.1s" "="{1..110};printf "\n"
    printf "%-25.25s | %-40.40s | %-40.40s\n" "$WORLD_DB_NAME" "$SOURCE_WORLDDB_VER" "$DB_WORLDDB_VERSION"
    printf "%0.1s" "-"{1..110};printf "\n"
    printf "%-25.25s | %-40.40s | %-40.40s\n" "$CHAR_DB_NAME" "$SOURCE_CHARACTERDB_VER" "$DB_CHARDB_VERSION"
    printf "%0.1s" "-"{1..110};printf "\n"
    printf "%-25.25s | %-40.40s | %-40.40s\n" "$REALM_DB_NAME" "$SOURCE_REALMDB_VER" "$DB_REALMDB_VERSION"
    printf "%0.1s" "-"{1..110};printf "\n"
    printf "%-25.25s | %-40.40s | %-40.40s\n" "$LOGS_DB_NAME" "$SOURCE_LOGSDB_VER" "$DB_LOGSDB_VERSION"
    printf "%0.1s" "-"{1..110};printf "\n"
    show_installation_status
    echo
    echo "> 1) Manage settings"
    echo "> 2) Install fresh ${EXPENSION}-DB only to '${WORLD_DB_NAME}'"
    echo "> 3) Install core updates only"
    echo "> 4) Full installation (create all DB and MySQL user, root required)"
    echo "> 5) Advanced DB management (root required)"
    echo "> 6) Manage realm list"
    echo "> 9) Quit"
    echo
    read -n 1 -e -p "Please enter your choice.....: " CHOICE

    case $CHOICE in
      "1") check_settings_menu;;
      "2") apply_full_content_db true; wait_key;;
      "3") apply_core_update; wait_key;;
      "4") full_db_install_menu;;
      "5") advanced_db_install_menu;;
      "6") manage_realmlist_menu;;
      *) break;;
    esac
  done
}

###############################################
## Auto script ################################
###############################################

# install all db by deleting all previous data without prompting if "DeleteAll" is set as arg3
# arg1: root username arg2: root password
function auto_script_create_all()
{
  echo "Automatic install starting..."
  ROOTUSERNAME="$1"
  ROOTPASSWORD="$2"

  show_mysql_settings

  if [[ "$3" != "DeleteAll" ]]; then
    if ! are_you_sure "DeleteAll"; then
      false
      return
    fi
  fi

  force_wait

  if ! set_try_root_connect_to_db; then
    false
    return
  fi

  if ! create_db_user_and_set_privileges; then
    false
    return
  fi

  if ! create_and_fill_world_db; then
    false
    return
  fi

  if ! create_and_fill_char_db; then
    false
    return
  fi

  if ! create_and_fill_realm_db; then
    false
    return
  fi

  if ! create_and_fill_logs_db; then
    false
    return
  fi

  if ! apply_core_update; then
    false
    return
  fi

  true
}

# install world db using config file settings and normal user
function auto_script_install_world()
{
  if [[ "$STATUS_CONFIG_JUST_CREATED" = true ]]; then
    echo
    print_underline "$CONFIG_FILE just been created, please edit it and rerun this script to install ${EXPENSION}-DB"
    false
    return
  fi

  clear
  print_underline "Welcome to ${EXPENSION}-DB installation"
  echo
  show_mysql_settings
  echo

  force_wait

  if ! apply_full_content_db; then
    false
    return
  fi

  true
}

# display little help
function show_help
{
  echo "${EXPENSION}-DB install script"
  echo "$SCRIPT_FILE [options] [arg1 ... argn]"
  echo "options:"
  echo "   -?"
  echo "    this help"
  echo "   -Config"
  echo "    Show current config"
  echo "   -World"
  echo "    Install world db only using none root user defined in $CONFIG_FILE"
  echo "   -InstallAll"
  echo "    Install all db by droping previous one and recreate them from scratch"
  echo "    Require root access with arg1 as root username and arg2 as root password"
}

###############################################
## Main program ###############################
###############################################

# Check if config file present
if [[ ! -f "$CONFIG_FILE" ]]
then
  try_set_core_path
  try_set_mysql_path
  save_settings
  STATUS_CONFIG_JUST_CREATED=true
fi

# load config file
source "$CONFIG_FILE"

# initialize sql queries
set_sql_queries

# check if user just want fast db installation
if [[ "$1" == "-InstallAll" ]]; then
  if ! auto_script_create_all $2 $3 $4; then
    exit 1
  fi

  exit 0
fi

# check if user only want to install world db using config
if [[ "$1" == "-World" ]]; then
  if ! auto_script_install_world; then
    exit 1
  fi

  exit 0
fi

# only show config
if [[ "$1" == "-Config" ]]; then
  show_mysql_settings

  exit 0
fi

# check if user only want to install world db using config
if [[ "$1" != "" ]]; then
  show_help
  exit 0
fi

# launch main menu
main_menu