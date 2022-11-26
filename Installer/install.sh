# Update the system
echo "[ DEBUG ] Updating the system"
sudo apt-get update -y && sudo apt-get upgrade -y

# Install Dependencies
echo "[ DEBUG ] Installing Usefull Dependencies via apt"
sudo apt-get install libxcb-util-dev feh xdo rofi flameshot wget libx11-dev curl gpg git libxcb-randr0-dev libxcb-xtest0-dev libxcb-xinerama0-dev libxcb-shape0-dev libxcb-xkb-dev libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev bspwm sxhkd zathura ranger polybar dunst build-essential ninja-build nemo thunar python3 python3-pip python3-setuptools alacritty mpv cmus neofetch bashtop vim apt-transport-https golang -y

# Install OPT Build for Double Borders
echo "[ DEBUG ] Installing wmutils/opt"
cd ~/ && git clone https://github.com/wmutils/opt 
cd opt && sudo make && sudo make install && cd ~/ && sudo rm -rf ~/opt

# Installing Fonts
echo "[ DEBUG ] Installing and Configuring Fonts"
cd ~/ && curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh | bash && sudo rm -rf ~/install_manual.sh

# Setup Configs
echo "[ DEBUG ] Configuring bspwm"
echo "[ DEBUG ] Configuring sxhkd"
echo "[ DEBUG ] Configuring zathura"
echo "[ DEBUG ] Configuring dunst"
echo "[ DEBUG ] Configuring polybar"
echo "[ DEBUG ] Configuring alacritty"
cd ~/ && git clone https://github.com/0xGast/hord-fast-rice && cd hord-fast-rice && cp -r * ~/.config/ && cd ~/ && rm -rf hord-fast-rice
