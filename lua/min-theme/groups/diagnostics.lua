local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    DiagnosticError = { link = "ThemePrimary" },
    DiagnosticWarn = { link = "ThemeWarning" },
    DiagnosticInfo = { link = "ThemeInfo" },
    DiagnosticDeprecated = { strikethrough = config.strikethrough },
    DiagnosticHint = { link = "ThemeSecondarySoft" },
    DiagnosticOk = { link = "ThemeSuccess" },
    DiagnosticSignError = { link = "ThemePrimarySign" },
    DiagnosticSignWarn = { link = "ThemeWarningSign" },
    DiagnosticSignInfo = { link = "ThemeInfoSign" },
    DiagnosticSignHint = { link = "ThemeSecondarySoftSign" },
    DiagnosticSignOk = { link = "ThemeSuccessSign" },
    DiagnosticUnderlineError = { link = "ThemePrimaryUnderline" },
    DiagnosticUnderlineWarn = { link = "ThemeWarningUnderline" },
    DiagnosticUnderlineInfo = { link = "ThemeInfoUnderline" },
    DiagnosticUnderlineHint = { link = "ThemeSecondarySoftUnderline" },
    DiagnosticUnderlineOk = { link = "ThemeSuccessUnderline" },
    DiagnosticFloatingError = { link = "ThemePrimary" },
    DiagnosticFloatingWarn = { link = "ThemeWarning" },
    DiagnosticFloatingInfo = { link = "ThemeInfo" },
    DiagnosticFloatingHint = { link = "ThemeSecondarySoft" },
    DiagnosticFloatingOk = { link = "ThemeSuccess" },
    DiagnosticVirtualTextError = { link = "ThemePrimary" },
    DiagnosticVirtualTextWarn = { link = "ThemeWarning" },
    DiagnosticVirtualTextInfo = { link = "ThemeInfo" },
    DiagnosticVirtualTextHint = { link = "ThemeSecondarySoft" },
    DiagnosticVirtualTextOk = { link = "ThemeSuccess" },
    LspReferenceRead = { link = "ThemePrimarySoftBold" },
    LspReferenceTarget = { link = "Visual" },
    LspReferenceText = { link = "ThemePrimarySoftBold" },
    LspReferenceWrite = { link = "ThemePrimaryActiveBold" },
    LspCodeLens = { link = "ThemeGray" },
    LspSignatureActiveParameter = { link = "Search" },
    LspInlayHint = { link = "Comment" },
  }
end

return M
