# My Vim Config

## Introduction
This repo is created to develop in PHP. You are free to add your own Vim config, I would be glad to add your config as a new branch.

**Why a vim config repo?**
Well, the main reason is to be able to port my Vim config easily to any enviroment where I am coding. Another reason, it´s that it is very easy to change installed bundles just changing actual branch. Having different branches with different configs gets us different behaviours depending on the programming language we are coding, or, for example, modify our code snippets depending on this language: A for or while loop hasn´t the same syntax in all programming languages.

**Branches**
* *Master.* Standard Vim config
* *Symfony.* Includes a few plugins to make life more confortable to Symfony developers
* *Drupal* Includes a few Drupal plugins

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


## Description
Used bundles.


**This is a not finished vim config repo.**
