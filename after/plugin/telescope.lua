local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>e', ":Telescope file_browser<CR>", {})
vim.keymap.set('n', '<leader><leader>', builtin.find_files, {})
vim.keymap.set('n', '<leader>cp', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

require("telescope").setup {
    extensions = {
        file_browser = {
            theme = "ivy",
            hijack_netrw = true,

            mappings = {
                ["i"] = {
                    ["<C-t>"] = require "telescope.actions".select_tab,
                },

                ["n"] = {
                    ["t"] = require "telescope.actions".select_tab,
                }
            }
        }
    }
}

require("telescope").load_extension "file_browser"
