local plugins = {

    {
        'nvim-telescope/telescope.nvim',
        lazy = false,
        version = '0.1.0',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        lazy = false,
        config = function()
            vim.cmd('colorscheme rose-pine')
        end,
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
    { "onsails/lspkind-nvim" }, -- pictograms for autocomplete menu
    { "theprimeagen/harpoon" }, -- qick navigation between files
    { "mbbill/undotree" }, -- amazing undo navigation
    { "tpope/vim-fugitive" },
    { "nvim-treesitter/nvim-treesitter-context" },
    { "mattn/emmet-vim"}, -- emmet-like snippets
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'onsails/lspkind-nvim' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

}

return plugins
