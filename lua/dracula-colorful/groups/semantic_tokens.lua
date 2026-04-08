local M = {}

function M.get(C)
  return {
    ["@lsp.type.class"] = { fg = C.cyan },
    ["@lsp.type.comment"] = { fg = C.comment, italic = true },
    ["@lsp.type.decorator"] = { fg = C.green },
    ["@lsp.type.enum"] = { fg = C.cyan },
    ["@lsp.type.enumMember"] = { fg = C.purple },
    ["@lsp.type.function"] = { fg = C.green },
    ["@lsp.type.interface"] = { fg = C.cyan },
    ["@lsp.type.macro"] = { fg = C.purple },
    ["@lsp.type.method"] = { fg = C.green },
    ["@lsp.type.namespace"] = { fg = C.cyan },
    ["@lsp.type.parameter"] = { fg = C.fg_muted, italic = true },
    ["@lsp.type.property"] = { fg = C.orange },
    ["@lsp.type.struct"] = { fg = C.cyan },
    ["@lsp.type.type"] = { fg = C.cyan },
    ["@lsp.type.typeParameter"] = { fg = C.purple },
    ["@lsp.type.variable"] = {},
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.function.builtin"] = { link = "@function.builtin" },
    ["@lsp.typemod.method.defaultLibrary"] = { fg = C.cyan },
    ["@lsp.typemod.variable.defaultLibrary"] = { fg = C.purple },
    ["@lsp.typemod.variable.readonly"] = { fg = C.purple, bold = true },
    ["@lsp.typemod.property.readonly"] = { fg = C.purple, bold = true },
    ["@lsp.typemod.enumMember.defaultLibrary"] = { fg = C.purple, bold = true },
  }
end

return M
