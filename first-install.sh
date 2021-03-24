# MusicBar install
[ ! -d "/Applications/MusicBar.app" ] && \
	curl -L https://github.com/dimitarnestorov/MusicBar/releases/latest/download/MusicBar.zip --output ~/MusicBar.zip \
	&& extract ~/MusicBar.zip \
	&& mv ~/MusicBar.app /Applications/ \
	&& rm -Rf ~/MusicBar.zip

# Oh my zsh install
unset ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ~/.dotfiles/init/eze.zsh-theme ~/.oh-my-zsh/custom/themes/

