vim.cmd [[highlight IndentBlanklineIndent1 guifg = #f7887c gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg = #ffe49e gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg = #a9d49d gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg = #89bec7 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg = #a4aff5 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg = #eda4f5 gui=nocombine]]

vim.opt.list = true

require("indent_blankline").setup {
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
    show_current_context = true,
    show_current_context_start = true,
}
