color molokai

" my personal preferences
let python_highlight_all=1
set number
syntax on
set t_Co=256
set clipboard=unnamed
set autoindent
set ignorecase
set hlsearch
set incsearch

"status line stuff
"set laststatus=2
"set statusline= 
"set statusline+=\ %f
""set statusline+=\ %=
"set statusline+=\ %p%%
"set statusline+=\ \ \ \ %l:%c
"set statusline+=\ \ \ \ \ \ \ \ \ \ 

let mapleader=" "

" remap split movement keys
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" remap split resizing
nnoremap <leader>e <C-W><C-=>
nnoremap <leader>a :vertical resize +20<CR> 
nnoremap <leader>d :vertical resize -20<CR>
nnoremap <leader>w :resize +10<CR> 
nnoremap <leader>s :resize -10<CR>

" open directory split
nnoremap <leader>o :20Vex<CR>
nnoremap <leader>O :20Sex<CR>

" make netrw look nice
let g:netrw_banner = 0
let g:netrw_liststyle = 3
