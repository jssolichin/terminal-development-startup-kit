TMux and Vim Config
===================

Currently, I use it for JS and LESS development.

Features
--------

* Easily navigate different TMux and Vim panes from [ThoughtBot](http://robots.thoughtbot.com/seamlessly-navigate-vim-and-tmux-splits).
* Splitting shortcut (ctrl + [h,j,k,l])
* Mouse support
* Vundle
* Tools
 * vim-addon-mw-utils
 * vim-snipmate
 * tlib_vim
* Code Helpers
 * vim-autoformat
 * vim-snipmate
 * delimitMate
 * supertab
* ViM Display
 * Airline
* File navigation
 * ctrlp
 * nerdtree
* languages
 * vim-jade
 * vim-javascript-syntax
 * vim-less
* Colorschemes
 * vim-colors-solarized
 * seoul256

Usage
-----
1. Clone this repository

    ```
    $ git clone https://github.com/jssolichin/home.git
    ```

2. Place .vimrc and .tmux.conf into home directory
 
    ```
    $ cd home
    $ mv .vimrc ~/
    $ mv tmux.conf ~/
    ```

3. Install Vundle

    ```
    $ cd ~/.vim/bundle
    $ git clone https://github.com/gmarik/Vundle.vim
    ```

4. Open ViM
5. Install Plugins

	```vim
    :PluginInstall
    ```

Setting Colorschemes
--------------------
Please follow the direction on each colorscheme's repo
* [Solarized](https://github.com/altercation/vim-colors-solarized)
* [Seoul256](https://github.com/junegunn/seoul256.vim)

Once done, at the bottom of the .vimrc, you can comment out the color schemes you do not want with a quotation mark. 

Nice Airline Triangles
----------------------
Please follow the direction [here](https://powerline.readthedocs.org/en/master/installation.html#patched-fonts) for how to install the neccesary fonts to enable nicer looking ViM display.

Once done, at the bottom of the .vimrc, you can change 

    ```
    let g:airline_powerline_fonts = 0
    ```
to a value of 1,

Protip: Edit your .vimrc using ViM. In ViM, run:

    :e $MYVIMRC