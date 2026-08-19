return {
    { "tpope/vim-fugitive", cmd = { "G" } },
    { "tpope/vim-surround", keys = { "ys", "ds", "cs" } },
    { "tpope/vim-rsi",      event = { "InsertEnter", "CmdLineEnter" } },
    { "farmergreg/vim-lastplace" },

    { "stevearc/oil.nvim",       opts = {}  },
    { "stevearc/quicker.nvim",   opts = {}, ft = "qf" },
    { "lewis6991/gitsigns.nvim", opts = {} },

    {
        "rentib/cliff.nvim",
        keys = {
            { "<c-j>", mode = { "n", "v", "o" }, function() require("cliff").go_down() end },
            { "<c-k>", mode = { "n", "v", "o" }, function() require("cliff").go_up() end },
        },
    },

    -- language specific
    { "lervag/vimtex",              enabled = false, ft = "tex" },
    { "akinsho/flutter-tools.nvim", enabled = false, ft = "dart", dependencies = { "nvim-lua/plenary.nvim" }, opts = {} },
    { "mrcjkb/rustaceanvim",        enabled = false, version = "^9" },
    { 'mrcjkb/haskell-tools.nvim',  enabled = false, version = "^6" },
}
