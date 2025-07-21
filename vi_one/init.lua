-- configs
vim.opt.encoding = 'utf-8'          
vim.opt.tabstop = 2                 
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2

vim.opt.undofile = true            
vim.opt.undolevels = 10000

vim.opt.number = true               
vim.opt.relativenumber = true       
vim.opt.linebreak = true       
vim.opt.expandtab = true            
vim.opt.breakindent = true            
vim.opt.cursorline = true            
vim.opt.scrolloff = 8
vim.opt.smarttab = true            
vim.opt.conceallevel = 1
vim.opt.smarttab = true            
vim.opt.ruler = true            
vim.opt.wrap = true
vim.opt.path:append("**")
vim.opt.wildmode = "full"
vim.opt.wildmenu = true
vim.cmd("colorscheme retrobox"); vim.cmd("syntax on") vim.cmd("set clipboard=\"unnamedplus\"")
-- Keymaps
vim.g.mapleader = " "

--normal mode keybinds
vim.keymap.set('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })  -- Save file
vim.keymap.set('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })  -- Quit Neovim
vim.keymap.set('n', '<leader>e', ':e .<CR>', { noremap = true, silent = true })  -- Open file explorer
vim.keymap.set('n', '<leader>t', ':terminal <CR>', { noremap = true, silent = true })  -- Open file explorer
vim.keymap.set('n', '<leader>bf', ':b ', { noremap = true, silent = false})  -- Open file explorer
vim.keymap.set('n', '<leader>bd', ':bdelete <CR>', { noremap = true, silent = true})  -- Open file explorer
vim.keymap.set('n', '<leader>ba', ':bnew ', { noremap = true, silent = false})  -- Open file explorer
vim.keymap.set('n', '<M-h>', ':wincmd h<CR> ', { noremap = true, silent = true})  -- Open file explorer
vim.keymap.set('n', '<M-j>', ':wincmd j<CR> ', { noremap = true, silent = true})  -- Open file explorer
vim.keymap.set('n', '<M-k>', ':wincmd k<CR> ', { noremap = true, silent = true})  -- Open file explorer
vim.keymap.set('n', '<M-l>', ':wincmd l<CR> ', { noremap = true, silent = true})  -- Open file explorer

vim.keymap.set('n', '<Tab>', ':bnext<CR> ', { noremap = true, silent = true})  -- goes forward a buffer
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR> ', { noremap = true, silent = true})  -- goes backwards a buffer

--insert mode keybinds
vim.keymap.set("i", "<C-j>", "<", { noremap = true, silent = true })
vim.keymap.set("i", "<C-k>", ">", { noremap = true, silent = true })

--terminal mode keybinds
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
--NETRW
--
function ToggleNetRW()
  if vim.bo.filetype == 'netrw' then
    vim.api.nvim_command('Rex')
    if vim.bo.filetype == 'netrw' then
      vim.api.nvim_command('bdel')
    end
  else
    vim.api.nvim_command('Ex')
  end
end

vim.api.nvim_command('command! ToggleNetRW lua ToggleNetRW()')

local function Path()
  -- local path = vim.fn.expand('%:~:.') -- Relative
  local path = vim.fn.expand('%:~') -- Absolute
  return '%#StatusLine# ' .. path
end

WinBarNetRW = function()
  return table.concat {
  Path(),
  "%=",
  "%<",
  }
end

vim.api.nvim_create_augroup('netrw', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
  group = 'netrw',
  pattern = 'netrw',
  callback = function()
    vim.api.nvim_command('setlocal buftype=nofile')
    vim.api.nvim_command('setlocal bufhidden=wipe')
    vim.opt_local.winbar = '%!v:lua.WinBarNetRW()'
    vim.keymap.set('n', '<C-C>', '<CMD>ToggleNetRW<CR>', { noremap = true, silent = true, buffer = true })
    vim.keymap.set('n', '<leader>e', '<CMD>ToggleNetRW<CR>', { remap = true, silent = true, buffer = true })
    vim.keymap.set('n', 'e', '<CMD>Ex ~<CR>', { remap = true, silent = true, buffer = true })
    vim.keymap.set('n', 'w', '<CMD>Ex ' .. vim.fn.getcwd() .. '<CR>', { remap = true, silent = true, buffer = true })
    vim.keymap.set('n', 'h', '-', { remap = true, silent = true, buffer = true })
    vim.keymap.set('n', 'l', '<CR>', { remap = true, silent = true, buffer = true })
    vim.keymap.set('n', 'r', 'R', { remap = true, silent = true, buffer = true })
    vim.keymap.set('n', 'cd', ':cd %<CR>', { remap = true, silent = true, buffer = true })
    local unbinds = {
      'a', '<F1>', '<del>', '<c-h>', '<c-r>', '<c-tab>', 'C', 'gb', 'gd', 'gf', 'gn', 'gp', 'i', 'I', 'mb', 'md',
      'me', 'mg', 'mh', 'mr', 'mt', 'mT', 'mu', 'mv', 'mX', 'mz', 'o', 'O', 'p', 'P', 'qb', 'qf', 'qF',
      'qL', 's', 'S', 't', 'u', 'U',  'X'
    }
    for _, value in pairs(unbinds) do
      vim.keymap.set('n', value, '<CMD>lua print("Keybind \'' .. value .. '\' has been removed")<CR>', { noremap = true, silent = true, buffer = true })
    end
  end
})

vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 2
vim.g.netrw_bufsettings = 'nonu nornu noma ro nobl'
vim.g.netrw_browse_split = 0 -- (4 to open in other window)
vim.g.netrw_altfile = 0 -- (4 to open in other window)
