local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    SnacksPicker = { link = "ThemeFg1" },
    SnacksPickerBorder = { link = "SnacksPicker" },
    SnacksPickerListCursorLine = { link = "CursorLine" },
    SnacksPickerMatch = { link = "ThemePrimaryActive" },
    SnacksPickerPrompt = { link = "ThemePrimary" },
    SnacksPickerTitle = { link = "SnacksPicker" },
    SnacksPickerDir = { link = "ThemeGray" },
    SnacksPickerPathHidden = { link = "ThemeGray" },
    SnacksPickerGitStatusUntracked = { link = "ThemeGray" },
    SnacksPickerPathIgnored = { link = "ThemeBg3" },
  }
end

return M
