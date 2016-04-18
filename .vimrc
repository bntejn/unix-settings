set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" " Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}
" Vim-pandoc, https://github.com/vim-pandoc/vim-pandoc
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
let g:pandoc#modules#disabled = ["spell", "folding"]
let g:pandoc#formatting#mode = 'h'
let g:pandoc#command#autoexec_on_writes = 1
let g:pandoc#command#autoexec_command = 'Pandoc -s -S --toc -c ~/Dropbox/settings/buttondown.css'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line



set nu
set ruler
syntax on
filetype plugin indent on

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

set tabstop=4
set shiftwidth=4
set expandtab   " always uses spaces instead of tabs

set smartindent
set smarttab

set hlsearch
set background=dark
set incsearch
color default
set colorcolumn=80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100
highlight ColorColumn ctermbg=8
Bundle 'wakatime/vim-wakatime'
