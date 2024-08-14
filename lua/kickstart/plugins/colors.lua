return {
  {
    -- 'ellisonleao/gruvbox.nvim',
    'sainnhe/gruvbox-material',
    -- 'NTBBloodBath/sweetie.nvim',
    -- 'xero/miasma.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
         vim.cmd.colorscheme("gruvbox-material")
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
