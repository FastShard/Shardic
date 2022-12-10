# ⚪ Shardic - [ BSPWM ]

![image](https://user-images.githubusercontent.com/117211251/204979641-e6c3a9aa-608d-4f78-bdbc-72ab7216d47b.png)

![image](https://user-images.githubusercontent.com/117211251/204979799-4241c391-a832-4f3b-acbc-d8ff5a0b8cc6.png)

![image](https://user-images.githubusercontent.com/117211251/204980335-6823f059-7c4c-40bf-95fd-47a4ac187111.png)

# Keybinds

1. APPS

   ```
   LAlt + T = Alacritty
   LAlt + SPACE = Rofi
   ```
   
2. WM

   ```
   WinKey + LAlt + R = Restart BSPWM
   WinKey + LAlt + Q = Exit BSPWM
   ```

3. STATES

   ```
   WinKey + S = Floating Window
   WinKey + T = Tiling Window
   WinKey + F = Fullscreen Window
   WinKey + LShift + T = Pseudo Tiling Window
   ```
   
4. WINDOWS

   ```
   WinKey + MBLClick = Move Window
   WinKey + MBRClick = Resize Window
   ```

5. THEMES

   ```
   WinKey + LAlt + Space = Theme Selector
   
   First Install themes at https://github.com/fastshard/themes
   ```

# Installation

1. Install the Rice ( Auto )

    ```bash
    sudo curl -s https://raw.githubusercontent.com/FastShard/Shardic/main/Installer/install.sh -o install.sh && sudo chmod +x install.sh && bash install.sh
    ```
<br />

2. Rice Firefox ( Manuall )
  
    * Enabling the Modules
   
      Firstly you need to visit `about:config` by puting it in your URL Bar and Clicking Enter. It will display a Popup with the message I accept the risk, click yes and then search for these but one at a time and set everything to **True** by double Clicking them!
      `toolkit.legacyUserProfileCustomizations.stylesheets` <br />
      `layers.acceleration.force-enabled`<br />
      `gfx.webrender.all`<br />
      `svg.context-properties.content.enabled`<br />
      <br />
      
    * Creating the Folder and Files
    
      You need to open Alacritty and execute `cd .mozilla/firefox/` then you can list the files by doing `ls`.
      After that you have to find the folder that has `.default-release` at the end of it and then cd inside it.
      If youre inside the profile Directory you can now execute `mkdir chrome && cd chrome` after that you can move the files from the [Firefox Files](https://github.com/FastShard/Shardic/tree/main/firefox) inside the chrome folder! When you're done close Firefox using ctrl + q!
      
# Contact Me

Twitter   - [@0xGast](https://twitter.com/0xGast)
| Github    - [@0xGast](https://github.com/0xGast)
| Tryhackme - [@0xGast](https://tryhackme.com/p/0xGast)
