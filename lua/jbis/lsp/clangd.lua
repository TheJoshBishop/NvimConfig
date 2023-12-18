-- ./settings/cpp.lua

local lspconfig = require("lspconfig")
local lspHandlers = require("jbis.lsp.handlers")

lspconfig.clangd.setup {
    on_attach = lspHandlers.on_attach,
    capabilities = lspHandlers.capabilities,
    cmd = {
        "clangd",
        '--query-driver=/usr/bin/gcc',
    },
    filetypes = {"c", "cpp" },
}

return lspconfig;
