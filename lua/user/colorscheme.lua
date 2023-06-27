require("tokyonight").setup({
  transparent = true,
  styles = {
    sidebars = "transparent"
  }
})

-- local colorscheme = "tokyonight-storm"

-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
--   vim.notify("colorscheme " .. colorscheme .. " not found!")
--   return
-- end

vim.cmd [[
  try
    colorscheme tokyonight-storm
  catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme default
    set background=dark
  endtry
]]
