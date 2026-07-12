local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    TelescopeNormal = { link = "ThemeFg1" },
    TelescopeSelection = { link = "CursorLine" },
    TelescopeSelectionCaret = { link = "ThemePrimary" },
    TelescopeMultiSelection = { link = "ThemeGray" },
    TelescopeBorder = { link = "TelescopeNormal" },
    TelescopePromptBorder = { link = "TelescopeNormal" },
    TelescopeResultsBorder = { link = "TelescopeNormal" },
    TelescopePreviewBorder = { link = "TelescopeNormal" },
    TelescopeMatching = { link = "ThemePrimaryActive" },
    TelescopePromptPrefix = { link = "ThemePrimary" },
    TelescopePrompt = { link = "TelescopeNormal" },
  }
end

return M
