# LS-Prepost
The repository will shed light on the installation procedure for LS-PrePost: a Pre and Postprocessing freeware used for LS-Dyna developed by its parent company LSTC

﻿# LS-Dyna Environment Setup for Ubuntu (Unix) OS

This document can be considered as a step-by-step guide to install and work with LS-Dyna in Ubuntu or similar Unix operating system.

## First Time LS-PrePost Installation

LS-PrePost is a freeware developed by LSTC. Its main purpose was to establish a GUI tool for generating the keyword file for LS-Dyna solver. It has most of the capabilities to create geometry and meshes, assign boundary conditions and advanced manipulation like all those commercial preprocessors available for LS-Dyna ([Oasys](https://www.oasys-software.com/dyna/software/), [HyperMesh](https://www.altair.com/hypermesh)), if not all. It can also be used as a postprocessor to open and work with the output files from the solver.

The installation of LS-PrePost is quite straightforward. You just have to open the terminal in your Ubuntu and copy the followings there:

### Computer Installation

```bash
# Go to home directory of the user
cd ~
# Clone my repository from github
git clone https://github.com/dastonmoy/LS-PrePost.git
# Enter into the folder
cd ./LS-PrePost
# Run the installer, it would do everything for you
bash install_lsprepost.sh
# Remove the github repo
rm -rf ~/LS-PrePost
```
For any subsequent access to the software, you just have to make the script created on your desktop as "executable".


### Server Installation

For installation in the server just changing the cloning repository to wget would suffice:

```bash
# Go to home directory of the user
cd ~
# Clone the installation file to a newly created directory
mkdir LS-PrePost; cd ~/LS-PrePost
wget https://raw.githubusercontent.com/dastonmoy/LS-PrePost/main/install_lsprepost.sh
# Enter into the folder
cd ./LS-PrePost
# Run the installer, it would do everything for you
bash install_lsprepost.sh
# Remove the github repo
rm -rf ~/LS-PrePost
```

## Opening LS-PrePost After Installation
For any subsequent access to the software, you just have to make the script created on your desktop as "executable". To do so, please go to the "Desktop" of your computer and select the "LS-PrePost". Then go to the "Permissions" tab at the top of the dialogue box. Finally, mark the program as executable, like this:


![Marking the LS-PrePost as executable](images/placeholder.png)

Now, just double click the program on the Desktop and run the PrePost!
