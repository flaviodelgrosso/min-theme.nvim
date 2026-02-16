local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    MasonHighlight = { link = "ThemeSecondarySoft" },
    MasonHighlightBlock = { fg = colors.bg0, bg = colors.secondary_active },
    MasonHighlightBlockBold = { fg = colors.bg0, bg = colors.secondary_active, bold = true },
    MasonHighlightSecondary = { fg = colors.primary_soft },
    MasonHighlightBlockSecondary = { fg = colors.bg0, bg = colors.primary_soft },
    MasonHighlightBlockBoldSecondary = { fg = colors.bg0, bg = colors.primary_soft, bold = true },
    MasonHeader = { link = "MasonHighlightBlockBoldSecondary" },
    MasonHeaderSecondary = { link = "MasonHighlightBlockBold" },
    MasonMuted = { fg = colors.fg4 },
    MasonMutedBlock = { fg = colors.bg0, bg = colors.fg4 },
    MasonMutedBlockBold = { fg = colors.bg0, bg = colors.fg4, bold = true },
  }
end

return M
