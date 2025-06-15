local colors = require("onyx.colors")

local theme = {}

theme.normal = {
    a = { bg = colors.blue, fg = colors.base, bold = true },
    b = { bg = colors.smol, fg = colors.blue },
    c = { bg = "NONE", fg = colors.meh },
}
theme.insert = {
    a = { bg = colors.green, fg = colors.base, gui = "bold" },
}
theme.visual = {
    a = { bg = colors.mauve, fg = colors.base, gui = "bold" },
}
theme.replace = {
    a = { bg = colors.peach, fg = colors.base, gui = "bold" },
}
theme.inactive = {
    a = { bg = colors.none, fg = colors.dim },
    b = { bg = colors.none, fg = colors.dim },
    c = { bg = colors.none, fg = colors.dim },
}

return theme
