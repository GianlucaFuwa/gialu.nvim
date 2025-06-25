vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>", { desc = "Open parent directory" })
-- vim.keymap.set('n', '<leader>pv', vim.cmd.Explore)
vim.keymap.set('n', '<Esc><Esc>', ':FloatermToggle<enter>')
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>:FloatermToggle<enter>')
vim.keymap.set('n', '<leader>nt', ':FloatermNew --height=0.4 --wintype=normal --position=bottom<enter>')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.keymap.set('n', '<leader>nj', ':FloatermNew --height=0.4 --wintype=normal --position=bottom --name=julia <enter>julia -t auto --project --startup-file=yes<enter>')
vim.keymap.set('n', '<leader>kj', [[:FloatermKill julia]])

vim.keymap.set('n', '<s-cr>', [[:NeigeEvalExpr<CR>]], { noremap = true})
vim.keymap.set('v', '<s-cr>', [[:<C-U>NeigeEvalVisual<CR>]], { noremap = true})
vim.keymap.set('n', '<leader>nr', [[:NeigeStart<CR>]])
vim.keymap.set('n', '<leader>kr', [[:FloatermKill julia-repl]])
-- vim.keymap.set('n', '<leader>ns', function()
--   require("neige").start({ split = function()
--     vim.cmd(":FloatermNew --height=0.4 --wintype=split --position=bottom --name=julia-repl")
--   end,
--   })
-- end, { desc = 'Start Neige REPL with custom split' })
vim.keymap.set('n', '<leader>nc', [[:NeigeClearText<CR>]])
-- vim.keymap.set(
--   'n',
--   '<leader>nr',
--   ':FloatermNew --height=0.4 --wintype=split --position=bottom --name=julia <enter>julia -t auto --project --startup-file=yes<enter> using REPLSmuggler; smuggle()<enter>'
-- )
-- vim.keymap.set(
--   'n',
--   '<leader>nr',
--   ':FloatermNew --height=0.4 --wintype=split --position=bottom --name=julia <enter>julia -t auto --project --startup-file=yes<enter> using REPLSmuggler; smuggle()<enter>'
-- )
-- vim.keymap.set('x', '<leader>cv', ":SmuggleVisual<enter>")
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set('n', '<leader>ee', 'ggVG:JuliaREPLSendRegion<cr>')
--- command to go to directory "C:\Users\AppData\Local\nvim" in explorer
vim.keymap.set('n', '<leader>cc', ':e /home/gialu/.config/nvim<enter>')
-- avoid ctrl+alt'ing
vim.keymap.set('i', 'äh', '{')
vim.keymap.set('i', 'äl', '}')
vim.keymap.set('i', 'öh', '[')
vim.keymap.set('i', 'öl', ']')
vim.keymap.set('i', 'öö', '\\')
vim.keymap.set('t', 'äh', '{')
vim.keymap.set('t', 'äl', '}')
vim.keymap.set('t', 'öh', '[')
vim.keymap.set('t', 'öl', ']')
vim.keymap.set('t', 'öö', '\\')
vim.keymap.set('t', '<C-w>j', '<C-\\><C-n><C-w>j')
vim.keymap.set('t', '<C-w>k', '<C-\\><C-n><C-w>k')
vim.keymap.set('t', '<C-w>h', '<C-\\><C-n><C-w>h')
vim.keymap.set('t', '<C-w>l', '<C-\\><C-n><C-w>l')
vim.keymap.set('n', '<CR>', 'm`o<Esc>``')
-- TODO: ctrl-w movement form terminal 

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
-- vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
-- vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et
