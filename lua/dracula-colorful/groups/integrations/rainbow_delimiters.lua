local M = {}

function M.get(C)
  return {
    RainbowDelimiterRed = { fg = C.pink },
    RainbowDelimiterYellow = { fg = C.yellow },
    RainbowDelimiterBlue = { fg = C.cyan },
    RainbowDelimiterOrange = { fg = C.orange },
    RainbowDelimiterGreen = { fg = C.green },
    RainbowDelimiterViolet = { fg = C.purple },
    RainbowDelimiterCyan = { fg = C.cyan },
  }
end

return M
