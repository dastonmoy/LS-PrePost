# !/bin/sh
# Install LS-PrePost from scratch
# Written by Tonmoy. Last update: 10/28/22

# Get the installer from the LSTC ftp through wget
wget --user user --password computer https://ftp.lstc.com/user/ls-prepost/4.9/linux64/lsprepost-4.9.9-common_gtk3-14Oct2022.tgz

# Extracting the contents of the folder
tar -xvzf ./lsprepost-4.9.9-common_gtk3-14Oct2022.tgz

# Change the folder name to some convenient one so that it can be accessed easily
mv lsprepost4.9_common_gtk3/ lsprepost/

# Now, move the folder to the home directory of user
mv lsprepost/ ~

# Also, create a shortcut of the program to the desktop for easy accessibility
cd ~/Desktop
echo 'cd ~/lsprepost
./lspp49'>>lsprepost.sh

# Setting the permission of the program
chmod ugo+x lsprepost.sh

# Finally, run the LS-PrePost v4.9
cd ~/lsprepost
./lspp49
