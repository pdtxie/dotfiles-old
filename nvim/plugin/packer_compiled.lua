-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/pdt/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/pdt/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/pdt/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/pdt/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/pdt/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["Comment.nvim"] = {
    config = { "\27LJ\2\në\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\ropleader\1\0\2\nblock\agb\tline\agl\ftoggler\1\0\2\nblock\bgbb\tline\bgll\1\0\1\vignore\a^$\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17config.alpha\frequire\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["barbar.nvim"] = {
    config = { "\27LJ\2\nJ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\14auto_hide\2\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  catppuccin = {
    config = { "\27LJ\2\n¬\5\0\0\a\0'\00086\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\b\0005\3\a\0=\3\t\0025\3\n\0=\3\v\0025\3\23\0005\4\21\0005\5\r\0005\6\f\0=\6\14\0055\6\15\0=\6\16\0055\6\17\0=\6\18\0055\6\19\0=\6\20\5=\5\22\4=\4\24\3=\3\25\2B\0\2\0016\0\0\0009\0\26\0'\2\27\0B\0\2\0016\0\4\0'\2\28\0B\0\2\0029\0\29\0B\0\1\0026\1\0\0009\1\30\0019\1\31\1)\3\0\0'\4 \0005\5\"\0009\6!\0=\6#\5B\1\4\0016\1\0\0009\1\30\0019\1\31\1)\3\0\0'\4$\0005\5&\0009\6%\0=\6#\5B\1\4\1K\0\1\0\1\0\0\ngreen\19StartLogoGreen\afg\1\0\0\tblue\18StartLogoBlue\16nvim_set_hl\bapi\16get_palette\24catppuccin.palettesã\1\t\t\tcolorscheme catppuccin\n\t\t\t\"highlight clear SpellBad\n\t\t\t\"highlight SpellBad gui=undercurl guisp=#453c3c\n\t\t\thi! link Todo Comment\n\t\t\t\bcmd\17integrations\15native_lsp\1\0\0\15underlines\1\0\0\16information\1\2\0\0\14undercurl\rwarnings\1\2\0\0\14undercurl\nhints\1\2\0\0\14undercurl\verrors\1\0\0\1\2\0\0\14undercurl\17dim_inactive\1\0\1\fenabled\2\fcompile\1\0\0\1\0\1\fenabled\2\nsetup\15catppuccin\frequire\nmocha\23catppuccin_flavour\6g\bvim\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["document-color.nvim"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/document-color.nvim",
    url = "https://github.com/mrshmllow/document-color.nvim"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  firenvim = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/firenvim",
    url = "https://github.com/glacambre/firenvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["inc-rename.nvim"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/inc-rename.nvim",
    url = "https://github.com/smjonas/inc-rename.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nw\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\31show_current_context_start\2\25show_current_context\2\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/lsp-status.nvim",
    url = "https://github.com/nvim-lua/lsp-status.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0056\0\0\0'\2\1\0B\0\2\0029\0\2\0D\0\1\0\vstatus\15lsp-status\frequireY\0\0\1\0\5\0\0146\0\0\0009\0\1\0009\0\2\0\6\0\3\0X\0\5Ä6\0\0\0009\0\1\0009\0\2\0\a\0\4\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\thelp\vnofile\fbuftype\6o\bvim˛\1\0\0\a\0\n\0,6\0\0\0009\0\1\0009\0\2\0\19\0\0\0\15\0\0\0X\1\18Ä6\1\0\0009\1\1\0019\1\3\1)\2\0\0\1\2\1\0X\1\nÄ6\1\0\0009\1\1\0019\1\3\0016\2\0\0009\2\1\0029\2\4\2\4\1\2\0X\1\2Ä'\1\5\0X\2\3Ä'\1\6\0X\2\1Ä'\1\a\0'\2\b\0006\3\t\0006\5\0\0009\5\1\0059\5\3\5)\6\0\0\1\6\5\0X\5\5Ä6\5\0\0009\5\1\0059\5\3\5\14\0\5\0X\6\3Ä6\5\0\0009\5\1\0059\5\4\5B\3\2\2&\1\3\1L\1\2\0\rtostring\a: \vSpaces\tTabs\16Tabs/Spaces\ftabstop\15shiftwidth\14expandtab\6o\bvim\21\0\1\2\1\0\0\3-\1\0\0008\1\0\1L\1\2\0\2¿Ã\1\0\0\v\0\v\0\0294\0\0\0006\1\0\0009\1\1\0019\1\2\1B\1\1\0026\2\3\0\18\4\1\0B\2\2\4X\5\rÄ6\a\0\0009\a\1\a9\a\4\a)\t\0\0009\n\5\6B\a\3\2\15\0\a\0X\b\5Ä6\a\6\0009\a\a\a\18\t\0\0009\n\b\6B\a\3\1E\5\3\3R\5Ò\1276\2\6\0009\2\t\2\18\4\0\0'\5\n\0D\2\3\0\a, \vconcat\tname\vinsert\ntable\aid\20buf_is_attached\vipairs\23get_active_clients\blsp\bvimÊ\a\1\0\r\0004\0Z6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0013\0\4\0003\1\5\0005\2\6\0003\3\a\0003\4\b\0003\5\t\0006\6\0\0'\b\n\0B\6\2\0029\6\v\0065\b\19\0005\t\f\0005\n\r\0=\n\14\t5\n\15\0=\n\16\t5\n\17\0=\n\18\t=\t\20\b5\t\22\0004\n\3\0005\v\21\0>\v\1\n=\n\23\t5\n\24\0005\v\25\0005\f\26\0=\f\27\v>\v\4\n=\n\28\t4\n\0\0=\n\29\t4\n\5\0005\v\30\0006\f\31\0009\f \f=\f!\v=\1\"\v>\v\1\n5\v#\0=\4!\v=\1\"\v>\v\2\n5\v$\0>\3\1\v=\1\"\v>\v\3\n>\5\4\n=\n%\t5\n&\0>\0\2\n=\n'\t4\n\3\0005\v(\0005\f)\0=\f*\v>\v\1\n5\v+\0005\f,\0=\f*\v>\v\2\n=\n-\t=\t.\b5\t0\0005\n/\0=\n\23\t4\n\0\0=\n\28\t4\n\0\0=\n\29\t4\n\0\0=\n%\t4\n\0\0=\n'\t4\n\0\0=\n-\t=\t1\b4\t\0\0=\t2\b4\t\0\0=\t3\bB\6\2\0012\0\0ÄK\0\1\0\15extensions\ftabline\22inactive_sections\1\0\0\1\2\0\0\rfilename\rsections\14lualine_z\1\0\2\tleft\5\nright\5\1\2\0\0\rlocation\14separator\1\0\1\tleft\5\1\2\0\0\rprogress\14lualine_y\1\2\0\0\rfiletype\14lualine_x\1\0\0\1\2\0\0\17o:fileformat\tcond\bfmt\nupper\vstring\1\2\0\0\15o:encoding\14lualine_c\14lualine_b\fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\4\0\0\rfilename\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\1\2\0\0\17coc-explorer\25component_separators\1\0\2\tleft\6|\nright\6|\23section_separators\1\0\2\tleft\5\nright\5\1\0\4\25always_divide_middle\1\ntheme\15catppuccin\18icons_enabled\2\18global_status\2\nsetup\flualine\0\0\0\1\0\3\tunix\aLF\bmac\aCR\bdos\nCR-LF\0\0\1\0\2\18show_filename\1\16diagnostics\1\vconfig\15lsp-status\frequire\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  neogen = {
    config = { "\27LJ\2\nP\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\19snippet_engine\nvsnip\nsetup\vneogen\frequire\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/neogen",
    url = "https://github.com/danymat/neogen"
  },
  neogit = {
    config = { "\27LJ\2\n]\0\0\5\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\1K\0\1\0\17integrations\1\0\0\1\0\1\rdiffview\2\nsetup\vneogit\frequire\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  neorg = {
    config = { "\27LJ\2\n≥\2\0\0\a\0\18\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\16\0005\3\6\0005\4\4\0005\5\3\0=\5\5\4=\4\a\0035\4\b\0004\5\0\0=\5\5\4=\4\t\0034\4\0\0=\4\n\0035\4\14\0005\5\f\0005\6\v\0=\6\r\5=\5\5\4=\4\15\3=\3\17\2B\0\2\1K\0\1\0\tload\1\0\0\21core.norg.dirman\1\0\0\15workspaces\1\0\0\1\0\2\twork\17~/notes/work\thome\17~/notes/home\18core.defaults!core.integrations.treesitter\1\0\0\25core.norg.completion\1\0\0\vconfig\1\0\0\1\0\1\vengine\rnvim-cmp\nsetup\nneorg\frequire\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/neorg",
    url = "https://github.com/nvim-neorg/neorg"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n›\2\0\0\4\0\14\0\0246\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0014\0\0\0005\1\a\0005\2\b\0>\2\2\1=\1\6\0005\1\n\0005\2\v\0>\2\2\1=\1\t\0006\1\0\0'\3\f\0B\1\2\0029\1\r\1\18\3\0\0B\1\2\1K\0\1\0\17set_mappings\21neoscroll.config\1\4\0\0#vim.api.nvim_win_get_height(0)\ttrue\b100\1\2\0\0\vscroll\15<PageDown>\1\4\0\0$-vim.api.nvim_win_get_height(0)\ttrue\b100\1\2\0\0\vscroll\r<PageUp>\rmappings\1\0\0\1\n\0\0\n<C-u>\n<C-d>\n<C-b>\n<C-f>\n<C-y>\n<C-e>\azt\azz\azb\nsetup\14neoscroll\frequire\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2p\0\2\n\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\4\0\0009\4\1\0049\4\3\4\18\6\0\0+\a\2\0+\b\2\0+\t\2\0B\4\5\2\18\5\1\0+\6\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvim;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimÿ\1\0\2\b\0\r\0\0266\2\0\0'\4\1\0B\2\2\0029\2\2\0025\4\3\0B\2\2\2\18\4\0\0\18\5\1\0B\2\3\0026\3\4\0009\3\5\0039\5\6\2'\6\a\0005\a\b\0B\3\4\2'\4\t\0:\5\1\3'\6\t\0&\4\6\4=\4\6\2'\4\v\0:\5\2\3'\6\f\0&\4\6\4=\4\n\2L\2\2\0\6)\n    (\tmenu\6 \1\0\1\14trimempty\1\a%s\tkind\nsplit\bvim\1\0\2\tmode\16symbol_text\rmaxwidth\0032\15cmp_format\flspkind\frequireÂ\1\0\1\5\3\b\1 -\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\22Ä6\1\2\0009\1\3\0019\1\4\1)\3\1\0B\1\2\2\t\1\0\0X\1\5Ä-\1\1\0'\3\5\0'\4\6\0B\1\3\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\a\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\1¿\0¿\rcomplete\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\21select_next_item\fvisible\2®\1\0\0\4\2\a\1\21-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\vÄ6\0\2\0009\0\3\0009\0\4\0)\2ˇˇB\0\2\2\t\0\0\0X\0\4Ä-\0\1\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\2¿\1¿\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2Ç\a\1\0\f\0003\0g3\0\0\0003\1\1\0006\2\2\0'\4\3\0B\2\2\0029\3\4\0025\5\b\0005\6\6\0003\a\5\0=\a\a\6=\6\t\0055\6\v\0005\a\n\0=\a\f\6=\6\r\0055\6\15\0005\a\14\0=\a\16\0063\a\17\0=\a\18\6=\6\19\0055\6\23\0009\a\20\0029\a\21\a5\t\22\0B\a\2\2=\a\24\0069\a\20\0023\t\25\0005\n\26\0B\a\3\2=\a\27\0069\a\20\0023\t\28\0005\n\29\0B\a\3\2=\a\30\6=\6\20\0054\6\0\0=\6\r\0059\6\31\0029\6 \0064\b\5\0005\t!\0>\t\1\b5\t\"\0>\t\2\b5\t#\0>\t\3\b5\t$\0>\t\4\bB\6\2\2=\6 \5B\3\2\0019\3\4\0029\3%\3'\5&\0005\6(\0009\a\20\0029\a'\a9\a%\aB\a\1\2=\a\20\0064\a\3\0005\b)\0>\b\1\a=\a \6B\3\3\0019\3\4\0029\3%\3'\5*\0005\6+\0009\a\20\0029\a'\a9\a%\aB\a\1\2=\a\20\0069\a\31\0029\a \a4\t\3\0005\n,\0>\n\1\t4\n\3\0005\v-\0>\v\1\nB\a\3\2=\a \6B\3\3\0016\3\2\0'\5.\0B\3\2\0026\4\2\0'\6\3\0B\4\2\0029\5/\4\18\a\5\0009\0050\5'\b1\0009\t2\3B\t\1\0A\5\2\0012\0\0ÄK\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\vpreset\6/\fcmdline\1\0\1\tname\nspell\1\0\1\tname\tpath\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\0\1\0\1\vselect\1\fconfirm\fmapping\15formatting\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\vwindow\15completion\1\0\0\1\0\3\17winhighlight/Normal:Pmenu,FloatBorder:Pmenu,Search:None\17side_padding\3\0\15col_offset\3˝ˇˇˇ\15\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0\0\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-code-action-menu"] = {
    config = { "\27LJ\2\nH\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\frounded#code_action_menu_window_border\6g\bvim\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/nvim-code-action-menu",
    url = "https://github.com/weilbith/nvim-code-action-menu"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n¯\1\0\1\t\0\16\0\"'\1\0\0009\2\1\0006\3\2\0009\3\3\0039\3\1\0039\3\4\3\5\2\3\0X\2\1Ä'\1\5\0009\2\1\0006\3\2\0009\3\3\0039\3\1\0039\3\6\3\5\2\3\0X\2\1Ä'\1\a\0009\2\1\0006\3\2\0009\3\3\0039\3\1\0039\3\b\3\5\2\3\0X\2\1Ä'\1\t\0006\2\n\0009\2\v\2'\4\f\0\18\5\1\0009\6\r\0009\a\14\0009\b\15\0B\2\6\2L\2\2\0\fmessage\vsource\tcode\20%s  [%s][%s] %s\vformat\vstring\bÔÅö\tINFO\bÔ†µ\tHINT\bÔÅ±\tWARN\15diagnostic\bvim\rseverity\bÔÅó©\1\0\2\6\0\b\0\23\n\1\0\0X\2\6Ä6\2\0\0009\2\1\2\18\4\1\0B\2\2\2\15\0\2\0X\3\aÄ6\2\0\0009\2\2\0029\2\3\0029\2\4\2B\2\1\1+\2\0\0L\2\2\0006\2\0\0009\2\2\0029\2\5\0029\2\6\2:\4\1\0015\5\a\0B\2\3\1K\0\1\0\1\0\1\vborder\frounded\21preview_location\tutil\nhover\bbuf\blsp\16tbl_isempty\bvimÉ\1\0\0\a\1\6\0\r6\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0026\1\0\0009\1\1\0019\1\4\1)\3\0\0'\4\5\0\18\5\0\0-\6\0\0D\1\5\0\2¿\28textDocument/definition\16buf_request\25make_position_params\tutil\blsp\bvimö\a\1\2\v\0)\0Ç\0019\2\0\0009\2\1\2\15\0\2\0X\3\6Ä6\2\2\0'\4\3\0B\2\2\0029\2\4\2\18\4\1\0B\2\2\0016\2\2\0'\4\5\0B\2\2\0029\2\6\0025\4\a\0005\5\b\0=\5\t\4\18\5\1\0B\2\3\0013\2\n\0003\3\v\0007\3\f\0005\3\r\0=\1\14\0036\4\15\0009\4\16\0049\4\17\4'\6\18\0'\a\19\0006\b\15\0009\b\20\b9\b\21\b9\b\22\b\18\t\3\0B\4\5\0016\4\15\0009\4\16\0049\4\17\4'\6\18\0'\a\23\0006\b\15\0009\b\20\b9\b\21\b9\b\24\b\18\t\3\0B\4\5\0016\4\15\0009\4\16\0049\4\17\4'\6\18\0'\a\25\0006\b\f\0\18\t\3\0B\4\5\0016\4\15\0009\4\16\0049\4\17\4'\6\18\0'\a\26\0006\b\15\0009\b\20\b9\b\21\b9\b\27\b\18\t\3\0B\4\5\0016\4\15\0009\4\16\0049\4\17\4'\6\18\0'\a\28\0006\b\15\0009\b\20\b9\b\21\b9\b\29\b\18\t\3\0B\4\5\0016\4\15\0009\4\16\0049\4\17\4'\6\18\0'\a\30\0006\b\15\0009\b\20\b9\b\21\b9\b\31\b\18\t\3\0B\4\5\0016\4\15\0009\4\16\0049\4\17\4'\6\18\0'\a \0'\b!\0\18\t\3\0B\4\5\0016\4\15\0009\4\16\0049\4\17\4'\6\18\0'\a\"\0006\b\15\0009\b\20\b9\b\21\b9\b#\b\18\t\3\0B\4\5\0016\4\15\0009\4\16\0049\4\17\4'\6\18\0'\a$\0006\b\15\0009\b\20\b9\b\21\b9\b%\b\18\t\3\0B\4\5\0016\4\15\0009\4\16\0049\4\17\4'\6\18\0'\a&\0006\b\2\0'\n'\0B\b\2\0029\b(\b\18\t\3\0B\4\5\0012\0\0ÄK\0\1\0\26open_code_action_menu\21code_action_menu\15<leader>ca\15references\agr\16code_action\14<space>ca\16:IncRename \14<space>rn\20type_definition\r<space>D\19signature_help\n<C-k>\19implementation\agi\6K\15definition\agd\16declaration\bbuf\blsp\agD\6n\bset\vkeymap\bvim\vbuffer\1\0\2\vsilent\2\fnoremap\2\tPeek\0\0\17handler_opts\1\0\1\vborder\frounded\1\0\1\tbind\2\14on_attach\18lsp_signature\15buf_attach\19document-color\frequire\18colorProvider\24server_capabilities=\0\2\6\2\1\0\n-\2\0\0009\2\0\2\18\4\0\0\18\5\1\0B\2\3\1-\2\1\0\18\4\0\0\18\5\1\0B\2\3\1K\0\1\0\0¿\3¿\14on_attachß\20\1\0\16\0]\0‘\0016\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0'\1\5\0=\1\4\0006\0\0\0009\0\3\0)\1c\0=\1\6\0006\0\0\0009\0\3\0)\1c\0=\1\a\0006\0\0\0009\0\3\0+\1\2\0=\1\b\0006\0\0\0009\0\3\0'\1\n\0=\1\t\0006\0\v\0'\2\f\0B\0\2\0029\0\r\0005\2\14\0B\0\2\0016\0\v\0'\2\15\0B\0\2\0029\0\r\0005\2\16\0B\0\2\0016\0\v\0'\2\17\0B\0\2\0029\0\r\0B\0\1\0016\0\v\0'\2\18\0B\0\2\0029\0\r\0B\0\1\0016\0\v\0'\2\19\0B\0\2\0029\0\r\0B\0\1\0016\0\v\0'\2\20\0B\0\2\0029\0\r\0005\2\21\0B\0\2\0016\0\v\0'\2\22\0B\0\2\0029\1\23\0005\3\24\0B\1\2\0019\1\25\0B\1\1\0015\1\26\0003\2\27\0006\3\28\0\18\5\1\0B\3\2\4H\6\rÄ'\b\29\0\18\t\6\0&\b\t\b'\t\30\0\18\n\6\0&\t\n\t6\n\0\0009\n\31\n9\n \n\18\f\b\0005\r!\0=\t\"\rB\n\3\1F\6\3\3R\6Ò\1276\3\0\0009\3#\0039\3\23\0035\5$\0005\6%\0005\a&\0=\a'\6=\2(\6=\6)\0055\6*\0005\a-\0006\b\0\0009\b#\b9\b+\b9\b,\b=\b.\a=\a+\6=\2(\6=\6/\5B\3\2\0016\3\0\0009\0030\0039\0031\0036\4\0\0009\0040\0049\0043\0046\6\0\0009\0060\0069\0061\0069\0064\0065\a5\0B\4\3\2=\0042\0036\3\0\0009\0030\0039\0031\0036\4\0\0009\0040\0049\0043\0046\6\0\0009\0060\0069\0061\0069\0067\0065\a8\0B\4\3\2=\0046\0033\0039\0006\4\v\0'\6:\0B\4\2\0029\4;\4B\4\1\0029\5<\0045\6>\0=\6=\0056\5\v\0'\a?\0B\5\2\0026\6@\0005\bA\0B\6\2\4X\t\6Ä8\v\n\0059\v\r\v5\rB\0=\4C\r=\3D\rB\v\2\1E\t\3\3R\t¯\1279\6E\0059\6\r\0065\bH\0006\t\0\0009\tF\t'\vG\0\18\f\4\0009\rC\0B\t\4\2=\tC\b=\3D\b5\tP\0005\nN\0005\vL\0005\fK\0006\rI\0006\15J\0B\r\2\2>\r\1\f=\fM\v=\vO\n=\nE\t=\tQ\bB\6\2\0019\6R\0059\6\r\0065\bS\0006\t\0\0009\tF\t'\vG\0\18\f\4\0009\rC\0B\t\4\2=\tC\b5\tT\0=\t\1\b5\tU\0=\tV\b9\tW\0009\tR\t9\t\r\tB\t\1\2=\t1\b3\tX\0=\tD\bB\6\2\0019\6Y\0059\6\r\0065\bZ\0=\4C\b=\3D\b5\t[\0=\t\\\bB\6\2\0012\0\0ÄK\0\1\0\14filetypes\1\2\0\0\nswift\1\0\0\14sourcekit\0\15extensions\17init_options\1\0\1\21clangdFileStatus\2\1\3\0\0\vclangd&--function-arg-placeholders=false\1\0\0\vclangd\rsettings\1\0\0\nbuild\1\0\0\targs\1\0\1\vonSave\2\1\3\0\0\0\a%f\rtex_opts\vunpack\1\0\0\tkeep\15tbl_extend\vtexlab\14on_attach\17capabilities\1\0\0\1\t\0\0\npylsp\vbashls\thtml\ncssls\vjsonls\rtsserver\veslint\16tailwindcss\vipairs\14lspconfig\1\0\2\24dynamicRegistration\1\20lineFoldingOnly\2\17foldingRange\17textDocument\25default_capabilities\17cmp_nvim_lsp\0\1\0\1\vborder\frounded\19signature_help\31textDocument/signatureHelp\1\0\1\vborder\frounded\nhover\twith\23textDocument/hover\rhandlers\blsp\17virtual_text\bmin\1\0\0\tHINT\rseverity\1\0\3\vsource\1\vprefix\b‚Ä¢\fspacing\3\2\nfloat\vformat\vheader\1\3\0\0\22ÔÜà  Diagnostics:\vNormal\1\0\4\vsource\1\14focusable\1\vborder\frounded\nscope\tline\1\0\4\14underline\2\nsigns\2\18severity_sort\2\21update_in_insert\2\15diagnostic\nnumhl\1\0\1\ttext\5\16sign_define\afn\26DiagnosticVirtualText\19DiagnosticSign\npairs\0\1\0\4\tHint\tÔ†µ \tWarn\tÔÅ± \tInfo\tÔÅö \nError\tÔÅó \22register_progress\1\0\1\18status_symbol\5\vconfig\15lsp-status\1\0\1\vpreset\fdefault\25nvim-semantic-tokens\bufo\ftrouble\20symbols-outline\1\0\1\tmode\15background\19document-color\1\0\1\22input_buffer_type\rdressing\nsetup\15inc_rename\frequire6eob: ,fold: ,foldopen:Ôëº,foldsep: ,foldclose:Ôë†\14fillchars\15foldenable\19foldlevelstart\14foldlevel\0061\15foldcolumn\6oâ\4\t\t\thi! link VirtualTextError ErrorFloat\n\t\t\thi! link VirtualTextWarning WarningFloat\n\t\t\thi! link VirtualTextInfo InfoFloat\n\t\t\thi! link VirtualTextHint HintFloat\n\n\t\t\thi link LspStruct Structure\n\t\t\thi link LspFunction Function\n\t\t\thi link LspMacro Constant\n\t\t\thi link LspKeyword Keyword\n\t\t\thi link LspComment Comment\n\t\t\thi link LspString String\n\t\t\thi link LspNumber Number\n\t\t\thi link LspOperator Operator\n\t\t\thi link LspMethod Function\n\n\t\t\thi link LspType Type\n\t\t\thi link LspClass Type\n\t\t\thi link LspOperator Operator\n\t\t\t\bcmd\bvim\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-scrollbar"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14scrollbar\frequire\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/nvim-scrollbar",
    url = "https://github.com/petertriho/nvim-scrollbar"
  },
  ["nvim-semantic-tokens"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/nvim-semantic-tokens",
    url = "https://github.com/theHamsta/nvim-semantic-tokens"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n∫\1\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\0025\3\b\0005\4\t\0=\4\6\3=\3\n\2B\0\2\1K\0\1\0\vindent\1\2\0\0\vpython\1\0\1\venable\2\14highlight\fdisable\1\2\0\0\6c\1\0\1\venable\2\1\0\1\17auto_install\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    config = { "\27LJ\2\nD\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\23treesitter-context\frequire\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-ufo"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/nvim-ufo",
    url = "https://github.com/kevinhwang91/nvim-ufo"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["persistence.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16persistence\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/opt/persistence.nvim",
    url = "https://github.com/folke/persistence.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["promise-async"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/promise-async",
    url = "https://github.com/kevinhwang91/promise-async"
  },
  ["sleuth.git"] = {
    config = { "\27LJ\2\n7\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\0\0=\1\2\0K\0\1\0\26sleuth_neighbor_limit\6g\bvim\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/sleuth.git",
    url = "https://tpope.io/vim/sleuth"
  },
  ["specs.nvim"] = {
    config = { "\27LJ\2\nù\2\0\0\a\0\r\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\0\0'\6\1\0B\4\2\0029\4\5\4=\4\6\0036\4\0\0'\6\1\0B\4\2\0029\4\a\4=\4\b\3=\3\t\0024\3\0\0=\3\n\0025\3\v\0=\3\f\2B\0\2\1K\0\1\0\20ignore_buftypes\1\0\1\vnofile\2\21ignore_filetypes\npopup\fresizer\19shrink_resizer\nfader\14exp_fader\1\0\5\rdelay_ms\3\0\nwinhl\nPMenu\nwidth\3\n\nblend\3\n\vinc_ms\3\n\1\0\2\rmin_jump\3\n\15show_jumps\2\nsetup\nspecs\frequire\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/specs.nvim",
    url = "https://github.com/edluffy/specs.nvim"
  },
  ["stabilize.nvim"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/stabilize.nvim",
    url = "https://github.com/luukvbaal/stabilize.nvim"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["yuck.vim"] = {
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/yuck.vim",
    url = "https://github.com/elkowar/yuck.vim"
  },
  ["zen-mode.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rzen-mode\frequire\0" },
    loaded = true,
    path = "/home/pdt/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^persistence"] = "persistence.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0056\0\0\0'\2\1\0B\0\2\0029\0\2\0D\0\1\0\vstatus\15lsp-status\frequireY\0\0\1\0\5\0\0146\0\0\0009\0\1\0009\0\2\0\6\0\3\0X\0\5Ä6\0\0\0009\0\1\0009\0\2\0\a\0\4\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\thelp\vnofile\fbuftype\6o\bvim˛\1\0\0\a\0\n\0,6\0\0\0009\0\1\0009\0\2\0\19\0\0\0\15\0\0\0X\1\18Ä6\1\0\0009\1\1\0019\1\3\1)\2\0\0\1\2\1\0X\1\nÄ6\1\0\0009\1\1\0019\1\3\0016\2\0\0009\2\1\0029\2\4\2\4\1\2\0X\1\2Ä'\1\5\0X\2\3Ä'\1\6\0X\2\1Ä'\1\a\0'\2\b\0006\3\t\0006\5\0\0009\5\1\0059\5\3\5)\6\0\0\1\6\5\0X\5\5Ä6\5\0\0009\5\1\0059\5\3\5\14\0\5\0X\6\3Ä6\5\0\0009\5\1\0059\5\4\5B\3\2\2&\1\3\1L\1\2\0\rtostring\a: \vSpaces\tTabs\16Tabs/Spaces\ftabstop\15shiftwidth\14expandtab\6o\bvim\21\0\1\2\1\0\0\3-\1\0\0008\1\0\1L\1\2\0\2¿Ã\1\0\0\v\0\v\0\0294\0\0\0006\1\0\0009\1\1\0019\1\2\1B\1\1\0026\2\3\0\18\4\1\0B\2\2\4X\5\rÄ6\a\0\0009\a\1\a9\a\4\a)\t\0\0009\n\5\6B\a\3\2\15\0\a\0X\b\5Ä6\a\6\0009\a\a\a\18\t\0\0009\n\b\6B\a\3\1E\5\3\3R\5Ò\1276\2\6\0009\2\t\2\18\4\0\0'\5\n\0D\2\3\0\a, \vconcat\tname\vinsert\ntable\aid\20buf_is_attached\vipairs\23get_active_clients\blsp\bvimÊ\a\1\0\r\0004\0Z6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0013\0\4\0003\1\5\0005\2\6\0003\3\a\0003\4\b\0003\5\t\0006\6\0\0'\b\n\0B\6\2\0029\6\v\0065\b\19\0005\t\f\0005\n\r\0=\n\14\t5\n\15\0=\n\16\t5\n\17\0=\n\18\t=\t\20\b5\t\22\0004\n\3\0005\v\21\0>\v\1\n=\n\23\t5\n\24\0005\v\25\0005\f\26\0=\f\27\v>\v\4\n=\n\28\t4\n\0\0=\n\29\t4\n\5\0005\v\30\0006\f\31\0009\f \f=\f!\v=\1\"\v>\v\1\n5\v#\0=\4!\v=\1\"\v>\v\2\n5\v$\0>\3\1\v=\1\"\v>\v\3\n>\5\4\n=\n%\t5\n&\0>\0\2\n=\n'\t4\n\3\0005\v(\0005\f)\0=\f*\v>\v\1\n5\v+\0005\f,\0=\f*\v>\v\2\n=\n-\t=\t.\b5\t0\0005\n/\0=\n\23\t4\n\0\0=\n\28\t4\n\0\0=\n\29\t4\n\0\0=\n%\t4\n\0\0=\n'\t4\n\0\0=\n-\t=\t1\b4\t\0\0=\t2\b4\t\0\0=\t3\bB\6\2\0012\0\0ÄK\0\1\0\15extensions\ftabline\22inactive_sections\1\0\0\1\2\0\0\rfilename\rsections\14lualine_z\1\0\2\tleft\5\nright\5\1\2\0\0\rlocation\14separator\1\0\1\tleft\5\1\2\0\0\rprogress\14lualine_y\1\2\0\0\rfiletype\14lualine_x\1\0\0\1\2\0\0\17o:fileformat\tcond\bfmt\nupper\vstring\1\2\0\0\15o:encoding\14lualine_c\14lualine_b\fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\4\0\0\rfilename\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\1\2\0\0\17coc-explorer\25component_separators\1\0\2\tleft\6|\nright\6|\23section_separators\1\0\2\tleft\5\nright\5\1\0\4\25always_divide_middle\1\ntheme\15catppuccin\18icons_enabled\2\18global_status\2\nsetup\flualine\0\0\0\1\0\3\tunix\aLF\bmac\aCR\bdos\nCR-LF\0\0\1\0\2\18show_filename\1\16diagnostics\1\vconfig\15lsp-status\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: zen-mode.nvim
time([[Config for zen-mode.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rzen-mode\frequire\0", "config", "zen-mode.nvim")
time([[Config for zen-mode.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: specs.nvim
time([[Config for specs.nvim]], true)
try_loadstring("\27LJ\2\nù\2\0\0\a\0\r\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\0\0'\6\1\0B\4\2\0029\4\5\4=\4\6\0036\4\0\0'\6\1\0B\4\2\0029\4\a\4=\4\b\3=\3\t\0024\3\0\0=\3\n\0025\3\v\0=\3\f\2B\0\2\1K\0\1\0\20ignore_buftypes\1\0\1\vnofile\2\21ignore_filetypes\npopup\fresizer\19shrink_resizer\nfader\14exp_fader\1\0\5\rdelay_ms\3\0\nwinhl\nPMenu\nwidth\3\n\nblend\3\n\vinc_ms\3\n\1\0\2\rmin_jump\3\n\15show_jumps\2\nsetup\nspecs\frequire\0", "config", "specs.nvim")
time([[Config for specs.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-treesitter-context
time([[Config for nvim-treesitter-context]], true)
try_loadstring("\27LJ\2\nD\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\23treesitter-context\frequire\0", "config", "nvim-treesitter-context")
time([[Config for nvim-treesitter-context]], false)
-- Config for: sleuth.git
time([[Config for sleuth.git]], true)
try_loadstring("\27LJ\2\n7\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\0\0=\1\2\0K\0\1\0\26sleuth_neighbor_limit\6g\bvim\0", "config", "sleuth.git")
time([[Config for sleuth.git]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n¯\1\0\1\t\0\16\0\"'\1\0\0009\2\1\0006\3\2\0009\3\3\0039\3\1\0039\3\4\3\5\2\3\0X\2\1Ä'\1\5\0009\2\1\0006\3\2\0009\3\3\0039\3\1\0039\3\6\3\5\2\3\0X\2\1Ä'\1\a\0009\2\1\0006\3\2\0009\3\3\0039\3\1\0039\3\b\3\5\2\3\0X\2\1Ä'\1\t\0006\2\n\0009\2\v\2'\4\f\0\18\5\1\0009\6\r\0009\a\14\0009\b\15\0B\2\6\2L\2\2\0\fmessage\vsource\tcode\20%s  [%s][%s] %s\vformat\vstring\bÔÅö\tINFO\bÔ†µ\tHINT\bÔÅ±\tWARN\15diagnostic\bvim\rseverity\bÔÅó©\1\0\2\6\0\b\0\23\n\1\0\0X\2\6Ä6\2\0\0009\2\1\2\18\4\1\0B\2\2\2\15\0\2\0X\3\aÄ6\2\0\0009\2\2\0029\2\3\0029\2\4\2B\2\1\1+\2\0\0L\2\2\0006\2\0\0009\2\2\0029\2\5\0029\2\6\2:\4\1\0015\5\a\0B\2\3\1K\0\1\0\1\0\1\vborder\frounded\21preview_location\tutil\nhover\bbuf\blsp\16tbl_isempty\bvimÉ\1\0\0\a\1\6\0\r6\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0026\1\0\0009\1\1\0019\1\4\1)\3\0\0'\4\5\0\18\5\0\0-\6\0\0D\1\5\0\2¿\28textDocument/definition\16buf_request\25make_position_params\tutil\blsp\bvimö\a\1\2\v\0)\0Ç\0019\2\0\0009\2\1\2\15\0\2\0X\3\6Ä6\2\2\0'\4\3\0B\2\2\0029\2\4\2\18\4\1\0B\2\2\0016\2\2\0'\4\5\0B\2\2\0029\2\6\0025\4\a\0005\5\b\0=\5\t\4\18\5\1\0B\2\3\0013\2\n\0003\3\v\0007\3\f\0005\3\r\0=\1\14\0036\4\15\0009\4\16\0049\4\17\4'\6\18\0'\a\19\0006\b\15\0009\b\20\b9\b\21\b9\b\22\b\18\t\3\0B\4\5\0016\4\15\0009\4\16\0049\4\17\4'\6\18\0'\a\23\0006\b\15\0009\b\20\b9\b\21\b9\b\24\b\18\t\3\0B\4\5\0016\4\15\0009\4\16\0049\4\17\4'\6\18\0'\a\25\0006\b\f\0\18\t\3\0B\4\5\0016\4\15\0009\4\16\0049\4\17\4'\6\18\0'\a\26\0006\b\15\0009\b\20\b9\b\21\b9\b\27\b\18\t\3\0B\4\5\0016\4\15\0009\4\16\0049\4\17\4'\6\18\0'\a\28\0006\b\15\0009\b\20\b9\b\21\b9\b\29\b\18\t\3\0B\4\5\0016\4\15\0009\4\16\0049\4\17\4'\6\18\0'\a\30\0006\b\15\0009\b\20\b9\b\21\b9\b\31\b\18\t\3\0B\4\5\0016\4\15\0009\4\16\0049\4\17\4'\6\18\0'\a \0'\b!\0\18\t\3\0B\4\5\0016\4\15\0009\4\16\0049\4\17\4'\6\18\0'\a\"\0006\b\15\0009\b\20\b9\b\21\b9\b#\b\18\t\3\0B\4\5\0016\4\15\0009\4\16\0049\4\17\4'\6\18\0'\a$\0006\b\15\0009\b\20\b9\b\21\b9\b%\b\18\t\3\0B\4\5\0016\4\15\0009\4\16\0049\4\17\4'\6\18\0'\a&\0006\b\2\0'\n'\0B\b\2\0029\b(\b\18\t\3\0B\4\5\0012\0\0ÄK\0\1\0\26open_code_action_menu\21code_action_menu\15<leader>ca\15references\agr\16code_action\14<space>ca\16:IncRename \14<space>rn\20type_definition\r<space>D\19signature_help\n<C-k>\19implementation\agi\6K\15definition\agd\16declaration\bbuf\blsp\agD\6n\bset\vkeymap\bvim\vbuffer\1\0\2\vsilent\2\fnoremap\2\tPeek\0\0\17handler_opts\1\0\1\vborder\frounded\1\0\1\tbind\2\14on_attach\18lsp_signature\15buf_attach\19document-color\frequire\18colorProvider\24server_capabilities=\0\2\6\2\1\0\n-\2\0\0009\2\0\2\18\4\0\0\18\5\1\0B\2\3\1-\2\1\0\18\4\0\0\18\5\1\0B\2\3\1K\0\1\0\0¿\3¿\14on_attachß\20\1\0\16\0]\0‘\0016\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0'\1\5\0=\1\4\0006\0\0\0009\0\3\0)\1c\0=\1\6\0006\0\0\0009\0\3\0)\1c\0=\1\a\0006\0\0\0009\0\3\0+\1\2\0=\1\b\0006\0\0\0009\0\3\0'\1\n\0=\1\t\0006\0\v\0'\2\f\0B\0\2\0029\0\r\0005\2\14\0B\0\2\0016\0\v\0'\2\15\0B\0\2\0029\0\r\0005\2\16\0B\0\2\0016\0\v\0'\2\17\0B\0\2\0029\0\r\0B\0\1\0016\0\v\0'\2\18\0B\0\2\0029\0\r\0B\0\1\0016\0\v\0'\2\19\0B\0\2\0029\0\r\0B\0\1\0016\0\v\0'\2\20\0B\0\2\0029\0\r\0005\2\21\0B\0\2\0016\0\v\0'\2\22\0B\0\2\0029\1\23\0005\3\24\0B\1\2\0019\1\25\0B\1\1\0015\1\26\0003\2\27\0006\3\28\0\18\5\1\0B\3\2\4H\6\rÄ'\b\29\0\18\t\6\0&\b\t\b'\t\30\0\18\n\6\0&\t\n\t6\n\0\0009\n\31\n9\n \n\18\f\b\0005\r!\0=\t\"\rB\n\3\1F\6\3\3R\6Ò\1276\3\0\0009\3#\0039\3\23\0035\5$\0005\6%\0005\a&\0=\a'\6=\2(\6=\6)\0055\6*\0005\a-\0006\b\0\0009\b#\b9\b+\b9\b,\b=\b.\a=\a+\6=\2(\6=\6/\5B\3\2\0016\3\0\0009\0030\0039\0031\0036\4\0\0009\0040\0049\0043\0046\6\0\0009\0060\0069\0061\0069\0064\0065\a5\0B\4\3\2=\0042\0036\3\0\0009\0030\0039\0031\0036\4\0\0009\0040\0049\0043\0046\6\0\0009\0060\0069\0061\0069\0067\0065\a8\0B\4\3\2=\0046\0033\0039\0006\4\v\0'\6:\0B\4\2\0029\4;\4B\4\1\0029\5<\0045\6>\0=\6=\0056\5\v\0'\a?\0B\5\2\0026\6@\0005\bA\0B\6\2\4X\t\6Ä8\v\n\0059\v\r\v5\rB\0=\4C\r=\3D\rB\v\2\1E\t\3\3R\t¯\1279\6E\0059\6\r\0065\bH\0006\t\0\0009\tF\t'\vG\0\18\f\4\0009\rC\0B\t\4\2=\tC\b=\3D\b5\tP\0005\nN\0005\vL\0005\fK\0006\rI\0006\15J\0B\r\2\2>\r\1\f=\fM\v=\vO\n=\nE\t=\tQ\bB\6\2\0019\6R\0059\6\r\0065\bS\0006\t\0\0009\tF\t'\vG\0\18\f\4\0009\rC\0B\t\4\2=\tC\b5\tT\0=\t\1\b5\tU\0=\tV\b9\tW\0009\tR\t9\t\r\tB\t\1\2=\t1\b3\tX\0=\tD\bB\6\2\0019\6Y\0059\6\r\0065\bZ\0=\4C\b=\3D\b5\t[\0=\t\\\bB\6\2\0012\0\0ÄK\0\1\0\14filetypes\1\2\0\0\nswift\1\0\0\14sourcekit\0\15extensions\17init_options\1\0\1\21clangdFileStatus\2\1\3\0\0\vclangd&--function-arg-placeholders=false\1\0\0\vclangd\rsettings\1\0\0\nbuild\1\0\0\targs\1\0\1\vonSave\2\1\3\0\0\0\a%f\rtex_opts\vunpack\1\0\0\tkeep\15tbl_extend\vtexlab\14on_attach\17capabilities\1\0\0\1\t\0\0\npylsp\vbashls\thtml\ncssls\vjsonls\rtsserver\veslint\16tailwindcss\vipairs\14lspconfig\1\0\2\24dynamicRegistration\1\20lineFoldingOnly\2\17foldingRange\17textDocument\25default_capabilities\17cmp_nvim_lsp\0\1\0\1\vborder\frounded\19signature_help\31textDocument/signatureHelp\1\0\1\vborder\frounded\nhover\twith\23textDocument/hover\rhandlers\blsp\17virtual_text\bmin\1\0\0\tHINT\rseverity\1\0\3\vsource\1\vprefix\b‚Ä¢\fspacing\3\2\nfloat\vformat\vheader\1\3\0\0\22ÔÜà  Diagnostics:\vNormal\1\0\4\vsource\1\14focusable\1\vborder\frounded\nscope\tline\1\0\4\14underline\2\nsigns\2\18severity_sort\2\21update_in_insert\2\15diagnostic\nnumhl\1\0\1\ttext\5\16sign_define\afn\26DiagnosticVirtualText\19DiagnosticSign\npairs\0\1\0\4\tHint\tÔ†µ \tWarn\tÔÅ± \tInfo\tÔÅö \nError\tÔÅó \22register_progress\1\0\1\18status_symbol\5\vconfig\15lsp-status\1\0\1\vpreset\fdefault\25nvim-semantic-tokens\bufo\ftrouble\20symbols-outline\1\0\1\tmode\15background\19document-color\1\0\1\22input_buffer_type\rdressing\nsetup\15inc_rename\frequire6eob: ,fold: ,foldopen:Ôëº,foldsep: ,foldclose:Ôë†\14fillchars\15foldenable\19foldlevelstart\14foldlevel\0061\15foldcolumn\6oâ\4\t\t\thi! link VirtualTextError ErrorFloat\n\t\t\thi! link VirtualTextWarning WarningFloat\n\t\t\thi! link VirtualTextInfo InfoFloat\n\t\t\thi! link VirtualTextHint HintFloat\n\n\t\t\thi link LspStruct Structure\n\t\t\thi link LspFunction Function\n\t\t\thi link LspMacro Constant\n\t\t\thi link LspKeyword Keyword\n\t\t\thi link LspComment Comment\n\t\t\thi link LspString String\n\t\t\thi link LspNumber Number\n\t\t\thi link LspOperator Operator\n\t\t\thi link LspMethod Function\n\n\t\t\thi link LspType Type\n\t\t\thi link LspClass Type\n\t\t\thi link LspOperator Operator\n\t\t\t\bcmd\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n›\2\0\0\4\0\14\0\0246\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0014\0\0\0005\1\a\0005\2\b\0>\2\2\1=\1\6\0005\1\n\0005\2\v\0>\2\2\1=\1\t\0006\1\0\0'\3\f\0B\1\2\0029\1\r\1\18\3\0\0B\1\2\1K\0\1\0\17set_mappings\21neoscroll.config\1\4\0\0#vim.api.nvim_win_get_height(0)\ttrue\b100\1\2\0\0\vscroll\15<PageDown>\1\4\0\0$-vim.api.nvim_win_get_height(0)\ttrue\b100\1\2\0\0\vscroll\r<PageUp>\rmappings\1\0\0\1\n\0\0\n<C-u>\n<C-d>\n<C-b>\n<C-f>\n<C-y>\n<C-e>\azt\azz\azb\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\n¬\5\0\0\a\0'\00086\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\b\0005\3\a\0=\3\t\0025\3\n\0=\3\v\0025\3\23\0005\4\21\0005\5\r\0005\6\f\0=\6\14\0055\6\15\0=\6\16\0055\6\17\0=\6\18\0055\6\19\0=\6\20\5=\5\22\4=\4\24\3=\3\25\2B\0\2\0016\0\0\0009\0\26\0'\2\27\0B\0\2\0016\0\4\0'\2\28\0B\0\2\0029\0\29\0B\0\1\0026\1\0\0009\1\30\0019\1\31\1)\3\0\0'\4 \0005\5\"\0009\6!\0=\6#\5B\1\4\0016\1\0\0009\1\30\0019\1\31\1)\3\0\0'\4$\0005\5&\0009\6%\0=\6#\5B\1\4\1K\0\1\0\1\0\0\ngreen\19StartLogoGreen\afg\1\0\0\tblue\18StartLogoBlue\16nvim_set_hl\bapi\16get_palette\24catppuccin.palettesã\1\t\t\tcolorscheme catppuccin\n\t\t\t\"highlight clear SpellBad\n\t\t\t\"highlight SpellBad gui=undercurl guisp=#453c3c\n\t\t\thi! link Todo Comment\n\t\t\t\bcmd\17integrations\15native_lsp\1\0\0\15underlines\1\0\0\16information\1\2\0\0\14undercurl\rwarnings\1\2\0\0\14undercurl\nhints\1\2\0\0\14undercurl\verrors\1\0\0\1\2\0\0\14undercurl\17dim_inactive\1\0\1\fenabled\2\fcompile\1\0\0\1\0\1\fenabled\2\nsetup\15catppuccin\frequire\nmocha\23catppuccin_flavour\6g\bvim\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: nvim-code-action-menu
time([[Config for nvim-code-action-menu]], true)
try_loadstring("\27LJ\2\nH\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\frounded#code_action_menu_window_border\6g\bvim\0", "config", "nvim-code-action-menu")
time([[Config for nvim-code-action-menu]], false)
-- Config for: neogen
time([[Config for neogen]], true)
try_loadstring("\27LJ\2\nP\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\19snippet_engine\nvsnip\nsetup\vneogen\frequire\0", "config", "neogen")
time([[Config for neogen]], false)
-- Config for: neorg
time([[Config for neorg]], true)
try_loadstring("\27LJ\2\n≥\2\0\0\a\0\18\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\16\0005\3\6\0005\4\4\0005\5\3\0=\5\5\4=\4\a\0035\4\b\0004\5\0\0=\5\5\4=\4\t\0034\4\0\0=\4\n\0035\4\14\0005\5\f\0005\6\v\0=\6\r\5=\5\5\4=\4\15\3=\3\17\2B\0\2\1K\0\1\0\tload\1\0\0\21core.norg.dirman\1\0\0\15workspaces\1\0\0\1\0\2\twork\17~/notes/work\thome\17~/notes/home\18core.defaults!core.integrations.treesitter\1\0\0\25core.norg.completion\1\0\0\vconfig\1\0\0\1\0\1\vengine\rnvim-cmp\nsetup\nneorg\frequire\0", "config", "neorg")
time([[Config for neorg]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: barbar.nvim
time([[Config for barbar.nvim]], true)
try_loadstring("\27LJ\2\nJ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\14auto_hide\2\nsetup\15bufferline\frequire\0", "config", "barbar.nvim")
time([[Config for barbar.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nw\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\31show_current_context_start\2\25show_current_context\2\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n∫\1\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\0025\3\b\0005\4\t\0=\4\6\3=\3\n\2B\0\2\1K\0\1\0\vindent\1\2\0\0\vpython\1\0\1\venable\2\14highlight\fdisable\1\2\0\0\6c\1\0\1\venable\2\1\0\1\17auto_install\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17config.alpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: nvim-scrollbar
time([[Config for nvim-scrollbar]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14scrollbar\frequire\0", "config", "nvim-scrollbar")
time([[Config for nvim-scrollbar]], false)
-- Config for: neogit
time([[Config for neogit]], true)
try_loadstring("\27LJ\2\n]\0\0\5\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\1K\0\1\0\17integrations\1\0\0\1\0\1\rdiffview\2\nsetup\vneogit\frequire\0", "config", "neogit")
time([[Config for neogit]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\në\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\ropleader\1\0\2\nblock\agb\tline\agl\ftoggler\1\0\2\nblock\bgbb\tline\bgll\1\0\1\vignore\a^$\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2p\0\2\n\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\4\0\0009\4\1\0049\4\3\4\18\6\0\0+\a\2\0+\b\2\0+\t\2\0B\4\5\2\18\5\1\0+\6\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvim;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimÿ\1\0\2\b\0\r\0\0266\2\0\0'\4\1\0B\2\2\0029\2\2\0025\4\3\0B\2\2\2\18\4\0\0\18\5\1\0B\2\3\0026\3\4\0009\3\5\0039\5\6\2'\6\a\0005\a\b\0B\3\4\2'\4\t\0:\5\1\3'\6\t\0&\4\6\4=\4\6\2'\4\v\0:\5\2\3'\6\f\0&\4\6\4=\4\n\2L\2\2\0\6)\n    (\tmenu\6 \1\0\1\14trimempty\1\a%s\tkind\nsplit\bvim\1\0\2\tmode\16symbol_text\rmaxwidth\0032\15cmp_format\flspkind\frequireÂ\1\0\1\5\3\b\1 -\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\22Ä6\1\2\0009\1\3\0019\1\4\1)\3\1\0B\1\2\2\t\1\0\0X\1\5Ä-\1\1\0'\3\5\0'\4\6\0B\1\3\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\a\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\1¿\0¿\rcomplete\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\21select_next_item\fvisible\2®\1\0\0\4\2\a\1\21-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\vÄ6\0\2\0009\0\3\0009\0\4\0)\2ˇˇB\0\2\2\t\0\0\0X\0\4Ä-\0\1\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\2¿\1¿\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2Ç\a\1\0\f\0003\0g3\0\0\0003\1\1\0006\2\2\0'\4\3\0B\2\2\0029\3\4\0025\5\b\0005\6\6\0003\a\5\0=\a\a\6=\6\t\0055\6\v\0005\a\n\0=\a\f\6=\6\r\0055\6\15\0005\a\14\0=\a\16\0063\a\17\0=\a\18\6=\6\19\0055\6\23\0009\a\20\0029\a\21\a5\t\22\0B\a\2\2=\a\24\0069\a\20\0023\t\25\0005\n\26\0B\a\3\2=\a\27\0069\a\20\0023\t\28\0005\n\29\0B\a\3\2=\a\30\6=\6\20\0054\6\0\0=\6\r\0059\6\31\0029\6 \0064\b\5\0005\t!\0>\t\1\b5\t\"\0>\t\2\b5\t#\0>\t\3\b5\t$\0>\t\4\bB\6\2\2=\6 \5B\3\2\0019\3\4\0029\3%\3'\5&\0005\6(\0009\a\20\0029\a'\a9\a%\aB\a\1\2=\a\20\0064\a\3\0005\b)\0>\b\1\a=\a \6B\3\3\0019\3\4\0029\3%\3'\5*\0005\6+\0009\a\20\0029\a'\a9\a%\aB\a\1\2=\a\20\0069\a\31\0029\a \a4\t\3\0005\n,\0>\n\1\t4\n\3\0005\v-\0>\v\1\nB\a\3\2=\a \6B\3\3\0016\3\2\0'\5.\0B\3\2\0026\4\2\0'\6\3\0B\4\2\0029\5/\4\18\a\5\0009\0050\5'\b1\0009\t2\3B\t\1\0A\5\2\0012\0\0ÄK\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\vpreset\6/\fcmdline\1\0\1\tname\nspell\1\0\1\tname\tpath\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\0\1\0\1\vselect\1\fconfirm\fmapping\15formatting\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\vwindow\15completion\1\0\0\1\0\3\17winhighlight/Normal:Pmenu,FloatBorder:Pmenu,Search:None\17side_padding\3\0\15col_offset\3˝ˇˇˇ\15\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0\0\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'persistence.nvim'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
