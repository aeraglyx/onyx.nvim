local colors = require("onyx.colors")

local theme = {}

theme.normal = {
    a = { bg = colors.blue, fg = colors.base, gui = "bold" },
    b = { bg = colors.smol, fg = colors.text },
    c = { bg = "NONE", fg = colors.meh },
}
theme.insert = {
    a = { bg = colors.green, fg = colors.base, gui = "bold" },
}
theme.visual = {
    a = { bg = colors.purp, fg = colors.base, gui = "bold" },
}
theme.replace = {
    a = { bg = colors.peach, fg = colors.base, gui = "bold" },
}
theme.command = {
    a = { bg = colors.peach, fg = colors.base, gui = "bold" },
}
theme.inactive = {
    a = { bg = colors.none, fg = colors.dim },
    b = { bg = colors.none, fg = colors.dim },
    c = { bg = colors.none, fg = colors.dim },
}

return theme
