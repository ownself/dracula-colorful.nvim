local M = {}

function M.get(C)
  return {
    RainbowDelimiterRed = { fg = C.rainbow[2] },
    RainbowDelimiterYellow = { fg = C.rainbow[3] },
    RainbowDelimiterBlue = { fg = C.rainbow[1] },
    RainbowDelimiterOrange = { fg = C.rainbow[3] },
    RainbowDelimiterGreen = { fg = C.rainbow[4] },
    RainbowDelimiterViolet = { fg = C.rainbow[1] },
    RainbowDelimiterCyan = { fg = C.rainbow[5] },
  }
end

return M
