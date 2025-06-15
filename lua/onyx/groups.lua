local colors = require("onyx.colors")
colors.none = "NONE"

local groups = {
    Normal = { fg = colors.text, bg = colors.none }, -- normal text
    Cursor = { fg = colors.base, bg = colors.text, bold = true },
    -- lCursor = { link = "Cursor" },
    -- CursorIM = { link = "Cursor" },
    EndOfBuffer = { fg = colors.base }, -- filler lines (~) after the end of the buffer.
    CursorLine = { bg = colors.none },
    LineNr = { fg = colors.dim },
    CursorLineNr = { fg = colors.text },

    Visual = { bg = colors.meh, fg = colors.base, bold = true },

    Search = { bg = colors.surface2, fg = colors.blue },
    IncSearch = { bg = colors.blue, fg = colors.base, bold = true }, -- initial search; also used for the text replaced with ":s///c"
    CurSearch = { bg = colors.blue, fg = colors.base, bold = true }, -- selected search: highlights the current search you're on differently

    NormalFloat = { fg = colors.text, bg = colors.none },
    FloatBorder = { fg = colors.blue },
    -- FloatTitle = { fg = colors.subtext0 }, -- Title of floating windows

    Directory = { fg = colors.blue }, -- directory names (and other special names in listings)

    Pmenu = { fg = colors.text, bg = colors.none },
    PmenuSel = { fg = colors.base, bg = colors.blue, bold = true }, -- selected item
    -- PmenuSbar = { bg = colors.surface1 }, -- scrollbar
    PmenuThumb = { bg = colors.blue }, -- thumb of the scrollbar
    -- PmenuExtra = { fg = colors.overlay0 }, -- normal item extra text
    -- PmenuExtraSel = { fg = colors.overlay0 }, -- selected item extra text

    TabLine = { bg = colors.none, fg = colors.dim }, -- tab pages line, not active tab page label
    TabLineFill = { bg = colors.none }, -- tab pages line, where there are no labels
    TabLineSel = { fg = colors.text, bold = true }, -- tab pages line, active tab page label

    StatusLine = { fg = colors.dim, bg = colors.none }, -- status line of current window
    StatusLineNC = { fg = colors.smol, bg = colors.none }, -- status lines of not-current windows

    Title = { fg = colors.purp, bold = true }, -- titles for output from ":set all", ":autocmd" etc.

    Comment = { fg = colors.dim },
    Keyword = { fg = colors.purp },
    Statement = { link = "Keyword" },
    Exception = { link = "Keyword" },
    Type = { fg = colors.meh, italic = true },
    Function = { fg = colors.text },
    Number = { fg = colors.blue },
    Boolean = { link = "Number" },
    String = { link = "Number" },
    Character = { link = "String" },
    Identifier = { link = "Normal" },
    Label = { fg = colors.blue },
    Special = { fg = colors.blue },
    Constant = { fg = colors.text },
    PreProc = { fg = colors.yellow },


    Added = { fg = colors.green },
    Changed = { fg = colors.purp },
    Removed = { fg = colors.red },

    DiffAdd = { link = "Added" },
    DiffChange = { link = "Changed" },
    DiffDelete = { link = "Removed" },
    -- DiffText = { link = "Normal" },


    DiagnosticError = { fg = colors.red },
    DiagnosticWarn = { fg = colors.peach },
    DiagnosticInfo = { fg = colors.green },
    DiagnosticHint = { fg = colors.green },
    -- DiagnosticUnnecessary = { link = "Comment" },
    DiagnosticUnderlineError = { undercurl = true, sp = colors.red },
    DiagnosticUnderlineWarn = { undercurl = true, sp = colors.peach },
    DiagnosticUnderlineInfo = { undercurl = true, sp = colors.blue },
    DiagnosticUnderlineHint = { undercurl = true, sp = colors.blue },
    -- DiagnosticVirtualText...

    healthError = { fg = colors.red },
    healthSuccess = { fg = colors.green },
    healthWarning = { fg = colors.peach },

    Delimiter = { fg = colors.meh },
    -- Operator = { fg = colors.dim },
    Operator = { link = "Delimiter" },
    MatchParen = { fg = colors.blue, bold = true },



    -- ColorColumn = { bg = colors.surface0 }, -- used for the columns set with 'colorcolumn'
    -- Conceal = { fg = colors.overlay1 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    -- CursorColumn = { bg = colors.mantle }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    ErrorMsg = { fg = colors.red, bold = true, italic = true }, -- error messages on the command line
    -- VertSplit = { fg = O.transparent_background and colors.surface1 or colors.crust }, -- the column separating vertically split windows
    -- Folded = { fg = colors.blue, bg = O.transparent_background and colors.none or colors.surface1 }, -- line used for closed folds
    -- FoldColumn = { fg = colors.overlay0 }, -- 'foldcolumn'
    -- SignColumn = { fg = colors.surface1 }, -- column where |signs| are displayed
    -- SignColumnSB = { bg = colors.crust, fg = colors.surface1 }, -- column where |signs| are displayed
    -- Substitute = { bg = colors.surface1, fg = colors.pink }, -- |:substitute| replacement text highlighting
    -- ModeMsg = { fg = colors.text, style = { "bold" } }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- -- MsgArea = { fg = C.text }, -- Area for messages and cmdline, don't set this highlight because of https://github.com/neovim/neovim/issues/17832
    -- MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg = { fg = colors.blue }, -- |more-prompt|
    -- NonText = { fg = colors.overlay0 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    -- NormalNC = {
    --     fg = colors.text,
    --     bg = (O.transparent_background and O.dim_inactive.enabled and colors.dim)
    --     or (O.dim_inactive.enabled and colors.dim)
    --     or (O.transparent_background and colors.none)
    --     or colors.base,
    -- }, -- normal text in non-current windows
    -- NormalSB = { fg = colors.text, bg = colors.crust }, -- normal text in non-current windows
    -- Question = { fg = colors.blue }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine = { bg = colors.surface1 }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- SpecialKey = { link = "NonText" }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' textspace. |hl-Whitespace|
    -- SpellBad = { sp = colors.red, style = { "undercurl" } }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap = { sp = colors.yellow, style = { "undercurl" } }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal = { sp = colors.blue, style = { "undercurl" } }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare = { sp = colors.green, style = { "undercurl" } }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    -- TermCursor = { fg = colors.base, bg = colors.rosewater }, -- cursor in a focused terminal
    -- TermCursorNC = { fg = colors.base, bg = colors.overlay2 }, -- cursor in unfocused terminals
    -- VisualNOS = { bg = colors.surface1, style = { "bold" } }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg = { fg = colors.yellow }, -- warning messages
    -- Whitespace = { fg = colors.surface1 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- WildMenu = { bg = colors.overlay0 }, -- current match in 'wildmenu' completion
    -- WinBar = { fg = colors.rosewater },
    -- WinBarNC = { link = "WinBar" },
    -- WinSeparator = { fg = O.transparent_background and colors.surface1 or colors.crust },

    TelescopeBorder = { fg = colors.blue },
    TelescopeMatching = { fg = colors.base, bg = colors.green, bold = true },
    TelescopeSelection = { fg = colors.deep, bg = colors.blue, bold = true },
    TelescopePreviewLine = { link = "TelescopeSelection" },
    -- TelescopeResultsDiffUntracked = { fg = colors.blue },

    BlinkCmpMenuBorder = { link = "FloatBorder" },
    BlinkCmpDocBorder = { link = "BlinkCmpMenuBorder" },

    ["@module"] = { fg = colors.text },

    ["@string.regexp"] = { link = "String" },
    -- string.special.path in nix
    -- ["@string.special.path.gitignore"] = { link = "Normal" },
    ["@string.special"] = { link = "String" },
    ["@string.escape"] = { fg = colors.meh },
    ["@string.documentation"] = { fg = colors.meh },

    -- ["@constructor"] = { fg = colors.blue },
    ["@constructor"] = { fg = colors.meh },
    ["@constructor.lua"] = { link = "@punctuation.bracket" },
    ["@punctuation.special"] = { link = "Delimiter" },

    ["@variable"] = { fg = colors.text },

    ["@function.builtin"] = { link = "Function", italic = true },
    ["@constant.builtin"] = { link = "Constant", italic = true },
    ["@variable.builtin"] = { fg = colors.blue, italic = true },

    ["@tag"] = { fg = colors.text },
    ["@tag.attribute"] = { link = "Normal" },
    ["@tag.delimiter"] = { link = "Delimiter" },
    -- ["@tag.delimiter.xml"] = { link = "Delimiter" },
    ["@keyword.directive.css"] = { link = "Normal" },
}

return groups
