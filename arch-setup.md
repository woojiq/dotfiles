_To keep track of my changes in Arch Linux. To easily install it on a new device later. What packages I have downloaded, programs etc._
## Arch setup:
_Arch version - `archlinux-2022.02.01-x86_64.iso`_
<details>
  <summary><b>archinstall</b> (after booting command)</summary>
  
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
* `0` (pipewire)
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
  <summary><b>one time commands</b></summary>
  
  * `sudo pacman -Syu` (download fresh package database from server and update all packages)
  * `git clone https://github.com/woojiq/dotfiles.git`  
    `source ~/dotfiles/make-simlinks.sh` ~ (swap original dotfiles with mine)
</details>

<details>
  <summary><b>packages</b></summary>
  
  * **vim** (`sudo pacman -S vim`) ~ (lightweight text-editor to start edit some configs and write bullshit code)
  * **pacman-contrib** (`sudo pacman -S pacman-contrib`) ~ (in order to regularly remove old versions of installed packages with `paccache`)  
  * **git** (`sudo pacman -S git`) ~ (lol git)
  * **polkit** (`sudo pacman -S polkit`) ~ (use poweroff, reboot without typing 'sudo') [[1]](https://bbs.archlinux.org/viewtopic.php?id=169858&p=2)
  * **tree** (`sudo pacman -S tree`) ~ (list contents of directories in a tree-like format)
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
      GRUB_TIMEOUT=1
      GRUB_TIMEOUT_STYLE=hidden
      ```
  
  * **/etc/sudoers** (`sudo visudo`).  
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
</details>

<details>
  <summary><b>TODO</b></summary>
  
  - [ ] Add `man` to `$PATH`
  - [ ] Install `dotnet`
</details>

<hr />

##### [Пісенька](https://genius.com/Badbok-putins-death-lyrics)

```
Як би було добре якби Путін повісився
Якби та скотиняка копита вже відкинула
Якби він здох від раку простати і упісявся
Або від крововиливу в сраці він загинув би
```
