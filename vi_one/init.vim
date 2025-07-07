-- configs
set encoding = 'utf-8'          
set tabstop = 2                 
set shiftwidth = 2
set softtabstop = 2

set undofile             
set undolevels = 10000

set number                
set relativenumber        
set linebreak        
set expandtab             
set breakindent             
set cursorline             
set scrolloff=8
set smarttab             
set conceallevel=1
set smarttab             
set ruler             
set wrap 
set makeprg=rustc\ build.rs\ &&\ ./build

set colorscheme=retrobox
set syntax=on
set clipboard=unnamedplus

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
