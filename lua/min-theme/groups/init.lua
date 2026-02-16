local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  local groups = {}
  local modules = {
    "min-theme.groups.base",
    "min-theme.groups.editor",
    "min-theme.groups.syntax",
    "min-theme.groups.diagnostics",
    "min-theme.groups.treesitter",
    "min-theme.groups.plugins",
  }
  for _, mod in ipairs(modules) do
    groups = vim.tbl_extend("force", groups, require(mod).get(colors, config))
  end

  for group, hl in pairs(config.overrides) do
    if groups[group] then
      groups[group].link = nil
    end
    groups[group] = vim.tbl_extend("force", groups[group] or {}, hl)
  end

  return groups
end

return M
