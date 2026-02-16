local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    ThemeFg0 = { fg = colors.fg0 },
    ThemeFg1 = { fg = colors.fg1 },
    ThemeFg2 = { fg = colors.fg2 },
    ThemeFg3 = { fg = colors.fg3 },
    ThemeFg4 = { fg = colors.fg4 },
    ThemeGray = { fg = colors.muted },
    ThemeGrayBold = { fg = colors.muted, bold = config.bold },
    ThemeBg2 = { fg = colors.bg2 },
    ThemeBg3 = { fg = colors.bg3 },
    ThemeBg4 = { fg = colors.bg4 },
    ThemePrimary = { fg = colors.primary },
    ThemePrimaryBold = { fg = colors.primary, bold = config.bold },
    ThemeSecondary = { fg = colors.secondary },
    ThemeSecondaryBold = { fg = colors.secondary, bold = config.bold },
    ThemePrimarySoft = { fg = colors.primary_soft },
    ThemePrimarySoftBold = { fg = colors.primary_soft, bold = config.bold },
    ThemeSecondaryActive = { fg = colors.secondary_active },
    ThemeSecondaryActiveBold = { fg = colors.secondary_active, bold = config.bold },
    ThemePrimaryMuted = { fg = colors.primary_muted },
    ThemeSecondarySoft = { fg = colors.secondary_soft },
    ThemeSecondarySoftBold = { fg = colors.secondary_soft, bold = config.bold },
    ThemePrimaryActive = { fg = colors.primary_active },
    ThemePrimaryActiveBold = { fg = colors.primary_active, bold = config.bold },
    ThemePrimarySign = config.transparent_mode and { fg = colors.primary, reverse = config.invert_signs }
      or { fg = colors.primary, bg = colors.bg1, reverse = config.invert_signs },
    ThemeSecondarySoftSign = config.transparent_mode and { fg = colors.secondary_soft, reverse = config.invert_signs }
      or { fg = colors.secondary_soft, bg = colors.bg1, reverse = config.invert_signs },
    ThemePrimaryUnderline = { undercurl = config.undercurl, sp = colors.primary },
    ThemeSecondaryActiveUnderline = { undercurl = config.undercurl, sp = colors.secondary_active },
    ThemePrimaryMutedUnderline = { undercurl = config.undercurl, sp = colors.primary_muted },
    ThemeSecondarySoftUnderline = { undercurl = config.undercurl, sp = colors.secondary_soft },
    ThemePrimaryActiveUnderline = { undercurl = config.undercurl, sp = colors.primary_active },
    ThemeWarning = { fg = colors.warning },
    ThemeWarningSign = config.transparent_mode and { fg = colors.warning, reverse = config.invert_signs }
      or { fg = colors.warning, bg = colors.bg1, reverse = config.invert_signs },
    ThemeWarningUnderline = { undercurl = config.undercurl, sp = colors.warning },
    ThemeInfo = { fg = colors.info },
    ThemeInfoSign = config.transparent_mode and { fg = colors.info, reverse = config.invert_signs }
      or { fg = colors.info, bg = colors.bg1, reverse = config.invert_signs },
    ThemeInfoUnderline = { undercurl = config.undercurl, sp = colors.info },
    ThemeSuccess = { fg = colors.success },
    ThemeSuccessSign = config.transparent_mode and { fg = colors.success, reverse = config.invert_signs }
      or { fg = colors.success, bg = colors.bg1, reverse = config.invert_signs },
    ThemeSuccessUnderline = { undercurl = config.undercurl, sp = colors.success },
    ThemeGitAdded = { fg = colors.git_added },
    ThemeGitAddedBold = { fg = colors.git_added, bold = config.bold },
    ThemeGitAddedSign = config.transparent_mode and { fg = colors.git_added, reverse = config.invert_signs }
      or { fg = colors.git_added, bg = colors.bg1, reverse = config.invert_signs },
    ThemeGitModifiedBold = { fg = colors.git_modified, bold = config.bold },
    ThemeGitModifiedSign = config.transparent_mode and { fg = colors.git_modified, reverse = config.invert_signs }
      or { fg = colors.git_modified, bg = colors.bg1, reverse = config.invert_signs },
    ThemeGitDeleted = { fg = colors.git_deleted },
    ThemeGitDeletedBold = { fg = colors.git_deleted, bold = config.bold },
    ThemeGitDeletedSign = config.transparent_mode and { fg = colors.git_deleted, reverse = config.invert_signs }
      or { fg = colors.git_deleted, bg = colors.bg1, reverse = config.invert_signs },
  }
end

return M
