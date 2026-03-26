local colors = require("onyx.colors")
local theme = {}

theme.normal = {
    a = { fg = colors.meh },
    b = { fg = colors.meh },
    c = { fg = colors.dim },
}

theme.insert = { a = { fg = colors.text } }
theme.visual = { a = { fg = colors.text } }
theme.replace = { a = { fg = colors.text } }
theme.command = { a = { fg = colors.text } }
theme.terminal = { a = { fg = colors.text } }

theme.inactive = {
    a = { fg = colors.dim },
    b = { fg = colors.dim },
    c = { fg = colors.dim },
}

return theme
