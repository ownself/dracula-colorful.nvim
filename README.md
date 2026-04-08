# dracula-colorful.nvim

A Neovim 0.12+ colorscheme inspired by Rider's `Dracula Colorful`, with first-class TreeSitter and LSP support.

## Goals

- preserve the Dracula family identity
- follow Rider `Dracula Colorful` token semantics where Neovim can express them
- support modern TreeSitter captures and LSP semantic tokens
- keep the implementation modular and easy to extend

## Status

This repository is an initial implementation driven by the OpenSpec change `add-dracula-colorful-nvim`.

Implemented in the first pass:

- standalone `:colorscheme dracula-colorful`
- canonical palette and semantic role mapping
- editor UI groups and base Vim syntax groups
- TreeSitter groups, compatibility aliases, and language query overrides
- native LSP diagnostics, inlay hints, code lens, and semantic token groups
- focused integrations for `nvim-cmp`, `blink.cmp`, `gitsigns`, `rainbow-delimiters`, and `nvim-tree`
- fixture files for visual verification

Implemented in the second pass:

- improved TSX and JSX-specific query overrides
- broader TreeSitter capture coverage for modifier, builtin, CSS, HTML, YAML, and markdown heading cases
- richer semantic token coverage for readonly, static, default-library, and global-scope hints
- Rider-inspired rainbow delimiter colors derived from the `.icls` scheme

## Installation

Lazy.nvim example:

```lua
{
  dir = "D:/Temp/ColorScheme/dracula-colorful.nvim",
  name = "dracula-colorful.nvim",
  priority = 1000,
  config = function()
    require("dracula-colorful").setup({
      transparent_background = false,
      styles = {
        comments = { "italic" },
        parameters = { "italic" },
      },
    })
    vim.cmd.colorscheme("dracula-colorful")
  end,
}
```

## Configuration

```lua
require("dracula-colorful").setup({
  transparent_background = false,
  dim_inactive = false,
  styles = {
    comments = { "italic" },
    keywords = {},
    functions = {},
    parameters = { "italic" },
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
})
```

## Palette Notes

This theme uses Rider `Dracula Colorful` as the primary semantic reference.

Intentional departures from `dracula.vim` include:

- comments are brighter blue to match Rider's comment rendering
- identifiers and parameters use a muted foreground instead of classic Dracula white or orange
- fields and properties are orange
- classes, interfaces, and namespaces are cyan
- constants and static symbols are purple

## Semantic Precedence

Highlight layers are applied in this order:

1. editor UI and base syntax
2. generic TreeSitter captures
3. language-specific TreeSitter query overrides
4. LSP semantic tokens when they add useful specificity
5. plugin integrations

## Known Fidelity Gaps

- IntelliJ exposes token categories that Neovim cannot represent uniformly.
- Semantic token fidelity depends on the language server.
- Some Rider visuals come from IDE behavior rather than colorscheme data.

## Development

Minimal headless check:

```powershell
nvim --headless -u tests/minimal_init.lua "+colorscheme dracula-colorful" "+qa"
```
