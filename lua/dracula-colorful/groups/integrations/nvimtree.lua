local M = {}

function M.get(C)
  return {
    NvimTreeFolderName = { fg = C.cyan, bold = true },
    NvimTreeOpenedFolderName = { fg = C.cyan, bold = true },
    NvimTreeFolderIcon = { fg = C.cyan },
    NvimTreeEmptyFolderName = { fg = C.subtle },
    NvimTreeRootFolder = { fg = C.purple, bold = true },
    NvimTreeIndentMarker = { fg = C.guide },
    NvimTreeExecFile = { fg = C.green },
    NvimTreeImageFile = { fg = C.yellow },
    NvimTreeSpecialFile = { fg = C.orange, underline = true },
    NvimTreeGitDeleted = { fg = C.red },
    NvimTreeGitDirty = { fg = C.orange },
    NvimTreeGitNew = { fg = C.green },
    NvimTreeGitStaged = { fg = C.cyan },
  }
end

return M
