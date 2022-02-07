set relativenumber
set smartindent
set showcmd
set nobackup noswapfile
set shiftwidth=4 tabstop=4
set splitright splitbelow
set clipboard=unnamedplus
set expandtab
set ignorecase smartcase incsearch hlsearch
set hlsearch
set cursorline
set background=dark
set path+=/home/denjo/.config/nvim/
set wildmenu
syntax enable
"colorscheme darkblue

set statusline=%F%m%h%w\ %<[ENC=%{&fenc!=''?&fenc:&enc}]\ [FMT=%{&ff}]\ [TYPE=%Y]\ %=[CODE=0x%02B]\ [POS=%l/%L(%02v)]

"key-binding
imap <C-k> <Up>
imap <C-j> <Down>
imap <C-h> <Left>
imap <C-l> <Right>

inoremap <silent> jj <ESC>

"hi CursorLine cterm=NONE 
hi StatusLine cterm=NONE ctermfg=white ctermbg=black
