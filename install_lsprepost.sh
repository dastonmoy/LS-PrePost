# !/bin/sh
# Install LS-PrePost from scratch
# Written by Tonmoy. Original: 11/01/22

# ==========================================
# Update (08/02/23)
# Modified so that the installer can be used
# for any LS-PrePost version available in
#       the LSTC ftp (ftp.lstc.com)
# ==========================================

# ==========================================
# Update (08/04/23)
# Downloaded the Help files (tutorials and
# documentations) in the appropriate folder
# ==========================================

# Remove any previously installed programs with this script
rm -rf ~/Desktop/LS-PrePost
rm -rf ~/opt/lsprepost

# The file name of the LS-PrePost version
Filename=$1

## Extract the version number from the filename
version=$(echo $Filename | grep -oP '(?<=lsprepost-)\d+.\d+' | cut -d '.' -f 1-2)

## Download the software using the variables
wget -O lsprepost.tgz --user user --password computer https://ftp.lstc.com/user/ls-prepost/$version/linux64/$Filename

# Extract the contents of the folder to the ~/opt directory
mkdir -p ~/opt
tar -xvzf lsprepost.tgz -C ~/opt

# Change the folder name to some convenient one so that it can be accessed easily
mv ~/opt/lsprepost*/ ~/opt/lsprepost/

# Downloading the documentation and tutorials inside the extracted directory
wget -P ~/opt/lsprepost/resource/HelpDocument --user user --password computer https://ftp.lstc.com/user/ls-prepost/$version/doc/linux/Document.zip
wget -P ~/opt/lsprepost/resource/HelpDocument --user user --password computer https://ftp.lstc.com/user/ls-prepost/$version/doc/linux/Tutor.zip

# Change the directory name inside the actual executable of the program
## Extract the version without the dot's and subbranches
version=$(echo $Filename | grep -oP '(?<=lsprepost-)\d+.\d+' | tr -d '.')
sed -i 's/DN=".*"/DN="$(pwd)"/g' ~/opt/lsprepost/lspp$version

# Create a symbolic link to the executable on the desktop
cd ~/opt/lsprepost
ln -s $(pwd)/lspp$version ~/Desktop/LS-PrePost