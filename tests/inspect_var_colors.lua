vim.cmd('colorscheme dracula-colorful')
for _, group in ipairs({ '@variable', '@variable.parameter', '@variable.member', '@lsp.type.parameter' }) do
  local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = group })
  print('HL', group, ok and vim.inspect(hl) or 'ERR')
end
vim.cmd('qa')
