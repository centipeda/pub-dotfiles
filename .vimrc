" execute pathogen#infect()
set nocompatible              " be iMproved, required
filetype off                  " required

"""" plugins
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://gitlab.com/blyons1/vim-header.git'
" 'vimheader' options
let g:VimHeaderEmails = 'jcepeda@nd.edu'
let g:VimHeaderNames = 'Joshua Cepeda'
Plugin 'elzr/vim-json'
Plugin 'tpope/vim-fugitive'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'arzg/vim-substrata'
Plugin 'hauleth/blame.vim'
Plugin 'cocopon/iceberg.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ajmwagar/vim-deus'
Plugin 'vim-airline/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'frazrepo/vim-rainbow'
Plugin 'cespare/vim-toml'
Plugin 'preservim/nerdcommenter' 
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'junegunn/goyo.vim'
" The following ae examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"""" plugins end



" syntax rules
set visualbell
set t_vb=
set tabstop=4 shiftwidth=4 expandtab
set autoindent
set softtabstop=4
set number

" color stuff
syntax on
set background=dark
set term=screen-256color
colorscheme iceberg
hi Normal guibg=NONE ctermbg=NONE
hi EndOfBuffer ctermbg=NONE

" keymaps
map <Leader>t :NERDTreeToggle<CR>
map <Leader>r :so ~/.vimrc<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
map <C-T> :tabnew
map <C-N> :tabn<CR>
map <C-P> :tabp<CR>
map <C-W> :q<CR>
set pastetoggle=<Leader>p
set cursorline

" airline settings 
let g:airline_theme='iceberg'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" startup options
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
