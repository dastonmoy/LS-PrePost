# !/bin/sh
# Install LS-PrePost from scratch
# Written by Tonmoy. Last update: 10/28/22

wget --user user --password computer https://ftp.lstc.com/user/ls-prepost/4.9/linux64/lsprepost-4.9.9-common_gtk3-14Oct2022.tgz
tar -xvzf ./lsprepost-4.9.9-common_gtk3-14Oct2022.tgz
cd lsprepost4.9_common_gtk3
./lspp49
rm -rf ~/run_ls_prepost.sh
