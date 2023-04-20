---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "chadracula",
  theme_toggle = { "chadracula", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = true,

  statusline = {
    theme = "vscode_colored",
    separator_style = "",
    overriden_modules = nil,
  },

  nvdash = {
    load_on_startup = true,
    header =  {
    "                                    ██████                                    ",
    "                                ████▒▒▒▒▒▒████                                ",
    "                              ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                              ",
    "                            ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                            ",
    "                          ██▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒                              ",
    "                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▓▓▓▓                          ",
    "                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▒▒▓▓                          ",
    "                        ██▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒    ██                        ",
    "                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ",
    "                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ",
    "                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ",
    "                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ",
    "                        ██▒▒██▒▒▒▒▒▒██▒▒▒▒▒▒▒▒██▒▒▒▒██                        ",
    "                        ████  ██▒▒██  ██▒▒▒▒██  ██▒▒██                        ",
    "                        ██      ██      ████      ████                        ",
    }
  }
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
