vim.keymap.set("n", "<C-t>", ":Ex<CR>") -- Open file explorer

vim.keymap.set("n", "<leader>o", "o <Esc>") -- New empty line below
vim.keymap.set("n", "<leader>O", "O <Esc>") -- New empty line above

vim.keymap.set("n", "<C-s>", ":w<CR>") -- Save
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>") -- Save and enter normal mode

vim.keymap.set("n", "<C-j>", "<Nop>") -- Move to the previous tab
vim.keymap.set("n", "<C-j>", ":tabprevious<CR>") -- Move to the previous tab
vim.keymap.set("n", "<C-k>", "<Nop>") -- Move to the previous tab
vim.keymap.set("n", "<C-k>", ":tabnext<CR>") -- Move to the next tab

vim.keymap.set("n", "<A-h>", ":wincmd h<CR>") -- Move to the left a buffer
vim.keymap.set("n", "<A-l>", ":wincmd l<CR>") -- Move to the right a buffer

vim.keymap.set("n", "gh", "^") -- Move to the beginning of the line
vim.keymap.set("n", "gl", "$") -- Move to the end of the line

vim.keymap.set("n", "<leader>b", ":ls<CR>:buffer<Space>") -- Open a list of buffers and open the selected buffer

vim.keymap.set("n", "<C-w>", ":bd<CR>") -- Close current tab

vim.keymap.set("n", "<C-_>", ":Commentary<CR>") -- Comment current line
vim.keymap.set("i", "<C-_>", "<Esc>:Commentary<CR>i") -- Comment current line
