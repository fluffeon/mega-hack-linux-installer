# small-script-to-install-mega-hack-v6-on-linux-without-doing-a-backflip
Small script to install mega hack v6 on Linux without doing a backflip
# Things you'll need
- Mega Hack v6 (V7 currently does not work in Linux as far as I know)
- The script
- At least 90 IQ
# How to do it
1. Copy the repo and download the script
2. Open it in your text editor to edit the command parameters.
Inside you'll find comments reffering to each directory necessary to make it work.
3. Locate your Steam folder. This can be done easily by opening Steam, right click on Geometry Dash, then hover on Manage and finally click Browse local files. Then once your file manager opens you can take note on where steam is located. In my case it is on ~/.local/share/Steam/ 
4. Edit all instances of (PATH OF YOUR STEAM INSTALLATION) with the path that Steam is in. (if it's on your .local directory then you MUST type it as /home/[your user]/.local/share/Steam/)
5. While on the same folder, browse through Steam/steamapps/compatdata/322170/pfx/drive_c and copy your extracted Mega Hack v6 installation into it. Rename it so it doesn't have any spaces, it MUST NOT have spaces (for example I renamed the mega hack folder to "V6")
6. Edit (ADDRESS OF THE MEGA HACK INSTALL) to where you put the install folder within drive_c. (for example: run ./drive_c/V6/MegaHackPro.exe    with "V6" being the mega hack install folder))
7. Finally, browse Steam/steamapps/common and look for your preffered Proton version (Proton 3.7, Proton - Experimental, etc. You can use spaces on this one.) and input the name of the version in (YOUR PROTON VERSION) (for reference, in my case it would be '/home/flookerton/Steam/steamapps/common/Proton - Experimental/proton'
8. Set the script as executable by inputing the following command: chmod +x mega-hack.sh and run it.
9. If you did everything correctly, the Mega Hack V6 prompt should appear as it does on Windows.
10. Log into your purchased Mega Hack account as usual.
11. Under the "Geometry Dash Folder" box, you must look for the full location of the game. Since we already know the game path from Step 3, you can browse to it (for example for me its on Z:/home/flookerton/.local/share/Steam/steamapps/common/Geometry Dash/GeometryDash.exe, but it will be different on your end)
12. Install, close and open Geometry Dash. If everything goes well, the game will launch and you can press TAB to use the menu.
13. Enjoy :3
