---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme_toggle = {"catppuccin", "catppuccin_latte" },
  theme = "chadracula",
  hl_override = highlights.override,
  hl_add = highlights.add,

  relative_number = true,
  transparency = true,
}

M.plugins = require "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
