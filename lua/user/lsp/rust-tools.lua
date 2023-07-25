local handlers = require "user.lsp.handlers"

return {
  server = {
    on_attach = handlers.on_attach,
    capabilities = handlers.capabilities,
  }
}
