local overrides = require "custom.plugins.overrides"

---@type {[PluginName]: NvPluginConfig|false}
local plugins = {

  ["goolord/alpha-nvim"] = { disable = false }, -- enables dashboard

  -- Override plugin definition options
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["nvim-tree/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  ["NvChad/nvterm"] = {
    override_options = overrides.nvterm,
  },

  ["folke/which-key.nvim"] = {
    disable = false,
    window = {
      border = "single",
    }
  },

["NvChad/ui"] = {
 override_options = {
   tabufline = {
     lazyload = false, -- to show tabufline by default
   },
 },
},

  -- Install a plugin
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  -- markdown preview
  ["ellisonleao/glow.nvim"] = {
    cmd = "Glow",
    config = function()
      require("glow").setup({
        border = 'single',
        width_ratio = 0.5,
        height_ratio = 0.4,
      })
      end
  },



  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
}

return plugins
