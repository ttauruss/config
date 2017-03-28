
cp ~/config/bashrc ~/.bashrc_$USER
echo "source ~/.bashrc_$USER" >> ~/.bashrc

bash ~/config/git_config
cp ~/config/gitignore_global ~/.gitignore_global

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp ~/config/vimrc ~/.vimrc
cp ~/config/vimrc_vundle ~/.vimrc_vundle

mkdir ~/.vim/colors
cp ~/config/ttauruss.vim ~/.vim/colors/

cp ~/config/tmux.conf ~/.tmux.conf

