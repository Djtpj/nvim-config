-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- DO NOT TOUCH WILL EXPLODE - DERANGED ROARK 12-23-22
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            -- vim.cmd('colorscheme rose-pine')
        end
    })

    use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})

    use('theprimeagen/harpoon')
    use('theprimeagen/vim-be-good')

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    use('vim-airline/vim-airline')
    use('vim-airline/vim-airline-themes')

    use('andweeb/presence.nvim')

    use('jiangmiao/auto-pairs')
    use { "nvim-telescope/telescope-file-browser.nvim" }

    use('drmingdrmer/vim-tabbar')

    use('tpope/vim-commentary')
    use('ap/vim-css-color')
end)
