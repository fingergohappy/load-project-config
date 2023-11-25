
local M = {}

M.defaults = {
    config_file_name = "project-commands.lua",
    config_file_path = ".project"
}

M.options = {}
M.set_up = function(options)
    M.options = vim.tbl_deep_extend("force", M.defaults, options or {})
    require("load-project-config/load-custom-command").init()
end

return M
