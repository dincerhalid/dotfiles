"PLUGIN SETUP"
call plug#begin('~/.config/nvim/plugged')
	Plug 'vim-airline/vim-airline'
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'morhetz/gruvbox'
	Plug 'Shougo/deoplete.nvim'
	Plug 'zchee/deoplete-jedi'
	Plug 'alvan/vim-closetag'
	Plug 'jiangmiao/auto-pairs'
call plug#end()


" Use deoplete.
let g:deoplete#enable_at_startup = 1


"USER SETUP"
map <C-n> :NERDTreeToggle<CR>
set termguicolors
set background=dark
set number
set rnu
set cursorline
set showmatch               " Highlight matching brackets
set scrolloff=3             " Minimum lines to keep above/below cursor
set wrap                    " Wrap long lines
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
hi! Normal ctermbg=NONE guibg=NONE
"DEOPLETE SETUP"
let g:deoplete#enable_at_startup = 1

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

set clipboard+=unnamedplus


" Control-C Copy in visual mode
vmap <C-C> y

" Control-V Paste in insert and command mode
imap <C-V> <esc>pa
cmap <C-V> <C-r>0

                           
" Insert mode movement
imap <M-h> <left>
imap <M-j> <down>
imap <M-k> <up>
imap <M-l> <right>
imap <M-f> <C-right>
imap <M-b> <C-left>

" Alt-m for creating a new line in insert mode
imap <M-m> <esc>o

" Back to normal mode from insert
inoremap jk <esc>

" Indentation
set smarttab
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4

set shell=/bin/fish
