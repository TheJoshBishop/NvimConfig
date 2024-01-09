vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})

require('fine-cmdline').setup({
    cmdline = {
        enable_keymaps = true,
        smart_history = true,
        prompt = ':'
    },
    popup = {
        position = {
            row = '0%',
            col = '50%',
        },
        size = {
            width = '60%',
        },
        border = {
            style = 'rounded',
        },
        win_options = {
            winhighlight = 'Normal:Normal,FloatBorder:FloatBorder',
        },
    },
})
