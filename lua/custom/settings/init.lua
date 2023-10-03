-- highlight the current line
vim.o.cursorline = true
vim.opt.relativenumber = true

vim.o.smartindent = true

local augroup = vim.api.nvim_create_augroup
local CustomGroup = augroup('Custom', {})

local autocmd = vim.api.nvim_create_autocmd
-- trim tailing whitespace
autocmd({ "BufWritePre" }, {
    group = CustomGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

-- prevent/support my common typos
vim.keymap.set("n", "q:", "<nop>")

-- keybindings
vim.keymap.set('n', '<leader>bd', ":bd<Cr>", { desc = '[B]uffer [D]elete' })
