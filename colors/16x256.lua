-------------------
-- Initial Setup --
-------------------

vim.opt.background = "dark"
vim.opt.termguicolors = false

vim.cmd [[
  highlight clear
  syntax reset
]]

vim.g.colors_name = "16x256"

function hl(group, colors)
  vim.api.nvim_set_hl(0, group, colors)
end


----------------------------
-- User Interface Objects --
----------------------------

hl("Search",     { ctermfg = 16, ctermbg = 11 })
hl("SignColumn", { ctermfg = 14, ctermbg = none })
hl("VertSplit",  { reverse = false })
hl("Visual",     { ctermfg = 231, ctermbg = 242 })

------------------
-- Text Objects --
------------------

hl("MatchParen", { ctermbg = none, underline = true })

---------------------
-- Plugin Specific --
---------------------

hl("NvimTreeFolderIcon", { ctermfg = 12 })
