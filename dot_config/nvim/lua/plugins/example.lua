-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {

  {
    "stevearc/conform.nvim",
    opts = function()
      ---@type conform.setupOpts
      local opts = {

        formatters_by_ft = {
          lua = { "stylua" },
          javascript = { "biome" },
          svelte = { "biome" },
          astro = { "biome" },
          html = { "biome" },
          css = { "biome" },
        },
      }
      return opts
    end,
  },
}
