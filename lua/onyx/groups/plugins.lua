M = {}

function M.get(colors)
    return {
        -- nvim-telescope/telescope.nvim
        TelescopeBorder = { link = "FloatBorder" },
        TelescopeTitle = { fg = colors.text },
        TelescopeMatching = { fg = colors.base, bg = colors.green, bold = true },
        TelescopeSelection = { fg = colors.deep, bg = colors.blue, bold = true },
        TelescopePreviewLine = { link = "TelescopeSelection" },
        TelescopeResultsDiffUntracked = { fg = colors.green },

        -- saghen/blink.cmp
        BlinkCmpMenuBorder = { link = "FloatBorder" },
        BlinkCmpDocBorder = { link = "BlinkCmpMenuBorder" },
        SnippetTabstop = { link = "Search" },

        -- kdheepak/lazygit.nvim
        LazyGitBorder = { fg = colors.base },

        -- lukas-reineke/indent-blankline.nvim
        IblIndent = { fg = colors.smol },
        IblScope = { fg = colors.meh },
        IblWhitespace = { fg = colors.smol },

        -- rcarriga/nvim-notify
        NotifyERRORBorder = { fg = colors.red },
        NotifyERRORIcon = { fg = colors.red },
        NotifyERRORTitle = { fg = colors.red },
        NotifyWARNBorder = { fg = colors.peach },
        NotifyWARNIcon = { fg = colors.peach },
        NotifyWARNTitle = { fg = colors.peach },
        NotifyDEBUGBorder = { fg = colors.meh },
        NotifyDEBUGIcon = { fg = colors.meh },
        NotifyDEBUGTitle = { fg = colors.meh },
        NotifyTRACEBorder = { fg = colors.purp },
        NotifyTRACEIcon = { fg = colors.purp },
        NotifyTRACETitle = { fg = colors.purp },
        NotifyINFOBorder = { fg = colors.green },
        NotifyINFOIcon = { fg = colors.green },
        NotifyINFOTitle = { fg = colors.green },
        -- link NotifyERRORBody Normal
        -- link NotifyWARNBody Normal
        -- link NotifyINFOBody Normal
        -- link NotifyDEBUGBody Normal
        -- link NotifyTRACEBody Normal

        -- folke/noice.nvim
        NoiceCmdlinePopupBorder = { fg = colors.text },
        NoiceCmdlinePopupBorderSearch = { link = "NoiceCmdlinePopupBorder" },
        NoiceCmdlineIcon = { link = "NoiceCmdlinePopupBorder" },
        NoiceCmdlineIconSearch = { link = "NoiceCmdlineIcon" },

        -- folke/todo-comments.nvim
        -- TodoFgTODO = { fg = colors.dim },

        -- stevearc/oil.nvim
        OilFile = { fg = colors.meh },
    }
end

return M
