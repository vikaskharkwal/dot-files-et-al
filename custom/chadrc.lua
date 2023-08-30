---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "one_light" },
  transparency = true,

  hl_override = highlights.override,
  hl_add = highlights.add,
  lsp_semantic_tokens = true,

  statusline = {
    theme = "vscode_colored",
    -- theme = "default",
    -- separator_style = "round",
    overriden_modules = nil,
  },

  cmp = {
    style = "atom_colored"
  },

  telescope = {
    style = "bordered",
    -- border = "single"
  },

  mason = {style = "bordered"},

nvdash = {
    load_on_startup = true,
 header =  {
        "                       ＿＿                       ",
        "          　　      ／＞   フ                     ",
        "          　　     |  _  _ |                      ",
        "           　　   ／`ミ x ノ                      ",
        "          　 　 /        |                        ",
        "          　　 /  ヽ    ﾉ      ╱|、               ",
        "              │   |　| |     (˚ˎ 。7              ",
        "          ／￣|   |  | |      |、 ˜〵             ",
        "         | (￣ヽ__ヽ_)__)     じしˍ,)ノ           ",
        "         ヽ二つ                                   ",
}}}
  --   "                                    ██████                                    ",
  --   "                                ████▒▒▒▒▒▒████                                ",
  --   "                              ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                              ",
  --   "                            ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                            ",
  --   "                          ██▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒                              ",
  --   "                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▓▓▓▓                          ",
  --   "                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▒▒▓▓                          ",
  --   "                        ██▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒    ██                        ",
  --   "                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ",
  --   "                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ",
  --   "                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ",
  --   "                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ",
  --   "                        ██▒▒██▒▒▒▒▒▒██▒▒▒▒▒▒▒▒██▒▒▒▒██                        ",
  --   "                        ████  ██▒▒██  ██▒▒▒▒██  ██▒▒██                        ",
  --   "                        ██      ██      ████      ████                        ",
  --   }
  --

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

M.lazy_nvim = {
  ui = {
    border = "single"
  }
}

return M
