local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    debugPC = { link = "DiffAdd" },
    debugBreakpoint = { link = "ThemePrimarySign" },
    -- Min Dark: breakpoint = #FF7A84, step/continue = #FF7A84, restart/start/stop = #79b8ff
    DapBreakpointSymbol = { fg = colors.primary_active, bg = colors.bg1 },
    DapStoppedSymbol = { fg = colors.secondary_active, bg = colors.bg1 },
    DapUIBreakpointsCurrentLine = { link = "ThemePrimaryActive" },
    DapUIBreakpointsDisabledLine = { link = "ThemeGray" },
    DapUIBreakpointsInfo = { link = "ThemeSecondaryActive" },
    DapUIBreakpointsLine = { link = "ThemePrimaryActive" },
    DapUIBreakpointsPath = { link = "ThemeSecondaryActive" },
    DapUICurrentFrameName = { link = "ThemeSecondaryActive" },
    DapUIDecoration = { link = "ThemeSecondaryActive" },
    DapUIEndofBuffer = { link = "EndOfBuffer" },
    DapUIFloatBorder = { link = "ThemeSecondarySoft" },
    DapUILineNumber = { link = "ThemePrimaryActive" },
    DapUIModifiedValue = { link = "ThemePrimaryActive" },
    DapUIPlayPause = { fg = colors.secondary_active, bg = colors.bg1 },
    DapUIRestart = { fg = colors.secondary_active, bg = colors.bg1 },
    DapUIScope = { link = "ThemeSecondaryActive" },
    DapUISource = { link = "ThemeFg1" },
    DapUIStepBack = { fg = colors.primary_active, bg = colors.bg1 },
    DapUIStepInto = { fg = colors.primary_active, bg = colors.bg1 },
    DapUIStepOut = { fg = colors.primary_active, bg = colors.bg1 },
    DapUIStepOver = { fg = colors.primary_active, bg = colors.bg1 },
    DapUIStop = { fg = colors.secondary_active, bg = colors.bg1 },
    DapUIStoppedThread = { link = "ThemeSecondaryActive" },
    DapUIThread = { link = "ThemeSecondaryActive" },
    DapUIType = { link = "ThemeSecondary" },
    DapUIUnavailable = { link = "ThemeGray" },
    DapUIWatchesEmpty = { link = "ThemeGray" },
    DapUIWatchesError = { link = "ThemePrimary" },
    DapUIWatchesValue = { link = "ThemePrimaryActive" },
    DapUIWinSelect = { link = "ThemeSecondaryActive" },
  }
end

return M
