vim.g.mapleader = " "
vim.keymap.set("n", "<leader>.", vim.cmd.Ex)

--Open terminal in nvim
--vim.keymap.set("n", "<leader>ot", vim.api.nvim_create_user_command('FTermToggle', require(FTerm).toggle, {bang = true}))

-- Move blocks of highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor in center of screen when doing full page moves
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep current coppied value when pasting
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Allow copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- Cut to system keyboard
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


-- lsp zero keybindings
-- K dispaly info on hover
-- gd go to defintion
-- gi list all implementaions
-- gr go to refrences

