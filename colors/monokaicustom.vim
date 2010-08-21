" Vim color file
" Maintainer: Tom Regner <vim@tomsdiner.org>
" Last Change:
"
" 2007-10-16 change by Alexei Alexandrov
" - highlight CursorColumn
"
" 2007-08-20 change by Diederick Niehorster
" - highlight CursorLine
"
" 2007-02-05
" - included changes from Keffin Barnaby
"   (vim>=7.0 PMenu and Spellchecking)
"
" 2006-09-06
" - changed String to DarkCyan, Macro to DarkRed
"
" 2006-09-05
" - more console-colors
" - added console-colors, clean-up
"
" Version: 1.2.5
" URL: http://vim.sourceforge.net/script.php?script_id=368


""" Init
set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "monokaicustom"

"""" GUI 

highlight Cursor        gui=None guibg=#00FFFF guifg=White
highlight CursorIM      gui=bold guifg=white guibg=PaleTurquoise3
highlight CursorLine    gui=None guibg=#003853
highlight CursorColumn  gui=None guibg=#003853
highlight Directory     guifg=LightSeaGreen guibg=bg
highlight DiffAdd       gui=None guifg=fg guibg=DarkCyan
highlight DiffChange    gui=None guifg=fg guibg=Green4
highlight DiffDelete    gui=None guifg=fg guibg=black
highlight DiffText      gui=bold guifg=fg guibg=bg
highlight ErrorMsg      guifg=LightYellow  guibg=FireBrick
highlight VertSplit     gui=NONE guifg=black guibg=grey60
highlight Folded        gui=bold guibg=#305060 guifg=#b0d0e0
highlight FoldColumn    gui=bold guibg=#305060 guifg=#b0d0e0
highlight IncSearch     gui=reverse guifg=fg guibg=bg
highlight LineNr        gui=bold guibg=grey6 guifg=LightSkyBlue3
highlight ModeMsg       guibg=#3D7EF6 guifg=#A3EBFF
highlight MoreMsg       gui=bold  guifg=#A3EBFF guibg=bg
if version < 600
    " same as SpecialKey
    highlight NonText   guibg=#123A4A guifg=#3D5D6D
else
    " Bottom fill (use e.g. same as LineNr)
    highlight NonText   gui=None guibg=#272822 guifg=LightSkyBlue
endif
highlight Normal        gui=None guibg=#272822 guifg=honeydew2
highlight Question      gui=bold  guifg=SeaGreen2 guibg=bg
highlight Search        gui=NONE guibg=LightSkyBlue4 guifg=NONE
highlight SpecialKey    guibg=#103040 guifg=#324262
highlight StatusLine    gui=bold guibg=grey88 guifg=black
highlight StatusLineNC  gui=NONE guibg=grey60 guifg=grey10
highlight Title         gui=bold  guifg=MediumOrchid1 guibg=bg
highlight Visual        gui=reverse guibg=WHITE guifg=SeaGreen
highlight VisualNOS     gui=bold,underline guifg=fg guibg=bg
highlight WarningMsg    gui=bold guifg=FireBrick1 guibg=bg
highlight WildMenu      gui=bold guibg=Chartreuse guifg=Black

highlight Comment       gui=None guibg=#EE3A8C guifg=WHITE
highlight Constant      guifg=cyan3 guibg=bg
highlight String        gui=None guifg=#E7005F guibg=bg
highlight Number        gui=None guifg=Cyan guibg=bg
highlight Boolean       gui=bold guifg=Cyan guibg=bg
highlight Identifier    guifg=LightSkyBlue3
highlight Function      gui=None guifg=DarkSeaGreen3 guibg=bg

highlight Statement     gui=NONE guifg=LightGreen
highlight Conditional   gui=None guifg=LightGreen guibg=bg
highlight Repeat        gui=None guifg=SeaGreen2 guibg=bg
highlight Operator      gui=None guifg=Chartreuse guibg=bg
highlight Keyword       gui=bold guifg=LightGreen guibg=bg
highlight Exception     gui=bold guifg=LightGreen guibg=bg

highlight PreProc       guifg=SkyBlue1
highlight Include       gui=None guifg=LightSteelBlue3 guibg=bg
highlight Define        gui=None guifg=LightSteelBlue2 guibg=bg
highlight Macro         gui=None guifg=LightSkyBlue3 guibg=bg
highlight PreCondit     gui=None guifg=LightSkyBlue2 guibg=bg

highlight Type          gui=NONE guifg=LightBlue
highlight StorageClass  gui=None guifg=LightBlue guibg=bg
highlight Structure     gui=None guifg=LightBlue guibg=bg
highlight Typedef       gui=None guifg=LightBlue guibg=bg

highlight Special       gui=bold guifg=aquamarine3
highlight Underlined    gui=underline guifg=honeydew4 guibg=bg
highlight Ignore        guifg=#204050
highlight Error         guifg=LightYellow  guibg=FireBrick
highlight Todo          guifg=Cyan guibg=#507080

"Custom Ruby highlighting
hi rubyConstant         gui=None guifg=#AE81FF guibg=bg
hi rubyClassVariable    gui=None guifg=#FF13BE guibg=bg
hi rubyInstanceVariable gui=None guifg=#FF13BE guibg=#800080
hi rubyClass            gui=None guifg=#A6E22E guibg=#000000
hi rubyAttribute        gui=None guifg=#2BF1DC guibg=bg
hi rubySymbol           gui=None guifg=#62E9BD guibg=bg
hi rubyBlock            gui=None guifg=#2BF1DC guibg=bg
hi rubyMethodBlock      gui=None guifg=#2BF1DC guibg=bg
hi rubyString           gui=None guifg=honeydew2 guibg=bg
hi rubyLocalVariableOrMethod gui=None guifg=honeydew2 guibg=bg
hi rubyDefine           gui=None guifg=#2BF1DC guibg=bg
hi rubyFunction         gui=None guifg=#A3EBFF guibg=bg
hi rubyBlockParameter   gui=None guifg=#B684CA guibg=bg
hi rubyRegExp           gui=None guifg=#60A4F1 guibg=bg
hi rubyRepeat           gui=None guifg=#2BF1DC guibg=bg
hi rubyOptionalDoLine   gui=None guifg=#2BF1DC guibg=bg
hi rubyRegExpCharClass  gui=None guifg=#F8FBB1 guibg=bg
hi rubyInclude          gui=None guifg=#2BF1DC guibg=bg
hi rubyPredefinedConstant  gui=None guifg=#60A4F1 guibg=bg
hi rubyPredefinedVariable  gui=None guifg=#B684CA guibg=bg
hi rubyControl          gui=None guifg=#2BF1DC guibg=bg


if v:version >= 700
    highlight PMenu      gui=bold guibg=#60A4F1 guifg=#06071D
    highlight PMenuSel   gui=bold guibg=#62E9BD guifg=#06071D
    highlight PMenuSbar  gui=bold guibg=LightSkyBlue4
    highlight PMenuThumb gui=bold guibg=#62E9BD
    highlight SpellBad   gui=undercurl guisp=Red
    highlight SpellRare  gui=undercurl guisp=Orange
    highlight SpellLocal gui=undercurl guisp=Orange
    highlight SpellCap   gui=undercurl guisp=Yellow
endif

""" Console
if v:version >= 700
    highlight PMenu      cterm=bold ctermbg=DarkGreen ctermfg=Gray
    highlight PMenuSel   cterm=bold ctermbg=Yellow ctermfg=Gray
    highlight PMenuSbar  cterm=bold ctermbg=DarkGreen
    highlight PMenuThumb cterm=bold ctermbg=Yellow
    highlight SpellBad   ctermbg=Red
    highlight SpellRare  ctermbg=Red
    highlight SpellLocal ctermbg=Red
    highlight SpellCap   ctermbg=Yellow
endif

highlight Normal        ctermfg=Gray ctermbg=None
highlight Search        ctermfg=Black ctermbg=Red cterm=NONE
highlight Visual        cterm=reverse
highlight Cursor        ctermfg=Black ctermbg=Green cterm=bold
highlight Special       ctermfg=Brown
highlight Comment       ctermfg=DarkGray
highlight StatusLine    ctermfg=Blue ctermbg=White
highlight Statement     ctermfg=Yellow cterm=NONE
highlight Type          cterm=NONE
highlight Macro         ctermfg=DarkRed
highlight Identifier    ctermfg=DarkYellow
highlight Structure     ctermfg=DarkGreen
highlight String        ctermfg=DarkCyan

" vim: sw=4 ts=4 et
