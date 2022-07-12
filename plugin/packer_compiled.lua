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
local package_path_str = "/Users/walker/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/walker/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/walker/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/walker/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/walker/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  ["accelerated-jk"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/accelerated-jk",
    url = "https://github.com/rhysd/accelerated-jk"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\ng\0\1\5\0\a\0\0149\1\0\0\18\3\1\0009\1\1\1'\4\2\0B\1\3\2\15\0\1\0X\2\6Ä6\1\3\0009\1\4\0019\1\5\0019\3\0\0'\4\6\0D\1\3\0K\0\1\0\t:t:r\16fnamemodify\afn\bvim\t%.md\nmatch\tname\31\0\4\a\0\2\0\5'\4\0\0\18\5\0\0'\6\1\0&\4\6\4L\4\2\0\6)\6(Ç\2\0\2\5\0\n\0%6\2\0\0009\2\1\0028\2\0\0029\2\2\2\6\2\3\0X\2\2Ä+\2\2\0L\2\2\0006\2\0\0009\2\4\0029\2\5\2\18\4\0\0B\2\2\2\6\2\6\0X\2\2Ä+\2\2\0L\2\2\0006\2\0\0009\2\4\0029\2\a\2B\2\1\2\a\2\b\0X\2\bÄ6\2\0\0009\2\1\0028\2\0\0029\2\2\2\6\2\t\0X\2\2Ä+\2\2\0L\2\2\0:\2\1\1\4\2\0\0X\2\2Ä+\2\2\0L\2\2\0K\0\1\0\twiki\16<work-repo>\vgetcwd\30<buffer-name-I-dont-want>\fbufname\afn\30<i-dont-want-to-see-this>\rfiletype\abo\bvim¨\6\1\0\6\0\17\0\0236\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\15\0005\3\6\0003\4\a\0=\4\b\0033\4\t\0=\4\n\0033\4\v\0=\4\f\0034\4\3\0005\5\r\0>\5\1\4=\4\14\3=\3\16\2B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\3\ttext\18File Explorer\rfiletype\rNvimTree\15text_align\vcenter\18custom_filter\0\26diagnostics_indicator\0\19name_formatter\0\1\0\26\24right_mouse_command\16bdelete! %d\19indicator_icon\b‚ñé\tmode\fbuffers!diagnostics_update_in_insert\2\18modified_icon\b‚óè\16diagnostics\bcoc\rtab_size\3\18\22max_prefix_length\3\15\20max_name_length\3\18\20show_close_icon\2\28show_buffer_close_icons\2\23left_mouse_command\14buffer %d\23right_trunc_marker\bÔÇ©\18close_command\16bdelete! %d\fnumbers\fordinal\16color_icons\2\15close_icon\bÔÄç\22show_buffer_icons\2\22buffer_close_icon\bÔôï\22left_trunc_marker\bÔÇ®\24show_tab_indicators\2\24persist_buffer_sort\2\20separator_style\nslant\25enforce_regular_tabs\1\27always_show_bufferline\2\fsort_by\14directory\nsetup\15bufferline\frequire\18termguicolors\bopt\bvim\0" },
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["defx-icons"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/defx-icons",
    url = "https://github.com/kristijanhusak/defx-icons"
  },
  ["defx.nvim"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/defx.nvim",
    url = "https://github.com/Shougo/defx.nvim"
  },
  dracula = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/dracula",
    url = "https://github.com/dracula/vim"
  },
  ["far.vim"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/far.vim",
    url = "https://github.com/brooth/far.vim"
  },
  fzf = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n(\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\revilline\frequire\0" },
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/galaxyline.nvim",
    url = "https://github.com/glepnir/galaxyline.nvim"
  },
  ["gotests-vim"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/gotests-vim",
    url = "https://github.com/buoto/gotests-vim"
  },
  indentLine = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/indentLine",
    url = "https://github.com/Yggdroot/indentLine"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  rainbow = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/rainbow",
    url = "https://github.com/luochen1990/rainbow"
  },
  tagbar = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/tagbar",
    url = "https://github.com/preservim/tagbar"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-auto-save"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/vim-auto-save",
    url = "https://github.com/907th/vim-auto-save"
  },
  ["vim-autoformat"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/vim-autoformat",
    url = "https://github.com/vim-autoformat/vim-autoformat"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/vim-go",
    url = "https://github.com/fatih/vim-go"
  },
  ["vim-gutentags"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/vim-gutentags",
    url = "https://github.com/ludovicchabant/vim-gutentags"
  },
  ["vim-lsp-cxx-highlight"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/vim-lsp-cxx-highlight",
    url = "https://github.com/jackguo380/vim-lsp-cxx-highlight"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/vim-startify",
    url = "https://github.com/mhinz/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/walker/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\ng\0\1\5\0\a\0\0149\1\0\0\18\3\1\0009\1\1\1'\4\2\0B\1\3\2\15\0\1\0X\2\6Ä6\1\3\0009\1\4\0019\1\5\0019\3\0\0'\4\6\0D\1\3\0K\0\1\0\t:t:r\16fnamemodify\afn\bvim\t%.md\nmatch\tname\31\0\4\a\0\2\0\5'\4\0\0\18\5\0\0'\6\1\0&\4\6\4L\4\2\0\6)\6(Ç\2\0\2\5\0\n\0%6\2\0\0009\2\1\0028\2\0\0029\2\2\2\6\2\3\0X\2\2Ä+\2\2\0L\2\2\0006\2\0\0009\2\4\0029\2\5\2\18\4\0\0B\2\2\2\6\2\6\0X\2\2Ä+\2\2\0L\2\2\0006\2\0\0009\2\4\0029\2\a\2B\2\1\2\a\2\b\0X\2\bÄ6\2\0\0009\2\1\0028\2\0\0029\2\2\2\6\2\t\0X\2\2Ä+\2\2\0L\2\2\0:\2\1\1\4\2\0\0X\2\2Ä+\2\2\0L\2\2\0K\0\1\0\twiki\16<work-repo>\vgetcwd\30<buffer-name-I-dont-want>\fbufname\afn\30<i-dont-want-to-see-this>\rfiletype\abo\bvim¨\6\1\0\6\0\17\0\0236\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\15\0005\3\6\0003\4\a\0=\4\b\0033\4\t\0=\4\n\0033\4\v\0=\4\f\0034\4\3\0005\5\r\0>\5\1\4=\4\14\3=\3\16\2B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\3\ttext\18File Explorer\rfiletype\rNvimTree\15text_align\vcenter\18custom_filter\0\26diagnostics_indicator\0\19name_formatter\0\1\0\26\24right_mouse_command\16bdelete! %d\19indicator_icon\b‚ñé\tmode\fbuffers!diagnostics_update_in_insert\2\18modified_icon\b‚óè\16diagnostics\bcoc\rtab_size\3\18\22max_prefix_length\3\15\20max_name_length\3\18\20show_close_icon\2\28show_buffer_close_icons\2\23left_mouse_command\14buffer %d\23right_trunc_marker\bÔÇ©\18close_command\16bdelete! %d\fnumbers\fordinal\16color_icons\2\15close_icon\bÔÄç\22show_buffer_icons\2\22buffer_close_icon\bÔôï\22left_trunc_marker\bÔÇ®\24show_tab_indicators\2\24persist_buffer_sort\2\20separator_style\nslant\25enforce_regular_tabs\1\27always_show_bufferline\2\fsort_by\14directory\nsetup\15bufferline\frequire\18termguicolors\bopt\bvim\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\n(\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\revilline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
