local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    NeoTreeFloatBorder = { link = "ThemeGray" },
    NeoTreeTitleBar = { fg = colors.fg1, bg = colors.bg2 },
    NeoTreeDirectoryIcon = { link = "ThemeSecondary" },
    NeoTreeDirectoryName = { link = "ThemeSecondaryBold" },
    NeoTreeWinSeparator = config.transparent_mode and { fg = colors.bg3, bg = "none" }
      or { fg = colors.bg3, bg = colors.bg0 },
  }
end

return M
