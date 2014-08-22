#!/bin/bash
#bash script to set up vim config after pulling from my .vim repo,
#This clone vundle and moves the .vimrc to /root/

#move .vimrc and .tmux.conf
mv ~/.vim/.vimrc /root/
mv ~/.vim/.tmux.conf ~/.tmux.conf

#clone vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

