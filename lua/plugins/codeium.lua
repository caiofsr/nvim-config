return {
  "Exafunction/codeium.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    require("codeium").setup({})
    require("cmp").setup({
      sources = {
        { name = "codeium" },
        { name = "buffer" },
        { name = "snippets" },
        { name = "path" },
        { name = "buffer" },
        { name = "nvim_lsp:lua_ls" },
      },
    })
  end,
}
