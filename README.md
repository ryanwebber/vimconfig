# Vim Configuration

A simple, minimal architecture for organizing vim configuration files and plugins. 
With the current configuration, there are a few small plugins such as 
https://github.com/majutsushi/tagbar for opening a tag pane. As well, the 
following configs have been setup:
 * Persistent undos
 * Opening files to the line where they were left off
 * Whitespace indicators (and indent guides for tabs)
 * Line numbers
 * Tab configuration (using tabs not spaces)
 * Syntax highlighting 
 * VPT syntax highlighting (most likely unecessary for anyone)
 * Changing mapleader to ","


This has been primarily optimized for C++ development but should be well suited for 
other environments. 

## Installation

1. Clone the repo into `~/.vim` with: 

```
$ git clone https://github.com/ryanwebber/vimconfig ~/.vimrc
```
2. Initialize the Vundle submodule with:
```
$ git submodule init
$ git submodule update
```

3. Remove the current vimrc, and create a sym link to `~/.vim/.vimrc` with:
```
$ ln -s ~/.vim/.vimrc ~/.vimrc
```

4. Open vim and type `:PluginInstall` to install the base plugins 

