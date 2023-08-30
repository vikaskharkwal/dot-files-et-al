local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "scss",
    "regex",
    "graphql",
    "typescript",
    "svelte",
    "javascript",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "eslint-lsp",
    "json-lsp",
    "svelte-language-server",
    "tailwindcss-language-server",    
    "cssmodules-language-server",
    -- other
    "markdownlint",
    "marksman",

  },
  ui = {
    height = 0.7,
    border = 'single',
  }
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.nvterm = {
  terminals = {
    list = {},
    type_opts = {
      float = {
        relative = "editor",
        row = 0.1,
        col = 0.2,
        width = 0.6,
        height = 0.7,
        border = "single",
      },
      horizontal = { location = "rightbelow", split_ratio = 0.4, border = "single",  },
      vertical = { location = "rightbelow", split_ratio = 0.3, border = "single", },
    },
  },
}

return M
