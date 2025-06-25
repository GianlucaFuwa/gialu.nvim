return {
  {
    -- 'ellisonleao/gruvbox.nvim',
    -- 'sainnhe/gruvbox-material',
    -- 'NTBBloodBath/sweetie.nvim',
    -- 'xero/miasma.nvim',
    -- 'oneslash/helix-nvim',
    'catppuccin/nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      require('catppuccin').setup({
        transparent_background = true,
      })
      -- vim.g.gruvbox_material_transparent_background = 1
      vim.cmd.colorscheme("catppuccin-macchiato")
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
