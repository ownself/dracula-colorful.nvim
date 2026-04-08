vim.cmd('edit D:/Temp/ColorScheme/dracula-colorful.nvim/tests/fixtures/sample.cs')
vim.bo.filetype = 'cs'
vim.cmd('colorscheme dracula-colorful')
vim.schedule(function()
  local targets = { {20, 'return'}, {6, 'record'}, {10, 'private'} }
  for _, item in ipairs(targets) do
    local lnum, needle = item[1], item[2]
    local line = vim.api.nvim_buf_get_lines(0, lnum - 1, lnum, false)[1]
    local col = line:find(needle, 1, true)
    print('LINE', lnum, needle, line)
    if col then
      local caps = vim.treesitter.get_captures_at_pos(0, lnum - 1, col - 1)
      for _, cap in ipairs(caps) do
        print('CAP', cap.capture)
      end
    end
  end
  vim.cmd('qa')
end)
