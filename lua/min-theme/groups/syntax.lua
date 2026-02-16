local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    -- Keywords & control flow (red/pink)
    Statement = { link = "ThemePrimary" },
    Conditional = { link = "ThemePrimary" },
    Repeat = { link = "ThemePrimary" },
    Label = { link = "ThemePrimary" },
    Exception = { link = "ThemePrimary" },
    Keyword = { link = "ThemePrimary" },
    StorageClass = { link = "ThemePrimary" },
    PreProc = { link = "ThemePrimary" },
    Include = { link = "ThemePrimary" },
    Define = { link = "ThemePrimary" },
    Macro = { link = "ThemePrimary" },
    PreCondit = { link = "ThemePrimary" },

    -- Functions & types (purple)
    Function = { link = "ThemeSecondaryBold" },
    Identifier = { link = "ThemeSecondary" },
    Type = { link = "ThemeSecondary" },
    Structure = { link = "ThemeSecondary" },
    Typedef = { link = "ThemeSecondary" },
    Special = { link = "ThemeSecondary" },
    Operator = { fg = colors.secondary, italic = config.italic.operators },

    -- Constants & support (blue)
    Constant = { link = "ThemeSecondaryActive" },
    Character = { link = "ThemeSecondaryActive" },
    Boolean = { link = "ThemeSecondaryActive" },

    -- Numbers (near white)
    Number = { fg = colors.fg0 },
    Float = { fg = colors.fg0 },

    -- Strings (orange for quoted)
    String = { fg = colors.primary_soft, italic = config.italic.strings },

    -- Comments
    Comment = { fg = colors.muted, italic = config.italic.comments },
    Todo = { fg = colors.bg0, bg = colors.primary_active, bold = config.bold, italic = config.italic.comments },
    Done = { fg = colors.success, bold = config.bold, italic = config.italic.comments },
    Error = { fg = colors.primary, bold = config.bold, reverse = config.inverse },

    -- Punctuation/delimiters
    Delimiter = { fg = colors.fg2 },
  }
end

return M
