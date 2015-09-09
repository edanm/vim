" Vim color file - corporation_modified
" Generated by http://bytefluent.com/vivify 2015-03-15
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "corporation_modified"

hi IncSearch guifg=#315372 guibg=#b9bd97 guisp=#b9bd97 gui=NONE ctermfg=66 ctermbg=144 cterm=NONE
hi WildMenu guifg=NONE guibg=#7f8ea8 guisp=#7f8ea8 gui=NONE ctermfg=NONE ctermbg=103 cterm=NONE
hi SignColumn guifg=#315372 guibg=#353691 guisp=#353691 gui=NONE ctermfg=66 ctermbg=60 cterm=NONE
hi SpecialComment guifg=#fbffcb guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi Typedef guifg=#5053df guibg=NONE guisp=NONE gui=bold ctermfg=62 ctermbg=NONE cterm=bold
hi Title guifg=#dac6ff guibg=#111a24 guisp=#111a24 gui=bold ctermfg=189 ctermbg=235 cterm=bold
hi Folded guifg=#315372 guibg=#7f8ea8 guisp=#7f8ea8 gui=italic ctermfg=66 ctermbg=103 cterm=NONE
hi PreCondit guifg=#fbffcb guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi Include guifg=#fbffcb guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi TabLineSel guifg=#315372 guibg=#b9bd97 guisp=#b9bd97 gui=bold ctermfg=66 ctermbg=144 cterm=bold
hi StatusLineNC guifg=#315372 guibg=#485a70 guisp=#485a70 gui=bold ctermfg=66 ctermbg=60 cterm=bold
"hi CTagsMember -- no settings --
hi NonText guifg=#7b99be guibg=NONE guisp=NONE gui=italic ctermfg=67 ctermbg=NONE cterm=NONE
"hi CTagsGlobalConstant -- no settings --
hi DiffText guifg=NONE guibg=#492414 guisp=#492414 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi ErrorMsg guifg=#b8cff5 guibg=#918773 guisp=#918773 gui=NONE ctermfg=153 ctermbg=101 cterm=NONE
"hi Ignore -- no settings --
hi Debug guifg=#fbffcb guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#696e88 guisp=#696e88 gui=NONE ctermfg=NONE ctermbg=60 cterm=NONE
hi Identifier guifg=#fbffcb guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#fbffcb guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi Conditional guifg=#fbffcb guibg=NONE guisp=NONE gui=bold ctermfg=230 ctermbg=NONE cterm=bold
hi StorageClass guifg=#5053df guibg=NONE guisp=NONE gui=bold ctermfg=62 ctermbg=NONE cterm=bold
hi Todo guifg=#dac6ff guibg=#b9bd97 guisp=#b9bd97 gui=NONE ctermfg=189 ctermbg=144 cterm=NONE
hi Special guifg=#fbffcb guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi LineNr guifg=#fbffcb guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#315372 guibg=#b9bd97 guisp=#b9bd97 gui=bold ctermfg=66 ctermbg=144 cterm=bold
hi Normal guifg=#ab66ff guibg=#112638 guisp=#112638 gui=NONE ctermfg=135 ctermbg=23 cterm=NONE
hi Label guifg=#fbffcb guibg=NONE guisp=NONE gui=bold ctermfg=230 ctermbg=NONE cterm=bold
"hi CTagsImport -- no settings --
hi PMenuSel guifg=#315372 guibg=#b9bd97 guisp=#b9bd97 gui=NONE ctermfg=66 ctermbg=144 cterm=NONE
hi Search guifg=#315372 guibg=#b9bd97 guisp=#b9bd97 gui=NONE ctermfg=66 ctermbg=144 cterm=NONE
"hi CTagsGlobalVariable -- no settings --
hi Delimiter guifg=#fbffcb guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi Statement guifg=#fbffcb guibg=NONE guisp=NONE gui=bold ctermfg=230 ctermbg=NONE cterm=bold
hi SpellRare guifg=#dac6ff guibg=#111a24 guisp=#111a24 gui=underline ctermfg=189 ctermbg=235 cterm=underline
"hi EnumerationValue -- no settings --
hi Comment guifg=#7b99be guibg=NONE guisp=NONE gui=italic ctermfg=67 ctermbg=NONE cterm=NONE
hi Character guifg=#b8cff5 guibg=NONE guisp=NONE gui=NONE ctermfg=153 ctermbg=NONE cterm=NONE
hi Float guifg=#b8cff5 guibg=NONE guisp=NONE gui=NONE ctermfg=153 ctermbg=NONE cterm=NONE
hi Number guifg=#b8cff5 guibg=NONE guisp=NONE gui=NONE ctermfg=153 ctermbg=NONE cterm=NONE
hi Boolean guifg=#b8cff5 guibg=NONE guisp=NONE gui=NONE ctermfg=153 ctermbg=NONE cterm=NONE
hi Operator guifg=#fbffcb guibg=NONE guisp=NONE gui=bold ctermfg=230 ctermbg=NONE cterm=bold
hi CursorLine guifg=NONE guibg=#182430 guisp=#182430 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
"hi Union -- no settings --
hi TabLineFill guifg=#315372 guibg=#485a70 guisp=#485a70 gui=bold ctermfg=66 ctermbg=60 cterm=bold
"hi Question -- no settings --
hi WarningMsg guifg=#b8cff5 guibg=#918773 guisp=#918773 gui=NONE ctermfg=153 ctermbg=101 cterm=NONE
hi VisualNOS guifg=#315372 guibg=#dac6ff guisp=#dac6ff gui=underline ctermfg=66 ctermbg=189 cterm=underline
hi DiffDelete guifg=NONE guibg=#111a24 guisp=#111a24 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
hi ModeMsg guifg=#ffccee guibg=#111a24 guisp=#111a24 gui=bold ctermfg=225 ctermbg=235 cterm=bold
hi CursorColumn guifg=NONE guibg=#182430 guisp=#182430 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Define guifg=#fbffcb guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi Function guifg=#5053df guibg=NONE guisp=NONE gui=bold ctermfg=62 ctermbg=NONE cterm=bold
hi FoldColumn guifg=#315372 guibg=#7f8ea8 guisp=#7f8ea8 gui=italic ctermfg=66 ctermbg=103 cterm=NONE
hi PreProc guifg=#fbffcb guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
"hi EnumerationName -- no settings --
hi Visual guifg=#315372 guibg=#dac6ff guisp=#dac6ff gui=NONE ctermfg=66 ctermbg=189 cterm=NONE
hi MoreMsg guifg=#fbffcb guibg=NONE guisp=NONE gui=bold ctermfg=230 ctermbg=NONE cterm=bold
hi SpellCap guifg=#dac6ff guibg=#111a24 guisp=#111a24 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi VertSplit guifg=#315372 guibg=#485a70 guisp=#485a70 gui=bold ctermfg=66 ctermbg=60 cterm=bold
hi Exception guifg=#fbffcb guibg=NONE guisp=NONE gui=bold ctermfg=230 ctermbg=NONE cterm=bold
hi Keyword guifg=#fbffcb guibg=NONE guisp=NONE gui=bold ctermfg=230 ctermbg=NONE cterm=bold
hi Type guifg=#5053df guibg=NONE guisp=NONE gui=bold ctermfg=62 ctermbg=NONE cterm=bold
hi DiffChange guifg=NONE guibg=#492414 guisp=#492414 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi Cursor guifg=#315372 guibg=#f9c7e8 guisp=#f9c7e8 gui=NONE ctermfg=66 ctermbg=225 cterm=NONE
hi SpellLocal guifg=#dac6ff guibg=#111a24 guisp=#111a24 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Error guifg=#b8cff5 guibg=#918773 guisp=#918773 gui=NONE ctermfg=153 ctermbg=101 cterm=NONE
hi PMenu guifg=#315372 guibg=#485a70 guisp=#485a70 gui=NONE ctermfg=66 ctermbg=60 cterm=NONE
hi SpecialKey guifg=#7b99be guibg=NONE guisp=NONE gui=italic ctermfg=67 ctermbg=NONE cterm=NONE
hi Constant guifg=#b8cff5 guibg=NONE guisp=NONE gui=NONE ctermfg=153 ctermbg=NONE cterm=NONE
"hi DefinedName -- no settings --
hi Tag guifg=#fbffcb guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi String guifg=#b8cff5 guibg=NONE guisp=NONE gui=NONE ctermfg=153 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#8289a8 guisp=#8289a8 gui=NONE ctermfg=NONE ctermbg=103 cterm=NONE
hi MatchParen guifg=#fbffcb guibg=NONE guisp=NONE gui=bold ctermfg=230 ctermbg=NONE cterm=bold
"hi LocalVariable -- no settings --
hi Repeat guifg=#fbffcb guibg=NONE guisp=NONE gui=bold ctermfg=230 ctermbg=NONE cterm=bold
hi SpellBad guifg=#dac6ff guibg=#111a24 guisp=#111a24 gui=underline ctermfg=189 ctermbg=235 cterm=underline
"hi CTagsClass -- no settings --
hi Directory guifg=#5053df guibg=NONE guisp=NONE gui=bold ctermfg=62 ctermbg=NONE cterm=bold
hi Structure guifg=#5053df guibg=NONE guisp=NONE gui=bold ctermfg=62 ctermbg=NONE cterm=bold
hi Macro guifg=#fbffcb guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi Underlined guifg=#dac6ff guibg=#111a24 guisp=#111a24 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi DiffAdd guifg=NONE guibg=#0f322a guisp=#0f322a gui=NONE ctermfg=NONE ctermbg=23 cterm=NONE
hi TabLine guifg=#315372 guibg=#485a70 guisp=#485a70 gui=bold ctermfg=66 ctermbg=60 cterm=bold
hi cursorim guifg=#315372 guibg=#353691 guisp=#353691 gui=NONE ctermfg=66 ctermbg=60 cterm=NONE
"hi clear -- no settings --
