local M = {}

function M.get(C)
  return {
    CmpItemAbbr = { fg = C.fg },
    CmpItemAbbrDeprecated = { fg = C.red, strikethrough = true },
    CmpItemAbbrMatch = { fg = C.cyan, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = C.cyan },
    CmpItemMenu = { fg = C.subtle },
    CmpItemKindText = { fg = C.fg_muted },
    CmpItemKindMethod = { fg = C.green },
    CmpItemKindFunction = { fg = C.green },
    CmpItemKindConstructor = { fg = C.cyan },
    CmpItemKindField = { fg = C.orange },
    CmpItemKindVariable = { fg = C.fg_muted },
    CmpItemKindClass = { fg = C.cyan },
    CmpItemKindInterface = { fg = C.cyan },
    CmpItemKindModule = { fg = C.cyan },
    CmpItemKindProperty = { fg = C.orange },
    CmpItemKindUnit = { fg = C.fg },
    CmpItemKindValue = { fg = C.purple },
    CmpItemKindEnum = { fg = C.cyan },
    CmpItemKindKeyword = { fg = C.pink },
    CmpItemKindSnippet = { fg = C.yellow },
    CmpItemKindColor = { fg = C.purple },
    CmpItemKindFile = { fg = C.yellow },
    CmpItemKindReference = { fg = C.orange },
    CmpItemKindFolder = { fg = C.cyan },
    CmpItemKindEnumMember = { fg = C.purple },
    CmpItemKindConstant = { fg = C.purple },
    CmpItemKindStruct = { fg = C.cyan },
    CmpItemKindEvent = { fg = C.cyan },
    CmpItemKindOperator = { fg = C.pink },
    CmpItemKindTypeParameter = { fg = C.purple },
  }
end

return M
