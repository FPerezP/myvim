# My Vim Config

## Base branch
This is the base branch for PHP developers

## Introduction
This repo is created to develop in PHP. You are free to add your own Vim config, I would be glad to add your config as a new branch.
I recommend to read vimrc file and erase everything you dont understand. There are a few comments inside it to help you understand everything.
**Why a vim config repo?**
Well, the main reason is to be able to port my Vim config easily to any enviroment where I am coding. Another reason, it´s that it is very easy to change installed bundles just changing actual branch. Having different branches with different configs gets us different behaviours depending on the programming language we are coding, or, for example, modify our code snippets depending on this language: A for or while loop hasn´t the same syntax in all programming languages.

## Instalation
This Vim config is based on [Vunde](https://github.com/gmarik/vundle).

### Steps

```git
git clone git@github.com:FPerezP/myvim.git ~/.vim
git clone git@github.com:gmarik/vundle.git ~/.vim/bundle/vundle
cp ~/.vim/vimrc ~/.vimrc
mkdir ~/.vim/_temp
mkdir ~/.vim/_backup
vim +BundleInstall +qall!
```

### Change Branch
```git
git checkout <branch>
rm ~/.vimrc
cp ~/.vim/vimrc ~/.vimrc
vim +BundleInstall +qall!
```

#### TODO
It´s planned to add a bash script to change branches.

## Description
Here are allo bundles I have installed and a short description. All of them have a lot of functions that are not discribed here.

### Bundle 'ervandew/supertab'
Allows you to autocomplete function names using tab key.

### Bundle 'scrooloose/syntastic'
Check syntax for a few programming languages like PHP, Ruby, Python, C, C++, ...

### Bundle 'sumpygump/php-documentor-vim'
Generates your function and classes comments template.

### Bundle 'joestelmach/lint.vim'
Check syntax for Javascript and CSS. It´s needed to install V8 library. To do it, you could follow instraction included at the [original plugin repository](https://github.com/joestelmach/lint.vim)

### Bundle 'garbas/vim-snipmate'
Allows you to create code snippets.

### Bundle 'MarcWeber/vim-addon-mw-utils'
Just a few utils like caching  content or tiny blob windows that is used by other vim plugins included in this repo. Just a required plugin.


### Bundle "tomtom/tlib_vim"
Another required package.

### Bundle "honza/snipmate-snippets"
Predefined code snippets for PHP, Python, Javascript,...

### Bundle 'tpope/vim-fugitive'
Allows you to execute Git commands and, the most important feature, to navigate throw the git object.

### Bundle 'scrooloose/nerdtree'
File commander.

### Bundle 'jistr/vim-nerdtree-tabs'
NERDTree extension that allows you to have the same commander in all tabs you open.

### Bundle 'L9'
Another required package.

### Bundle 'FuzzyFinder'
Allows you to find files/folders and open them just typing a part of its name.

## Thanks
Well, I would like to thank to [eurodev](https://github.com/eurodev) and all [Crononauta](https://github.com/crononauta) team for discovering me this wonderfull editor. Special thanks to [nacmartin](https://github.com/nacmartin), your plugins recommendations help me soooo much.
