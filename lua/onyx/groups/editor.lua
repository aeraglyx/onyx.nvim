M = {}

function M.get(colors)
    return {
        Normal = { fg = colors.text, bg = colors.none },
        Cursor = { fg = colors.base, bg = colors.text, bold = true },
        -- lCursor = { link = "Cursor" },
        -- CursorIM = { link = "Cursor" },
        EndOfBuffer = { fg = colors.base }, -- filler lines (~) after the end of the buffer.
        CursorLine = { bg = colors.deep },
        LineNr = { fg = colors.smol },
        CursorLineNr = { fg = colors.meh },

        Visual = { bg = colors.blue, fg = colors.base, bold = true },

        Search = { bg = colors.smol, fg = colors.peach },
        IncSearch = { bg = colors.peach, fg = colors.base, bold = true }, -- initial search and text replaced with ":s///c"
        CurSearch = { bg = colors.peach, fg = colors.base, bold = true },

        -- NormalNC = { fg = colors.meh }, -- normal text in non-current windows
        WinSeparator = { fg = colors.smol, bold = true },

        NormalFloat = { fg = colors.text, bg = colors.none },
        FloatBorder = { fg = colors.dim },
        -- FloatTitle = { link = "Title" }, -- Title of floating windows

        Directory = { fg = colors.blue }, -- directory names (and other special names in listings)

        Pmenu = { fg = colors.text, bg = colors.none },
        PmenuSel = { fg = colors.base, bg = colors.blue, bold = true }, -- selected item
        PmenuThumb = { bg = colors.blue }, -- thumb of the scrollbar
        -- PmenuSbar = { bg = colors.surface1 }, -- scrollbar
        -- PmenuExtra = { fg = colors.overlay0 }, -- normal item extra text
        -- PmenuExtraSel = { fg = colors.overlay0 }, -- selected item extra text

        TabLine = { bg = colors.none, fg = colors.dim }, -- tab pages line, not active tab page label
        TabLineFill = { bg = colors.none }, -- tab pages line, where there are no labels
        TabLineSel = { fg = colors.text, bold = true }, -- tab pages line, active tab page label

        StatusLine = { fg = colors.dim, bg = colors.none }, -- status line of current window
        StatusLineNC = { fg = colors.smol, bg = colors.none }, -- status lines of not-current windows

        Comment = { fg = colors.dim, italic = true },
        Keyword = { fg = colors.meh },
        Statement = { link = "Keyword" },
        Exception = { link = "Keyword" },
        Type = { fg = colors.text },
        Function = { fg = colors.text },
        Number = { fg = colors.blue },
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
        Changed = { fg = colors.blue },
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

        netrwClassify = { fg = colors.meh },

        ErrorMsg = { fg = colors.red, bold = true, italic = true }, -- error messages on the command line
        WarningMsg = { fg = colors.peach }, -- warning messages
        MoreMsg = { fg = colors.blue }, -- |more-prompt|


        -- ColorColumn = { bg = colors.surface0 }, -- used for the columns set with 'colorcolumn'
        -- Conceal = { fg = colors.overlay1 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
        -- CursorColumn = { bg = colors.mantle }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
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
        -- Question = { fg = colors.blue }, -- |hit-enter| prompt and yes/no questions
        -- QuickFixLine = { bg = colors.surface1 }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        -- SpecialKey = { link = "NonText" }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' textspace. |hl-Whitespace|
        -- SpellBad = { sp = colors.red, style = { "undercurl" } }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        -- SpellCap = { sp = colors.peach, style = { "undercurl" } }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        -- SpellLocal = { sp = colors.blue, style = { "undercurl" } }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        -- SpellRare = { sp = colors.green, style = { "undercurl" } }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
        -- TermCursor = { fg = colors.base, bg = colors.rosewater }, -- cursor in a focused terminal
        -- TermCursorNC = { fg = colors.base, bg = colors.overlay2 }, -- cursor in unfocused terminals
        -- VisualNOS = { bg = colors.surface1, style = { "bold" } }, -- Visual mode selection when vim is "Not Owning the Selection".
        -- Whitespace = { fg = colors.surface1 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        -- WildMenu = { bg = colors.overlay0 }, -- current match in 'wildmenu' completion
        -- WinBar = { fg = colors.rosewater },
        -- WinBarNC = { link = "WinBar" },
    }
end

return M
