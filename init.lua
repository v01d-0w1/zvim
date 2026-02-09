require("config.lazy")

-- Global settings
vim.lsp.enable('clangd')
vim.cmd("colorscheme zet")
vim.opt.clipboard = "unnamedplus"
vim.o.laststatus = 3

vim.opt.expandtab = true     
vim.opt.shiftwidth = 4      
vim.opt.tabstop = 4        
vim.opt.softtabstop = 4

vim.g.mapleader = " "
vim.wo.number = true

-- Completely disable Escape key in all modes
vim.api.nvim_set_keymap('n', '<Esc>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Esc>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Esc>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('c', '<Esc>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Esc>', '<Nop>', { noremap = true, silent = true })

-- Use F13 as Escape
vim.api.nvim_set_keymap('i', '<F13>', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F13>', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<F13>', '<Esc>', { noremap = true, silent = true })

-- Keymaps
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local builtin = require('telescope.builtin')

-- Telescope keymaps
map('n', '<leader>ff', builtin.find_files, { desc = 'find files' })
map('n', '<leader>fg', builtin.live_grep, { desc = 'find word' })
map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', builtin.oldfiles, { desc = 'recently opened files' })

-- Neo-tree keymaps
map('n', '<leader>n', ':Neotree toggle<CR>', opts)
map('n', '<leader>c', ':Neotree focus<CR>', opts)

-- Window navigation keymaps
map('n', '<leader>h', '<C-w>h', opts)
map('n', '<leader>j', '<C-w>j', opts)
map('n', '<leader>k', '<C-w>k', opts)
map('n', '<leader>l', '<C-w>l', opts)

-- Session keymaps
map('n', '<C-s>', ':SessionSave<CR>', opts)
map('n', '<C-o>', ':Telescope session-lens search_session<CR>', opts)
map('n', '<leader>ss', '<cmd>SessionSave<CR>', { desc = 'save <s>ession' })
map('n', '<leader>so', '<cmd>SessionRestore<CR>', { desc = 'session <o>pen' })
map('n', '<leader>sd', '<cmd>SessionDelete<CR>', { desc = 'session <d>elete' })
map('n', '<leader>sq', '<cmd>qa<CR>', { desc = 'session <q>uit' })
map('n', '<leader>sm', '<cmd>Telescope session-lens search_session<CR>', { desc = 'Browse Sessions' })
map('n', '<leader>sl', function()
  local session_dir = vim.fn.stdpath("config") .. "/sessions/"
  local sessions = vim.fn.glob(session_dir .. "*.vim", false, true)
  table.sort(sessions, function(a, b)
    return vim.fn.getftime(a) > vim.fn.getftime(b)
  end)
  if #sessions > 0 then
    vim.cmd("source " .. sessions[1])
    print("Loaded session: " .. vim.fn.fnamemodify(sessions[1], ":t"))
  else
    print("No sessions found.")
  end
end, { desc = '[S]ession [L]ast' })

-- LuaSnip keymaps
local ls = require("luasnip")
map({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
map({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
map({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})
map({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})

-- Auto-update plugins on startup
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    require("lazy").update({ show = false })
  end
})
