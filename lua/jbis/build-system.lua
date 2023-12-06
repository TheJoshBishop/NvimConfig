local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

function RunProject()
    if vim.fn.globpath(vim.fn.getcwd(), "build.gradle", 0, 1) ~= "" then
        vim.fn.system("gradle run")
    elseif vim.fn.globpath(vim.fn.getcwd(), "*.csproj", 0, 1) ~= "" then
        vim.fn.system("dotnet run")
    else
        vim.api.nvim_out_write("Run: Unknown project type\n")
    end
end

function BuildProject()
    if vim.fn.filereadable("build.gradle") == 1 then
        vim.fn.system("gradle build")
    elseif vim.fn.globpath(vim.fn.getcwd(), "*.csproj", 0, 1) ~= "" then
        vim.fn.system("dotnet build")
    else
        vim.api.nvim_out_write("Build: Unknown project type\n")
    end
end


keymap("n", "<F5>", [[:lua RunProject()<CR>]], opts)
keymap("n", "<F6>", [[:lua BuildProject()<CR>]], opts)
