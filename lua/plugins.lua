vim.cmd([[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'

  use({
    'glepnir/galaxyline.nvim',
    branch = 'main',
    config = function()
      require('evilline')
    end,
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  })

  use {'akinsho/bufferline.nvim',
  tag = "v2.*",
  requires = 'kyazdani42/nvim-web-devicons',
  config = function()
    vim.opt.termguicolors = true
    require('bufferline').setup {
      options = {
        mode = "buffers", -- set to "tabs" to only show tabpages instead
        numbers = "ordinal", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
        --- @deprecated, please specify numbers as a function to customize the styling
        -- number_style = "superscript", --| "subscript" | "" | { "none", "subscript" }, -- buffer_id at index 1, ordinal at index 2
        close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
        right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
        left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
        middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
        -- NOTE: this plugin is designed with this icon in mind,
        -- and so changing this is NOT recommended, this is intended
        -- as an escape hatch for people who cannot bear it for whatever reason
        indicator_icon = '▎',
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        --- name_formatter can be used to change the buffer's label in the bufferline.
        --- Please note some names can/will break the
        --- bufferline so use this at your discretion knowing that it has
        --- some limitations that will *NOT* be fixed.
        name_formatter = function(buf)  -- buf contains a "name", "path" and "bufnr"
          -- remove extension from markdown files for example
          if buf.name:match('%.md') then
            return vim.fn.fnamemodify(buf.name, ':t:r')
          end
        end,
        max_name_length = 18,
        max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
        tab_size = 18,
        diagnostics = "coc", --false | "nvim_lsp" | "coc",
        diagnostics_update_in_insert = true,
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          return "("..count..")"
        end,
        -- NOTE: this will be called a lot so don't do any heavy processing here
        custom_filter = function(buf_number, buf_numbers)
          -- filter out filetypes you don't want to see
          if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
            return true
          end
          -- filter out by buffer name
          if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
            return true
          end
          -- filter out based on arbitrary rules
          -- e.g. filter out vim wiki buffer from tabline in your work repo
          if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
            return true
          end
          -- filter out by it's index number in list (don't show first buffer)
          if buf_numbers[1] ~= buf_number then
            return true
          end
        end,
        offsets = {{filetype = "NvimTree", text = "File Explorer", text_align="center"}}, -- | function , text_align = "left" | "center" | "right"}},
        color_icons = true,
        show_buffer_icons = true, --| false, -- disable filetype icons for buffers
        show_buffer_close_icons = true, --| false,
        show_close_icon = true, --| false,
        show_tab_indicators = true, -- | false,
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        -- can also be a table containing 2 custom separators
        -- [focused and unfocused]. eg: { '|', '|' }
        separator_style = "slant", --| "slant" | "thick" | "thin" | { 'any', 'any' },
        enforce_regular_tabs = false, --| true,
        always_show_bufferline = true, -- | false,
        sort_by =  'directory',  -- ,'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs' | function(buffer_a, buffer_b)
        --   -- add custom logic
        --   return buffer_a.modified > buffer_b.modified
        -- end
      }
    }
  end}

  use {'neoclide/coc.nvim', branch = 'release',
  config = function ()
    vim.g.coc_global_extensions = {
      'coc-sumneko-lua',
      'coc-json',
      'coc-cmake',
      'coc-clangd',
      'coc-pyright',
      'coc-go',
      'coc-yaml',
      'coc-highlight',
      'coc-vimlsp'
    }
    vim.cmd([[
        augroup mygroup
            autocmd!
            autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
            autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
        augroup end
    ]])
  end}

  use {'liuchengxu/vista.vim',
  config = function ()
    vim.g.vista_icon_indent = {"╰─▸ ", "├─▸ "}
    vim.g.vista_default_executive = 'ctags'
    vim.g.vista_executive_for = {
      cpp = 'coc',
      php = 'coc',
      go = 'coc',
      yaml = 'coc',
      lua = 'coc',
      json = 'coc',
      -- cmake = 'coc',
    }
    vim.g.vista_ctags_cmd = {
      haskell = 'hasktags -x -o - -c',
    }
    vim.g.vista_fzf_preview = {'right:50%'}
    vim.g['vista#renderer#enable_icon'] = 1
    vim.g['vista#renderer#icons']['function'] = [[\uf794]]
    vim.g['vista#renderer#icons']['variable'] = [[\uf71b]]
    vim.cmd("command! -nargs=0 Format :call CocActionAsync('format')")
  end}

  -- use {'preservim/tagbar'}
  use {'fatih/vim-go', run = ':GoUpdateBinaries',
  config = function ()
    vim.g.go_highlight_types = 1
    vim.g.go_highlight_fields = 1
    vim.g.go_highlight_functions = 1
    vim.g.go_highlight_function_calls = 1
    vim.g.go_highlight_operators = 1
    vim.g.go_highlight_extra_types = 1
    vim.g.go_term_mode = ":rightbelow split"
    vim.g.go_term_enabled = 1
    vim.g.go_term_reuse = 1
    vim.g.go_term_width = 50
    vim.g.go_term_height = 10
    vim.g.go_term_close_on_exit = 0
    vim.g.go_list_type = "quickfix"
  end}

  -- use {'github/copilot.vim'}
  use {'antoinemadec/FixCursorHold.nvim'}
  use {'junegunn/fzf', run = 'fzf#install()'}
  use {'junegunn/fzf.vim'}
  use {'mhinz/vim-startify'}
  -- use {'vim-airline/vim-airline'}
  -- use {'vim-airline/vim-airline-themes'}
  use {'brooth/far.vim'}
  use {'tpope/vim-surround'}
  use {'tpope/vim-commentary'}
  use {'buoto/gotests-vim'}

  use {'Shougo/defx.nvim', run = ':UpdateRemotePlugins',
  config = function ()
    vim.g.defx_icons_column_length = 2
    vim.cmd([[
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
    ]])
  end}

  use {'kristijanhusak/defx-icons'}
  use {'ludovicchabant/vim-gutentags',
  config = function ()
    vim.g.gutentags_project_root = {'.root', '.svn', '.git', '.project'}
    vim.g.gutentags_ctags_tagfile = '.tags'
    vim.cmd([[
    let s:vim_tags = expand('~/.cache/tags')
    let g:gutentags_cache_dir = s:vim_tags
    if !isdirectory(s:vim_tags)
      silent! call mkdir(s:vim_tags, 'p')
    endif
    ]])
    vim.g.gutentags_ctags_extra_args = {'--fields=+niazS', '--extra=+q', '--c++-kinds=+pxI', '--c-kinds=+px', '--output-format=e-ctags'}
  end}

  --use {'jiangmiao/auto-pairs',
  --config = function ()
  --  vim.g.AutoPairsShortcutJump = '<m-n>'
  --end}

  use {'907th/vim-auto-save',
  config = function ()
    vim.g.auto_save = 1
    vim.g.auto_save_silent = 1
    vim.g.auto_save_events = {"InsertLeave", "TextChanged"}
    vim.g.auto_save_write_all_buffers = 1
  end}

  use {'luochen1990/rainbow',
  config = function ()
    vim.g.rainbow_active = 1
  end}

  use {'airblade/vim-gitgutter'}
  use {'jackguo380/vim-lsp-cxx-highlight'}
  use {'vim-autoformat/vim-autoformat'}
  use {'Yggdroot/indentLine'}
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"
  use "kyazdani42/nvim-web-devicons"
  use {"rhysd/accelerated-jk"}
  use {"akinsho/toggleterm.nvim", tag = 'v2.*', config = function()
    require("toggleterm").setup()
  end}
  use {"SmiteshP/nvim-navic", requires = "neovim/nvim-lspconfig"}
  use 'mfussenegger/nvim-dap'
  use 'ryanoasis/vim-devicons'
  use 'Mofiqul/dracula.nvim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
