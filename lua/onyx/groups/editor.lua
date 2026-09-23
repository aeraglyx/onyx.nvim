M = {}

function M.get(colors)
    return {
        Normal = { fg = colors.text, bg = colors.none },
        Cursor = { fg = colors.base, bg = colors.text, bold = true },
        -- lCursor = { link = "Cursor" },
        -- CursorIM = { link = "Cursor" },
        CursorLine = { bg = colors.deep },
        CursorColumn = { link = "CursorLine" },
        LineNr = { fg = colors.smol },
        CursorLineNr = { fg = colors.meh, bg = colors.deep },
        CursorLineSign = { fg = colors.meh, bg = colors.deep },
        EndOfBuffer = { fg = colors.smol },

        Visual = { bg = colors.text, fg = colors.base, bold = true },

        Search = { bg = colors.smol, fg = colors.green, bold = true },
        CurSearch = { bg = colors.green, fg = colors.base, bold = true },
        IncSearch = { link = "CurSearch" },

        SnippetTabstop = { link = "Search" },

        -- NormalNC = { fg = colors.meh }, -- normal text in non-current windows
        WinSeparator = { fg = colors.smol, bold = true },

        NormalFloat = { fg = colors.text, bg = colors.none },
        FloatBorder = { fg = colors.meh },
        -- FloatTitle = { link = "Title" },

        Directory = { fg = colors.text },

        Pmenu = { fg = colors.text, bg = colors.none },
        PmenuSel = { fg = colors.base, bg = colors.text, bold = true }, -- selected item
        PmenuThumb = { bg = colors.meh }, -- thumb of the scrollbar
        -- PmenuSbar = { bg = colors.surface1 }, -- scrollbar
        -- PmenuExtra = { fg = colors.overlay0 }, -- normal item extra text
        -- PmenuExtraSel = { fg = colors.overlay0 }, -- selected item extra text

        TabLine = { fg = colors.dim, bold = true }, -- tab pages line, not active tab page label
        TabLineSel = { fg = colors.blue, bold = true }, -- tab pages line, active tab page label
        -- TabLineFill = { bg = colors.none }, -- tab pages line, where there are no labels

        StatusLine = { fg = colors.dim, bg = colors.none }, -- status line of current window
        StatusLineNC = { fg = colors.smol, bg = colors.none }, -- status lines of not-current windows

        -- ColorColumn = { bg = colors.surface0 }, -- used for the columns set with 'colorcolumn'
        -- Conceal = { fg = colors.overlay1 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
        -- VertSplit = { bg = colors.smol, fg = colors.blue }, -- the column separating vertically split windows
        -- Folded = { fg = colors.blue, bg = O.transparent_background and colors.none or colors.surface1 }, -- line used for closed folds
        -- FoldColumn = { fg = colors.overlay0 }, -- 'foldcolumn'
        -- SignColumn = { fg = colors.surface1 }, -- column where |signs| are displayed
        -- SignColumnSB = { bg = colors.crust, fg = colors.surface1 }, -- column where |signs| are displayed
        -- Substitute = { bg = colors.surface1, fg = colors.pink }, -- |:substitute| replacement text highlighting
        -- ModeMsg = { fg = colors.text, style = { "bold" } }, -- 'showmode' message (e.g., "-- INSERT -- ")
        -- MsgArea = { fg = C.text },
        MsgSeparator = { fg = colors.smol },
        NonText = { fg = colors.smol },
        Question = { fg = colors.purp },
        QuickFixLine = { fg = colors.blue },
        -- SpecialKey = { link = "NonText" }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' textspace. |hl-Whitespace|
        SpellBad = { sp = colors.red, undercurl = true },
        SpellCap = { sp = colors.peach, undercurl = true },
        SpellLocal = { sp = colors.green, undercurl = true },
        SpellRare = { sp = colors.blue, undercurl = true },
        TermCursor = { fg = colors.base, bg = colors.text, bold = true }, -- cursor in a focused terminal
        -- VisualNOS = { bg = colors.surface1, style = { "bold" } }, -- Visual mode selection when vim is "Not Owning the Selection".
        Whitespace = { fg = colors.smol },
        -- WildMenu = { bg = colors.overlay0 }, -- current match in 'wildmenu' completion
        -- WinBar = { fg = colors.rosewater },
        -- WinBarNC = { link = "WinBar" },
    }
end

return M
