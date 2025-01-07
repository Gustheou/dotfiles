vim.cmd("syntax on")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.cmd("set cursorline")
vim.cmd("set background=dark")
vim.cmd("set wildmode=longest,list")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set mouse=a")
vim.g.mapleader= " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}
local plugins = {
  {
    "Gustheou/solarized-osaka.nvim",
    name = "solarized-osaka",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "nvim-treesitter/nvim-treesitter", build= ":TSUpdate"
  }
}

require("lazy").setup(plugins, opts)
require("solarized-osaka").setup()
vim.cmd.colorscheme "solarized-osaka"

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {"lua", "java", "haskell"},
  highlight = { enable = true },
  indent = { enable = true }
})
