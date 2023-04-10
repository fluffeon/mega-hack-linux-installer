#!/bin/bash
cd '/(PATH OF YOUR STEAM INSTALLATION)/Steam/steamapps/compatdata/322170/pfx'
# (PATH OF YOUR STEAM INSTALLATION) is self-explanatory, for example in Arch Linux its usually located at ~/.local/share/Steam
# (YOUR PROTON VERSION) is the version of Proton you set in the game settings. I use "Proton - Experimental" for example. You can check this by going to /Steam/steamapps/common and you'll see the Proton versions you've installed.
# (ADDRESS OF THE MEGA HACK INSTALL) is the address of the Mega Hack installer. THIS MUST ALWAYS BE IN THE "c_drive" DIRECTORY, ALSO MAKE SURE TO NOT USE ANY SPACES IN THE FOLDER. For example, I've located the install folder on the root of the folder and renamed it to V6. In turn, that part of the command would be "run ./drive_c/V6/MegaHackPro.exe"
PROTON_LOG=1 STEAM_COMPAT_CLIENT_INSTALL_PATH='/(PATH OF YOUR STEAM INSTALLATION)/Steam' STEAM_COMPAT_DATA_PATH='/(PATH OF YOUR STEAM INSTALLATION)/Steam/steamapps/compatdata/322170' WINEPREFIX=$PWD '/(PATH OF YOUR STEAM INSTALLATION)/Steam/steamapps/common/(YOUR PROTON VERSION)/proton' run ./drive_c/(ADDRESS OF THE MEGA HACK INSTALL)/MegaHackPro.exe
