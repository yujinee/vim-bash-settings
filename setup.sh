#/bin/bash

# Vim Settings

rm -rf ~/.vimrc
rm -rf ~/.vim/
cp .vimrc ~/

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.vim/colors
cp Tomorrow-Night-Bright.vim ~/.vim/colors/

vim +PlugInstall +qall

# Bash Settings

cp .bash_profile ~/
