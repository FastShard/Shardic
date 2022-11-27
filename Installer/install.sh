clear

# Update the system
echo "🢒 Updating the system"
sudo apt-get update -y && sudo apt-get upgrade -y > /dev/null

# Install Dependencies
echo "🢒 Installing Usefull Dependencies via apt"
sudo apt-get install libxcb-util-dev feh xdo rofi flameshot wget libx11-dev curl gpg git libxcb-randr0-dev libxcb-xtest0-dev libxcb-xinerama0-dev libxcb-shape0-dev libxcb-xkb-dev libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev bspwm sxhkd zathura ranger polybar dunst build-essential ninja-build nemo thunar python3 python3-pip python3-setuptools alacritty mpv cmus neofetch bashtop vim apt-transport-https golang -y > /dev/null
echo " "
 
# Install OPT Build for Double Borders
echo "🢒 Installing wmutils/opt"
cd ~/ && git clone https://github.com/wmutils/opt > /dev/null
cd opt && sudo make && sudo make install && cd ~/ && sudo rm -rf ~/opt > /dev/null

# Install Discord
echo "🢒 Installing Discord"
cd ~/ && wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb" > /dev/null
sudo dpkg -i ~/discord.deb > /dev/null
sudo rm -rf ~/discord.deb > /dev/null

# Install BetterDsicord
echo "🢒 Installing BetterDiscord"
curl -s -O https://raw.githubusercontent.com/bb010g/betterdiscordctl/master/betterdiscordctl
sudo chmod +x betterdiscordctl
sudo mv betterdiscordctl /usr/local/bin
betterdiscordctl install
cd ~/ && sudo rm -rf ~/betterdiscordctl > /dev/null

# Installing Fonts
echo "🢒 Installing and Configuring Fonts"
cd ~/ && wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/JetBrainsMono.zip && sudo unzip ~/JetBrainsMono.zip -d /usr/share/fonts > /dev/null
echo " "

# Setup Configs
echo "🢒 Configuring bspwm"
echo "🢒 Configuring sxhkd"
echo "🢒 Configuring zathura"
echo "🢒 Configuring dunst"
echo "🢒 Configuring polybar"
echo "🢒 Configuring alacritty"
echo " Configuring betterdiscord"
cd ~/ && git clone https://github.com/0xGast/hord-fast-rice && cd ~/hord-fast-rice && BetterDiscord && cp plugins ~/.config/BetterDiscord/ && cp themes ~/.config/BetterDiscord/ && cd ~/hord-fast-rice && rm -rf BetterDiscord && cp -r * ~/.config/ && cd ~/ && rm -rf hord-fast-rice > /dev/null

# Add Permissions
echo "🢒 Configuring Executables"
cd ~/.config/ && sudo chmod +x * && sudo chmod +x */*/ && sudo chmod +x */*/* && sudo chmod +x */*/*/* > /dev/null
echo " "


echo "🢒 Everything has been Installed! Please Log Out and choose BSPWM from the 3 Dots in the Login page!"
