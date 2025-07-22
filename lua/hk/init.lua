local M = {}

function M.setup()
    local colors = {
        background = "#261720",
        eggplant = "#482C3D",
        chinese_violet = "#985D80",
        magenta_haze = "#7E4E6B",
        mountbatten_pink = "#AA7493",
        salmon_pink = "#F59CA9",
    }

    local highlights = {
        Normal = { fg = colors.chinese_violet, bg = colors.background},

        ["@keyword"] = { fg = colors.chinese_violet, italic = true},
        ["@variable"] = { fg = colors.magenta_haze},
        ["@variable.parameter.builtin"] = { fg = colors.magenta_haze, bold = true},
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
        ["@diff.delta"] = { fg = colors.magenta_haze},

        -- Language specific
        ["@tag"] = { fg = colors.chinese_violet},
        ["@tag.builtin"] = { fg = colors.chinese_violet, bold = true},
        makeTarget = { fg = colors.chinese_violet},

        -- Telescope
        TelescopeMatching = { fg = colors.salmon_pink, bold = true},

        -- Non Tree sitter
        qfFileName = { fg = colors.chinese_violet},
        QuickFixLine = { fg = colors.mountbatten_pink, bold = true},
        qfLineNr = { fg = colors.chinese_violet},

        -- Cursor
        CurSearch = { fg = colors.background, bg = colors.salmon_pink},

        -- Diagnostics
        DiagnosticInfo = { fg = colors.chinese_violet, bg = colors.background},
        DiagnosticFloatingInfo = { fg = colors.chinese_violet, bg = colors.background},
        Debug = { fg = colors.mountbatten_pink, bg = colors.background},

        Changed = { fg = colors.mountbatten_pink, bg = colors.background},

        -- CMP
        CmpItemAbbr = { fg = colors.chinese_violet, italic = true},
        CmpItemKind = { fg = colors.chinese_violet, italic = true},
        CmpItemMenu = { fg = colors.chinese_violet, italic = true},
        CmpItemKindEnum = { fg = colors.chinese_violet, italic = true},
        CmpItemKindFile = { fg = colors.chinese_violet, italic = true},
        CmpItemKindText = { fg = colors.chinese_violet, italic = true},
        CmpItemKindUnit = { fg = colors.chinese_violet, italic = true},
        CmpItemAbbrMatch = { fg = colors.chinese_violet, italic = true},
        CmpItemKindClass = { fg = colors.chinese_violet, italic = true},
        CmpItemKindColor = { fg = colors.chinese_violet, italic = true},
        CmpItemKindEvent = { fg = colors.chinese_violet, italic = true},
        CmpItemKindField = { fg = colors.chinese_violet, italic = true},
        CmpItemKindValue = { fg = colors.chinese_violet, italic = true},
        CmpItemKindFolder = { fg = colors.chinese_violet, italic = true},
        CmpItemKindMethod = { fg = colors.chinese_violet, italic = true},
        CmpItemKindModule = { fg = colors.chinese_violet, italic = true},
        CmpItemKindStruct = { fg = colors.chinese_violet, italic = true},
        CmpItemAbbrDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindKeyword = { fg = colors.chinese_violet, italic = true},
        CmpItemKindSnippet = { fg = colors.chinese_violet, italic = true},
        CmpItemMenuDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindConstant = { fg = colors.chinese_violet, italic = true},
        CmpItemKindFunction = { fg = colors.chinese_violet, italic = true},
        CmpItemKindOperator = { fg = colors.chinese_violet, italic = true},
        CmpItemKindProperty = { fg = colors.chinese_violet, italic = true},
        CmpItemKindVariable = { fg = colors.chinese_violet, italic = true},
        CmpItemKindInterface = { fg = colors.chinese_violet, italic = true},
        CmpItemKindReference = { fg = colors.chinese_violet, italic = true},
        CmpItemAbbrDeprecated = { fg = colors.chinese_violet, italic = true},
        CmpItemAbbrMatchFuzzy = { fg = colors.chinese_violet, italic = true},
        CmpItemKindEnumMember = { fg = colors.chinese_violet, italic = true},
        CmpItemKindConstructor = { fg = colors.chinese_violet, italic = true},
        CmpItemKindEnumDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindFileDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindTextDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindUnitDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemAbbrMatchDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindClassDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindColorDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindEventDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindFieldDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindValueDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindFolderDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindMethodDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindModuleDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindStructDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindTypeParameter = { fg = colors.chinese_violet, italic = true},
        CmpItemKindKeywordDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindSnippetDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindConstantDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindFunctionDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindOperatorDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindPropertyDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindVariableDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindInterfaceDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindReferenceDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemAbbrDeprecatedDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemAbbrMatchFuzzyDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindEnumMemberDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindConstructorDefault = { fg = colors.chinese_violet, italic = true},
        CmpItemKindTypeParameterDefault = { fg = colors.chinese_violet, italic = true},

        -- Oil
        OilDir = { fg = colors.chinese_violet, italic = true },
        OilCopy = { fg = colors.eggplant, italic = true, bold = true },
        OilMove = { fg = colors.eggplant, italic = true, bold = true },
        OilPurge = { fg = colors.chinese_violet, italic = true, bold = true },
        OilTrash = { fg = colors.chinese_violet, italic = true, bold = true },
        OilChange = { fg = colors.eggplant, italic = true, bold = true },
        OilCreate = { fg = colors.eggplant, italic = true, bold = true },
        OilDelete = { fg = colors.eggplant, italic = true},
        OilHidden = { fg = colors.salmon_pink, italic = true},
        OilSocket = { fg = colors.chinese_violet, italic = true},
        OilDirIcon = { fg = colors.chinese_violet, italic = true},
        OilRestore = { fg = colors.chinese_violet, italic = true},
        OilDirHidden = { fg = colors.chinese_violet, italic = true},
        OilFileHidden = { fg = colors.chinese_violet, italic = true},
        OilLinkHidden = { fg = colors.chinese_violet, italic = true},
        OilLinkTarget = { fg = colors.chinese_violet, italic = true},
        OilSocketHidden = { fg = colors.chinese_violet, italic = true},
        OilTrashSourcePath = { fg = colors.chinese_violet, italic = true},
        OilLinkTargetHidden = { fg = colors.chinese_violet, italic = true},
        OilOrphanLinkHidden = { fg = colors.chinese_violet, italic = true},
        OilOrphanLinkTarget = { fg = colors.chinese_violet, italic = true},
        OilOrphanLinkTargetHidden = { fg = colors.chinese_violet, italic = true}
    }

    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
