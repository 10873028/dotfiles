if vim.fn.executable("gcc") == 1 then
    vim.api.nvim_buf_set_keymap(0, "n", "<F9>", "<Cmd>!time gcc -g3 %<CR>", {noremap = true, silent = true})
end

if vim.fn.executable("lldb-vscode") == 1 then
    dap()
end

vim.api.nvim_buf_set_option(0, "commentstring", "// %s")
