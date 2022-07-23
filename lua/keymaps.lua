local function nnoremap(lhs, rhs)
	vim.api.nvim_set_keymap('n', lhs, rhs, {noremap = true, silent = true})
end
local function inoremap(lhs, rhs)
	vim.api.nvim_set_keymap('i', lhs, rhs, {noremap = true, silent = true})
end
local function vnoremap(lhs, rhs)
	vim.api.nvim_set_keymap('v', lhs, rhs, {noremap = true, silent = true})
end
local function xnoremap(lhs, rhs)
	vim.api.nvim_set_keymap('x', lhs, rhs, {noremap = true, silent = true})
end

local function nmap(lhs, rhs)
	vim.api.nvim_set_keymap('n', lhs, rhs, {noremap = false, silent = true})
end
local function imap(lhs, rhs)
	vim.api.nvim_set_keymap('i', lhs, rhs, {noremap = false, silent = true})
end
local function vmap(lhs, rhs)
	vim.api.nvim_set_keymap('v', lhs, rhs, {noremap = false, silent = true})
end
local function xmap(lhs, rhs)
	vim.api.nvim_set_keymap('x', lhs, rhs, {noremap = false, silent = true})
end


nnoremap('U', '<c-R>')
vnoremap('<c-c>', '"+y')

vim.cmd('let g:mapleader = ","')
nnoremap('<leader>w', ':bp | bd #<cr>')
nnoremap('<leader>e', ':q<cr>')

nnoremap(';t', ':ToggleTerm<cr>')
vim.api.nvim_set_keymap('t', ';t', [[<c-\><c-n>:ToggleTerm<cr>]], {noremap = true, silent = true})
nnoremap('<leader>t1', ':1ToggleTerm direction=horizontal size=15<cr>')
nnoremap('<leader>t2', ':2ToggleTerm direction=horizontal size=15<cr>')
nnoremap('<leader>t3', ':3ToggleTerm direction=horizontal size=15<cr>')
nnoremap('<leader>tf', ':5ToggleTerm direction=float size=15<cr>')

nmap('<leader>rn', '<Plug>(coc-rename)')
nnoremap('<leader>f', ':Autoformat<cr>')
nmap('<leader>qf', '<Plug>(coc-fix-current)')

vim.api.nvim_set_keymap('t', '<leader><esc>', [[<c-\><c-n>]], {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<leader><c-h>', [[<c-\><c-n><c-W>h]], {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<leader><c-j>', [[<c-\><c-n><c-W>j]], {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<leader><c-k>', [[<c-\><c-n><c-W>k]], {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<leader><c-l>', [[<c-\><c-n><c-W>l]], {noremap = true, silent = true})

nmap('j', '<plug>(accelerated_jk_gj)')
nmap('k', '<plug>(accelerated_jk_gk)')
nnoremap('<tab>', ':BufferLineCycleNext<cr>')
nnoremap('<s-tab>', ':BufferLineCyclePrev<cr>')
nnoremap(']b', ':BufferLineMoveNext<cr>')
nnoremap('[b', ':BufferLineMovePrev<cr>')
nmap('s', '<c-w>')
nnoremap('<c-w>j', ':split<cr>')
nnoremap('<c-w>l', ':vsplit<cr>')
nnoremap('=', ':vertical resize +1<cr>')
nnoremap('-', ':vertical resize -1<cr>')
nnoremap('<a-=>', ':resize +1<cr>')
nnoremap('<a-->', ':resize -1<cr>')
nnoremap('<c-h>', '<c-w>h')
nnoremap('<c-j>', '<c-w>j')
nnoremap('<c-k>', '<c-w>k')
nnoremap('<c-l>', '<c-w>l')
nnoremap('<a-j>', '<c-e>')
nnoremap('<a-k>', '<c-y>')
nnoremap('<c-u>', '10k')
nnoremap('<c-d>', '10j')
nnoremap('<pageup>', '10k')
nnoremap('<pagedown>', '10j')
nnoremap('<esc>', '<esc>:noh<cr>')
nnoremap('<space>', 'viw')
vim.cmd([[
    inoremap <silent><expr> <tab>
                \ pumvisible() ? "\<c-n>" :
                \ CheckBackspace() ? "\<tab>" :
                \ coc#refresh()
    inoremap <silent><expr> <s-tab> pumvisible() ? "\<c-p>" : "\<c-h>"
]])
vim.cmd([[
    function! CheckBackspace() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
    endfunction
]])
nnoremap(']h', ':GitGutterNextHunk<cr>')
nnoremap('[h', ':GitGutterPrevHunk<cr>')

inoremap('<a-h>', '<left>')
inoremap('<a-j>', '<down>')
inoremap('<a-k>', '<up>')
inoremap('<a-l>', '<right>')
inoremap('jj', '<esc>')

nnoremap(';s', ':Vista<cr>')
nnoremap(';e', [[:<C-u>Defx -resume -buffer-name=tab`'defx' . tabpagenr()` -search=`expand('%:p')`<cr>]])

nnoremap('<leader>ag', ':Ag <c-r><c-w><cr>')
nnoremap('<c-p>', ':Files<cr>')
nnoremap('<c-b>', ':Buffers<cr>')

nnoremap('<leader>d', ':CocList diagnostics<cr>')
nmap('[d', '<plug>(coc-diagnostic-prev)')
nmap(']d', '<plug>(coc-diagnostic-next)')
nmap('gd', '<plug>(coc-definition)')
nmap('gy', '<plug>(coc-type-definition)')
nmap('gi', '<plug>(coc-implementation)')
nmap('gr', '<plug>(coc-references)')
nnoremap('K', ':call ShowDocumentation()<cr>')
vim.cmd([[function! ShowDocumentation()
    if CocAction('hasProvider', 'hover')
        call CocActionAsync('doHover')
    else
        call feedkeys('K', 'in')
    endif
endfunction]])
vim.cmd([[autocmd CursorHold * silent call CocActionAsync('highlight')]])

nnoremap('<m-1>', '<cmd>BufferLineGoToBuffer 1<cr>')
nnoremap('<m-2>', '<cmd>BufferLineGoToBuffer 2<cr>')
nnoremap('<m-3>', '<cmd>BufferLineGoToBuffer 3<cr>')
nnoremap('<m-4>', '<cmd>BufferLineGoToBuffer 4<cr>')
nnoremap('<m-5>', '<cmd>BufferLineGoToBuffer 5<cr>')
nnoremap('<m-6>', '<cmd>BufferLineGoToBuffer 6<cr>')
nnoremap('<m-7>', '<cmd>BufferLineGoToBuffer 7<cr>')
nnoremap('<m-8>', '<cmd>BufferLineGoToBuffer 8<cr>')
nnoremap('<m-9>', '<cmd>BufferLineGoToBuffer 9<cr>')

