" Armen's vimrc — modernized from 2012 config, no plugins needed

" === Core ===
set nocompatible
filetype plugin indent on
syntax on
set encoding=utf-8

" === Appearance ===
set background=dark
" habamax ships with Vim 9.0+; fall back silently on older vim (RHEL 8/9 etc.)
silent! colorscheme habamax
set number
set relativenumber
set cursorline
set nowrap
set showmatch
set showcmd
set showmode
set laststatus=2
set scrolloff=4
set sidescrolloff=8
set signcolumn=yes
set colorcolumn=80
set termguicolors

" Statusline (no plugins needed)
set statusline=%f\ %m%r%h%w\ %y\ [%{&ff}]%=L%l/%L\ C%c\ %p%%

" === Tabs & Indentation ===
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent
set shiftround

" === Search ===
set incsearch
set hlsearch
set ignorecase
set smartcase

" === Folding ===
set foldmethod=indent
set foldlevelstart=99
set foldcolumn=2

" === Completion ===
set wildmenu
set wildmode=longest:full,full
set wildignore+=*.o,*.pyc,*.swp,*/.git/*,*/node_modules/*

" === Editing ===
set backspace=indent,eol,start
set virtualedit=block
set mouse=a
" ttymouse is terminal-vim only — errors in gvim/MacVim GUI
if !has('gui_running') && exists('+ttymouse')
    set ttymouse=sgr
endif
set autochdir
set hidden
set autoread
set textwidth=79
set formatoptions+=j

" === Clipboard (works on Mac and Linux) ===
if has('unnamedplus')
    set clipboard=unnamedplus
else
    set clipboard=unnamed
endif

" === Persistent undo ===
set undofile
set undodir=~/.vim/undo
if !isdirectory($HOME . '/.vim/undo')
    call mkdir($HOME . '/.vim/undo', 'p', 0700)
endif

" === Swap/backup out of the way ===
set directory=~/.vim/swap//
set backupdir=~/.vim/backup//
if !isdirectory($HOME . '/.vim/swap')
    call mkdir($HOME . '/.vim/swap', 'p', 0700)
endif
if !isdirectory($HOME . '/.vim/backup')
    call mkdir($HOME . '/.vim/backup', 'p', 0700)
endif

" === Keymaps ===
" Clear search highlight
nnoremap <C-L> :nohlsearch<CR><C-L>

" Move visual selection up/down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Keep cursor centered on half-page jumps
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Keep search results centered
nnoremap n nzzzv
nnoremap N Nzzzv

" Quick save
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" === Autocorrect (legacy) ===
iabbrev teh the
iabbrev appr appropriate
iabbrev behaviour behavior
