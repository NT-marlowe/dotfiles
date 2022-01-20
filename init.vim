set relativenumber
set shiftwidth=4
set clipboard=unnamedplus
set expandtab
set hlsearch
set cursorline
syntax enable

set statusline=%F%m%h%w\ %<[ENC=%{&fenc!=''?&fenc:&enc}]\ [FMT=%{&ff}]\ [TYPE=%Y]\ %=[CODE=0x%02B]\ [POS=%l/%L(%02v)]

"key-binding
imap <C-k> <Up>
imap <C-j> <Down>
imap <C-h> <Left>
imap <C-l> <Right>

inoremap <silent> jj <ESC>
