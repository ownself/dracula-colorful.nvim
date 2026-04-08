local U = require("dracula-colorful.util.color")

local M = {}

function M.get(C)
  return {
    LspReferenceText = { bg = C.bg_selection },
    LspReferenceRead = { bg = C.bg_selection },
    LspReferenceWrite = { bg = C.bg_selection },

    DiagnosticError = { fg = C.red },
    DiagnosticWarn = { fg = C.orange },
    DiagnosticInfo = { fg = C.cyan },
    DiagnosticHint = { fg = C.sky },
    DiagnosticOk = { fg = C.green },

    DiagnosticUnderlineError = { undercurl = true, sp = C.red },
    DiagnosticUnderlineWarn = { undercurl = true, sp = C.orange },
    DiagnosticUnderlineInfo = { undercurl = true, sp = C.cyan },
    DiagnosticUnderlineHint = { undercurl = true, sp = C.sky },
    DiagnosticUnderlineOk = { undercurl = true, sp = C.green },

    DiagnosticVirtualTextError = { fg = C.red, bg = U.blend(C.red, C.bg, 0.10) },
    DiagnosticVirtualTextWarn = { fg = C.orange, bg = U.blend(C.orange, C.bg, 0.10) },
    DiagnosticVirtualTextInfo = { fg = C.cyan, bg = U.blend(C.cyan, C.bg, 0.10) },
    DiagnosticVirtualTextHint = { fg = C.sky, bg = U.blend(C.sky, C.bg, 0.10) },
    DiagnosticVirtualTextOk = { fg = C.green, bg = U.blend(C.green, C.bg, 0.10) },

    DiagnosticFloatingError = { fg = C.red },
    DiagnosticFloatingWarn = { fg = C.orange },
    DiagnosticFloatingInfo = { fg = C.cyan },
    DiagnosticFloatingHint = { fg = C.sky },
    DiagnosticFloatingOk = { fg = C.green },

    DiagnosticSignError = { fg = C.red },
    DiagnosticSignWarn = { fg = C.orange },
    DiagnosticSignInfo = { fg = C.cyan },
    DiagnosticSignHint = { fg = C.sky },
    DiagnosticSignOk = { fg = C.green },

    LspDiagnosticsDefaultError = { link = "DiagnosticError" },
    LspDiagnosticsDefaultWarning = { link = "DiagnosticWarn" },
    LspDiagnosticsDefaultInformation = { link = "DiagnosticInfo" },
    LspDiagnosticsDefaultHint = { link = "DiagnosticHint" },
    LspDiagnosticsUnderlineError = { link = "DiagnosticUnderlineError" },
    LspDiagnosticsUnderlineWarning = { link = "DiagnosticUnderlineWarn" },
    LspDiagnosticsUnderlineInformation = { link = "DiagnosticUnderlineInfo" },
    LspDiagnosticsUnderlineHint = { link = "DiagnosticUnderlineHint" },

    LspInlayHint = { fg = C.subtle, bg = U.blend(C.bg_float, C.bg, 0.65), italic = true },
    LspCodeLens = { fg = C.subtle, italic = true },
    LspCodeLensSeparator = { fg = C.subtle },
    LspSignatureActiveParameter = { fg = C.orange, bold = true, underline = true },
    LspInfoBorder = { link = "FloatBorder" },
  }
end

return M
