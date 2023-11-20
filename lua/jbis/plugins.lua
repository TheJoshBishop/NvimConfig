local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
    open_fn = function()
        return require("packer.util").float { border = "rounded" }
    end,
    },
}

-- Install your plugins here
return packer.startup(function(use)
    -- My plugins here
    use "wbthomason/packer.nvim" -- Have packer manage itself
    use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
    use "nvim-lua/plenary.nvim"
    use "windwp/nvim-autopairs"
    use "numToStr/Comment.nvim"

    -- Colorschemes
    use({ 'raddari/last-color.nvim' })
    use "navarasu/onedark.nvim"
    use "xiyaowong/nvim-transparent"
    use "brenoprata10/nvim-highlight-colors"
    use "olivercederborg/poimandres.nvim"
    use "Shatur/neovim-ayu"
    use "folke/lsp-colors.nvim"
    use "jacoborus/tender.vim"
    use "savq/melange-nvim"
    use "mcchrish/zenbones.nvim"
    use "projekt0n/github-nvim-theme"
    use "folke/tokyonight.nvim"
    use "rmehri01/onenord.nvim"
    use "doums/darcula"
    use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" }
    use "catppuccin/nvim"

    --UI
    use "folke/noice.nvim"
    use "rcarriga/nvim-notify"

    -- Indent lines
    use "lukas-reineke/indent-blankline.nvim"


    -- cmp plugins
    use "hrsh7th/nvim-cmp" -- The completion plugin
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"

    -- snippets
    use "L3MON4D3/LuaSnip" --snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

    -- LSP
    use "neovim/nvim-lspconfig" -- enable LSP
    use "williamboman/mason.nvim" -- simple to use language server installer
    use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer
    use 'jose-elias-alvarez/null-ls.nvim' -- LSP diagnostics and code actions
    use "OmniSharp/omnisharp-vim"

    -- Linter
    -- use "dense-analysis/ale"

    -- DAP
    use "mfussenegger/nvim-dap"
    use "rcarriga/nvim-dap-ui"
    use "ravenxrz/DAPInstall.nvim"

    use "nvim-telescope/telescope.nvim"
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }
    use "nvim-tree/nvim-tree.lua"
    use "nvim-lualine/lualine.nvim"
    use "lewis6991/gitsigns.nvim"
    use "windwp/nvim-ts-autotag"

    use "mg979/vim-visual-multi"

    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }

    use "akinsho/toggleterm.nvim"
    use 'nvim-tree/nvim-web-devicons'
    use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}

    use "folke/which-key.nvim"
    use "norcalli/nvim-colorizer.lua"


    -- Git
    use "kdheepak/lazygit.nvim"
    use "startup-nvim/startup.nvim"

    -- Live HTML server
    -- use "manzeloth/live-server"

    -- Tabnine
    use { 'codota/tabnine-nvim', run = "./dl_binaries.sh" }

    use {
        "kawre/leetcode.nvim",
        opts = {
            ---@type lc.domain
            domain = "com", -- For now "com" is the only one supported

            ---@type string
            arg = "leetcode.nvim",

            ---@type lc.lang
            lang = "java",

            ---@type lc.sql
            sql = "mysql",

            ---@type string
            directory = vim.fn.stdpath("data") .. "/leetcode/",

            ---@type boolean
            logging = true,

            console = {
                open_on_runcode = true, ---@type boolean

                dir = "row", ---@type "col" | "row"

                size = {
                    width = "90%", ---@type string | integer
                    height = "75%", ---@type string | integer
                },

                result = {
                    size = "60%", ---@type string | integer
                },

                testcase = {
                    virt_text = true, ---@type boolean

                    size = "40%", ---@type string | integer
                },
            },

            description = {
                position = "left", ---@type "top" | "right" | "bottom" | "left"

                width = "40%", ---@type string | integer
            },

            hooks = {
                ---@type fun()[]
                LeetEnter = {},

                ---@type fun(question: { lang: string })[]
                LeetQuestionNew = {},
            },

            ---@type boolean
            image_support = false, -- setting this to `true` will disable question description wrap
        }
    }
    use "MunifTanjim/nui.nvim"

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
