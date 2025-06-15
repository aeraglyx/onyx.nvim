M = {}

local function set_hl_groups(groups)
    for group, parameters in pairs(groups) do
        vim.api.nvim_set_hl(0, group, parameters)
    end
end

function M.setup()
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "onyx"

    local groups = require("onyx.groups")
    set_hl_groups(groups)
end

return M
