
-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "<leader>u", action = "dir_up" },
        { key = "<leader>co", action = "NvimTreeCollapse" },
        { key = "<leader><C-r>", action = "NvimTreeRefresh" },
        { key = "<leader><C-r>", action = "NvimTreeRefresh" },
        { key = "<leader><C-r>", action = "NvimTreeRefresh" },

      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set("n", "<leader>po", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeFocus)

