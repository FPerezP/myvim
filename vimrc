set nocompatible " Use Vim defaults instead of 100% vi compatibility

" Now we set some defaults for the editor 
set autoindent " always set autoindenting on
set backupcopy=yes " Keep a backup file
set viminfo='20,\"50 " read/write a .viminfo file, don't store more than 50 lines of registers
set history=100 " keep 50 lines of command line history
set ruler " show the cursor position all the time
set expandtab
set tabstop=2
set listchars=tab:>.,trail:-,extends:>,precedes:<
set list
set encoding=utf-8
set shiftwidth=2

" Set leader to comma.
let mapleader = ","
let maplocalleader = ","

" Don't redraw screen while executing macros.
set nolazyredraw

" Flexible backspace: allow backspacing over autoindent, line breaks, start of insert.
set backspace=indent,eol,start

" Set title of window according to filename.
set title

" Break line at 80 chars
"set tw=79

" When editing a file, always jump to the last known cursor position. Don't
" " do it when the position is invalid or when inside an event handler
" (happens
" " when dropping a file on gvim).
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "normal g`\"" |
\ endif

" first set path
set path+=**

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

if &term =~ '^screen'
" tmux will send xterm-style keys when its xterm-keys option is on
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif

" We know xterm-debian is a color terminal
if &term =~ "xterm-debian" || &term =~ "xterm-xfree86"
  set t_Co=16
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif

" Make p in Visual mode replace the selected text with the "" register.
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

if has("autocmd")
 " Enabled file type detection
 " Use the default filetype settings. If you also want to load indent files
 " to automatically do language-dependent indenting add 'indent' as well.
 filetype plugin on

endif " has ("autocmd")

" Some Debian-specific things
augroup filetype
  au BufRead reportbug.*		set ft=mail
  au BufRead reportbug-*		set ft=mail
  au BufRead *.module			set ft=php
  au BufRead *.class			set ft=php
  au BufRead *.inc			set ft=php
  au BufRead *.install			set ft=php
  au BufRead *.profile			set ft=php
  au BufRead *.test			set ft=php
augroup END

" Set paper size from /etc/papersize if available (Debian-specific)
try
  if filereadable('/etc/papersize')
    let s:papersize = matchstr(system('/bin/cat /etc/papersize'), '\p*')
    if strlen(s:papersize)
      let &printoptions = "paper:" . s:papersize
    endif
    unlet! s:papersize
  endif
catch /E145/
endtry

syntax on
set bg=dark

nnoremap <C-L> :%s/\s\+$//<cr>:let @/=''<CR>:noh<CR>

set vb t_vb=

set number
set nowrap

map <silent> <S-n> :FufCoverageFile<CR>
map <silent> <C-f> :NERDTreeToggle<CR>
map <silent> <C-n> :tabe<CR>

set nocompatible               " be iMproved
filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
" original repos on github
"Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'sumpygump/php-documentor-vim'
" Bundle 'joestelmach/lint.vim'
Bundle 'garbas/vim-snipmate'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'bling/vim-airline'
Bundle 'Valloric/YouCompleteMe'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'

" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on     " required!
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"NERDTree open for all tabs
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeIgnore = ['.vim$', '\~$', '.*\.pyc$', '.*.pid', '.*\.o$', '.*\.pyc\$class']
let NERDChristmasTree = 1
let NERDTreeDirArrows = 1
let NERDTreeChDirMode = 2


" Search
set hlsearch                      " highlight matches
set incsearch                     " incremental searching
set ignorecase                    " searches are case insensitive...
set smartcase                     " ... unless they contain at least one capital letter

" set backupdir=~/.vim/_backup    " where to put backup files.
" set directory=~/.vim/_temp      " where to put swap files.

" Create _folders if dont exist
" silent !mkdir ~/.vim/_backup > /dev/null 2>&1
" silent !mkdir ~/.vim/_temp > /dev/null 2>&1

" Key maps for phpDocumentor
au BufRead,BufNewFile *.php inoremap <buffer> <C-P> :call PhpDoc()<CR>
au BufRead,BufNewFile *.php nnoremap <buffer> <C-P> :call PhpDoc()<CR>
au BufRead,BufNewFile *.php vnoremap <buffer> <C-P> :call PhpDocRange()<CR>

let g:pdv_cfg_Package = 'Crononauta'
let g:pdv_cfg_Author = 'Francisco Pérez <francisco.perez@crononauta.com>'
let g:pdv_cfg_ClassTags = ["package","author","version"]

let g:indent_guides_auto_colors = 1
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

" airlines preferences
set t_Co=256
set laststatus=2  " always show the status bar
let g:airline_enable_syntastic=1
let g:airline_powerline_fonts=1
" unicode symbols
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_linecolumn_prefix = '␤ '
let g:airline_fugitive_prefix = '⎇ '
let g:airline_paste_symbol = 'ρ'
let g:airline_readonly_symbol = '✗'
