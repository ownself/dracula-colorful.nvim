local M = {}

function M.get(C, R)
  local groups = {
    ["@variable"] = R.identifier,
    ["@variable.builtin"] = { fg = C.purple },
    ["@variable.parameter"] = R.parameter,
    ["@variable.member"] = R.field,
    ["@constant"] = { fg = C.purple, bold = true },
    ["@constant.builtin"] = { fg = C.purple },
    ["@constant.macro"] = { fg = C.purple },
    ["@module"] = { fg = C.cyan },
    ["@label"] = { fg = C.subtle },
    ["@string"] = R.string,
    ["@string.documentation"] = { fg = C.comment },
    ["@string.regexp"] = { fg = C.pink },
    ["@string.escape"] = R.escape,
    ["@string.special"] = { fg = C.orange },
    ["@string.special.path"] = { fg = C.yellow },
    ["@string.special.symbol"] = { fg = C.purple },
    ["@string.special.url"] = { fg = C.cyan, underline = true },
    ["@character"] = { fg = C.yellow },
    ["@character.special"] = { fg = C.orange },
    ["@boolean"] = { fg = C.purple },
    ["@number"] = { fg = C.purple },
    ["@number.float"] = { fg = C.purple },
    ["@type"] = R.type,
    ["@type.builtin"] = { fg = C.cyan },
    ["@type.definition"] = { fg = C.cyan },
    ["@attribute"] = { fg = C.green },
    ["@property"] = R.field,
    ["@function"] = R.function_name,
    ["@function.builtin"] = { fg = C.cyan },
    ["@function.call"] = R.function_name,
    ["@function.macro"] = { fg = C.purple },
    ["@function.method"] = R.function_name,
    ["@function.method.call"] = R.function_name,
    ["@constructor"] = { fg = C.cyan },
    ["@operator"] = R.operator,
    ["@keyword"] = R.keyword,
    ["@keyword.function"] = R.keyword,
    ["@keyword.operator"] = R.keyword,
    ["@keyword.import"] = { fg = C.pink },
    ["@keyword.return"] = R.keyword,
    ["@keyword.exception"] = R.keyword,
    ["@keyword.conditional"] = R.keyword,
    ["@keyword.conditional.ternary"] = R.operator,
    ["@keyword.repeat"] = R.keyword,
    ["@keyword.directive"] = { fg = C.purple },
    ["@keyword.directive.define"] = { fg = C.purple },
    ["@punctuation.delimiter"] = { fg = C.fg },
    ["@punctuation.bracket"] = { fg = C.fg },
    ["@punctuation.special"] = { fg = C.orange },
    ["@comment"] = R.comment,
    ["@comment.documentation"] = R.comment,
    ["@comment.error"] = { fg = C.red, bold = true },
    ["@comment.warning"] = { fg = C.orange, bold = true },
    ["@comment.note"] = { fg = C.cyan, bold = true },
    ["@comment.todo"] = { fg = C.bg, bg = C.pink, bold = true },
    ["@markup"] = { fg = C.fg },
    ["@markup.strong"] = { fg = C.orange, bold = true },
    ["@markup.italic"] = { fg = C.yellow, italic = true },
    ["@markup.strikethrough"] = { fg = C.subtle, strikethrough = true },
    ["@markup.underline"] = { fg = C.cyan, underline = true },
    ["@markup.heading"] = { fg = C.purple, bold = true },
    ["@markup.quote"] = { fg = C.comment },
    ["@markup.math"] = { fg = C.purple },
    ["@markup.link"] = { fg = C.pink, underline = true },
    ["@markup.link.label"] = { fg = C.cyan },
    ["@markup.link.url"] = { fg = C.cyan, underline = true, italic = true },
    ["@markup.raw"] = { fg = C.green },
    ["@markup.list"] = { fg = C.cyan },
    ["@markup.list.checked"] = { fg = C.green },
    ["@markup.list.unchecked"] = { fg = C.subtle },
    ["@diff.plus"] = { link = "DiffAdd" },
    ["@diff.minus"] = { link = "DiffDelete" },
    ["@diff.delta"] = { link = "DiffChange" },
    ["@tag"] = { fg = C.pink },
    ["@tag.builtin"] = { fg = C.pink },
    ["@tag.attribute"] = { fg = C.green },
    ["@tag.delimiter"] = { fg = C.fg },
  }

  groups["@parameter"] = groups["@variable.parameter"]
  groups["@field"] = groups["@variable.member"]
  groups["@namespace"] = groups["@module"]
  groups["@symbol"] = groups["@string.special.symbol"]
  groups["@method"] = groups["@function.method"]
  groups["@method.call"] = groups["@function.method.call"]
  groups["@text"] = groups["@markup"]
  groups["@text.strong"] = groups["@markup.strong"]
  groups["@text.emphasis"] = groups["@markup.italic"]
  groups["@text.underline"] = groups["@markup.underline"]
  groups["@text.strike"] = groups["@markup.strikethrough"]
  groups["@text.uri"] = groups["@markup.link.url"]
  groups["@text.title"] = groups["@markup.heading"]
  groups["@text.literal"] = groups["@markup.raw"]
  groups["@text.reference"] = groups["@markup.link"]
  groups["@text.todo"] = groups["@comment.todo"]
  groups["@text.warning"] = groups["@comment.warning"]
  groups["@text.note"] = groups["@comment.note"]
  groups["@text.danger"] = groups["@comment.error"]
  groups["@text.diff.add"] = groups["@diff.plus"]
  groups["@text.diff.delete"] = groups["@diff.minus"]
  groups["@type.qualifier"] = groups["@keyword"]
  groups["@storageclass"] = groups["@keyword"]
  groups["@repeat"] = groups["@keyword.repeat"]
  groups["@conditional"] = groups["@keyword.conditional"]
  groups["@exception"] = groups["@keyword.exception"]
  groups["@include"] = groups["@keyword.import"]
  groups["@define"] = groups["@keyword.directive.define"]
  groups["@preproc"] = groups["@keyword.directive"]

  return groups
end

return M
