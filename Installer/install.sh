clear && curl -s https://raw.githubusercontent.com/FastShard/Themes/main/Installer/ascii.txt

# Update the system
echo "🢒 Updating the system"
sudo apt-get update -y > /dev/null && sudo apt-get upgrade -y > /dev/null

# Install Dependencies
echo "🢒 Installing Usefull Dependencies via apt"
sudo apt-get install libxcb-util-dev feh xdo rofi flameshot wget libx11-dev curl gpg git libxcb-randr0-dev libxcb-xtest0-dev libxcb-xinerama0-dev libxcb-shape0-dev libxcb-xkb-dev libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev bspwm sxhkd zathura ranger polybar dunst build-essential ninja-build nemo thunar python3 python3-pip python3-setuptools alacritty mpv cmus neofetch bashtop vim apt-transport-https golang -y > /dev/null
echo " "
 
# Install OPT Build for Double Borders
echo "🢒 Installing wmutils/opt"
cd ~/ && git clone --quiet https://github.com/wmutils/opt
cd opt && sudo make > /dev/null && sudo make install > /dev/null && cd ~/ && sudo rm -rf ~/opt > /dev/null

# Install Discord
echo "🢒 Installing Discord"
cd ~/ && wget -q -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb" > /dev/null
sudo dpkg -i ~/discord.deb > /dev/null
sudo rm -rf ~/discord.deb > /dev/null

# Install BetterDsicord
echo "🢒 Installing BetterDiscord"
curl -s -O https://raw.githubusercontent.com/bb010g/betterdiscordctl/master/betterdiscordctl
sudo chmod +x betterdiscordctl
sudo mv betterdiscordctl /usr/local/bin
betterdiscordctl install > /dev/null
cd ~/ && sudo rm -rf ~/betterdiscordctl > /dev/null

# Installing Fonts
echo "🢒 Installing and Configuring Fonts"
cd ~/ && wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/JetBrainsMono.zip && sudo unzip ~/JetBrainsMono.zip -d /usr/share/fonts > /dev/null
echo " "

# Setup Configs
echo "🢒 Configuring bspwm"
echo "🢒 Configuring sxhkd"
echo "🢒 Configuring zathura"
echo "🢒 Configuring dunst"
echo "🢒 Configuring polybar"
echo "🢒 Configuring alacritty"
echo " Configuring betterdiscord"

sleep 2s
sudo curl -s https://raw.githubusercontent.com/FastShard/Themes/main/Installer/install.sh | sh

# Add Permissions
echo "🢒 Configuring Executables"
# do chmod +x to every single file inside ~/.config/
sudo chmod +x ~/.config/bspwm/*
sudo chmod +x ~/.config/sxhkd/*
sudo chmod +x ~/.config/zathura/*
sudo chmod +x ~/.config/dunst/*
sudo chmod +x ~/.config/bspwm/bar/*
sudo chmod +x ~/.config/bspwm/alacritty/*
sudo chmod +x ~/.config/bspwm/bin/*
echo " "

cd ~/.config/fastshard/hord/ && sudo cp -r ~/.config/

echo "🢒 Everything has been Installed! Please Log Out and choose BSPWM from the 3 Dots in the Login page!"
