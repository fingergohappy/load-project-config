local config = require("load-project-config/config")

local M = {}

M.init = function()
    local config_file_path = config.options.config_file_path
    local config_file_name = config.options.config_file_name
    local current_project_path = vim.fn.getcwd()
    local config_file_full_path = current_project_path.."/"..config_file_path.."/"..config_file_name
    local config_file_full_path_find_result = vim.fs.find(config_file_name,{type = 'file',path=config_file_path})
    if (config_file_full_path_find_result == nil or vim.tbl_isempty(config_file_full_path_find_result)) then 
        return
    end
    dofile(config_file_full_path)
end

return M

