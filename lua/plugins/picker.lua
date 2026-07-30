return {
    "ibhagwan/fzf-lua",
    config = function()
        local fzf = require("fzf-lua")
        local m   = require("keymap")

        fzf.setup({ "fzf-vim" })

        m.n("<c-p>",      fzf.vcs_files)
        m.n("<leader>ff", fzf.files)
        m.n("<leader>fg", fzf.live_grep_native)
        m.n("<leader>fd", fzf.diagnostics_workspace)
        m.n("<leader>fm", fzf.manpages)
        m.n("<leader>fh", fzf.helptags)

        -- disable blinking cursor
        vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,t:block"
    end
}
