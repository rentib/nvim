vim.g.c_syntax_for_h       = true -- .h files are c not cpp

vim.opt.filetype.plugin    = true
vim.opt.filetype.indent    = true

vim.o.fileencoding         = "utf-8"
vim.o.spelllang            = "pl,en"
vim.o.spelloptions         = "camel"

vim.opt.backupdir:remove(".")
vim.o.backup     = true
vim.o.swapfile   = false
vim.o.undofile   = true
vim.o.autoread   = true

vim.o.backspace  = "indent,eol,start"
vim.o.confirm    = true

vim.o.updatetime = 250

vim.opt.completeopt:append({ "menuone", "preview", "popup", "fuzzy", "noinsert", "noselect" })
vim.opt.wildignore:append({ "*.o" })
vim.o.wildignorecase = true
vim.o.wildmode       = "longest:full"

vim.o.laststatus     = 0
vim.o.showtabline    = 1
vim.o.ruler          = true
vim.o.showmode       = true
vim.o.showcmd        = true
vim.o.display        = "lastline,truncate"

vim.o.number         = true
vim.o.relativenumber = true
vim.o.numberwidth    = 2
vim.o.signcolumn     = "yes"
vim.o.cursorline     = true
vim.o.cursorlineopt  = "number"
vim.o.colorcolumn    = "+1"

vim.o.incsearch      = true
vim.o.hlsearch       = true
vim.o.ignorecase     = true
vim.o.smartcase      = true
vim.o.inccommand     = "split"

vim.o.autoindent     = true
vim.o.smartindent    = true
vim.o.shiftwidth     = 4
vim.o.tabstop        = 4
vim.o.softtabstop    = 4
vim.o.shiftround     = true
vim.o.expandtab      = true

vim.opt.shortmess:append("c")

vim.o.textwidth = 79
vim.o.wrap      = false
vim.cmd [[ au FileType * setlocal formatoptions=crqn1]jp ]] -- https://stackoverflow.com/questions/28375119/how-to-override-options-set-by-ftplugins-in-vim

vim.o.sidescroll    = 1
vim.o.scrolloff     = 7
vim.o.sidescrolloff = 8

vim.o.virtualedit   = "block"
vim.cmd [[ au FileType * setlocal foldmethod=marker ]]

vim.o.termguicolors = true

vim.o.clipboard      = "unnamedplus"
vim.o.mouse          = "n"
