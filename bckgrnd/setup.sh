#!/bin/bash -e

if [ ! $SHELL == "/bin/zsh" ]; then
	chsh -s /bin/zsh
	echo Your default shell was $SHELL, it has been changed to /bin/zsh.
fi

cp -r $PWD $HOME/TEMP
cd $HOME

if [ ! -d "~/.bin" ]; then
	mkdir -p "$HOME/.bin"
fi

if [ ! -f "~/.zshrc" ]; then
	touch ~/.zshrc
	chmod 755 ~/.zshrc
fi

echo "export PATH=\$PATH:~/.bin" >> ".zshrc"
echo "alias background=background.sh" >> ".zshrc"
cp ~/TEMP/background.sh .bin
cp ~/TEMP/IMG1.jpeg .bin
cp ~/TEMP/IMG2.jpeg .bin

(crontab -l ; echo "0 07 * * * background ~/.bin/IMG1.jpeg") | crontab -
(crontab -l ; echo "0 07 * * * background ~/.bin/IMG2.jpeg") | crontab -



source .zshrc
rm -r $HOME/TEMP

echo Setup process finished.
