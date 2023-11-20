-- Init base theme
require('onedark').setup {
    theme = 'darker',
    borders = true,
    fade_nc = true,

    styles = {
        comments = "italic",
        strings = "NONE",
        keywords = "NONE",
        functions = "bold",
        diagnostics = "bold",
    },


    toggle_style_key = "<leader>ts", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

    diagnostics = {
        undercurl = true,
    }

}
require('onedark').load()
-- require('onenord').setup({
--    theme = "dark",
--    borders = true,
--    fade_nc = true,
--
--    styles = {
--        comments = "italic",
--        strings = "NONE",
--        keywords = "NONE",
--        functions = "bold",
--        variables = "NONE",
--        diagnostics = "bold",
--    },
--    disable = {
--        background = false,
--        cursorline = false,
--        eob_lines = true,
--    },
-- })

-- kanagawa as a backup, `recall()` can return `nil`.
-- local theme = require('last-color').recall() or 'onedark'
-- vim.cmd(('colorscheme %s'):format(theme))
