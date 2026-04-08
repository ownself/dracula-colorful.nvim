local M = {}

function M.get(C)
  return {
    BlinkCmpKindText = { fg = C.fg_muted },
    BlinkCmpKindMethod = { fg = C.green },
    BlinkCmpKindFunction = { fg = C.green },
    BlinkCmpKindConstructor = { fg = C.cyan },
    BlinkCmpKindField = { fg = C.orange },
    BlinkCmpKindVariable = { fg = C.fg_muted },
    BlinkCmpKindClass = { fg = C.cyan },
    BlinkCmpKindInterface = { fg = C.cyan },
    BlinkCmpKindModule = { fg = C.cyan },
    BlinkCmpKindProperty = { fg = C.orange },
    BlinkCmpKindUnit = { fg = C.fg },
    BlinkCmpKindValue = { fg = C.purple },
    BlinkCmpKindEnum = { fg = C.cyan },
    BlinkCmpKindKeyword = { fg = C.pink },
    BlinkCmpKindSnippet = { fg = C.yellow },
    BlinkCmpKindColor = { fg = C.purple },
    BlinkCmpKindFile = { fg = C.yellow },
    BlinkCmpKindReference = { fg = C.orange },
    BlinkCmpKindFolder = { fg = C.cyan },
    BlinkCmpKindEnumMember = { fg = C.purple },
    BlinkCmpKindConstant = { fg = C.purple },
    BlinkCmpKindStruct = { fg = C.cyan },
    BlinkCmpKindEvent = { fg = C.cyan },
    BlinkCmpKindOperator = { fg = C.pink },
    BlinkCmpKindTypeParameter = { fg = C.purple },
  }
end

return M
