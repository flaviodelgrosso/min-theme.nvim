local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    markdownItalic = { fg = colors.fg3, italic = true },
    markdownBold = { fg = colors.primary_active, bold = config.bold },
    markdownBoldItalic = { fg = colors.primary_active, bold = config.bold, italic = true },
    markdownH1 = { fg = colors.primary_active, bold = config.bold },
    markdownH2 = { fg = colors.primary_active, bold = config.bold },
    markdownH3 = { fg = colors.primary_active, bold = config.bold },
    markdownH4 = { fg = colors.secondary, bold = config.bold },
    markdownH5 = { link = "ThemeSecondary" },
    markdownH6 = { link = "ThemeSecondary" },
    markdownCode = { fg = colors.secondary_soft },
    markdownCodeBlock = { fg = colors.secondary_soft },
    markdownCodeDelimiter = { fg = colors.secondary_soft },
    markdownBlockquote = { link = "ThemeGray" },
    markdownListMarker = { fg = colors.primary_active },
    markdownOrderedListMarker = { fg = colors.primary_active },
    markdownRule = { link = "ThemeGray" },
    markdownHeadingRule = { link = "ThemeGray" },
    markdownUrlDelimiter = { link = "ThemeFg3" },
    markdownLinkDelimiter = { link = "ThemeFg3" },
    markdownLinkTextDelimiter = { link = "ThemeFg3" },
    markdownHeadingDelimiter = { fg = colors.primary_active },
    markdownUrl = { fg = colors.primary_soft, underline = config.underline },
    markdownUrlTitleDelimiter = { fg = colors.primary_soft },
    markdownLinkText = { fg = colors.secondary_active, underline = config.underline },
    markdownIdDeclaration = { link = "markdownLinkText" },
  }
end

return M
