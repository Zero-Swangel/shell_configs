-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/walker/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/walker/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/walker/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/walker/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/walker/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  ["accelerated-jk"] = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/accelerated-jk",
    url = "https://github.com/rhysd/accelerated-jk"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\2g\0\1\4\0\a\0\0149\1\0\0\18\2\1\0009\1\1\1'\3\2\0B\1\3\2\15\0\1\0X\2\6Ä6\1\3\0009\1\4\0019\1\5\0019\2\0\0'\3\6\0D\1\3\0K\0\1\0\t:t:r\16fnamemodify\afn\bvim\t%.md\nmatch\tname\31\0\4\a\0\2\0\5'\4\0\0\18\5\0\0'\6\1\0&\4\6\4L\4\2\0\6)\6(Ç\2\0\2\4\0\n\0%6\2\0\0009\2\1\0028\2\0\0029\2\2\2\6\2\3\0X\2\2Ä+\2\2\0L\2\2\0006\2\0\0009\2\4\0029\2\5\2\18\3\0\0B\2\2\2\6\2\6\0X\2\2Ä+\2\2\0L\2\2\0006\2\0\0009\2\4\0029\2\a\2B\2\1\2\a\2\b\0X\2\bÄ6\2\0\0009\2\1\0028\2\0\0029\2\2\2\6\2\t\0X\2\2Ä+\2\2\0L\2\2\0:\2\1\1\4\2\0\0X\2\2Ä+\2\2\0L\2\2\0K\0\1\0\twiki\16<work-repo>\vgetcwd\30<buffer-name-I-dont-want>\fbufname\afn\30<i-dont-want-to-see-this>\rfiletype\abo\bvim¨\6\1\0\5\0\17\0\0236\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\3\0'\1\4\0B\0\2\0029\0\5\0005\1\15\0005\2\6\0003\3\a\0=\3\b\0023\3\t\0=\3\n\0023\3\v\0=\3\f\0024\3\3\0005\4\r\0>\4\1\3=\3\14\2=\2\16\1B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\3\ttext\18File Explorer\15text_align\vcenter\rfiletype\rNvimTree\18custom_filter\0\26diagnostics_indicator\0\19name_formatter\0\1\0\26\22left_trunc_marker\bÔÇ®\fsort_by\14directory!diagnostics_update_in_insert\2\16diagnostics\bcoc\rtab_size\3\18\20separator_style\nslant\24show_tab_indicators\2\16color_icons\2\tmode\fbuffers\28show_buffer_close_icons\2\18close_command\16bdelete! %d\25enforce_regular_tabs\1\24right_mouse_command\16bdelete! %d\22buffer_close_icon\bÔôï\20max_name_length\3\18\15close_icon\bÔÄç\22show_buffer_icons\2\fnumbers\fordinal\24persist_buffer_sort\2\23right_trunc_marker\bÔÇ©\22max_prefix_length\3\15\23left_mouse_command\14buffer %d\27always_show_bufferline\2\20show_close_icon\2\19indicator_icon\b‚ñé\18modified_icon\b‚óè\nsetup\15bufferline\frequire\18termguicolors\bopt\bvim\0" },
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["coc.nvim"] = {
    config = { "\27LJ\2\2ß\3\0\0\2\0\6\0\t6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\4\0'\1\5\0B\0\2\1K\0\1\0¯\1        augroup mygroup\n            autocmd!\n            autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')\n            autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')\n        augroup end\n    \bcmd\1\n\0\0\20coc-sumneko-lua\rcoc-json\14coc-cmake\15coc-clangd\16coc-pyright\vcoc-go\rcoc-yaml\18coc-highlight\15coc-vimlsp\26coc_global_extensions\6g\bvim\0" },
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["defx-icons"] = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/defx-icons",
    url = "https://github.com/kristijanhusak/defx-icons"
  },
  ["defx.nvim"] = {
    config = { "\27LJ\2\2ò\24\0\0\2\0\5\0\t6\0\0\0009\0\1\0)\1\2\0=\1\2\0006\0\0\0009\0\3\0'\1\4\0B\0\2\1K\0\1\0Õ\23      func! StartDefx() abort\n          let s:arg = argv(0)\n          if isdirectory(s:arg)\n              return s:arg\n          else\n              return fnamemodify(s:arg, ':h')\n          endif\n      endfunc\n      autocmd VimEnter * Defx `StartDefx()` -focus -resume -buffer-name=tab`'defx' . tabpagenr()` -no-focus -search=`expand('%:p')`\n      function! s:defx_mappings() abort\n          setlocal signcolumn=no\n          nnoremap <silent><buffer><expr> <cr> defx#is_directory() ? defx#do_action('open_or_close_tree') : defx#do_action('multi', ['drop'])\n          nnoremap <silent><buffer><expr> <2-LeftMouse> defx#is_directory() ? defx#do_action('open_or_close_tree') : defx#do_action('multi', ['drop'])\n          nnoremap <silent><buffer><expr> o defx#do_action('open')\n          nnoremap <silent><buffer><expr> h defx#do_action('cd', ['..'])\n          nnoremap <silent><buffer><expr> ~ defx#do_action('cd')\n          nnoremap <silent><buffer><expr> yy defx#do_action('copy')\n          nnoremap <silent><buffer><expr> dd defx#do_action('remove')\n          nnoremap <silent><buffer><expr> pp defx#do_action('paste')\n          nnoremap <silent><buffer><expr> K defx#do_action('new_directory')\n          nnoremap <silent><buffer><expr> N defx#do_action('new_file')\n          nnoremap <silent><buffer><expr> R defx#do_action('rename')\n          nnoremap <silent><buffer><expr> . defx#do_action('toggle_ignored_files')\n          nnoremap <silent><buffer><expr> cd defx#do_action('change_vim_cwd')\n      endfunction\n      autocmd FileType defx call s:defx_mappings()\n      autocmd BufWritePost * call defx#redraw()\n      call defx#custom#option('_', {\n                  \\ 'columns': 'indent:indent:git:icons:filename',\n                  \\ 'winwidth': 40,\n                  \\ 'split': 'vertical',\n                  \\ 'direction': 'topleft',\n                  \\ 'listed': 1,\n                  \\ 'show_ignored_files': 0,\n                  \\ 'root_marker': '‚â° ',\n                  \\ 'ignored_files':\n                  \\     '.mypy_cache,.pytest_cache,.git,.hg,.svn,.stversions'\n                  \\   . ',__pycache__,.sass-cache,*.egg-info,.DS_Store,*.pyc,*.swp'\n                  \\ })\n      call defx#custom#column('filename', {\n                  \\ 'min_width': 10,\n                  \\ 'max_width': 20,\n                  \\ })\n      call defx#custom#column('icon', {\n                  \\ 'directory_icon': '‚ñ∏',\n                  \\ 'opened_icon': '‚ñæ',\n                  \\ 'root_icon': ' ',\n                  \\ })\n      call defx#custom#column('git', 'indicators', {\n                  \\ 'Modified'  : 'M',\n                  \\ 'Staged'    : '‚úö',\n                  \\ 'Untracked' : '‚ú≠',\n                  \\ 'Renamed'   : '‚ûú',\n                  \\ 'Unmerged'  : '‚ïê',\n                  \\ 'Ignored'   : '‚òí',\n                  \\ 'Deleted'   : '‚úñ',\n                  \\ 'Unknown'   : '?'\n                  \\ })\n      autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 0 && exists('b:defx') | quit | endif\n    \bcmd\29defx_icons_column_length\6g\bvim\0" },
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/defx.nvim",
    url = "https://github.com/Shougo/defx.nvim"
  },
  ["dracula.nvim"] = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/dracula.nvim",
    url = "https://github.com/Mofiqul/dracula.nvim"
  },
  ["far.vim"] = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/far.vim",
    url = "https://github.com/brooth/far.vim"
  },
  fzf = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\2(\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\revilline\frequire\0" },
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/galaxyline.nvim",
    url = "https://github.com/glepnir/galaxyline.nvim"
  },
  ["gotests-vim"] = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/gotests-vim",
    url = "https://github.com/buoto/gotests-vim"
  },
  indentLine = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/indentLine",
    url = "https://github.com/Yggdroot/indentLine"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  rainbow = {
    config = { "\27LJ\2\0020\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0\19rainbow_active\6g\bvim\0" },
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/rainbow",
    url = "https://github.com/luochen1990/rainbow"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\0028\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-auto-save"] = {
    config = { "\27LJ\2\2µ\1\0\0\2\0\a\0\0176\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0K\0\1\0 auto_save_write_all_buffers\1\3\0\0\16InsertLeave\16TextChanged\21auto_save_events\21auto_save_silent\14auto_save\6g\bvim\0" },
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/vim-auto-save",
    url = "https://github.com/907th/vim-auto-save"
  },
  ["vim-autoformat"] = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/vim-autoformat",
    url = "https://github.com/vim-autoformat/vim-autoformat"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-go"] = {
    config = { "\27LJ\2\2Ò\3\0\0\2\0\17\00056\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\5\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0006\0\0\0009\0\1\0)\1\1\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0)\1\1\0=\1\n\0006\0\0\0009\0\1\0)\1\1\0=\1\v\0006\0\0\0009\0\1\0)\0012\0=\1\f\0006\0\0\0009\0\1\0)\1\n\0=\1\r\0006\0\0\0009\0\1\0)\1\0\0=\1\14\0006\0\0\0009\0\1\0'\1\16\0=\1\15\0K\0\1\0\rquickfix\17go_list_type\26go_term_close_on_exit\19go_term_height\18go_term_width\18go_term_reuse\20go_term_enabled\22:rightbelow split\17go_term_mode\29go_highlight_extra_types\27go_highlight_operators go_highlight_function_calls\27go_highlight_functions\24go_highlight_fields\23go_highlight_types\6g\bvim\0" },
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/vim-go",
    url = "https://github.com/fatih/vim-go"
  },
  ["vim-gutentags"] = {
    config = { "\27LJ\2\2 \3\0\0\2\0\n\0\0176\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\6\0'\1\a\0B\0\2\0016\0\0\0009\0\1\0005\1\t\0=\1\b\0K\0\1\0\1\6\0\0\20--fields=+niazS\15--extra=+q\21--c++-kinds=+pxI\18--c-kinds=+px\28--output-format=e-ctags\31gutentags_ctags_extra_argsµ\1    let s:vim_tags = expand('~/.cache/tags')\n    let g:gutentags_cache_dir = s:vim_tags\n    if !isdirectory(s:vim_tags)\n      silent! call mkdir(s:vim_tags, 'p')\n    endif\n    \bcmd\n.tags\28gutentags_ctags_tagfile\1\5\0\0\n.root\t.svn\t.git\r.project\27gutentags_project_root\6g\bvim\0" },
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/vim-gutentags",
    url = "https://github.com/ludovicchabant/vim-gutentags"
  },
  ["vim-lsp-cxx-highlight"] = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/vim-lsp-cxx-highlight",
    url = "https://github.com/jackguo380/vim-lsp-cxx-highlight"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/vim-startify",
    url = "https://github.com/mhinz/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vista.vim"] = {
    config = { "\27LJ\2\2ñ\4\0\0\2\0\20\0'6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0005\1\a\0=\1\6\0006\0\0\0009\0\1\0005\1\t\0=\1\b\0006\0\0\0009\0\1\0005\1\v\0=\1\n\0006\0\0\0009\0\1\0)\1\1\0=\1\f\0006\0\0\0009\0\1\0009\0\r\0'\1\15\0=\1\14\0006\0\0\0009\0\1\0009\0\r\0'\1\17\0=\1\16\0006\0\0\0009\0\18\0'\1\19\0B\0\2\1K\0\1\0<command! -nargs=0 Format :call CocActionAsync('format')\bcmd\v\\uf71b\rvariable\v\\uf794\rfunction\25vista#renderer#icons\31vista#renderer#enable_icon\1\2\0\0\14right:50%\22vista_fzf_preview\1\0\1\fhaskell\24hasktags -x -o - -c\20vista_ctags_cmd\1\0\6\tjson\bcoc\tyaml\bcoc\bcpp\bcoc\ago\bcoc\bphp\bcoc\blua\bcoc\24vista_executive_for\nctags\28vista_default_executive\1\3\0\0\15‚ï∞‚îÄ‚ñ∏ \15‚îú‚îÄ‚ñ∏ \22vista_icon_indent\6g\bvim\0" },
    loaded = true,
    path = "/home/walker/.local/share/nvim/site/pack/packer/start/vista.vim",
    url = "https://github.com/liuchengxu/vista.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: vim-go
time([[Config for vim-go]], true)
try_loadstring("\27LJ\2\2Ò\3\0\0\2\0\17\00056\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\5\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0006\0\0\0009\0\1\0)\1\1\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0)\1\1\0=\1\n\0006\0\0\0009\0\1\0)\1\1\0=\1\v\0006\0\0\0009\0\1\0)\0012\0=\1\f\0006\0\0\0009\0\1\0)\1\n\0=\1\r\0006\0\0\0009\0\1\0)\1\0\0=\1\14\0006\0\0\0009\0\1\0'\1\16\0=\1\15\0K\0\1\0\rquickfix\17go_list_type\26go_term_close_on_exit\19go_term_height\18go_term_width\18go_term_reuse\20go_term_enabled\22:rightbelow split\17go_term_mode\29go_highlight_extra_types\27go_highlight_operators go_highlight_function_calls\27go_highlight_functions\24go_highlight_fields\23go_highlight_types\6g\bvim\0", "config", "vim-go")
time([[Config for vim-go]], false)
-- Config for: vim-gutentags
time([[Config for vim-gutentags]], true)
try_loadstring("\27LJ\2\2 \3\0\0\2\0\n\0\0176\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\6\0'\1\a\0B\0\2\0016\0\0\0009\0\1\0005\1\t\0=\1\b\0K\0\1\0\1\6\0\0\20--fields=+niazS\15--extra=+q\21--c++-kinds=+pxI\18--c-kinds=+px\28--output-format=e-ctags\31gutentags_ctags_extra_argsµ\1    let s:vim_tags = expand('~/.cache/tags')\n    let g:gutentags_cache_dir = s:vim_tags\n    if !isdirectory(s:vim_tags)\n      silent! call mkdir(s:vim_tags, 'p')\n    endif\n    \bcmd\n.tags\28gutentags_ctags_tagfile\1\5\0\0\n.root\t.svn\t.git\r.project\27gutentags_project_root\6g\bvim\0", "config", "vim-gutentags")
time([[Config for vim-gutentags]], false)
-- Config for: vista.vim
time([[Config for vista.vim]], true)
try_loadstring("\27LJ\2\2ñ\4\0\0\2\0\20\0'6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0005\1\a\0=\1\6\0006\0\0\0009\0\1\0005\1\t\0=\1\b\0006\0\0\0009\0\1\0005\1\v\0=\1\n\0006\0\0\0009\0\1\0)\1\1\0=\1\f\0006\0\0\0009\0\1\0009\0\r\0'\1\15\0=\1\14\0006\0\0\0009\0\1\0009\0\r\0'\1\17\0=\1\16\0006\0\0\0009\0\18\0'\1\19\0B\0\2\1K\0\1\0<command! -nargs=0 Format :call CocActionAsync('format')\bcmd\v\\uf71b\rvariable\v\\uf794\rfunction\25vista#renderer#icons\31vista#renderer#enable_icon\1\2\0\0\14right:50%\22vista_fzf_preview\1\0\1\fhaskell\24hasktags -x -o - -c\20vista_ctags_cmd\1\0\6\tjson\bcoc\tyaml\bcoc\bcpp\bcoc\ago\bcoc\bphp\bcoc\blua\bcoc\24vista_executive_for\nctags\28vista_default_executive\1\3\0\0\15‚ï∞‚îÄ‚ñ∏ \15‚îú‚îÄ‚ñ∏ \22vista_icon_indent\6g\bvim\0", "config", "vista.vim")
time([[Config for vista.vim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\0028\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\2g\0\1\4\0\a\0\0149\1\0\0\18\2\1\0009\1\1\1'\3\2\0B\1\3\2\15\0\1\0X\2\6Ä6\1\3\0009\1\4\0019\1\5\0019\2\0\0'\3\6\0D\1\3\0K\0\1\0\t:t:r\16fnamemodify\afn\bvim\t%.md\nmatch\tname\31\0\4\a\0\2\0\5'\4\0\0\18\5\0\0'\6\1\0&\4\6\4L\4\2\0\6)\6(Ç\2\0\2\4\0\n\0%6\2\0\0009\2\1\0028\2\0\0029\2\2\2\6\2\3\0X\2\2Ä+\2\2\0L\2\2\0006\2\0\0009\2\4\0029\2\5\2\18\3\0\0B\2\2\2\6\2\6\0X\2\2Ä+\2\2\0L\2\2\0006\2\0\0009\2\4\0029\2\a\2B\2\1\2\a\2\b\0X\2\bÄ6\2\0\0009\2\1\0028\2\0\0029\2\2\2\6\2\t\0X\2\2Ä+\2\2\0L\2\2\0:\2\1\1\4\2\0\0X\2\2Ä+\2\2\0L\2\2\0K\0\1\0\twiki\16<work-repo>\vgetcwd\30<buffer-name-I-dont-want>\fbufname\afn\30<i-dont-want-to-see-this>\rfiletype\abo\bvim¨\6\1\0\5\0\17\0\0236\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\3\0'\1\4\0B\0\2\0029\0\5\0005\1\15\0005\2\6\0003\3\a\0=\3\b\0023\3\t\0=\3\n\0023\3\v\0=\3\f\0024\3\3\0005\4\r\0>\4\1\3=\3\14\2=\2\16\1B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\3\ttext\18File Explorer\15text_align\vcenter\rfiletype\rNvimTree\18custom_filter\0\26diagnostics_indicator\0\19name_formatter\0\1\0\26\22left_trunc_marker\bÔÇ®\fsort_by\14directory!diagnostics_update_in_insert\2\16diagnostics\bcoc\rtab_size\3\18\20separator_style\nslant\24show_tab_indicators\2\16color_icons\2\tmode\fbuffers\28show_buffer_close_icons\2\18close_command\16bdelete! %d\25enforce_regular_tabs\1\24right_mouse_command\16bdelete! %d\22buffer_close_icon\bÔôï\20max_name_length\3\18\15close_icon\bÔÄç\22show_buffer_icons\2\fnumbers\fordinal\24persist_buffer_sort\2\23right_trunc_marker\bÔÇ©\22max_prefix_length\3\15\23left_mouse_command\14buffer %d\27always_show_bufferline\2\20show_close_icon\2\19indicator_icon\b‚ñé\18modified_icon\b‚óè\nsetup\15bufferline\frequire\18termguicolors\bopt\bvim\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: rainbow
time([[Config for rainbow]], true)
try_loadstring("\27LJ\2\0020\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0\19rainbow_active\6g\bvim\0", "config", "rainbow")
time([[Config for rainbow]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\2(\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\revilline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: vim-auto-save
time([[Config for vim-auto-save]], true)
try_loadstring("\27LJ\2\2µ\1\0\0\2\0\a\0\0176\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0K\0\1\0 auto_save_write_all_buffers\1\3\0\0\16InsertLeave\16TextChanged\21auto_save_events\21auto_save_silent\14auto_save\6g\bvim\0", "config", "vim-auto-save")
time([[Config for vim-auto-save]], false)
-- Config for: coc.nvim
time([[Config for coc.nvim]], true)
try_loadstring("\27LJ\2\2ß\3\0\0\2\0\6\0\t6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\4\0'\1\5\0B\0\2\1K\0\1\0¯\1        augroup mygroup\n            autocmd!\n            autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')\n            autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')\n        augroup end\n    \bcmd\1\n\0\0\20coc-sumneko-lua\rcoc-json\14coc-cmake\15coc-clangd\16coc-pyright\vcoc-go\rcoc-yaml\18coc-highlight\15coc-vimlsp\26coc_global_extensions\6g\bvim\0", "config", "coc.nvim")
time([[Config for coc.nvim]], false)
-- Config for: defx.nvim
time([[Config for defx.nvim]], true)
try_loadstring("\27LJ\2\2ò\24\0\0\2\0\5\0\t6\0\0\0009\0\1\0)\1\2\0=\1\2\0006\0\0\0009\0\3\0'\1\4\0B\0\2\1K\0\1\0Õ\23      func! StartDefx() abort\n          let s:arg = argv(0)\n          if isdirectory(s:arg)\n              return s:arg\n          else\n              return fnamemodify(s:arg, ':h')\n          endif\n      endfunc\n      autocmd VimEnter * Defx `StartDefx()` -focus -resume -buffer-name=tab`'defx' . tabpagenr()` -no-focus -search=`expand('%:p')`\n      function! s:defx_mappings() abort\n          setlocal signcolumn=no\n          nnoremap <silent><buffer><expr> <cr> defx#is_directory() ? defx#do_action('open_or_close_tree') : defx#do_action('multi', ['drop'])\n          nnoremap <silent><buffer><expr> <2-LeftMouse> defx#is_directory() ? defx#do_action('open_or_close_tree') : defx#do_action('multi', ['drop'])\n          nnoremap <silent><buffer><expr> o defx#do_action('open')\n          nnoremap <silent><buffer><expr> h defx#do_action('cd', ['..'])\n          nnoremap <silent><buffer><expr> ~ defx#do_action('cd')\n          nnoremap <silent><buffer><expr> yy defx#do_action('copy')\n          nnoremap <silent><buffer><expr> dd defx#do_action('remove')\n          nnoremap <silent><buffer><expr> pp defx#do_action('paste')\n          nnoremap <silent><buffer><expr> K defx#do_action('new_directory')\n          nnoremap <silent><buffer><expr> N defx#do_action('new_file')\n          nnoremap <silent><buffer><expr> R defx#do_action('rename')\n          nnoremap <silent><buffer><expr> . defx#do_action('toggle_ignored_files')\n          nnoremap <silent><buffer><expr> cd defx#do_action('change_vim_cwd')\n      endfunction\n      autocmd FileType defx call s:defx_mappings()\n      autocmd BufWritePost * call defx#redraw()\n      call defx#custom#option('_', {\n                  \\ 'columns': 'indent:indent:git:icons:filename',\n                  \\ 'winwidth': 40,\n                  \\ 'split': 'vertical',\n                  \\ 'direction': 'topleft',\n                  \\ 'listed': 1,\n                  \\ 'show_ignored_files': 0,\n                  \\ 'root_marker': '‚â° ',\n                  \\ 'ignored_files':\n                  \\     '.mypy_cache,.pytest_cache,.git,.hg,.svn,.stversions'\n                  \\   . ',__pycache__,.sass-cache,*.egg-info,.DS_Store,*.pyc,*.swp'\n                  \\ })\n      call defx#custom#column('filename', {\n                  \\ 'min_width': 10,\n                  \\ 'max_width': 20,\n                  \\ })\n      call defx#custom#column('icon', {\n                  \\ 'directory_icon': '‚ñ∏',\n                  \\ 'opened_icon': '‚ñæ',\n                  \\ 'root_icon': ' ',\n                  \\ })\n      call defx#custom#column('git', 'indicators', {\n                  \\ 'Modified'  : 'M',\n                  \\ 'Staged'    : '‚úö',\n                  \\ 'Untracked' : '‚ú≠',\n                  \\ 'Renamed'   : '‚ûú',\n                  \\ 'Unmerged'  : '‚ïê',\n                  \\ 'Ignored'   : '‚òí',\n                  \\ 'Deleted'   : '‚úñ',\n                  \\ 'Unknown'   : '?'\n                  \\ })\n      autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 0 && exists('b:defx') | quit | endif\n    \bcmd\29defx_icons_column_length\6g\bvim\0", "config", "defx.nvim")
time([[Config for defx.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
