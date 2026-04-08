vim.opt.runtimepath:prepend('D:/Temp/ColorScheme/dracula-colorful.nvim')
vim.opt.runtimepath:append('C:/Users/JimmyLiu/AppData/Local/nvim-data/lazy/nvim-treesitter')
vim.cmd('colorscheme dracula-colorful')
vim.cmd('edit D:/Temp/ColorScheme/dracula-colorful.nvim/tests/fixtures/sample.cs')
vim.bo.filetype = 'cs'
vim.treesitter.start(0, 'c_sharp')
local targets = { 6, 10, 20 }
for _, lnum in ipairs(targets) do
  local line = vim.api.nvim_buf_get_lines(0, lnum - 1, lnum, false)[1]
  print('LINE', lnum, line)
  for col = 0, #line - 1 do
    local caps = vim.treesitter.get_captures_at_pos(0, lnum - 1, col)
    if #caps > 0 then
      io.write('COL ' .. col .. ' ')
      for _, cap in ipairs(caps) do
        io.write(cap.capture .. ' ')
      end
      io.write('\n')
    end
  end
end
vim.cmd('qa')
