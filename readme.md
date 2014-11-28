Terminal Development Start-up Kit
=================================

This repo contains what I find useful in developing from a Terminal. I hope you find it useful too. This repo contains three things:

1. .vimrc for the ViM, a terminal text-editor.
2. .tmux.conf for TMux, a terminal application that allows you to run more terminals inside a terminal.
3. .bash-profile, a shortcut for running frequently used commands in terminal.

Presently this repo also adds specific language helper for **JavaScript, Jade, and Less**, since those are the languages that I am using presently. Super useful languages for speeding up web development. 

Features
--------

* Easily navigate different TMux and Vim panes from [ThoughtBot](http://robots.thoughtbot.com/seamlessly-navigate-vim-and-tmux-splits).
* Mouse support
* Tools
 * MarcWeber/vim-addon-mw-utils
 * christoomey/vim-tmux-navigator
 * tomtom/tlib_vim
* Code Helpers
 * garbas/vim-snipmate
 * Chiel92/vim-autoformat
 * Raimondi/delimitMate
 * ervandew/supertab
* ViM Display
 * bling/vim-airline
* File navigation
 * kien/ctrlp.vim
 * scrooloose/nerdtree
* languages
 * digitaltoad/vim-jade
 * jelera/vim-javascript-syntax
 * groenewege/vim-less
* Colorschemes
 * altercation/vim-colors-solarized
 * junegunn/seoul256.vim

Installation
-----
1. Clone this repository

    ```
    $ git clone https://github.com/jssolichin/home.git
    ```

2. Place .vimrc, .tmux.conf, and .bash_profile into home directory
 
    ```
    $ cd home
    $ mv .vimrc ~/
    $ mv .tmux.conf ~/
    $ mv .bash_profile ~/
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

 * altercation/vim-colors-solarized
 * junegunn/seoul256.vim

Once done, at the bottom of the .vimrc, you can comment out the color schemes you do not want with a quotation mark. 

Nice Airline Triangles
----------------------
Please follow the direction [here](https://powerline.readthedocs.org/en/master/installation.html#patched-fonts) for how to install the neccesary fonts to enable nicer looking ViM display.

Once done, at the bottom of the .vimrc, you can change 

    let g:airline_powerline_fonts = 0

to a value of 1.

Usage
-----
###.vimrc
There are too many things to list out on what the list of installed packages will do, so I recommend you check out each package installed from the list of features above and see what they can do. Most should work magically, but here are some functions that you may find to be a great starting point. 

As always, you can press `tab` to autocomplete. Press `:` to type in commands to ViM

Autoformat a file

    :AutoFormat 

Fuzzy search a file `ctrl+p` Then open the file in a new tab by pressing `t`

Open a tree list of the folder
    
    :NerdTREE

Changing between panes (h,j,k,l being directions that one uses in ViM)
    
    ctrl+[h,j,k,l]

###.tmux.conf
The above key combo should also switch between panes. Thus those buttons can allow you to switch between ViM and Tmux panes seamlessly.

###.bash_profile
Sometimes when you work for a long time with vim, it may leave residues of .swp, .swn, .sw*, which are ViM's swap files (where your changes are stored). The included .bash_profile adds commands for managing these.

**Note**: you should not need to delete swp files yourself except when things get to wild (e.g. ViM crashing and leaving a lot of swp files lying around.). User's discretion is advised.

* findswp: list the .swp files that exist within the folder (where .swp is actually .sw*)
* delswp: delete ALL the .swp files that exist within the folder (where .swp is actually .sw*)

Etc.
----
Edit your .vimrc using ViM. In ViM, run:

    :e $MYVIMRC

You can press `ctrl+r` in terminal and start typing to auto- complete based on recently ran commands.