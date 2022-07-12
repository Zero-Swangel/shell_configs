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
nnoremap('<leader>w', ':bd<cr>')
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

nnoremap(';s', ':TagbarOpenAutoClose<cr>')
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

vim.cmd([[
    augroup mygroup
        autocmd!
        autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
        autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
    augroup end
]])

vim.cmd([[

    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_SR = "\<Esc>]50;CursorShape=2\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"

    let g:coc_global_extensions = [
                \ 'coc-json',
                \ 'coc-cmake',
                \ 'coc-pyright',
                \ 'coc-go',
                \ 'coc-yaml',
                \ 'coc-highlight',
                \ 'coc-vimlsp'
                \ ]


    let g:go_highlight_types = 1
    let g:go_highlight_fields = 1
    let g:go_highlight_functions = 1
    let g:go_highlight_function_calls = 1
    let g:go_highlight_operators = 1
    let g:go_highlight_extra_types = 1
    let g:go_term_mode = ":rightbelow split"
    let g:go_term_enabled = 1
    let g:go_term_reuse = 1
    let g:go_term_width = 50
    let g:go_term_height = 10
    let g:go_term_close_on_exit = 0
    let g:go_list_type = "quickfix"


    let g:tagbar_type_go = {
                \ 'ctagstype' : 'go',
                \ 'kinds'     : [
                    \ 'p:package',
                    \ 'i:imports:1',
                    \ 'c:constants',
                    \ 'v:variables',
                    \ 't:types',
                    \ 'n:interfaces',
                    \ 'w:fields',
                    \ 'e:embedded',
                    \ 'm:methods',
                    \ 'r:constructor',
                    \ 'f:functions'
                    \ ],
                    \ 'sro' : '.',
                    \ 'kind2scope' : {
                        \ 't' : 'ctype',
                        \ 'n' : 'ntype'
                        \ },
                        \ 'scope2kind' : {
                            \ 'ctype' : 't',
                            \ 'ntype' : 'n'
                            \ },
                            \ 'ctagsbin'  : 'gotags',
                            \ 'ctagsargs' : '-sort -silent'
                            \ }

    let g:lsp_cxx_hl_use_text_props = 1

    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#formatter = 'unique_tail'
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.colnr = ' :'
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ' :'
    let g:airline_symbols.maxlinenr = '☰ '
    let g:airline_symbols.dirty='⚡'
    let g:airline_powerline_fonts = 1
    let g:airline_theme='bubblegum'
    let g:airline#extensions#whitespace#enabled=0


    let g:cursorhold_updatetime = 100

    if !exists('g:env')
        if has('win64') || has('win32') || has('win16')
            let g:env = 'WINDOWS'
        else
            let g:env = toupper(substitute(system('uname'), '\n', '', ''))
        endif
    endif
    if g:env =~ 'DARWIN'
        let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
    endif
    if g:env =~ 'LINUX'
        let g:tagbar_ctags_bin = '/usr/bin/ctags'
    endif

    let g:maplocalleader=';'
    let g:defx_icons_column_length = 2
    nnoremap <silent> <LocalLeader>e :<C-u>Defx -resume -buffer-name=tab`'defx' . tabpagenr()`<cr>
    nnoremap <silent> <LocalLeader>a :<C-u>Defx -resume -buffer-name=tab`'defx' . tabpagenr()` `escape(expand('%:p:h'), ' :')` -search=`expand('%:p')`<cr>
    func! StartDefx() abort
        let s:arg = argv(0)
        if isdirectory(s:arg)
            return s:arg
        else
            return fnamemodify(s:arg, ':h')
        endif
    endfunc
    autocmd VimEnter * Defx `StartDefx()` -focus -resume -buffer-name=tab`'defx' . tabpagenr()` -no-focus -search=`expand('%:p')`
    function! s:defx_mappings() abort
        setlocal signcolumn=no
        nnoremap <silent><buffer><expr> <cr> defx#is_directory() ? defx#do_action('open_or_close_tree') : defx#do_action('multi', ['drop'])
        nnoremap <silent><buffer><expr> <2-LeftMouse> defx#is_directory() ? defx#do_action('open_or_close_tree') : defx#do_action('multi', ['drop'])
        nnoremap <silent><buffer><expr> o defx#do_action('open')
        nnoremap <silent><buffer><expr> h defx#do_action('cd', ['..'])
        nnoremap <silent><buffer><expr> ~ defx#do_action('cd')
        nnoremap <silent><buffer><expr> yy defx#do_action('copy')
        nnoremap <silent><buffer><expr> dd defx#do_action('remove')
        nnoremap <silent><buffer><expr> pp defx#do_action('paste')
        nnoremap <silent><buffer><expr> K defx#do_action('new_directory')
        nnoremap <silent><buffer><expr> N defx#do_action('new_file')
        nnoremap <silent><buffer><expr> R defx#do_action('rename')
        nnoremap <silent><buffer><expr> . defx#do_action('toggle_ignored_files')
        nnoremap <silent><buffer><expr> cd defx#do_action('change_vim_cwd')
    endfunction
    autocmd FileType defx call s:defx_mappings()
    autocmd BufWritePost * call defx#redraw()
    call defx#custom#option('_', {
                \ 'columns': 'indent:indent:git:icons:filename',
                \ 'winwidth': 40,
                \ 'split': 'vertical',
                \ 'direction': 'topleft',
                \ 'listed': 1,
                \ 'show_ignored_files': 0,
                \ 'root_marker': '≡ ',
                \ 'ignored_files':
                \     '.mypy_cache,.pytest_cache,.git,.hg,.svn,.stversions'
                \   . ',__pycache__,.sass-cache,*.egg-info,.DS_Store,*.pyc,*.swp'
                \ })
    call defx#custom#column('filename', {
                \ 'min_width': 10,
                \ 'max_width': 20,
                \ })
    call defx#custom#column('icon', {
                \ 'directory_icon': '▸',
                \ 'opened_icon': '▾',
                \ 'root_icon': ' ',
                \ })
    call defx#custom#column('git', 'indicators', {
                \ 'Modified'  : 'M',
                \ 'Staged'    : '✚',
                \ 'Untracked' : '✭',
                \ 'Renamed'   : '➜',
                \ 'Unmerged'  : '═',
                \ 'Ignored'   : '☒',
                \ 'Deleted'   : '✖',
                \ 'Unknown'   : '?'
                \ })
    autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 0 && exists('b:defx') | quit | endif

    let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']
    let g:gutentags_ctags_tagfile = '.tags'
    let s:vim_tags = expand('~/.cache/tags')
    let g:gutentags_cache_dir = s:vim_tags
    if !isdirectory(s:vim_tags)
        silent! call mkdir(s:vim_tags, 'p')
    endif
    let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
    let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
    let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
    let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']


    let g:auto_save = 1
    let g:auto_save_silent = 1
    let g:auto_save_events = ["InsertLeave", "TextChanged"]
    let g:auto_save_write_all_buffers = 1


    let g:rainbow_active = 1

    let g:AutoPairsShortcutJump = '<m-n>'

    command! -nargs=0 Format :call CocActionAsync('format')

    hi default link LspCxxHlSymFunction cxxFunction
    hi default link LspCxxHlSymFunctionParameter cxxParameter
    hi default link LspCxxHlSymFileVariableStatic cxxFileVariableStatic
    hi default link LspCxxHlSymStruct cxxStruct
    hi default link LspCxxHlSymStructField cxxStructField
    hi default link LspCxxHlSymFileTypeAlias cxxTypeAlias
    hi default link LspCxxHlSymClassField cxxStructField
    hi default link LspCxxHlSymEnum cxxEnum
    hi default link LspCxxHlSymVariableExtern cxxFileVariableStatic
    hi default link LspCxxHlSymVariable cxxVariable
    hi default link LspCxxHlSymMacro cxxMacro
    hi default link LspCxxHlSymEnumMember cxxEnumMember
    hi default link LspCxxHlSymParameter cxxParameter
    hi default link LspCxxHlSymClass cxxTypeAlias


]])
