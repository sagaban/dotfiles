default: install-packages clone-repos config-all

install-packages:
	sudo apt-get install -y zsh vim git curl

clone-repos:
	# Install zsh
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

config-all:
	ln -s .vimrc ~/.vimrc
	vim +PluginInstall +qall
