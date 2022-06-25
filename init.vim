" Configuration file for nvim
set modelines=0

set nocompatible
set backspace=2

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1

"显示行号
set nu
" set relativenumber

"光标上下行数
set scrolloff=7

"启动时隐去援助提示
set shortmess=atI

"语法高亮
syntax on

"不需要备份
set nobackup

"没有保存或文件只读时弹出确认
set confirm

"鼠标可用
set mouse=a

"tab缩进
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

"文件自动检测外部更改
set autoread

"c文件自动缩进
set cindent

"自动对齐
"set autoindent

"智能缩进
set smartindent

"高亮查找匹配
set hlsearch

"显示匹配
set showmatch

"显示标尺，就是在右下角显示光标位置
set ruler

"去除vi的一致性
set nocompatible

"设置键盘映射，通过空格设置折叠
"set foldmethod=syntax
"set foldlevelstart=1

"let javaScript_fold=1         " JavaScript
"let perl_fold=1               " Perl
"let php_folding=1             " PHP
"let r_syntax_folding=1        " R
"let ruby_fold=1               " Ruby
"let sh_fold_enabled=1         " sh
"let vimsyn_folding='af'       " Vim script
"let xml_syntax_folding=1      " XML
noremap \ za

"不要闪烁
set novisualbell

"启动显示状态行
set laststatus=2

"浅色显示当前行
autocmd InsertLeave * se nocul

"用浅色高亮当前行
autocmd InsertEnter * se cul

"显示输入的命令
set showcmd

"命令高度
set cmdheight=2

"被分割窗口之间显示空白
set fillchars=vert:/
set fillchars=stl:/
set fillchars=stlnc:/

"禁止折行
"set nowrap

"编码设置
set encoding=utf-8

"向右分割
set splitright

"更新时间
set updatetime=200

"设置数字栏
set number
set signcolumn=number

" 共享剪切板
"set clipboard=unnamed

" 显示TAB和行尾
" set listchars=tab:>>,trail:-
" set list
" highlight WhitespaceEOL ctermbg=green guibg=green
" match WhitespaceEOL /\s\+$/

" 大小写
set smartcase
set ignorecase

" 括号自动补全
" inoremap ' ''<esc>i
" inoremap " ""<esc>i
" inoremap ( ()<esc>i
" inoremap [ []<esc>i
" inoremap { {}<esc>i

" 跳出自动补全的括号
" func SkipPair()
"     if getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.') - 1] == '}'
"         return "\<esc>la"
"     else
"         return "\t"
"     endif
" endfunc
" 将tab键绑定为跳出括号
" inoremap <TAB> <c-r>=SkipPair()<cr>

" 保存光标位置
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" 自动删除行尾空格
autocmd BufWritePre * :%s/\s\+$//e

" 颜色调整
highlight PMenu ctermfg=0 ctermbg=7
highlight PMenuSel ctermfg=15 ctermbg=8
set completeopt=menu,menuone

" bg
nnoremap <space>z <c-z>
" Shift+U回退
nnoremap U <c-R>
" 复制到剪贴板
vnoremap <c-c> "+y

let g:mapleader = ","
nnoremap <silent> <leader>w :bd<cr>
nnoremap <silent> <leader>e :q<cr>
nnoremap <silent> <leader>t :belowright 15split<cr>:term<cr>
nmap <silent> <leader>rn <plug>(coc-rename)
" xmap <leader>f  <plug>(coc-format-selected)
" nmap <leader>f  <plug>(coc-format-selected)
nnoremap <silent> <leader>f :<c-u>Autoformat<cr>
nmap <leader>qf  <plug>(coc-fix-current)
autocmd TermClose * if !v:event.status | exe 'bdelete! '..expand('<abuf>') | endif
augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

tnoremap <leader><esc> <C-\><C-n>

nnoremap <silent> <tab> :bnext<cr>
nnoremap <silent> <s-tab> :bprev<cr>
nmap s <c-w>
nnoremap <silent> <c-w>j :split<cr>
nnoremap <silent> <c-w>l :vsplit<cr>
nnoremap <silent> = :vertical resize +1<cr>
nnoremap <silent> - :vertical resize -1<cr>
nnoremap <silent> <a-=> :resize +1<cr>
nnoremap <silent> <a--> :resize -1<cr>
nnoremap <silent> <c-h> <c-w>h
nnoremap <silent> <c-j> <c-w>j
nnoremap <silent> <c-k> <c-w>k
nnoremap <silent> <c-l> <c-w>l
nnoremap <silent> <a-j> <c-e>
nnoremap <silent> <a-k> <c-y>
nnoremap <silent> <c-u> 10k
nnoremap <silent> <c-d> 10j
nnoremap <silent> <pageup> 10k
nnoremap <silent> <pagedown> 10j
nnoremap <silent> <esc> <esc>:noh<cr>
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ CheckBackspace() ? "\<TAB>" :
            \ coc#refresh()
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
nnoremap <silent> ]h :GitGutterNextHunk<cr>
nnoremap <silent> [h :GitGutterPrevHunk<cr>

inoremap <silent> <a-h> <left>
inoremap <silent> <a-j> <down>
inoremap <silent> <a-k> <up>
inoremap <silent> <a-l> <right>
inoremap <silent> jj <esc>

nnoremap <silent> <space>o :TagbarOpenAutoClose<cr>
nnoremap <silent> <Leader>ag :Ag <c-r><c-w><cr>
nnoremap <silent> <c-p> :Files<cr>
nnoremap <silent> <c-b> :Buffers<cr>

nnoremap <silent><nowait> <leader>d :CocList diagnostics<cr>
nmap <silent> [d <plug>(coc-diagnostic-prev)
nmap <silent> ]d <plug>(coc-diagnostic-next)
nmap <silent> gd <plug>(coc-definition)
nmap <silent> gy <plug>(coc-type-definition)
nmap <silent> gi <plug>(coc-implementation)
nmap <silent> gr <plug>(coc-references)
nnoremap <silent> K :call ShowDocumentation()<cr>
function! ShowDocumentation()
    if CocAction('hasProvider', 'hover')
        call CocActionAsync('doHover')
    else
        call feedkeys('K', 'in')
    endif
endfunction
autocmd CursorHold * silent call CocActionAsync('highlight')
nmap <silent> <C-s> <plug>(coc-range-select)
xmap <silent> <C-s> <plug>(coc-range-select)

imap <silent><script><expr> <a-tab> copilot#Accept("\<cr>")
let g:copilot_no_tab_map = v:true


" 插件管理
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/tagbar'
" Plug 'preservim/nerdtree'
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'github/copilot.vim'
Plug 'antoinemadec/FixCursorHold.nvim'
" Plug 'wfxr/minimap.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'brooth/far.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'buoto/gotests-vim'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'
Plug 'ludovicchabant/vim-gutentags'
Plug 'jiangmiao/auto-pairs'
Plug '907th/vim-auto-save'
Plug 'luochen1990/rainbow'
Plug 'airblade/vim-gitgutter'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'vim-autoformat/vim-autoformat'
call plug#end()


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
autocmd VimEnter * Defx `StartDefx()` -buffer-name=tab`'defx' . tabpagenr()` -no-focus -search=`expand('%:p')`
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

let g:AutoPairsShortcutJump = '<s-tab>'

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
