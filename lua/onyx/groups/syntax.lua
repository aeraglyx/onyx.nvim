M = {}

function M.get(colors)
    return {
        Comment = { fg = colors.dim, italic = true },
        Keyword = { fg = colors.meh },
        Statement = { link = "Keyword" },
        Exception = { link = "Keyword" },
        Type = { fg = colors.meh },
        Function = { fg = colors.text },
        Number = { fg = colors.aqua },
        Boolean = { link = "Number" },
        String = { link = "Number" },
        Character = { link = "String" },
        Identifier = { link = "Normal" },
        Label = { fg = colors.blue },
        Special = { fg = colors.blue },
        Constant = { fg = colors.text },
        PreProc = { fg = colors.text },
        Title = { fg = colors.blue, bold = true },

        Delimiter = { fg = colors.meh },
        Operator = { link = "Delimiter" },
        MatchParen = { fg = colors.text, bold = true },


        Added = { fg = colors.blue },
        Changed = { link = "Added" },
        Removed = { fg = colors.red },

        DiffAdd = { link = "Added" },
        DiffChange = { link = "Changed" },
        DiffDelete = { link = "Removed" },
        -- DiffText = { link = "Normal" },

        DiagnosticError = { fg = colors.red },
        DiagnosticWarn  = { fg = colors.peach },
        DiagnosticInfo  = { fg = colors.green },
        DiagnosticHint  = { fg = colors.green },
        DiagnosticOk    = { fg = colors.green },
        DiagnosticUnnecessary = { fg = colors.dim },
        DiagnosticUnderlineError = { underline = true, sp = colors.red },
        DiagnosticUnderlineWarn  = { underline = true, sp = colors.peach },
        DiagnosticUnderlineInfo  = { underline = true, sp = colors.blue },
        DiagnosticUnderlineHint  = { underline = true, sp = colors.blue },
        DiagnosticUnderlineOk    = { underline = true, sp = colors.green },

        healthError   = { fg = colors.red },
        healthSuccess = { fg = colors.green },
        healthWarning = { fg = colors.peach },

        ErrorMsg = { fg = colors.red, bold = true, italic = true }, -- on the command line
        WarningMsg = { fg = colors.peach }, -- warning messages
        MoreMsg = { fg = colors.blue }, -- |more-prompt|

        netrwClassify = { fg = colors.meh },

        helpExample = { fg = colors.meh },
        helpCommand = { fg = colors.meh },

        SassAmpersand = { link = "Delimiter" },
        ShQuote = { link = "String" },
        ShCommandSub = { link = "Normal" },
        ShCmdSubRegion = { link = "Delimiter" },
        -- CssSelectorOp = { link = "Delimiter" },
    }
end

return M
