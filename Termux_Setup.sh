#!#####################!#
#? Termux Quickj setup ?#
#!#####################!#
read -p "Have the Extra keys? [Y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
    mkdir $HOME/.termux/ ;echo "extra-keys = [['ESC','/','-','HOME','UP','END'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT']]" >> $HOME/.termux/termux.properties && termux-reload-settings && sleep 1 && logout
else

pkg update && pkg update -y

## * Termux access to global storage
pkg install nnn wget zsh ffmpeg nano nodejs python termux-exec -y
pip install youtube-dl -U

#? Settingup the .zshrc
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
cp .zshrc > nzshrc
sed '10c\'""ZSH_THEME="powerlevel10k/powerlevel10k"" nzshrc > .zshrc
echo "alias Dat= ".dat/releases/dat-14.0.2-linux-x64/dat"" >> .zshrc
rm nzshrc

#! Dat function
npm install -g dat

## * Settingup ZSH
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
termux-setup-storage

fi