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

return require('packer').startup(function()

    use 'wbthomason/packer.nvim'

    use({
        'glepnir/galaxyline.nvim',
        branch = 'main',
        config = function()
          require('evilline')
        end,
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    })

    -- use({
	-- 	'NTBBloodbath/doom-one.nvim',
	-- 	config = function()
	-- 		require('doom-one').setup({
	-- 			cursor_coloring = false,
	-- 			terminal_colors = false,
	-- 			italic_comments = false,
	-- 			enable_treesitter = true,
	-- 			transparent_background = false,
	-- 			pumblend = {
	-- 				enable = true,
	-- 				transparency_amount = 20,
	-- 			},
	-- 			plugins_integrations = {
	-- 				neorg = true,
	-- 				barbar = true,
	-- 				bufferline = false,
	-- 				gitgutter = false,
	-- 				gitsigns = true,
	-- 				telescope = false,
	-- 				neogit = true,
	-- 				nvim_tree = true,
	-- 				dashboard = true,
	-- 				startify = true,
	-- 				whichkey = true,
	-- 				indent_blankline = true,
	-- 				vim_illuminate = true,
	-- 				lspsaga = false,
	-- 			},
	-- 		})
	-- 	end,
	-- })

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
		end
	}

    use {'neoclide/coc.nvim', branch = 'release'}
    use {'preservim/tagbar'}
    use {'fatih/vim-go', run = ':GoUpdateBinaries'}
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
    use {'Shougo/defx.nvim', run = ':UpdateRemotePlugins' }
    use {'kristijanhusak/defx-icons'}
    use {'ludovicchabant/vim-gutentags'}
    -- use {'jiangmiao/auto-pairs'}
    use {'907th/vim-auto-save'}
    use {'luochen1990/rainbow'}
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
    use {
        "SmiteshP/nvim-navic",
        requires = "neovim/nvim-lspconfig"
    }
    use 'mfussenegger/nvim-dap'
    use 'ryanoasis/vim-devicons'
    use 'Mofiqul/dracula.nvim'

    if packer_bootstrap then
        require('packer').sync()
    end
end)
