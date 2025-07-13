" configs
set nocompatible
set encoding = 'utf-8'          
set tabstop = 4
set shiftwidth = 4
set softtabstop = 4
set expandtab
set nowrap

set wildmenu
set wildmode=list:longest 
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set undofile             
set undolevels=10000
set incsearch
set ignorecase
set smartcase
set hlsearch
set showmatch
set path+=**

set number
set relativenumber        
set linebreak        
set breakindent             
set cursorline             
set scrolloff=11
set smarttab      

set colorscheme=retrobox
set syntax=on
set clipboard=unnamedplus

filetype on

inoremap <C-k> >
inoremap <C-j> <

nnoremap <C-l> <CR>
nnoremap <C-h> -

"nnoremap '<leader>w', ':w<CR>', { noremap = true, silent = true })  -- Save file
"nnoremap '<leader>q', ':q<CR>', { noremap = true, silent = true })  -- Quit Neovim
"nnoremap '<leader>e', ':e .<CR>', { noremap = true, silent = true })  -- Open file explorer
"nnoremap '<leader>t', ':terminal <CR>', { noremap = true, silent = true })  -- Open file explorer
"nnoremap '<leader>bf', ':b ', { noremap = true, silent = false})  -- Open file explorer
"nnoremap '<leader>bd', ':bdelete <CR>', { noremap = true, silent = true})  -- Open file explorer
"nnoremap '<leader>ba', ':bnew ', { noremap = true, silent = false})  -- Open file explorer
"nnoremap '<M-h>', ':wincmd h<CR> ', { noremap = true, silent = true})  -- Open file explorer
"nnoremap '<M-j>', ':wincmd j<CR> ', { noremap = true, silent = true})  -- Open file explorer
"nnoremap '<M-k>', ':wincmd k<CR> ', { noremap = true, silent = true})  -- Open file explorer
"nnoremap '<M-l>', ':wincmd l<CR> ', { noremap = true, silent = true})  -- Open file explorer
"
"nnoremap '<Tab>', ':bnext<CR> ', { noremap = true, silent = true})  -- goes forward a buffer
"nnoremap '<S-Tab>', ':bprevious<CR> ', { noremap = true, silent = true})  -- goes backwards a buffer
