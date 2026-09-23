M = {}

function M.get(colors)
    return {
        Comment = { fg = colors.dim, italic = true },
        Keyword = { fg = colors.meh },
        Statement = { link = "Keyword" },
        Exception = { link = "Keyword" },
        Type = { fg = colors.meh },
        Function = { fg = colors.text },
        Number = { fg = colors.blue },
        Boolean = { link = "Number" },
        String = { link = "Number" },
        Character = { link = "String" },
        Identifier = { link = "Normal" },
        Label = { fg = colors.blue },
        Special = { fg = colors.blue },
        Constant = { fg = colors.text },
        PreProc = { fg = colors.meh },
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
        DiffText = { bg = colors.blue, fg = colors.base, bold = true },

        DiagnosticError = { fg = colors.red },
        DiagnosticWarn  = { fg = colors.peach },
        DiagnosticInfo  = { fg = colors.blue },
        DiagnosticHint  = { fg = colors.blue },
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

        Error = { fg = colors.red },
        ErrorMsg = { fg = colors.red },
        OkMsg = { fg = colors.green },
        WarningMsg = { fg = colors.peach },
        ModeMsg = { fg = colors.text },
        MoreMsg = { fg = colors.blue },

        netrwClassify = { fg = colors.meh },

        helpExample = { fg = colors.meh },
        helpCommand = { fg = colors.meh },

        ShQuote = { link = "String" },
        ShDeref = { link = "Delimiter" },
        ShCommandSub = { link = "Normal" },
        ShCmdSubRegion = { link = "Delimiter" },
        ShArithmetic = { link = "Normal" },
        ShArithRegion = { link = "Delimiter" },
        ShSpecial = { link = "Delimiter" },

        SassAmpersand = { link = "Delimiter" },
        qfLineNr = { fg = colors.dim },
    }
end

return M
