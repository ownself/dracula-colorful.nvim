local M = {}

function M.get(C, _, O)
  local comment_italic = vim.tbl_contains((O.styles and O.styles.comments) or {}, "italic")
  local parameter_italic = vim.tbl_contains((O.styles and O.styles.parameters) or {}, "italic")

  return {
    ["@lsp.type.class"] = { fg = C.cyan },
    ["@lsp.type.comment"] = { fg = C.comment, italic = comment_italic },
    ["@lsp.type.enum"] = { fg = C.cyan },
    ["@lsp.type.decorator"] = { fg = C.green },
    ["@lsp.type.enumMember"] = { fg = C.purple },
    ["@lsp.type.event"] = { fg = C.cyan },
    ["@lsp.type.field"] = { fg = C.orange },
    ["@lsp.type.function"] = { fg = C.green },
    ["@lsp.type.interface"] = { fg = C.cyan },
    ["@lsp.type.macro"] = { fg = C.purple },
    ["@lsp.type.method"] = { fg = C.green },
    ["@lsp.type.namespace"] = { fg = C.cyan },
    ["@lsp.type.number"] = { fg = C.purple },
    ["@lsp.type.operator"] = { fg = C.pink },
    ["@lsp.type.parameter"] = { fg = C.fg_parameter, italic = parameter_italic },
    ["@lsp.type.property"] = { fg = C.amber },
    ["@lsp.type.regexp"] = { fg = C.pink },
    ["@lsp.type.string"] = { fg = C.yellow },
    ["@lsp.type.struct"] = { fg = C.cyan },
    ["@lsp.type.type"] = { fg = C.cyan },
    ["@lsp.type.typeParameter"] = { fg = C.purple },
    ["@lsp.type.variable.readonly"] = { fg = C.purple, bold = true },
    ["@lsp.type.variable"] = { fg = C.fg_muted },
    ["@lsp.typemod.class.defaultLibrary"] = { fg = C.cyan, italic = true },
    ["@lsp.typemod.enum.defaultLibrary"] = { fg = C.cyan, italic = true },
    ["@lsp.typemod.field.defaultLibrary"] = { fg = C.orange, italic = true },
    ["@lsp.typemod.field.readonly"] = { fg = C.orange, bold = true },
    ["@lsp.typemod.field.static"] = { fg = C.orange, bold = true },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.function.builtin"] = { link = "@function.builtin" },
    ["@lsp.typemod.method.defaultLibrary"] = { fg = C.cyan },
    ["@lsp.typemod.method.declaration"] = { fg = C.green },
    ["@lsp.typemod.property.defaultLibrary"] = { fg = C.amber },
    ["@lsp.typemod.variable.defaultLibrary"] = { fg = C.purple },
    ["@lsp.typemod.variable.globalScope"] = { fg = C.purple, bold = true },
    ["@lsp.typemod.variable.readonly"] = { fg = C.purple, bold = true },
    ["@lsp.typemod.variable.static"] = { fg = C.purple, bold = true },
    ["@lsp.typemod.parameter.readonly"] = { fg = C.purple, italic = parameter_italic },
    ["@lsp.typemod.parameter.modification"] = { fg = C.purple, italic = parameter_italic, underline = true },
    ["@lsp.typemod.property.readonly"] = { fg = C.purple, bold = true },
    ["@lsp.typemod.property.static"] = { fg = C.purple, bold = true },
    ["@lsp.typemod.enumMember.defaultLibrary"] = { fg = C.purple, bold = true },
    ["@lsp.typemod.type.defaultLibrary"] = { fg = C.cyan, italic = true },
  }
end

return M
