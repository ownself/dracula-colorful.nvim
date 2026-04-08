local M = {}

function M.get(C)
  return {
    GitSignsAdd = { fg = C.green },
    GitSignsAddLn = { fg = C.green },
    GitSignsAddNr = { fg = C.green },
    GitSignsChange = { fg = C.cyan },
    GitSignsChangeLn = { fg = C.cyan },
    GitSignsChangeNr = { fg = C.cyan },
    GitSignsDelete = { fg = C.red },
    GitSignsDeleteLn = { fg = C.red },
    GitSignsDeleteNr = { fg = C.red },
  }
end

return M
