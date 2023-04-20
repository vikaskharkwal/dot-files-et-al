---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "onedark",
  theme_toggle = { "onedark", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = true,
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
    load_on_startup = false,
    header =  {
 "                                 .?MMMMMMM8$@m-(\".-.                                     ",
 "                              (MMMMMMMMMMMMMMe(%e9ODA#%eRwC1%%?!-\";                      ",
 "                             MMMMMMMMMMMMMMMM*%JOMMMMMMMMMMM8M0DC?*%4?\".                 ",
 "                           .9MMMMMMMMMMMMMMMwe2#MMMMMMRC41%J#M&DC1D8&wM@*M&               ",
 "                          'MMMMMMMMMMMMM0@R9eemMMM#0##M9m**i(%???*i(|1#MRD2               ",
 "                          MMMMMMMMMMM@$449w2C!J%?C%\"\";\"eCw$\"|m==||;-`M.               ",
 "                        .MMMMMMMMMDO*i(((||(ii?*1?*%i\"=(?mR  1%?((\"%!                   ",
 "                        mM@MM92e!';\"i\"?ii(ei;\"\"\"\"\";\";-(??.                        ",
 "                       %MA!!?;\"%\"=\"i\"\"mi'-1\"\"\"|\"\"=;\"\"\"`&(                    ",
 "                       .(4?\"(=';;\"\"\"*9w|.-||(i%%|;`';;.;'                             ",
 "                        *eJ;`%(\"((|i99C|.=|C=!1e;\"w......                               ",
 "                        0m*\"1|;\"!*(&9me'.-1       M .`..R                               ",
 "                        29*\"M      -&C(..\";       \"i .'i%                              ",
 "                        #C!%m      MRD\"...J        M.;(|.                                ",
 "                        @81!9     i&&2;...J=       1;!eiM                                 ",
 "                       '99*C8     9!\"=''`.(%       $A&2\"92                              ",
 "                       'w=-(?     M%=`.`.e(        AMM*%!.                                ",
 "                       CM(\"A     'OJ%.'.!e         #MMO1w%                               ",
 "                       CMA\"M.   .MMM%-;'*.         (MMMR0M                               ",
 "                      %MMO!wD4 -MMM@%\"|\"M.        1MMMM8&DJ                             ",
 "                      8O1DMMM0w\"(!%(*1%\"M*       .MM%?AOMMM.                            ",
 "                     'R#MMMMMM!24mO91!(\"=J.      *MMwMMMMMMM                             ",
 "                  =C@M0MM@Ae2MMMMMMMA1%\"%J4|    %MMMMMMM0@&M?\"                          ",
 "                (*M@MMR&&&2C#@#R&&&OC(\"'.&1='***MMMM#A8&AA1(=(                           ",
 "               ******%(MMMMM@M#OwmJw4A&&i.=\"2MMM8OwRwCCC1JmD&&$MD                        ",

    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

M.lazy_nvim = {
  ui = {
    border = "single"
  }
}

return M
