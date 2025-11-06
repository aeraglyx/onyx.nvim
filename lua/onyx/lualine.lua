local colors = require("onyx.colors")
local theme = {}

theme.normal = {
    a = { fg = colors.meh },
    b = { fg = colors.meh },
    c = { fg = colors.dim },
}

theme.insert = { a = { fg = colors.green} }
theme.visual = { a = { fg = colors.blue } }
theme.replace = { a = { fg = colors.peach } }
theme.command = { a = { fg = colors.peach } }
theme.terminal = { a = { fg = colors.purp } }

theme.inactive = {
    a = { fg = colors.dim },
    b = { fg = colors.dim },
    c = { fg = colors.dim },
}

return theme
