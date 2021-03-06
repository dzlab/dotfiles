" source: https://github.com/junegunn/vim-plug 
set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" File auto formatting
Plug 'Chiel92/vim-autoformat'

" Scala highlight
Plug 'derekwyatt/vim-scala' 
" Go highlight
Plug 'fatih/vim-go'
" Javascript
Plug 'pangloss/vim-javascript'
" JSON support
Plug 'elzr/vim-json'

" Color schemas
Plug 'tomasr/molokai'
Plug 'flazz/vim-colorschemes'
" status bar
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" font
Plug 'ryanoasis/vim-devicons'

" git branch in status bar
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" better buffer management
Plug 'jeetsukumaran/vim-buffergator'
Plug 'ctrlpvim/ctrlp.vim'

" line numbers
Plug 'myusuf3/numbers.vim'

" tab completion
Plug 'ervandew/supertab'

" Syntax checking "
Plug 'scrooloose/syntastic'

" File search
Plug 'rking/ag.vim'
" History (deletes/changes) management
Plug 'mbbill/undotree'

" Dispatch commands in the background
Plug 'tpope/vim-dispatch'

" Add plugins to &runtimepath
call plug#end()

set encoding=utf-8

set laststatus=2
set statusline+=%F
let g:airline_powerline_fonts = 1

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
"set guifont=DroidSansMonoPLNerd:h12

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" color scheme
let g:molokai_original = 1
colorscheme molokai
"set background=dark
"set background=light
"let g:solarized_termcolors = 256
"colorscheme solarized

" file search start from project root directory
let g:ag_working_path_mode="r"

" Tell CtrlP to ignore files in folder
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|\.git\|target'

set number
" enable 256 colors
set t_Co=256
" disable Background Color Erase (BCE) 
set t_ut=
"set t_AB=^[[48;5;%dm
"set t_AF=^[[38;5;%dm
" enable mouse scroll
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" convert tabs to 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" standard js
let g:syntastic_javascript_checkers = ['standard']
" autocmd bufwritepost *.js silent !standard % --format
" set autoread

" Enable copy to clipboard in visual mode
set clipboard^=autoselect

" mapping for vim-go
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

"augroup autoindent
"    au!
"    autocmd BufWritePre * :normal migg=G`i
"augroup End
