local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    NoiceCursor = { link = "TermCursor" },
    NoiceCmdlinePopupBorder = { fg = colors.secondary_active, bg = nil },
    NoiceCmdlineIcon = { link = "NoiceCmdlinePopupBorder" },
    NoiceConfirmBorder = { link = "NoiceCmdlinePopupBorder" },
    NoiceCmdlinePopupBorderSearch = { fg = colors.primary_soft, bg = nil },
    NoiceCmdlineIconSearch = { link = "NoiceCmdlinePopupBorderSearch" },
    NotifyDEBUGBorder = { link = "ThemeSecondaryActive" },
    NotifyDEBUGIcon = { link = "ThemeSecondaryActive" },
    NotifyDEBUGTitle = { link = "ThemeSecondaryActive" },
    NotifyERRORBorder = { link = "ThemePrimary" },
    NotifyERRORIcon = { link = "ThemePrimary" },
    NotifyERRORTitle = { link = "ThemePrimary" },
    NotifyINFOBorder = { link = "ThemeSecondarySoft" },
    NotifyINFOIcon = { link = "ThemeSecondarySoft" },
    NotifyINFOTitle = { link = "ThemeSecondarySoft" },
    NotifyTRACEBorder = { link = "ThemeSecondary" },
    NotifyTRACEIcon = { link = "ThemeSecondary" },
    NotifyTRACETitle = { link = "ThemeSecondary" },
    NotifyWARNBorder = { link = "ThemePrimarySoft" },
    NotifyWARNIcon = { link = "ThemePrimarySoft" },
    NotifyWARNTitle = { link = "ThemePrimarySoft" },
  }
end

return M
