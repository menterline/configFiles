#!/bin/bash
# Argument = -v vim -t tmux -i i3

usage()
{
cat << EOF
usage: $0 [options]

This script moves the configuration files to the specified directories

OPTIONS:
-h		show this message
-v		vim config
-t		tmux config
-i		i3 window manager config
EOF
}

VIMDEST= 
TMUXDEST= 
I3DEST= 
BASHDEST=
while getopts "hv:t:i:b" OPTION
do
	case $OPTION in
		h)
			usage
			exit 1
			;;
		v)
			VIMDEST=$OPTARG
			ln -sf vim/.vimrc $VIMDEST/
			git clone https://github.com/gmarik/Vundle.vim.git $VIMDEST/.vim/bundle/Vundle.vim
			;;
		t)
			TMUXDEST=$OPTARG
			ln -sf tmux/.tmux.conf $TMUXDEST/
			;;
		i)
			I3DEST=$OPTARG
			ln -sf i3/config $I3DEST/
			;;
		b)
			BASHDEST=$OPTARG
			ln -sf bash/.bashrc $BASHDEST/
			;;
		?)
			usage
			exit 1
			;;
	esac
done

