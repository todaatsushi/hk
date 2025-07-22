local M = {}

function M.setup()
    local colors = {
        background = "#261720",
        eggplant = "#482C3D",
        chinese_violet = "#985D80",
        magenta_haze = "#7E4E6B",
        mountbatten_pink = "#AA7493",
    }

    local highlights = {
        Normal = { fg = colors.chinese_violet, bg = colors.background},
        ["@keyword"] = { fg = colors.chinese_violet, italic = true},
        ["@variable"] = { fg = colors.magenta_haze},
        ["@keyword.exception"] = { fg = colors.chinese_violet, italic = true},
        ["@keyword.coroutine"] = { fg = colors.chinese_violet, bold = true},
        ["@string"] = { fg = colors.mountbatten_pink},
        ["@string.escape"] = { fg = colors.chinese_violet},
        ["@string.special"] = { fg = colors.chinese_violet, italic = true},
        ["@character.special"] = { fg = colors.chinese_violet, italic = true},
        ["@number"] = { fg = colors.chinese_violet},
        ["@boolean"] = { fg = colors.mountbatten_pink},
        ["@function"] = { fg = colors.chinese_violet, bold = true},
        ["@type"] = { fg = colors.chinese_violet, italic = true},
        ["@attribute"] = { fg = colors.chinese_violet, bold = true},
        ["@constructor"] = { fg = colors.chinese_violet, bold = true},
        ["@property"] = { fg = colors.chinese_violet, bold = true},
        ["@operator"] = { fg = colors.chinese_violet},
        ["@comment"] = { fg = colors.chinese_violet},
        ["@punctuation"] = { fg = colors.chinese_violet},
        ["@punctuation.special"] = { fg = colors.chinese_violet, bold = true},
        ["@punctuation.bracket"] = { fg = colors.chinese_violet, bold = true},
        ["@function.method.call"] = { fg = colors.chinese_violet, italic = true},
        ["@markup"] = { fg = colors.mountbatten_pink, italic = true},
        ["@label"] = { fg = colors.mountbatten_pink, italic = true},

        -- builtins
        ["@module"] = { fg = colors.mountbatten_pink, bold = true},
        ["@module.builtin"] = { fg = colors.mountbatten_pink, italic = true},
        ["@constant.builtin"] = { fg = colors.chinese_violet, italic = true},
        ["@constant"] = { fg = colors.chinese_violet, bold = true},
        ["@function.builtin"] = { fg = colors.chinese_violet, bold = true},
        ["@variable.builtin"] = { fg = colors.chinese_violet, italic = true},
        ["@variable.member"] = { fg = colors.chinese_violet, italic = true},
        ["@type.builtin"] = { fg = colors.chinese_violet},
        ["@attribute.builtin"] = { fg = colors.chinese_violet, bold = true},

        -- LSP
        ["@comment.error"] = { fg = colors.mountbatten_pink},
        ["@comment.note"] = { fg = colors.chinese_violet},
        ["@comment.warning"] = { fg = colors.magenta_haze},

        -- Git
        ["@diff.plus"] = { fg = colors.mountbatten_pink},
        ["@diff.minus"] = { fg = colors.chinese_violet},

        -- Language specific
        ["@tag"] = { fg = colors.chinese_violet},
        makeTarget = { fg = colors.chinese_violet},

        -- Non Tree sitter
        qfFileName = { fg = colors.chinese_violet},
        QuickFixLine = { fg = colors.mountbatten_pink, bold = true},
        qfLineNr = { fg = colors.chinese_violet},
    }

    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
