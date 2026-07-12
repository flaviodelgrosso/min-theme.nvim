local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    -- Which-Key
    WhichKeyTitle = { link = "NormalFloat" },
    -- Illuminate
    IlluminatedWordText = { link = "LspReferenceText" },
    IlluminatedWordRead = { link = "LspReferenceRead" },
    IlluminatedWordWrite = { link = "LspReferenceWrite" },
    -- Rainbow delimiters
    TSRainbowRed = { fg = colors.primary },
    TSRainbowOrange = { fg = colors.primary_soft },
    TSRainbowYellow = { fg = colors.primary_muted },
    TSRainbowGreen = { fg = colors.success },
    TSRainbowBlue = { fg = colors.secondary_active },
    TSRainbowViolet = { fg = colors.secondary },
    TSRainbowCyan = { fg = colors.secondary_soft },
    RainbowDelimiterRed = { fg = colors.primary },
    RainbowDelimiterOrange = { fg = colors.primary_soft },
    RainbowDelimiterYellow = { fg = colors.primary_muted },
    RainbowDelimiterGreen = { fg = colors.success },
    RainbowDelimiterBlue = { fg = colors.secondary_active },
    RainbowDelimiterViolet = { fg = colors.secondary },
    RainbowDelimiterCyan = { fg = colors.secondary_soft },
  }
end

return M
