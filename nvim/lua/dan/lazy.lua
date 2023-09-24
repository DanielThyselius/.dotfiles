local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

-- Install the necessary plugins through "lazy.nvim"
require("lazy").setup("dan.plugins", {
  defaults = { lazy = true }, -- Make all plugins to be lazy-loaded.
  ui = {
    border = "rounded", -- Enable rounded borders for the "lazy.nvim" UI.
  },
  performance = {
    rtp = {
      disabled_plugins = { -- Disable certain in-built plugins which are useful af.
        -- "gzip",
        -- "matchit",
        -- "matchparen",
        -- "tarPlugin",
        -- "tohtml",
        "tutor",
        -- "zipPlugin",
        -- "rplugin",
        -- "man",
        -- "spellfile",
      },
    },
  },
  debug = false,
})
