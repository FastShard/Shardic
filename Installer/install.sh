clear && curl -s https://raw.githubusercontent.com/FastShard/Themes/main/Installer/ascii.txt

function check_dir {
    if [ -d "/tmp/shardic" ]; then
      echo "🢒 Temp folder already exists"
      sudo rm -rf /tmp/shardic
      echo "🢒 Deleted Temp folder"
    else
      mkdir /tmp/shardic/
      echo "🢒 Temp folder created"
      cd /tmp/shardic
    fi
}

function clear_after {
		sudo rm -rf /tmp/shardic
}

function update {
    echo "🢒 Updating the system"
    sudo apt-get update -y &> /dev/null
    sudo apt-get upgrade -y &> /dev/null
}

function install_components {
    echo "🢒 Installing Usefull Dependencies via apt"
    sudo apt-get install libxcb-util-dev feh xdo rofi flameshot wget libx11-dev curl gpg git libxcb-randr0-dev libxcb-xtest0-dev libxcb-xinerama0-dev libxcb-shape0-dev libxcb-xkb-dev libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev bspwm sxhkd zathura ranger polybar dunst build-essential ninja-build nemo thunar python3 python3-pip python3-setuptools alacritty mpv cmus neofetch bashtop vim apt-transport-https golang -y &> /dev/null
}

function wmutils {
    echo "🢒 Installing wmutils/opt"
    git clone --quiet https://github.com/wmutils/opt
    cd opt
    sudo make &> /dev/null
    sudo make install &> /dev/null
    cd ..
}

function install_fonts {
    echo "🢒 Installing and Configuring Fonts"
    wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/JetBrainsMono.zip
    sudo unzip ~/JetBrainsMono.zip -d /usr/share/fonts &> /dev/null
}

function configure_files {
		git clone --quiet https://github.com/FastShard/Shardic/
    cd Shardic
    
    echo "🢒 Configuring bspwm"
    cp -r bspwm/ ~/.config/
    sudo chmod +x * ~/.config/bspwm
    sudo chmod +x * ~/.config/bspwm/*
    sudo chmod +x * ~/.config/bspwm/*/* 
    sudo chmod +x * ~/.config/bspwm/*/*/*
    
    echo "🢒 Configuring sxhkd"
    cp -r sxhkd/ ~/.config/
    sudo chmod +x ~/.config/sxhkd/
    sudo chmod +x ~/.config/sxhkd/*
    
    echo "🢒 Configuring zathura"
    cp -r zathura/ ~/.config/
    sudo chmod +x ~/.config/zathura/
    sudo chmod +x ~/.config/zathura/*

		echo "🢒 Configuring dunst"
    cp -r dunst/ ~/.config/ 
    sudo chmod +x ~/.config/dunst/
    sudo chmod +x ~/.config/dunst/*
}

function install_theme_switchers {
		echo "🢒 Installing CLI based Theme Switcher"
    curl -s https://raw.githubusercontent.com/FastShard/Binary/main/Binary/fastshard -o fastshard
    sudo chmod +x fastshard
    sudo mv fastshard /usr/bin/
    
    echo "🢒 Installing GUI based Theme Switcher"
    cd ~/.config/bspwm/bin/
    curl -s https://raw.githubusercontent.com/FastShard/Switcher/main/binary/themechanger.sh -o themechanger.sh
	sudo chmod +x themechanger.sh
}


function discord {
		cd /tmp/shardic/
    
		echo "🢒 Installing Discord"
    wget -q -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb" > /dev/null
    sudo dpkg -i /tmp/shardic/discord.deb > /dev/null
    
    echo "🢒 Installing BetterDiscord"
    curl -s -O https://raw.githubusercontent.com/bb010g/betterdiscordctl/master/betterdiscordctl
    sudo chmod +x betterdiscordctl
    sudo mv betterdiscordctl /usr/local/bin
    betterdiscordctl install > /dev/null
    
}

function with_discord {
		read -p "🢒 Install Discord and BetterDiscord? [Y/n]: " disc_ask
		case $disc_ask in
    								[yY]) discord;
                    			break;;
                    [nN]) echo "🢒 Skipping Discord and BetterDiscord"
		esac
}

check_dir 							# 0. Check Directory
update 									# 1. Update packages
install_components 			# 2. Install dependencies
wmutils 								# 3. Set up wmutils
install_fonts						# 4. Install Fonts 
configure_files 				# 5. Configure Files
install_theme_switchers # 6. Theme Switchers
# discord									# 7. Discord
clear_after 						# 8. Clear
