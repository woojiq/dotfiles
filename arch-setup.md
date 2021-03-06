_To keep track of my changes in Arch Linux. To easily install it on a new device later. What packages I have downloaded, programs etc._
## Arch setup:
_Arch version - `archlinux-2022.02.01-x86_64.iso`_
<details>
  <summary><b>one time commands</b></summary>
  
  * `git clone https://github.com/woojiq/dotfiles.git`  
    `source ~/dotfiles/make-simlinks.sh` ~ (swap original dotfiles with mine)
  * Setup locale and time
  * [Useless] `localectl --no-convert set-x11-keymap us,ua pc104 , grp:win_space_toggle,ctrl:nocaps,terminate:ctrl_alt_bksp` ~ (add Ukr to Xorg and remap ctrl)
</details>

<details>
  <summary><b>pacman</b></summary>
    
  * **vim** ~ (lightweight text-editor to start edit some configs and write bullshit code)
  * **pacman-contrib** ~ (in order to regularly remove old versions of installed packages with `paccache`)  
  * **git** ~ (`git config --global credential.helper store`) ~ (lol git)
  * **polkit** ~ (use poweroff, reboot without typing 'sudo') [[1]](https://bbs.archlinux.org/viewtopic.php?id=169858&p=2)
  * **tree** ~ (list contents of directories in a tree-like format)
  * **dotnet-sdk** ~ (framework to build c# applications)
  * **base-devel** -> (`All`) ~ (tools needed for building (compiling and linking))
  * **neofetch** ~ (dispaly information about system)
  * **networkmanager** ~ (network connection (setup when installing arch))
  * **alsa-utils** ~ (control audio with alsamixer)
  * **xf86-input-synaptics** ~ (touchpad settings for notebook)
  
  * **xorg-server** ~ (display server)
  * **xorg-xinit** ~ (manually start `Xorg` with `startx`)
  * **i3-gaps** ~ (super-puper windows manager)
  * **kitty** ~ (terminal emulator)
  * **nitrogen** -> (`nitrogen <folder>` *to set wallpaper*) ~ (wallpapers setter:))
  * **picom** ~ (transparency in i3)
  * **rofi** ~ (application launcher)
  * **ranger** ~ (file manager)
</details>
  
<details>
  <summary><b>AUR</b></summary>
  
  * **google-chrome** ~ (browser)
  * **polybar** ~ (awesome status bar)
  * **nerd-fonts-jetbrains-mono** ~ (jetbrains mono with a lot of icons)
  ##### Installation guide
  0. cd ~/AUR
  1. git clone $aur_link
  2. cd $package_name
  3. makepkg -si
</details>

<details>
  <summary><b>scripts</b></summary>
  
  * Create pacman hook - [**remove-old-cache.hook**](https://github.com/woojiq/dotfiles/blob/master/various/remove-old-cache.hook). [[1]](https://bbs.archlinux.org/viewtopic.php?pid=1694743#p1694743) [[2]](https://man.archlinux.org/man/alpm-hooks.5)
</details>

<details>
  <summary><b>edit configs</b></summary>
  
  * **/etc/default/grub**.  
    * `Modify:`   
      *Apply changes*: `sudo grub-mkconfig -o /boot/grub/grub.cfg`  
      [[1]](https://www.gnu.org/software/grub/manual/grub/html_node/Simple-configuration.html) [[2]](https://wiki.archlinux.org/title/GRUB#Generated_grub.cfg)
      ```
      GRUB_TIMEOUT=3
      ```
  
  * [Useless] **/etc/sudoers** (`sudo visudo`).  
    * `Add:` [[1]](https://wiki.archlinux.org/title/sudo#Reduce_the_number_of_times_you_have_to_type_a_password)
      ```
      ## Ask for password every time 'sudo' is entered
      Defaults timestamp_timeout=0
      ```
  
  * **/etc/environment**.  
    * `Add:` [[1]](https://wiki.archlinux.org/title/Environment_variables#Defining_variables) (*reboot* to apply)
      ```
      EDITOR=vim
      ```
  
  * [Useless] **/etc/vconsole.conf**.  
    * `Add:` [[1]](https://man.archlinux.org/man/vconsole.conf.5) (*reboot* to apply)
      ```
      FONT=cyr-sun16
      KEYMAP_TOGGLE=ua-utf
      ```
  
  * [Useless] **/usr/share/kbd/keymaps/i386/qwerty**.  
    * `Modify:` [[1]](https://wiki.archlinux.org/title/Linux_console/Keyboard_configuration#Other_examples) (*reboot* to apply)
      * **./us.map.gz**
        `keycode 58 = Control`
      * **./ua-utf.map.gz**
        `keycode 58 = Control`
</details>

<details>
  <summary><b>archinstall [Useless]</b> (after booting command)</summary>
  
* `26` (us)
* `63` (Ukraine)
* `1` (/dev/sda)
* `0` (Wipe all)
* `1` (ext4)
* `Enter` (no encryption)
* `Y` (use swap on zram)
* `incubator` (hostname)
* (enter silly password x2 times)
* `freak` (additional user username)
* (one more password ~ what is the difference?)
* `y` (should this user be a superuser)
* `Enter` (no pre-programmed profile name)
* `0` (pipewire) (TEST - `none`)
* `Enter` (leave blank for default: linux)
* `Enter` (no additional packages)
* `0` (copy ISO network)
* `Europe/Kiev` (timezone)
* `Y` (automatic time synchronization)
* `Enter` (to start installing)
* `Y` (chroot into the newly created installation) (TEST - `N`)
* `exit` (to exit chroot mode)
* `reboot` (to reboot system and go to the Linux world)
  
  [`Pre-installed packages.`](https://github.com/woojiq/dotfiles/blob/master/various/prepack)
</details>

<details>
  <summary><b>virtual box</b></summary>
  
  * **setup shared folder** [[read this before]](https://averagelinuxuser.com/virtualbox-shared-folder/)
    * `sudo pacman -S virtualbox-guest-utils`
    * `sudo systemctl enable vboxservice`
    * add `whoami` to `vboxsf` group
    * add shared folder to `virtual box`
</details>

<hr />

##### [????????????????](https://genius.com/Badbok-putins-death-lyrics)

```
???? ???? ???????? ?????????? ???????? ?????????? ??????????????????
???????? ???? ?????????????????? ???????????? ?????? ??????????????????
???????? ?????? ???????? ?????? ???????? ???????????????? ?? ????????????????
?????? ?????? ?????????????????????? ?? ?????????? ?????? ?????????????? ????
```
