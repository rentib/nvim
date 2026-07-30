return {
    "saghen/blink.cmp",
    event = { "InsertEnter" },
    version = "1.*",
    build = "cargo build --release",
    opts = {
        keymap = {
            ["<C-n>"]     = { "select_next",       "fallback" },
            ["<C-p>"]     = { "select_prev",       "fallback" },
            ["<C-e>"]     = { "cancel",            "fallback" },
            ["<C-y>"]     = { "select_and_accept", "fallback" },
            ["<C-space>"] = { "select_and_accept", "fallback" },
        },
        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = "mono"
        },
        sources = {
            default = { "lsp", "buffer", "path" },
            providers = {
                lsp = {
                    name = "lsp",
                    module = "blink.cmp.sources.lsp",
                    max_items = 7,
                },
                buffer = {
                    name = "buffer",
                    module = "blink.cmp.sources.buffer",
                    max_items = 5,
                    min_keyword_length = 2,
                },
            },
        },
        completion = {
            accept = { auto_brackets = { enabled = false, }, },
            list = { selection = { preselect = false, auto_insert = true, }, },
            menu = { draw = { columns = { { "label", "label_description", gap = 1 }, }, }, },
        },
        fuzzy = { implementation = "prefer_rust_with_warning" },
        signature = { enabled = true, window = { show_documentation = false }, },
        cmdline = { enabled = false },

    },
    opts_extend = { "sources.default" }
}
