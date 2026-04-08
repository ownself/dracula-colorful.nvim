vim.cmd('edit D:/Temp/ColorScheme/dracula-colorful.nvim/tests/fixtures/sample.cs')
vim.bo.filetype = 'cs'
vim.cmd('colorscheme dracula-colorful')
vim.schedule(function()
  local targets = {
    {14, 'name'},
    {15, 'token'},
    {16, '_tokens'},
    {17, 'formatter'},
    {18, 'token'},
    {19, 'formatter'},
  }
  for _, item in ipairs(targets) do
    local lnum, needle = item[1], item[2]
    local line = vim.api.nvim_buf_get_lines(0, lnum - 1, lnum, false)[1]
    local col = line and line:find(needle, 1, true) or nil
    print('LINE', lnum, needle, line or '')
    if col then
      local caps = vim.treesitter.get_captures_at_pos(0, lnum - 1, col - 1)
      for _, cap in ipairs(caps) do
        print('CAP', cap.capture)
      end
    end
  end
  for _, group in ipairs({ '@variable', '@variable.parameter', '@variable.member', 'Identifier' }) do
    local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = group })
    print('HL', group, ok and vim.inspect(hl) or 'ERR')
  end
  vim.cmd('qa')
end)
