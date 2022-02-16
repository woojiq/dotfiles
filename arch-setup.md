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
</details>

<details>
  <summary><b>one time commands</b></summary>
  
  * `sudo pacman -Fy` (download fresh package database from server)
</details>

<details>
  <summary><b>packages</b></summary>
  
  * **vi** (`sudo pacman -S vi`) ~ (super lightweight text-editor to start edit some configs)
  * **pacman-contrib** (`sudo pacman -S pacman-contrib`) ~ (in order to regularly remove old versions of installed packages with `paccache`)  
  * **git** (`sudo pacman -S git`) ~ (lol git)
</details>

<details>
  <summary><b>scripts</b></summary>
  
  * Create pacman hook - [**remove-old-cache.hook**](https://github.com/woojiq/dotfiles/blob/master/various/remove-old-cache.hook). [[1]](https://bbs.archlinux.org/viewtopic.php?pid=1694743#p1694743) [[2]](https://man.archlinux.org/man/alpm-hooks.5)
</details>

<details>
  <summary><b>TODO</b></summary>
  
  - [ ] Add `man` to `$PATH`
  - [x] Install `paccache` and setup it to regularly clear cache
  - [ ] Install `git` and clone `dotfiles` repo
</details>

<hr />

##### [Пісенька](https://genius.com/Badbok-putins-death-lyrics)

```
Як би було добре якби Путін повісився
Якби та скотиняка копита вже відкинула
Якби він здох від раку простати і упісявся
Або від крововиливу в сраці він загинув би
```
