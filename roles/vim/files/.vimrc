" Plugins (Vundle)
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	" Plugin 'lokaltog/Powerline',{'rtp': 'powerline/bindings/vim/'}
    Plugin 'dracula/vim'
	Plugin 'scrooloose/nerdtree'
	Plugin 'tmhedberg/SimpylFold'
    Plugin 'ryanoasis/vim-devicons'
"	Plugin 'EasyMotion'
"	Plugin 'nvie/vim-flake8'
    Plugin 'vim-airline/vim-airline'
	Plugin 'kien/ctrlp.vim'
	Plugin 'tpope/vim-fugitive' "git plugin
	Plugin 'nathanaelkane/vim-indent-guides'
	Plugin 'vim-syntastic/syntastic' "syntax plugin
	Plugin 'davidhalter/jedi-vim' "python syntax plugin
    Plugin 'yggdroot/indentline'
"	Plugin 'vim-scripts/indentpython.vim'
"	Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on    " required

" Prohibit keys
"no <down> <Nop>
"no <left> <Nop>
"no <right> <Nop>
"no <up> <Nop>

" do not create backups
set noswapfile
set nobackup
set nowritebackup

" show incomplete command
set showcmd

" show a menu when using tab completion
set wildmenu

" colorsheme
set background=dark
color dracula

" Line Mumber
set number
set relativenumber
set numberwidth=3

" highlight search
set hlsearch

" find the next match as we type the search
set incsearch

" ignore case when searching unless you type a capital
set ignorecase
set smartcase

" set indentation
set autoindent
filetype plugin indent on    " smart auto indentation (instead of old smartindent option)

" show existing tab with 4 spaces width
set tabstop=4

" when indenting with ‘>’, use 4 spaces width
set shiftwidth=4

" Mouse 
set mouse=a

" Make the code look pretty Madafucka!
syntax enable

let python_highlight_all=1

" encoding as UTF-8
set encoding=UTF-8
set guifont=DroidSansMono\ Nerd\ Font\ 11

"Plugin : Powerline 
set laststatus=2

"Options:
set nu
set number
set tabstop=4
set cindent
set splitbelow
set splitright
set clipboard=unnamed

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

"PEP8 : White space
highlight BadWhitespace ctermfg=16 ctermbg=253 guifg=#000000 guibg=#F8F8F0
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

au BufNewFile,BufRead *.py
    \ set tabstop=4|
    \ set softtabstop=4|
    \ set shiftwidth=4|
    \ set textwidth=79|
    \ set expandtab|
    \ set autoindent|
    \ set fileformat=unix


"Format for Full stack files
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => airline-powerline settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:webdevicons_enable_airline_tabline = 1
let g:airline_powerline_fonts = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => SimplyFold plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SimpylFold_docstring_preview = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YouCompleteMe plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:ycm_autoclose_preview_window_after_completion=1
" let g:ycm_server_python_interpreter = '/usr/bin/python3'
" map <space>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ctrl-p plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:webdevicons_enable_nerdtree = 1
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

"python with virtualenv support
py3 << EOF
import os
import sys

if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate')
    exec(activate_this, dict(__file__=activate_this))
EOF

