#!/bin/bash

# Create NVIM dir
export NVIM_FOLDER="$HOME/.config/nvim_folder"
mv $NVIM_FOLDER $NVIM_FOLDER-bkp-$(date +'%Y%m%d')
rm -rf $NVIM_FOLDER 
mkdir -p $NVIM_FOLDER/share # Location of the installed plugins
mkdir -p $NVIM_FOLDER/nvim # config folder

# stow command to symlink config files in this folder 
stow --restow --target=$NVIM_FOLDER/nvim -R .

# Alias for launching nvim (copy into profile)
# TODO sep from this script
alias nvb='XDG_DATA_HOME=$NVIM_FOLDER/share XDG_CONFIG_HOME=$NVIM_FOLDER nvim'




