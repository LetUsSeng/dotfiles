return {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require("tokyonight").setup({
      style = "moon",
      styles = {
        comments = { italic = false },
        sidebars = "transparent",
        floats = "transparent",
      },
      -- NOTE: On the fence with transparent. Doesn't look right
      -- transparent = true,
    })

    vim.cmd.colorscheme("tokyonight-night")
  end,
}
