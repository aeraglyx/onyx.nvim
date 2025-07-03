M = {}

local function get_hl_groups()
    local colors = require("onyx.colors")

    local editor = require("onyx.groups.editor").get(colors)
    local treesitter = require("onyx.groups.treesitter").get(colors)
    local plugins = require("onyx.groups.plugins").get(colors)

    local groups = vim.tbl_deep_extend("keep", editor, treesitter, plugins)
    return groups
end

local function set_hl_groups(groups)
    for group, parameters in pairs(groups) do
        vim.api.nvim_set_hl(0, group, parameters)
    end
end

function M.setup()
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    vim.g.colors_name = "onyx"
    vim.o.termguicolors = true

    local groups = get_hl_groups()
    set_hl_groups(groups)
end

return M
