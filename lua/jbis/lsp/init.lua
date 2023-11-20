local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "jbis.lsp.mason"
require("jbis.lsp.handlers").setup()
require "jbis.lsp.null-ls"
require "jbis.lsp.omnisharp"
