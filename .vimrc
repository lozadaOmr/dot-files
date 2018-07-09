set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'bling/vim-airline'
Plugin 'nvie/vim-flake8'
Plugin 'Yggdroot/indentLine'
Plugin 'zhaocai/GoldenView.Vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'isRuslan/vim-es6'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line

syntax enable                   " Syntax highlighting
syntax on                       " Switch syntax highlighting on
filetype plugin indent on       " Enable file type detection and do language-dependent indenting.

set number                      " Show line numbers
set hidden                      " Allow hidden buffers, don't limit to 1 file per window/split
set backspace=indent,eol,start  " Allow backspacing over everything in insert mode
set history=50                  " Keep 50 lines of command line history
set ruler                       " Show the cursor position all the time
set showcmd                     " Display incomplete commands
set incsearch                   " Do incremental searching
set nu                          " Show line numbers
set shiftwidth=4                " Set indentation to 4 spaces
set hlsearch                    " Highlight search terms
set autoindent                  " Start new line at the same indentation level
set smartindent
set cmdheight=1                 " The commandbar height
set showmatch                   " Show matching bracets when text indicator is over them
set nobackup                    " Do not keep backup files, it's 70's style cluttering
set noswapfile                  " Do not write annoying intermediate swap files,
                                "    who did ever restore from swap files
                                "    anyway?
                                "    https://github.com/nvie/vimrc/blob/master/vimrc#L141

set ttimeoutlen=50              " Solves: there is a pause when leaving insert mode
set splitbelow                  " Horizontal splits open below current file
set splitright                  " Vertical splits open to the right of the current file
set wildmode=longest,list       " Pressing <Tab> shows command suggestions similar to pressing <Tab>
                                " in bash 
set tabstop=4
set softtabstop=4
set expandtab                   " Convert tabs to spaces
set cursorline                  " Highlight current line
set colorcolumn=80

" We have VCS -- we don't need this stuff.
set nobackup                    " We have vcs, we don't need backups.
set nowritebackup               " We have vcs, we don't need backups.
set noswapfile                  " They're just annoying. Who likes them?

" don't nag me when hiding buffers
set autoread                    " when a file has changed on disk, just load it. Don't ask.

" Make search more sane
set ignorecase                  " case insensitive search
set smartcase                   " If there are uppercase letters, become case-sensitive.
set incsearch                   " live incremental searching

set laststatus=2                " vim-airline doesn't appear until I create a new split
set winminheight=1              " Never let window be less than 1px
set nowrap


" Tab Setting Reference for Python and Vim
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

" Setting Reference for JavaScript
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

"Root permission on a file inside VIM
cmap w!! w !sudo tee >/dev/null %

let g:NERDTreeWinSize=18
let g:indentLine_char='˰'
let g:indentLine_leadingSpaceEnabled=1

autocmd VimEnter + NERDTree
autocmd VimEnter * wincmd w

"autocmd BufWritePost *.py call Flake8()

map <C-o> :NERDTreeToggle %<CR>
nmap <silent> <C-D> :NERDTreeToggle<CR>
nmap <silent> <C-A> :EnableGoldenViewAutoResize<CR>
nnoremap <silent> <C-L> :noh<CR><C-L>

set term=screen-256color

let g:airline_powerline_fonts = 1    " vim-airline symbols

colorscheme brogrammer
