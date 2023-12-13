-- quick exit
vim.api.nvim_set_keymap('n', '<leader>q', ':confirm qall<CR>', { noremap = true, silent = true })

-- autoformat on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

-- forward clipboard inside a codespace
-- see https://github.com/BlakeWilliams/remote-development-manager
if os.getenv("CODESPACES") ~= nil then
    vim.g.clipboard = {
        name = "rdm",
        copy = {
            ["+"] = {"rdm", "copy"},
            ["*"] = {"rdm", "copy"}
        },
        paste = {
            ["+"] = {"rdm", "paste"},
            ["*"] = {"rdm", "paste"}
        }
    }
end
