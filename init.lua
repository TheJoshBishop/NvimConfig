require "jbis.options"
require "jbis.keymaps"
require "jbis.plugins"
require "jbis.colorscheme"
require "jbis.cmp"
require "jbis.lsp"
require "jbis.telescope"
require "jbis.treesitter"
require "jbis.autopairs"
require "jbis.comment"
require "jbis.lualine"
require "jbis.gitsigns"
require "jbis.nvim-tree"
require "jbis.toggleterm"
require "jbis.whichkey"
require "jbis.dap"
require "jbis.startup"
require "jbis.tabnine"
require "jbis.nvim-colorizer"
require "jbis.indentline"
require "jbis.build-system"
require "jbis.fine-cmdline"

-- Enable the Neovim server
-- if vim.fn.has('nvim') then
--   vim.cmd([[
--     set nocompatible
--     let $NVIM_LISTEN_ADDRESS = substitute(
--           \ $NVIM_LISTEN_ADDRESS,
--           \ '\v^(.*:)\zs\d+(\.\d+)?$',
--           \ '\=serverstart(v:servername, {"rpc": v:true})',
--           \ 'g'
--         \ )
--   ]])
-- end
--
