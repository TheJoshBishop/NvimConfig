-- Init base theme
-- require('onedark').setup {
--     theme = 'darker',
--     borders = true,
--     fade_nc = true,
--
--     styles = {
--         comments = "italic",
--         strings = "NONE",
--         keywords = "NONE",
--     }
-- }
-- require('onedark').load()
require('onenord').setup({
   theme = "dark",
   borders = true,
   fade_nc = true,

   styles = {
       comments = "italic",
       strings = "NONE",
       keywords = "NONE",
       functions = "bold",
       variables = "NONE",
       diagnostics = "bold",
   },
   disable = {
       background = false,
       cursorline = false,
       eob_lines = true,
   },
})

-- kanagawa as a backup, `recall()` can return `nil`.
-- local theme = require('last-color').recall() or 'onedark'
-- vim.cmd(('colorscheme %s'):format(theme))
