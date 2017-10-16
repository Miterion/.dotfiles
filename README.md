# .dotfiles
dotfiles for my current setup

![desktop](screenshot.png)


I use arch, so most dotfiles depend on the newest version of the programs.

## Programs
- dunst
- git
- gopass
- i3-gaps
- mutt
- polybar
- variety
- vim
- zsh

## How to use

I manage my dotfiles using **GNU stow**. Stow automatically symlinks all files
correctly and makes it easy to apply all or specific configurations.

```
git clone git@github.com:Miterion/.dotfiles.git
cd .dotfiles
stow [dunst/ie/vim/etc.]
```
