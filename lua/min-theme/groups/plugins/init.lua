local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  local groups = {}
  local plugin_modules = {
    "min-theme.groups.plugins.git",
    "min-theme.groups.plugins.telescope",
    "min-theme.groups.plugins.snacks",
    "min-theme.groups.plugins.cmp",
    "min-theme.groups.plugins.dap",
    "min-theme.groups.plugins.neo_tree",
    "min-theme.groups.plugins.noice",
    "min-theme.groups.plugins.mini",
    "min-theme.groups.plugins.markdown",
    "min-theme.groups.plugins.mason",
    "min-theme.groups.plugins.misc",
  }
  for _, mod in ipairs(plugin_modules) do
    groups = vim.tbl_extend("force", groups, require(mod).get(colors, config))
  end
  return groups
end

return M
