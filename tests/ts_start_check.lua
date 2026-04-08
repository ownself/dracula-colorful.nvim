vim.cmd('edit D:/Temp/ColorScheme/dracula-colorful.nvim/tests/fixtures/sample.cs')
vim.bo.filetype = 'cs'
local ok, err = pcall(vim.treesitter.start, 0)
print('START_OK', ok)
if not ok then print('START_ERR', err) end
print('ACTIVE', vim.treesitter.highlighter.active[vim.api.nvim_get_current_buf()] ~= nil)
vim.cmd('qa')
