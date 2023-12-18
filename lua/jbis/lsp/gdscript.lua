-- local port = os.getenv('GDScript_Port') or '6005'
-- local cmd = vim.lsp.rpc.connect('127.0.0.1', port)
-- local pipe = '/tmp/godot.pipe' -- I use /tmp/godot.pipe
--
-- vim.lsp.start({
--   name = 'Godot',
--   cmd = cmd,
--   root_dir = vim.fs.dirname(vim.fs.find({ 'project.godot', '.git' }, { upward = true })[1]),
--   on_attach = function(client, bufnr)
--     vim.api.nvim_command('echo serverstart("' .. pipe .. '")')
--   end
-- })

-- Get the port from the environment variable or use a default value
local port = os.getenv('GDScript_Port') or '6005'

-- Connect to the Godot language server
local cmd = vim.lsp.rpc.connect('127.0.0.1', port)

-- Define the pipe path
local pipe = '/tmp/godot.pipe'

-- Start the LSP server for Godot
vim.lsp.start({
  name = 'Godot',
  cmd = cmd,
  root_dir = vim.fs.dirname(vim.fs.find({ 'project.godot', '.git' }, { upward = true })[1]),
  on_attach = function(client, bufnr)
    -- Print a message when the server is started
    vim.api.nvim_command('echo serverstart("' .. pipe .. '")')
  end
})

