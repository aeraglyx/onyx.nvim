M = {}

function M.get(colors)
    return {
        ["@module"] = { fg = colors.text },

        ["@string.regexp"] = { link = "String" },
        ["@string.escape"] = { fg = colors.meh },
        ["@string.documentation"] = { fg = colors.meh, italic = true },
        ["@string.special"] = { link = "String" },
        -- ["@string.special.path"] = { link = "Normal" },

        ["@constructor"] = { fg = colors.text },
        ["@constructor.lua"] = { link = "@punctuation.bracket" },
        ["@punctuation.special"] = { link = "Delimiter" },
        ["@character.special"] = { link = "Delimiter" }, -- gitignore

        ["@attribute"] = { fg = colors.meh },
        ["@variable"] = { link = "Normal" },
        -- ["@property"] = { fg = colors.purp },

        ["@conceal"] = { fg = colors.meh },
        ["@markup.raw"] = { fg = colors.purp },
        ["@markup.raw.block"] = { fg = colors.meh },
        ["@markup.quote"] = { fg = colors.meh },
        ["@markup.link.markdown_inline"] = { fg = colors.meh },
        ["@markup.link.label"] = { fg = colors.blue },
        ["@markup.link.url"] = { fg = colors.meh, underline = true },
        ["@label"] = { fg = colors.purp }, -- .markdown

        ["@function.builtin"] = { link = "Function", italic = true },
        ["@constant.builtin"] = { link = "Constant", italic = true },
        ["@attribute.builtin"] = { link = "@attribute", italic = true },
        ["@variable.builtin"] = { fg = colors.text, italic = true },
        ["@variable.parameter.builtin"] = { fg = colors.text }, -- dots in function(...)
        ["@type.builtin"] = { link = "Type", italic = true },

        ["@type.python"] = { link = "Normal", italic = true },
        ["@keyword.modifier.c"] = { fg = colors.meh },
        -- ["@keyword.return"] = { fg = colors.purp },
        ["@keyword.function"] = { fg = colors.purp },
        ["@keyword.type"] = { fg = colors.purp },
        ["@keyword.conditional.ternary"] = { link = "Delimiter" },
        -- ["@keyword.directive.css"] = { link = "Keyword" },
        ["@_parent"] = { fg = colors.meh },

        -- spell for xml:
        ["@spell.xml"] = { fg = colors.blue },
        -- TODO: constant.xml? (or builtin)

        ["@tag"] = { fg = colors.text },
        ["@tag.attribute"] = { link = "Normal" },
        ["@tag.delimiter"] = { link = "Delimiter" },
    }
end

return M
