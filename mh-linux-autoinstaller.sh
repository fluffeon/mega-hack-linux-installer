#!/bin/bash

# Function to get user input
get_user_input() {
  read -p "$1" user_input
  echo "$user_input"
}

# Prompt for Steam installation path
echo 'Input your Steam installation path that youve found earlier. This can be done easily by opening Steam, right click on Geometry Dash, then hover on Manage and finally click Browse local files. Then once your file manager opens you can take note on where steam is located. For example, one of the places it would be is ~/.local/share/Steam/'
echo
steam_installation_path=$(get_user_input "Write your Steam installation path: ")

# Prompt for Proton version
echo
echo
echo 'Good, now in this prompt you will have to input the Proton version that you want to use with Mega Hack. PLEASE NOTE that it MUST exist and it must be installed already, input it textually. Like, actually writing it with characters in your keyboard, like by using your fingers pushing against keys and such because theres not a selector... (you get me right?) Dont input a full path, just say which version you would like to use.'
echo
proton_version=$(get_user_input "Write the Proton version you would like to use (e.g., Proton - Experimental): ")

# Prompt for the Mega Hack installer path
echo
echo
echo Now for the final step. Input where you put your MH folder. Dont actually like input a full path like the steam one, just say where you put it inside of the drive_c folder. For example, I put it on the root of it under V6 so for me it would be C:/V6/MegaHackPro.exe but you might put it differently from you because you definitely want to be very quirky and contrarian. Also, keep in mind that the mega hack folder must not have spaces on it. Or else it will do a fucky wucky.
echo
mega_hack_install_path=$(get_user_input "Write the path and executable to the Mega Hack installer (relative to the c_drive directory): C:/")

# Constructing the full paths
steam_path="$steam_installation_path/Steam"
pfx_path="$steam_installation_path/steamapps/compatdata/322170/pfx"
proton_path="$steam_installation_path/steamapps/common/$proton_version/proton"
installer_path="$PWD/drive_c/$mega_hack_install_path"

# Function to get user input with a prompt
get_user_confirmation() {
  read -r -p "$1 (y/n): " response
  case "$response" in
    [yY]|[yY][eE][sS]) return 0 ;;
    *) return 1 ;;
  esac
}

# Prompt for user settings
echo
echo 
echo "Are these settings okay?"
echo "Steam path: $steam_installation_path"
echo "Proton path: $proton_path"
echo "Mega Hack path: C:/$mega_hack_install_path"
echo 
echo
echo 'The final commands would be (copy paste this below and put it in a file/script if you want to save this)'
echo
echo cd $steam_installation_path/steamapps/compatdata/322170/pfx
echo PROTON_LOG=1 STEAM_COMPAT_CLIENT_INSTALL_PATH=''$steam_installation_path'' STEAM_COMPAT_DATA_PATH=''$steam_installation_path'/steamapps/compatdata/322170' WINEPREFIX='$PWD' ''$steam_installation_path/steamapps/common/"$proton_version"/proton'' run ./drive_c/$mega_hack_install_path
echo
echo

# Ask for confirmation
if get_user_confirmation "Is everything correct?"; then
  echo "OK"
  # Exporting variables and running the installer with wine
  cd $steam_installation_path/steamapps/compatdata/322170/pfx
PROTON_LOG=1 STEAM_COMPAT_CLIENT_INSTALL_PATH=''$steam_installation_path'' STEAM_COMPAT_DATA_PATH=''$steam_installation_path'/steamapps/compatdata/322170' WINEPREFIX=$PWD ''$steam_installation_path/steamapps/common/"$proton_version"/proton'' run ./drive_c/$mega_hack_install_path
  echo Script made by flookerton and ChatGPT, but more so by the latter.
  echo Bye bye!
  echo If this script closes without showing anything, try again. For some reason it does that but if you pay attention and do it carefully it will work eventually.
  else
  echo "Quitting... Please input it again, you silly."
  exit 1
fi
