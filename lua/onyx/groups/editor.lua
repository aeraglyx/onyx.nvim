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
        EndOfBuffer = { fg = colors.smol }, -- filler lines (~) after the end of the buffer.

        Visual = { bg = colors.text, fg = colors.base, bold = true },

        Search = { bg = colors.smol, fg = colors.red, bold = true },
        IncSearch = { bg = colors.red, fg = colors.base, bold = true },
        CurSearch = { bg = colors.red, fg = colors.base, bold = true },

        -- NormalNC = { fg = colors.meh }, -- normal text in non-current windows
        WinSeparator = { fg = colors.dim, bold = true },

        NormalFloat = { fg = colors.text, bg = colors.none },
        FloatBorder = { fg = colors.meh },
        -- FloatTitle = { link = "Title" }, -- Title of floating windows

        Directory = { fg = colors.text }, -- directory names (and other special names in listings)

        Pmenu = { fg = colors.text, bg = colors.none },
        PmenuSel = { fg = colors.base, bg = colors.text, bold = true }, -- selected item
        PmenuThumb = { bg = colors.meh }, -- thumb of the scrollbar
        -- PmenuSbar = { bg = colors.surface1 }, -- scrollbar
        -- PmenuExtra = { fg = colors.overlay0 }, -- normal item extra text
        -- PmenuExtraSel = { fg = colors.overlay0 }, -- selected item extra text

        TabLine = { fg = colors.dim }, -- tab pages line, not active tab page label
        TabLineSel = { fg = colors.text, bold = true }, -- tab pages line, active tab page label
        TabLineFill = { bg = colors.none }, -- tab pages line, where there are no labels

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
        -- -- MsgArea = { fg = C.text }, -- Area for messages and cmdline, don't set this highlight because of https://github.com/neovim/neovim/issues/17832
        -- MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
        -- NonText = { fg = colors.overlay0 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        -- NormalSB = { fg = colors.meh }, -- doesn't exist?
        Question = { fg = colors.green }, -- |hit-enter| prompt and yes/no questions
        QuickFixLine = { fg = colors.aqua }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        -- SpecialKey = { link = "NonText" }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' textspace. |hl-Whitespace|
        SpellBad = { sp = colors.red, undercurl = true },
        SpellCap = { sp = colors.peach, undercurl = true },
        SpellLocal = { sp = colors.green, undercurl = true },
        SpellRare = { sp = colors.blue, undercurl = true },
        TermCursor = { fg = colors.base, bg = colors.text, bold = true }, -- cursor in a focused terminal
        -- TermCursorNC = { fg = colors.base, bg = colors.overlay2 }, -- cursor in unfocused terminals
        -- VisualNOS = { bg = colors.surface1, style = { "bold" } }, -- Visual mode selection when vim is "Not Owning the Selection".
        -- Whitespace = { fg = colors.surface1 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        -- WildMenu = { bg = colors.overlay0 }, -- current match in 'wildmenu' completion
        -- WinBar = { fg = colors.rosewater },
        -- WinBarNC = { link = "WinBar" },
    }
end

return M
