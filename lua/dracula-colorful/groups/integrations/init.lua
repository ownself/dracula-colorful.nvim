local M = {}

function M.get(C, R, O)
  local groups = {}
  local integrations = O.integrations or {}

  local modules = {
    cmp = "dracula-colorful.groups.integrations.cmp",
    blink = "dracula-colorful.groups.integrations.blink",
    gitsigns = "dracula-colorful.groups.integrations.gitsigns",
    rainbow_delimiters = "dracula-colorful.groups.integrations.rainbow_delimiters",
    nvimtree = "dracula-colorful.groups.integrations.nvimtree",
  }

  for key, module in pairs(modules) do
    if integrations[key] ~= false then
      groups = vim.tbl_extend("force", groups, require(module).get(C, R, O))
    end
  end

  return groups
end

return M
