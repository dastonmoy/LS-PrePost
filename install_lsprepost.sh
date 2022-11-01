# !/bin/sh
# Install LS-PrePost from scratch
# Written by Tonmoy. Last update: 11/01/22

# Get the installer from the LSTC ftp through wget
wget --user user --password computer https://ftp.lstc.com/user/ls-prepost/4.9/linux64/lsprepost-4.9.9-common_gtk3-14Oct2022.tgz

# Extracting the contents of the folder
tar -xvzf ./lsprepost-4.9.9-common_gtk3-14Oct2022.tgz

# Change the folder name to some convenient one so that it can be accessed easily
mv lsprepost4.9_common_gtk3/ lsprepost/

# Now, move the folder to the home directory of user
mv lsprepost/ ~

# And change the directory name inside the actual executable of the program
cd ~/lsprepost
sed -i 's/lsprepost4.9_common_gtk3/lsprepost/g' lspp49


# Also, create a shortcut of the program to the desktop for easy accessibility
cd ~/Desktop
echo 'cd ~/lsprepost
./lspp49'>>LS-PrePost.sh

# Setting the permission of the program
chmod ugo+x LS-PrePost.sh

# Finally, running the executable from the desktop depending on user input
while true; do
    read -p "Do you wish to use LS-PrePost Now? " yn
    case $yn in
        [Yy]* ) cd ~/Desktop; ./LS-PrePost.sh; exit;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
