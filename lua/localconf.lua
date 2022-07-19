vim.o.modelines = 0
-- vim.o.backspace = 2
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = 'number'
vim.o.scrolloff = 7
vim.o.shortmess = 'atI'
vim.o.syntax = 'on'
vim.o.backup = false
vim.o.confirm = true
vim.o.mouse = 'a'
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.smarttab = true
vim.o.autoread = true
vim.o.cindent = true
-- vim.o.autoindent = true
vim.o.smartindent = true
vim.o.hlsearch = true
vim.o.showmatch = true
vim.o.ruler = true
vim.o.visualbell = false
vim.o.laststatus = 2
vim.o.termguicolors = true
vim.o.showcmd = true

vim.o.cmdheight = 2

vim.o.fillchars = 'vert:/'
vim.o.fillchars = 'stl:/'
vim.o.fillchars = 'stlnc:/'

vim.o.encoding = 'utf-8'

vim.o.splitright = true

vim.o.updatetime = 200

vim.o.smartcase = true
vim.o.ignorecase = true

vim.cmd('autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE')
vim.cmd([[colorscheme dracula]])
vim.cmd('autocmd InsertEnter * se cul')
vim.cmd('autocmd InsertLeave * se nocul')
vim.cmd([[autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]])

vim.cmd([[autocmd BufWritePre * :%s/\s\+$//e]])
