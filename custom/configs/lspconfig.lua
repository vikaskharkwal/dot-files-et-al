local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "cssmodules_ls", "tailwindcss", "lua_ls", "jsonls", "eslint", "marksman", "denols", "grammarly" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- 
-- lspconfig.pyright.setup { blabla}
--
-- svelte-language-server 
-- "markdownlint",
-- "cssmodules-language-server",
-- "tailwindcss-language-server",
-- "lua-language-server",
-- "json-lsp",
-- "css-lsp",
-- "eslint-lsp",
-- "html-lsp",
-- "marksman",
-- "typescript-language-server",
-- "prettier",
-- "deno",
-- "stylua",
-- "clang-format",
-- "clangd",

