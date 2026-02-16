local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    ["@comment"] = { link = "Comment" },
    ["@none"] = { bg = "NONE", fg = "NONE" },
    ["@preproc"] = { link = "PreProc" },
    ["@define"] = { link = "Define" },
    ["@operator"] = { link = "Operator" },
    ["@punctuation.delimiter"] = { link = "Delimiter" },
    ["@punctuation.bracket"] = { link = "Delimiter" },
    ["@punctuation.special"] = { link = "Delimiter" },

    -- Strings (orange)
    ["@string"] = { link = "String" },
    ["@string.regex"] = { link = "String" },
    ["@string.regexp"] = { link = "String" },
    ["@string.escape"] = { link = "SpecialChar" },
    ["@string.special"] = { link = "SpecialChar" },
    ["@string.special.path"] = { link = "Underlined" },
    ["@string.special.symbol"] = { link = "Identifier" },
    ["@string.special.url"] = { link = "Underlined" },

    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },
    ["@boolean"] = { link = "Boolean" },
    ["@number"] = { link = "Number" },
    ["@number.float"] = { link = "Float" },
    ["@float"] = { link = "Float" },

    -- Functions (purple)
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { link = "Special" },
    ["@function.call"] = { link = "Function" },
    ["@function.macro"] = { link = "Macro" },
    ["@function.method"] = { link = "Function" },
    ["@method"] = { link = "Function" },
    ["@method.call"] = { link = "Function" },
    ["@constructor"] = { link = "Special" },

    -- Parameters (deep orange)
    ["@parameter"] = { fg = colors.secondary_active },
    ["@variable.parameter"] = { fg = colors.secondary_active },

    -- Keywords (red/pink)
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.conditional"] = { link = "Conditional" },
    ["@keyword.debug"] = { link = "Debug" },
    ["@keyword.directive"] = { link = "PreProc" },
    ["@keyword.directive.define"] = { link = "Define" },
    ["@keyword.exception"] = { link = "Exception" },
    ["@keyword.function"] = { link = "Keyword" },
    ["@keyword.import"] = { link = "Include" },
    ["@keyword.operator"] = { link = "ThemePrimary" },
    ["@keyword.repeat"] = { link = "Repeat" },
    ["@keyword.return"] = { link = "Keyword" },
    ["@keyword.storage"] = { link = "StorageClass" },
    ["@conditional"] = { link = "Conditional" },
    ["@repeat"] = { link = "Repeat" },
    ["@debug"] = { link = "Debug" },
    ["@label"] = { link = "Label" },
    ["@include"] = { link = "Include" },
    ["@exception"] = { link = "Exception" },

    -- Types (purple)
    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { link = "Type" },
    ["@type.definition"] = { link = "Typedef" },
    ["@type.qualifier"] = { link = "Type" },
    ["@storageclass"] = { link = "StorageClass" },
    ["@attribute"] = { link = "PreProc" },

    -- Fields & properties (neutral color)
    ["@field"] = { link = "ThemeSecondarySoft" },
    ["@property"] = { link = "ThemeSecondarySoft" },

    -- Variables (purple - Min Dark default token color)
    ["@variable"] = { fg = colors.secondary },
    ["@variable.builtin"] = { link = "ThemeSecondaryActive" },
    ["@variable.member"] = { link = "ThemeSecondaryActive" },

    -- Constants (blue)
    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { link = "ThemeSecondaryActive" },
    ["@constant.macro"] = { link = "Define" },

    -- Markup
    ["@markup"] = { link = "ThemeFg1" },
    ["@markup.strong"] = { fg = colors.primary_active, bold = config.bold },
    ["@markup.italic"] = { link = "@text.emphasis" },
    ["@markup.underline"] = { underline = config.underline },
    ["@markup.strikethrough"] = { strikethrough = config.strikethrough },
    ["@markup.heading"] = { fg = colors.primary_active, bold = config.bold },
    ["@markup.raw"] = { fg = colors.secondary_soft },
    ["@markup.math"] = { link = "Special" },
    ["@markup.environment"] = { link = "Macro" },
    ["@markup.environment.name"] = { link = "Type" },
    ["@markup.link"] = { fg = colors.primary_soft, underline = config.underline },
    ["@markup.link.label"] = { link = "ThemeSecondaryActive" },
    ["@markup.list"] = { fg = colors.primary_active },
    ["@markup.list.checked"] = { link = "ThemeSuccess" },
    ["@markup.list.unchecked"] = { link = "ThemeGray" },

    ["@comment.todo"] = { link = "Todo" },
    ["@comment.note"] = { link = "SpecialComment" },
    ["@comment.warning"] = { link = "WarningMsg" },
    ["@comment.error"] = { link = "ErrorMsg" },

    ["@diff.plus"] = { link = "diffAdded" },
    ["@diff.minus"] = { link = "diffRemoved" },
    ["@diff.delta"] = { link = "diffChanged" },

    ["@module"] = { link = "ThemeFg1" },
    ["@namespace"] = { link = "ThemeFg1" },
    ["@symbol"] = { link = "Identifier" },

    -- Tags (orange)
    ["@tag"] = { fg = colors.primary_soft },
    ["@tag.attribute"] = { fg = colors.primary_muted },
    ["@tag.delimiter"] = { link = "Delimiter" },

    ["@punctuation"] = { link = "Delimiter" },
    ["@macro"] = { link = "Macro" },
    ["@structure"] = { link = "Structure" },

    -- Legacy @text groups
    ["@text"] = { link = "ThemeFg1" },
    ["@text.strong"] = { fg = colors.primary_active, bold = config.bold },
    ["@text.emphasis"] = { italic = config.italic.emphasis },
    ["@text.underline"] = { underline = config.underline },
    ["@text.strike"] = { strikethrough = config.strikethrough },
    ["@text.title"] = { link = "Title" },
    ["@text.literal"] = { fg = colors.secondary_soft },
    ["@text.uri"] = { fg = colors.primary_soft, underline = config.underline },
    ["@text.math"] = { link = "Special" },
    ["@text.environment"] = { link = "Macro" },
    ["@text.environment.name"] = { link = "Type" },
    ["@text.reference"] = { link = "Constant" },
    ["@text.todo"] = { link = "Todo" },
    ["@text.todo.checked"] = { link = "ThemeSuccess" },
    ["@text.todo.unchecked"] = { link = "ThemeGray" },
    ["@text.note"] = { link = "SpecialComment" },
    ["@text.note.comment"] = { fg = colors.secondary_active, bold = config.bold },
    ["@text.warning"] = { link = "WarningMsg" },
    ["@text.danger"] = { link = "ErrorMsg" },
    ["@text.danger.comment"] = { fg = colors.fg0, bg = colors.primary, bold = config.bold },
    ["@text.diff.add"] = { link = "diffAdded" },
    ["@text.diff.delete"] = { link = "diffRemoved" },

    -- LSP semantic tokens
    ["@lsp.type.class"] = { link = "@type" },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.decorator"] = { link = "@macro" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.interface"] = { link = "ThemeSecondaryActive" },
    ["@lsp.type.macro"] = { link = "@macro" },
    ["@lsp.type.method"] = { link = "@method" },
    ["@lsp.type.namespace"] = { link = "@namespace" },
    ["@lsp.type.parameter"] = { link = "@parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.struct"] = { link = "@type" },
    ["@lsp.type.type"] = { link = "@type" },
    ["@lsp.type.typeParameter"] = { link = "@type.definition" },
    ["@lsp.type.variable"] = { link = "@variable" },
  }
end

return M
