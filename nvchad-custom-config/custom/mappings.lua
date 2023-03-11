---@type MappingsConfig
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<M-m>"] = {"<cmd>Glow<CR>", "Open current markdown in Glow"}
    -- ["<leader>"] = {"<cmd> WhichKey<cr>"},
    -- ["<leader>f"] = {"<cmd> ToggleTerm direction=float<cr>"},
    -- ["<leader>v"] = {"<cmd> ToggleTerm direction=vertical size=80<cr>"},
    -- ["<leader>h"] = {"<cmd> ToggleTerm direction=horizontal<cr>"},
  },
}

-- more keybinds!

return M
