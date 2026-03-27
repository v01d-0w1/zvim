local lush = require('lush')
local hsl = lush.hsl

local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    Normal       { fg = hsl("#ffffff"), bg = hsl("#1a1a1a") },
    NormalNC     { fg = hsl("#aaaaaa"), bg = hsl("#1a1a1a") },
    Cursor       { fg = hsl("#1a1a1a"), bg = hsl("#ffffff") },
    Visual       { bg = hsl("#333333") },
    ColorColumn  { bg = hsl("#222222") },
    CursorLine   { bg = hsl("#222222") },
    CursorColumn { bg = hsl("#222222") },
    LineNr       { fg = hsl("#666666"), bg = hsl("#1a1a1a") },
    CursorLineNr { fg = hsl("#ffffff"), bg = hsl("#222222") },

    StatusLine     { fg = hsl("#1a1a1a"), bg = hsl("#ffffff"), gui = "bold" },
    StatusLineNC   { fg = hsl("#666666"), bg = hsl("#2a2a2a") },
    VertSplit      { fg = hsl("#ffffff"), bg = hsl("#1a1a1a") },
    WinSeparator   { fg = hsl("#ffffff"), bg = hsl("#1a1a1a") },

    Pmenu        { fg = hsl("#ffffff"), bg = hsl("#2a2a2a") },
    PmenuSel     { fg = hsl("#1a1a1a"), bg = hsl("#ffffff") },
    PmenuSbar    { bg = hsl("#333333") },
    PmenuThumb   { bg = hsl("#ffffff") },

    Comment      { fg = hsl("#666666"), gui = "italic" },
    Todo         { fg = hsl("#ffffff"), bg = hsl("#333333"), gui = "bold" },

    Constant     { fg = hsl("#dddddd") },
    String       { fg = hsl("#cccccc") },
    Character    { fg = hsl("#cccccc") },
    Number       { fg = hsl("#ffffff") },
    Boolean      { fg = hsl("#ffffff") },
    Float        { fg = hsl("#ffffff") },

    Function     { fg = hsl("#ffffff") },
    Identifier   { fg = hsl("#ffffff") },
    Statement    { fg = hsl("#ffffff") },
    Keyword      { fg = hsl("#ffffff") },
    Operator     { fg = hsl("#ffffff") },
    Type         { fg = hsl("#ffffff") },
    PreProc      { fg = hsl("#bbbbbb") },
    Special      { fg = hsl("#aaaaaa") },
    Underlined   { fg = hsl("#aaaaaa"), gui = "underline" },

    MatchParen   { fg = hsl("#ffffff"), bg = hsl("#333333"), gui = "bold" },
    IncSearch    { fg = hsl("#1a1a1a"), bg = hsl("#ffffff"), gui = "bold" },
    Search       { fg = hsl("#1a1a1a"), bg = hsl("#ffffff"), gui = "bold" },

    EndOfBuffer  { fg = hsl("#2a2a2a") },
    Whitespace   { fg = hsl("#333333") },
    Conceal      { fg = hsl("#555555") },

    DiagnosticError { fg = hsl("#ffffff") },
    DiagnosticWarn  { fg = hsl("#aaaaaa") },
    DiagnosticInfo  { fg = hsl("#888888") },
    DiagnosticHint  { fg = hsl("#aaaaaa") },

    DiffAdd      { fg = hsl("#ffffff"), bg = hsl("#222222") },
    DiffDelete   { fg = hsl("#ffffff"), bg = hsl("#222222") },
    DiffChange   { fg = hsl("#aaaaaa"), bg = hsl("#222222") },
    DiffText     { fg = hsl("#ffffff"), bg = hsl("#333333") },
}
end)
return theme
