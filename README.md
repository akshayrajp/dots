# dots
A repo to store all my dotfiles (config files).

## Terminal Setup

### Bash
#### Setting up the Powerline Status bar
Make sure that you have the latest versions of Python and Pip installed.
Next, run the following commands :


```
sudo apt install powerline-shell
sudo apt install fonts-powerline
```

Set a powerline font in the terminal settings.
Make sure that your locale is set to en_US.UTF-8, otherwise the glyphs will not be visible.
If it still doesn't work, check .bashrc and make sure that the defined installation directories are correct.

[The GitHub Repository for Powerline](https://github.com/powerline/powerline)

[The GitHub Repository for Powerline-fonts](https://github.com/powerline/fonts)


#### Setting up the gruvbox colorscheme
Run the following commands :

```
sudo apt-get install dconf-cli uuid-runtime
bash -c "$(wget -qO- https://git.io/vQgMr)"
```

And in the interactive mode, select 'Gruvbox-dark' or whatever colorscheme that you prefer.

[The GitHub Repository for Gogh](https://github.com/Mayccoll/Gogh)

## Vim Setup
Install the Vim Plugin Manager 'Vim Plug' by running the following command:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

 [The GitHub Repository for Vim-Plug](https://github.com/junegunn/vim-plug)

Next, open vim and run `PlugInstall`, and that will download and install all the plugins that is defined in the .vimrc that comes with this repository.

If the Powerline status bar is not visible, or is improper, make sure that the defined installation directories are correct.
