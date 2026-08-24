local function safe_require(mod)
    local ok, r = pcall(require, mod)
    if not ok then
        vim.schedule(function()
            error(r)
        end)
    end
end

safe_require("rentib.mappings")
safe_require("rentib.options")
safe_require("rentib.lazy")
safe_require("rentib.lsp")
