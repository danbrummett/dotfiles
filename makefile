.PHONY: install
install:
	echo "installing now"
	make backup
	make deploy

.PHONY: backup
backup:
	mkdir backup
	mv ~/.bashrc backup/.bashrc
	mv ~/.vimrc backup/.vimrc
	mv ~/.tmux.conf backup/.tmux.conf


.PHONY: deploy
deploy:
	cp bashrc ~/.bashrc
	cp vimrc ~/.vimrc
	cp tmux.conf ~/.tmux.conf
	cp molokai.vim ~/.vim/colors/molokai.vim
	cp vimcheatsheet ~/vimcheatsheet
	cp tmuxcheatsheet ~/tmuxcheatsheet

.PHONY: undo
undo:
	make restore

.PHONY: restore
restore:
	rm ~/.bashrc 
	rm ~/.vimrc 
	rm ~/.tmux.conf 
	mv backup/.bashrc ~/.bashrc 
	mv backup/.vimrc ~/.vimrc 
	mv backup/.tmux.conf ~/.tmux.conf 
