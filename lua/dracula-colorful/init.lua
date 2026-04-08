local M = {}

local default_options = {
  transparent_background = false,
  dim_inactive = false,
  styles = {
    comments = {},
    keywords = {},
    functions = {},
    parameters = {},
    fields = {},
    types = {},
  },
  integrations = {
    cmp = true,
    blink = true,
    gitsigns = true,
    rainbow_delimiters = true,
    nvimtree = true,
  },
}

M.options = vim.deepcopy(default_options)

function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", vim.deepcopy(default_options), opts or {})
end

function M.get_groups()
  local palette = require("dracula-colorful.palette").get()
  local roles = require("dracula-colorful.roles").get(palette, M.options)
  local groups = {}

  local modules = {
    "dracula-colorful.groups.editor",
    "dracula-colorful.groups.syntax",
    "dracula-colorful.groups.treesitter",
    "dracula-colorful.groups.lsp",
    "dracula-colorful.groups.semantic_tokens",
    "dracula-colorful.groups.integrations",
  }

  for _, module in ipairs(modules) do
    groups = vim.tbl_extend("force", groups, require(module).get(palette, roles, M.options))
  end

  return groups, palette, roles
end

function M.load()
  if vim.fn.has("nvim-0.12") == 0 then
    vim.notify("dracula-colorful.nvim requires Neovim 0.12+", vim.log.levels.ERROR)
    return
  end

  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "dracula-colorful"

  local groups, palette = M.get_groups()
  require("dracula-colorful.util.highlighter").apply(groups)

  for i = 0, 15 do
    vim.g["terminal_color_" .. i] = palette.terminal[i + 1]
  end
end

return M
