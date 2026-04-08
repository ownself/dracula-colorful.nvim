local M = {}

function M.get(C, O)
  local styles = O.styles or {}

  return {
    text = { fg = C.fg },
    identifier = { fg = C.fg_muted },
    comment = { fg = C.comment, italic = vim.tbl_contains(styles.comments or {}, "italic") },
    keyword = { fg = C.pink },
    function_name = { fg = C.green },
    type = { fg = C.cyan },
    parameter = { fg = C.fg_muted, italic = vim.tbl_contains(styles.parameters or {}, "italic") },
    field = { fg = C.orange },
    constant = { fg = C.purple, bold = true },
    string = { fg = C.yellow },
    escape = { fg = C.orange },
    operator = { fg = C.pink },
    module = { fg = C.cyan },
    diagnostic_error = { fg = C.red },
    diagnostic_warn = { fg = C.orange },
    diagnostic_info = { fg = C.cyan },
    diagnostic_hint = { fg = C.sky },
    ui_border = { fg = C.border },
    ui_selection = { bg = C.bg_selection },
    ui_menu = { fg = C.fg, bg = C.bg_float },
  }
end

return M
