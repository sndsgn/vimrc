set nocompatible
let mapleader = "," 
set title
set number
set history=512
set nofoldenable      " Don't fold shit
set laststatus=2      

set encoding=utf-8
set shiftwidth=2
set expandtab
set tabstop=2

set visualbell
syntax on
filetype plugin indent on

" Enter newlines without entering insert mode 
" http://vim.wikia.com/wiki/Insert_newline_without_entering_insert_mode

nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>k

" Ensures that files are saved upon hitting escape insert mode
inoremap <Esc> <Esc>:w<CR>

nnoremap <leader>ev :vsplit $MYVIMRC<cr> 

" Tab Navigation

nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tn  :tabnew<CR>
nnoremap gb  :Gbrowse<CR>
nnoremap so  :SyntasticToggleMode<CR>
nnoremap sc  :SyntasticCheck<CR>
nnoremap <leader>gc  :Gcommit<CR>
nnoremap <leader>gs  :Gstatus<CR>

"map fj :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cnext<CR>
map cn :cn<CR>
map tsi :r! date "+\%Y-\%m-\%d \%H:\%M:\%S"<CR> 
" Vimvigor.me PLace cursor at beginning of closing article tag for finished
" letter definition to populate duplicated letter with content from existing
" definition in old layout. 
nnoremap <leader>tmp /<\/art<CR>yatyatvatj<ESC><ESC>p=atO<ESC>jvatoo<ESC><ESC>o<ESC>/<sect<CR>jjjj/http<CR>yi"?http:<CR>vi"p?title<CR>/http:<CR>n2f>lylNN;lvlpa<<ESC>yit3hvlhpyl?title<CR>nf"lvlhp<ESC>/dfn<CR>nN/http<CR>jyitNNj0Vp?tabind<CR>2f"h<C-A>3jyitg,2F"hvlhp2F"b
" Custom Plugin Mappings
nnoremap ff :CtrlP<CR>
nnoremap -- :GundoToggle<CR>
let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn)|node_modules)$'

" backup to ~/.tmp 
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup

" execute pathogen#infect()


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = {
 \ "mode": "active",
 \ "active_filetypes": [],
 \ "passive_filetypes": ["html", "*.min.js"] }
