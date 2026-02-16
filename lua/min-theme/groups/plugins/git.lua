local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    gitcommitSelectedFile = { link = "ThemeGitAdded" },
    gitcommitDiscardedFile = { link = "ThemeGitDeleted" },
    GitSignsAdd = { link = "ThemeGitAddedSign" },
    GitSignsChange = { link = "ThemeGitModifiedSign" },
    GitSignsDelete = { link = "ThemeGitDeletedSign" },
    diffAdded = { link = "DiffAdd" },
    diffRemoved = { link = "DiffDelete" },
    diffChanged = { link = "DiffChange" },
    diffFile = { link = "ThemePrimaryActive" },
    diffNewFile = { link = "ThemePrimarySoft" },
    diffOldFile = { link = "ThemePrimaryActive" },
    diffLine = { link = "ThemeSecondaryActive" },
    diffIndexLine = { link = "diffChanged" },
    NeogitDiffDelete = { link = "DiffDelete" },
    NeogitDiffAdd = { link = "DiffAdd" },
    NeogitHunkHeader = { link = "WinBar" },
    NeogitHunkHeaderHighlight = { link = "WinBarNC" },
    DiffviewStatusModified = { link = "ThemeGitModifiedBold" },
    DiffviewFilePanelInsertions = { link = "ThemeGitAddedBold" },
    DiffviewFilePanelDeletions = { link = "ThemeGitDeletedBold" },
  }
end

return M
