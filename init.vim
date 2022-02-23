set clipboard=unnamedplus
set relativenumber
set smartindent
set showcmd
set nobackup noswapfile
set shiftwidth=4 tabstop=4
set splitright splitbelow
set expandtab
set ignorecase smartcase incsearch hlsearch
set hlsearch
set background=dark
set path+=/home/denjo/.config/nvim/
set wildmenu
set nobackup noswapfile
syntax enable

" color-schime
colorscheme darkblue
autocmd ColorScheme * highlight LineNr ctermfg=247
augroup TransparentBG
    autocmd!
    autocmd ColorScheme * highlight Normal ctermbg=none
    autocmd ColorScheme * highlight NonText ctermbg=none
    autocmd ColorScheme * highlight LineNr ctermbg=none
    autocmd ColorScheme * highlight Folded ctermbg=none
    autocmd ColorScheme * highlight EndOfBuffer ctermbg=none
augroup END

set statusline=%F%m%h%w\ %<[ENC=%{&fenc!=''?&fenc:&enc}]\ [FMT=%{&ff}]\ [TYPE=%Y]\ %=[CODE=0x%02B]\ [POS=%l/%L(%02v)]

"key-binding
imap <C-k> <Up>
imap <C-j> <Down>
imap <C-h> <Left>
imap <C-l> <Right>

imap [ []<Left>
imap ( ()<Left>
imap { {}<Left>

nmap <Esc><Esc> :nohlsearch<CR><Esc>

inoremap <silent> jj <ESC>

hi StatusLine cterm=NONE ctermfg=white ctermbg=black
