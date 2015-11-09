set nocompatible
filetype off	"required for Vundle
syntax on
set nu

" Force me to go back to normal mode
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>

" Mapeo para moverme entre buffers
nnoremap <silent> [b :bprevious<cr>
nnoremap <silent> ]b :bnext<cr>
nnoremap <silent> [B :bfirst<cr>
nnoremap <silent> ]B :blast<cr>

nnoremap <silent> <S-left> :bprevious<cr>
nnoremap <silent> <S-right> :bnext<cr>

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Vundle config
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" File browser
Plugin 'scrooloose/nerdtree'

Plugin 'jistr/vim-nerdtree-tabs'

" lean & mean status/tabline for vim that's light as aire
Plugin 'bling/vim-airline' 
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2

" set airline colors to tmux
" Don't know what this Plugin do
" Plugin 'edkolev/tmuxline.vim'

" Show git changes
Plugin 'airblade/vim-gitgutter'
highlight clear SignColumn " change bk color

"File finder
Plugin 'kien/ctrlp.vim'

Plugin 'rainbow_parentheses.vim'
au VimEnter * RainbowParenthesesToggle
au VimEnter * RainbowParenthesesLoadSquare   " []
au VimEnter * RainbowParenthesesLoadBraces   " {}
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Paper color theme
Plugin 'NLKNguyen/papercolor-theme' 
" others color schemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'sickill/vim-monokai'
Plugin 'baskerville/bubblegum'
" for mokanai, run
" ln -s ~/.vim/bundle/vim-monokai/colors/monokai.vim ~/.vim/colors
Plugin 'trusktr/seti.vim'

" Emmet
Plugin 'mattn/emmet-vim'

" Neocomplete
Plugin 'Shougo/neocomplete.vim'

" Required by some plugins
Plugin 'tomtom/tlib_vim'

" mustache and handlebars mode for vim
Plugin 'mustache/vim-mustache-handlebars'

" ember.vim
Plugin 'dsawardekar/ember.vim'

" Better javascript
Plugin 'pangloss/vim-javascript'

Plugin 'isRuslan/vim-es6'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

filetype plugin indent on    " required
syntax on

" Set <leader> key
let mapleader = ","     " By default is \

" Copy and paste to system clipboards
vmap <Leader>y "*y
vmap <Leader>d "*d
nmap <Leader>p "*p
nmap <Leader>P "*P
vmap <Leader>p "*p
vmap <Leader>P "*P

" Map code completion to leader+tab
imap <Leader><tab> <C-x><C-o>

" Configure regexes to use normal ones.
nnoremap / /\v
vnoremap / /\v

set ruler    " shows ROW,COL at bottom right corner
set number   " shows line numbers
" set nowrap " dissables linewrapping
set background=dark " Soy Darksssss
set guifont=Inconsolata\ for\ Powerline

set encoding=utf-8
set showcmd " display incomplete commands

" If all letters are lower case, search
" is case-insensitive. Otherwise, search
" is case-sesitive
set ignorecase
set smartcase

" Highlight search result as I type
set incsearch
set showmatch
set hlsearch

" Clear current search with , + space
nnoremap <leader><space> :nohlsearch<cr>:call clearmatches()<cr>

" Faster escape settings
imap jk <ESC>
imap Jk <ESC>
imap JK <ESC>
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Red color for trailing spaces in insert mode
if has("autocmd")
  highlight ExtraWhitespace guibg=#330000 ctermbg=52
  au ColorScheme * highlight ExtraWhitespace guibg=#330000 ctermbg=52
  au BufEnter * match ExtraWhitespace /\s\+$/
  au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
  au InsertLeave * match ExtraWhiteSpace /\s\+$/
endif

" Color Scheme
set t_Co=256
colorscheme PaperColor
" colorscheme monokai
" colorscheme bubblegum-256-dark
" colorscheme brogrammer
" colorscheme jellybeans
" colorscheme peacock
" syntax enable


" Tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set backspace=indent,eol,start
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType javascript setlocal cinoptions+=+0 tabstop=2 shiftwidth=2 softtabstop=2

" Keep it sane
set scrolloff=3
set autoindent
set showmode
set hidden                      " Hide buffers when they are abandoned
set wildmenu                    " tab completion zsh like
"set wildmode=full
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set laststatus=2
set relativenumber              " Relative line number from current line
set undofile

"handle long lines
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" set mouse=a     " Enable mouse usage (all modes)
" set smartindent " auto tab

" Better javascript syntax
let g:javascript_enable_domhtmlcss=1
set cole=1
let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "ø"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "⇚"
let g:javascript_conceal_undefined  = "¿"
let g:javascript_conceal_NaN        = "ℕ"
let g:javascript_conceal_prototype  = "¶"
let g:javascript_conceal_static     = "•"
let g:javascript_conceal_super      = "Ω"

" Auto saving
" au FocusLost * :wa " Save after losing focus
" set autowrite " write when switching files
set autoread  " read automagically from disk
" au CursorHold * checktime

let g:nerdtree_tabs_open_on_console_startup = 1
