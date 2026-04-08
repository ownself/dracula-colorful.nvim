vim.cmd('edit D:/Temp/ColorScheme/dracula-colorful.nvim/tests/fixtures/sample.cs')
vim.bo.filetype = 'cs'
vim.cmd('colorscheme dracula-colorful')
vim.schedule(function()
  local target_line = 13
  local line = vim.api.nvim_buf_get_lines(0, target_line - 1, target_line, false)[1]
  print('LINE', target_line, line)
  for col = 0, #line - 1 do
    local caps = vim.treesitter.get_captures_at_pos(0, target_line - 1, col)
    if #caps > 0 then
      io.write('COL ' .. col .. ' ')
      for _, cap in ipairs(caps) do
        local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = cap.capture })
        io.write(cap.capture .. ':' .. (ok and vim.inspect(hl) or 'ERR') .. ' ')
      end
      io.write('\n')
      break
    end
  end
  for _, group in ipairs({ 'Comment', '@comment', '@comment.documentation', '@lsp.type.comment' }) do
    local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = group })
    print('HL', group, ok and vim.inspect(hl) or 'ERR')
  end
  vim.cmd('qa')
end)
