return {
    "catppuccin/nvim",
    lazy = false,
    priority = 150,
    name = "catppuccin",
    config = function()
        require("catppuccin").setup({
            background = {
                light = "latte",
                dark = "mocha",
            },
            dim_inactive = { enabled = true, percentage = 0.25 },
            color_overrides = {
                -- mocha = {
                --     rosewater = "#EA6962",
                --     flamingo = "#EA6962",
                --     pink = "#D3869B",
                --     mauve = "#D3869B",
                --     red = "#EA6962",
                --     maroon = "#EA6962",
                --     peach = "#BD6F3E",
                --     yellow = "#D8A657",
                --     green = "#A9B665",
                --     teal = "#89B482",
                --     sky = "#89B482",
                --     sapphire = "#89B482",
                --     blue = "#7DAEA3",
                --     lavender = "#7DAEA3",
                --     text = "#D4BE98",
                --     subtext1 = "#BDAE8B",
                --     subtext0 = "#A69372",
                --     overlay2 = "#8C7A58",
                --     overlay1 = "#735F3F",
                --     overlay0 = "#4B4F51",
                --     -- overlay0 = "#5A4525",
                --     surface2 = "#4B4F51",
                --     surface1 = "#2A2D2E",
                --     surface0 = "#232728",
                --     base = "#1D2021",
                --     mantle = "#191C1D",
                --     crust = "#151819",
                -- },
                -- latte = {
                --     rosewater = "#c14a4a",
                --     flamingo = "#c14a4a",
                --     pink = "#945e80",
                --     mauve = "#945e80",
                --     red = "#c14a4a",
                --     maroon = "#c14a4a",
                --     peach = "#c35e0a",
                --     yellow = "#a96b2c",
                --     green = "#6c782e",
                --     teal = "#4c7a5d",
                --     sky = "#4c7a5d",
                --     sapphire = "#4c7a5d",
                --     blue = "#45707a",
                --     lavender = "#45707a",
                --     text = "#654735",
                --     subtext1 = "#7b5d44",
                --     subtext0 = "#8f6f56",
                --     overlay2 = "#a28368",
                --     overlay1 = "#b6977a",
                --     overlay0 = "#c9aa8c",
                --     surface2 = "#A79C86",
                --     surface1 = "#C9C19F",
                --     surface0 = "#DFD6B1",
                --     base = "#fbf1c7",
                --     mantle = "#F3EAC1",
                --     crust = "#E7DEB7",
                -- },
                -- macchiato = {
                --     rosewater = "#f2594b",
                --     flamingo = "#f2594b",
                --     pink = "#d3869b",
                --     mauve = "#d3869b",
                --     red = "#f2594b",
                --     maroon = "#f2594b",
                --     peach = "#BD6F3E",
                --     yellow = "#e9b143",
                --     green = "#b0b846",
                --     teal = "#8bba7f",
                --     sky = "#8bba7f",
                --     sapphire = "#8bba7f",
                --     blue = "#80aa9e",
                --     lavender = "#80aa9e",
                --     text = "#e2cca9",
                --     subtext1 = "#BDAE8B",
                --     subtext0 = "#A69372",
                --     overlay2 = "#8C7A58",
                --     overlay1 = "#735F3F",
                --     overlay0 = "#4B4F51",
                --     -- overlay0 = "#5A4525",
                --     surface2 = "#4B4F51",
                --     surface1 = "#2A2D2E",
                --     surface0 = "#232728",
                --     base = "#1D2021",
                --     mantle = "#191C1D",
                --     crust = "#151819",
                -- },
                -- macchiato = {
                --     text = "#F4CDE9",
                --     subtext1 = "#DEBAD4",
                --     subtext0 = "#C8A6BE",
                --     overlay2 = "#B293A8",
                --     overlay1 = "#9C7F92",
                --     overlay0 = "#866C7D",
                --     surface2 = "#705867",
                --     surface1 = "#5A4551",
                --     surface0 = "#44313B",
                --     base = "#352939",
                --     mantle = "#211924",
                --     crust = "#1a1016",
                -- },
            },
            styles = {
                comments = { "italic" },
                conditionals = { "italic" },
                loops = { "bold" },
                functions = { "bold" },
                keywords = { "bold" },
                strings = {},
                variables = {},
                numbers = { "bold" },
                booleans = { "bold" },
                properties = {},
                types = { "bold" },
                operators = {},
            },
            transparent_background = false,
            show_end_of_buffer = false,
            custom_highlights = function(colors)
                return {
                    NormalFloat = { bg = colors.crust },
                    FloatBorder = { bg = colors.crust, fg = colors.crust },
                    VertSplit = { bg = colors.base, fg = colors.surface0 },
                    LineNr = { fg = colors.overlay0 },
                    CursorLineNr = { fg = colors.mauve, style = { "bold" } },
                    Pmenu = { bg = colors.crust, fg = "" },
                    PmenuSel = { bg = colors.surface0, fg = "" },
                    TelescopeSelection = { bg = colors.surface0 },
                    TelescopePromptCounter = { fg = colors.mauve, style = { "bold" } },
                    TelescopePromptPrefix = { bg = colors.surface0 },
                    TelescopePromptNormal = { bg = colors.surface0 },
                    TelescopeResultsNormal = { bg = colors.mantle },
                    TelescopePreviewNormal = { bg = colors.crust },
                    TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
                    TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
                    TelescopePreviewBorder = { bg = colors.crust, fg = colors.crust },
                    TelescopePromptTitle = { fg = colors.surface0, bg = colors.surface0 },
                    TelescopeResultsTitle = { fg = colors.mantle, bg = colors.mantle },
                    TelescopePreviewTitle = { fg = colors.crust, bg = colors.crust },
                    IndentBlanklineChar = { fg = colors.surface0 },
                    IndentBlanklineContextChar = { fg = colors.surface2 },
                    GitSignsChange = { fg = colors.peach },
                    NvimTreeIndentMarker = { link = "IndentBlanklineChar" },
                    NvimTreeExecFile = { fg = colors.text },
                }
            end,
        })

        -- vim.api.nvim_command("colorscheme catppuccin")
    end,
}
