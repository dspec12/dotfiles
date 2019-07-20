" Load Pathogen
execute pathogen#infect()

" No Swap File
set noswapfile

" Enables Syntax Highlighting
syntax enable

" Map leader key
let mapleader=","

" Displays mode at bottom of screen
set showmode

" Set autoindent
set autoindent
set smartindent
set wrap

" Show line numbers
set number
noremap <Leader>r :set relativenumber<CR>
noremap <Leader>R :set norelativenumber<CR>

" Set tab to be 2 spaces
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab

" Set TAB for makefiles
autocmd FileType make setlocal noexpandtab

" Set syntax=yaml for sls files
autocmd BufNewFile,BufRead,BufReadPost *.sls set syntax=yaml

" Set Colorscheme
set bg=dark
colorscheme pablo
set t_Co=256

" Enable file reloading
set autoread

" Don't create backup files
set nobackup

" Searching options
set nohlsearch
set ignorecase
set smartcase
set magic
noremap <Leader>s :set hlsearch<CR>
noremap <Leader>S :set nohlsearch<CR>

" Show matching brackets
set showmatch

" Map W and Q
cmap W w
cmap Q q
noremap ; :

" Better split movement
noremap <Leader>\ :vsplit<CR>
noremap <Leader>/ :split<CR>
noremap <Leader>h <c-w>h
noremap <Leader>j <c-w>j
noremap <Leader>k <c-w>k
noremap <Leader>l <c-w>l

" Statusbar
set laststatus=2
set statusline=%n\:%F "show current buffer and file path
set statusline+=%m\ -\ %y "show if modifiable and filetype
set statusline+=%= "splitpont
set statusline+=%< "truncation point
set statusline+=%{strftime(\"%a\ %m-%b-%y\ %H:%M\")}\ -\  "show time
set statusline+=%{&ff}\ \-\  "file type
set statusline+=%l,%c\ %P "ruler

" Printheader
set pheader=%t\ --\ %Y "file path and type
set pheader+=%=
set pheader+=\ Last\ edit:\ "last edit
set pheader+=%{strftime(\"%a\ %m-%b-%y\ %H:%M:%S\",getftime(expand(\"%%\")))} "time of last edit
set pheader+=\ --\ Page\ %N "Page number

" Spellcheck
noremap <Leader>c :set nospell<CR>
noremap <Leader>C :setlocal spell spelllang=en_us<CR>

" Smash escape
"inoremap jh <Esc>
"inoremap hj <Esc>
"inoremap jk <Esc>
"inoremap kj <Esc>
"inoremap kl <Esc>
"inoremap lk <Esc>
inoremap <Leader>, <Esc>

" WordWrap
noremap <Leader>p :set wrap !<CR>

" Colorcolumn
noremap <Leader>w :set cc=0<CR>
noremap <Leader>W :set cc=80<CR>

" file and autocomplete
set path+=**
set wildmenu

" enable mouse support
"set mouse=a

" remapped keys
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap (      ()<Left>
"inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()
inoremap [      []<Left>
"inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []

" ^x^f = autocomplete files
" ^x^] = autocomplete tags
" ^n = autocomplete from file
" gf = open file under cursor
" gd = go to local definition (functions and vars)

