local U = require("dracula-colorful.util.color")

local M = {}

function M.get(C, R, O)
  local transparent = O.transparent_background
  local normal_bg = transparent and C.none or C.bg

  return {
    Normal = { fg = C.fg, bg = normal_bg },
    NormalFloat = { fg = C.fg, bg = transparent and C.none or C.bg_float },
    FloatBorder = { fg = C.border, bg = transparent and C.none or C.bg_float },
    ColorColumn = { bg = C.bg_dark },
    CursorColumn = { bg = C.bg_cursorline },
    CursorLine = { bg = C.bg_cursorline },
    CursorLineNr = { fg = C.pink, bold = true },
    CursorLineFold = { fg = C.subtle },
    CursorLineSign = { fg = C.subtle },
    Directory = { fg = C.cyan, bold = true },
    EndOfBuffer = { fg = C.bg_dark },
    FoldColumn = { fg = C.subtle },
    Folded = { fg = C.subtle, bg = C.bg_dark },
    IncSearch = { fg = C.bg, bg = C.orange, bold = true },
    Search = { fg = C.fg, bg = U.blend(C.purple, C.bg, 0.35) },
    CurSearch = { link = "IncSearch" },
    LineNr = { fg = "#A3A5BA" },
    MatchParen = { fg = C.fg, bg = "#747A9D", bold = true },
    NonText = { fg = C.subtle },
    Pmenu = { fg = C.fg, bg = C.bg_float },
    PmenuMatch = { fg = C.cyan, bg = C.bg_float, bold = true },
    PmenuMatchSel = { fg = C.cyan, bg = C.bg_selection, bold = true },
    PmenuSbar = { bg = C.bg_dark },
    PmenuSel = { fg = C.fg, bg = C.bg_selection },
    PmenuThumb = { bg = C.purple },
    Question = { fg = C.green },
    SignColumn = { fg = C.subtle, bg = normal_bg },
    SpecialKey = { fg = C.red },
    StatusLine = { fg = C.fg, bg = C.gutter, bold = true },
    StatusLineNC = { fg = C.subtle, bg = C.bg_dark },
    TabLine = { fg = C.subtle, bg = C.bg_dark },
    TabLineFill = { fg = C.subtle, bg = C.bg_dark },
    TabLineSel = { fg = C.fg, bg = C.bg_float, bold = true },
    Title = { fg = C.cyan, bold = true },
    VertSplit = { fg = C.border },
    Visual = { bg = C.bg_selection },
    VisualNOS = { link = "Visual" },
    WarningMsg = { fg = C.orange },
    WinSeparator = { fg = C.border },
    WildMenu = { fg = C.bg, bg = C.purple, bold = true },
    Whitespace = { fg = C.guide },
    WinBar = { fg = C.fg_muted, bg = transparent and C.none or C.bg },
    WinBarNC = { fg = C.subtle, bg = transparent and C.none or C.bg },
    FloatTitle = { fg = C.pink, bg = transparent and C.none or C.bg_float },
    NormalNC = O.dim_inactive and { fg = C.fg_muted, bg = transparent and C.none or C.bg } or { link = "Normal" },
    Cursor = { fg = C.bg, bg = C.fg },
    CursorIM = { link = "Cursor" },
    lCursor = { link = "Cursor" },
    TermCursor = { fg = C.bg, bg = C.fg },
    DiffAdd = { fg = C.green, bg = U.blend(C.green, C.bg, 0.18) },
    DiffChange = { fg = C.cyan, bg = U.blend(C.cyan, C.bg, 0.16) },
    DiffDelete = { fg = C.red, bg = U.blend(C.red, C.bg, 0.18) },
    DiffText = { fg = C.bg, bg = C.orange, bold = true },
    Added = { link = "DiffAdd" },
    Changed = { link = "DiffChange" },
    Removed = { link = "DiffDelete" },
  }
end

return M
