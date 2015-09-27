" Load the following plugins. We do this manually for the control it gives us.
execute pathogen#infect()
" Need to source the indent-lines after file separately for some reason.
execute "source ".vimrealpath."/bundle/indentLine/after/plugin/indentLine.vim"

execute "set runtimepath ^=".vimpath."/plugins/vim-l9"
execute "set runtimepath ^=".vimpath."/plugins/genutils-2.5"
execute "set runtimepath ^=".vimpath."/plugins/ctrlp"
execute "set runtimepath ^=".vimpath."/plugins/vim-css"
execute "set runtimepath ^=".vimpath."/plugins/matchit"
execute "set runtimepath ^=".vimpath."/plugins/python_matchit"
execute "set runtimepath ^=".vimpath."/plugins/vim-less"

let mapleader = ","
" Very important: remap jk/kj to escape.
inoremap jk <Esc>
inoremap kj <Esc>

" Another option for leader key: may want to one day try this.
" let mapleader = "\<Space>"

set completeopt=longest,menu,preview
language en_US.UTF-8

" Replace the , functionality with ,; (since it is the counterpart to ;
" anyway).
nnoremap ,; ,


nnoremap <silent> <leader><leader> :nohlsearch<Bar>:echo<CR>
vnoremap <silent> <leader><leader> <esc>


" Set this to make vim's clipboard be the system clipboad.
set clipboard=unnamed

set splitright
set splitbelow
set colorcolumn=+1

" Save when losing focus
au FocusLost * :silent! wall


" Map R to delete to black hole register. Mnemonic - "[R]eally delete".
" This is done with AU becasue AutoComplPop kills the mapping.
au BufRead,BufNewFile * nnoremap R "_d
au BufRead,BufNewFile * nnoremap RR "_dd
au BufRead,BufNewFile * nnoremap Rr "_dd
au BufRead,BufNewFile * vnoremap R "_x

" Actually, no reason 'r' can't do this, visually selecting and replacing
" with char is just not common enough.
au BufRead,BufNewFile * vnoremap r "_x


" Map K to "Kill entire line".
nnoremap K 0D


set formatoptions=n


" Configure YouCompleteMe to NOT use tabs to cycle through options.
let g:ycm_key_list_select_completion = []
let g:ycm_key_list_previous_completion = []
let g:ycm_filetype_specific_completion_to_disable = {
      \ 'c': 1
      \}

" Define the global ycm extra conf, not sure why this is needed.
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

let EasyMotion_leader_key = '<tab><tab>'
" let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\'
" let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz1234567890\'
" This is a new thing to try: make the easymotion keys based on the keyboard
" layout, so that if I miss by one, it's not so bad. Also makes it easier to
" know where I'll need to place my hands.
" let g:EasyMotion_keys = 'asdfghjkl;zxcvbnm,qwertyuiop1234567890\'
let g:EasyMotion_use_upper = 1
let g:EasyMotion_keys = 'ASDFGHJL;ZXCVBNMQWERTYUIOPK'
" let g:EasyMotion_keys = 'FJDKSLIONM,HXCVGWERAQW'


" Highlight the current word under the cursor. Copied from: https://www.reddit.com/r/vim/comments/2q8el3/vimbrightest_highlights_the_word_under_the_cursor/
" Couldn't find a decent color for this so disabling for now.
" highlight WordUnder guibg=#264b4b ctermbg=8
" autocmd CursorMoved * exe printf('match WordUnder /\V\<%s\>/', escape(expand('<cword>'), '/\'))

" let g:EasyMotion_mapping_w = '<space>'

" map <space> <Plug>(easymotion-jumptoanywhere)
nmap <space> <Plug>(easymotion-bd-w)
vmap <space> <Plug>(easymotion-bd-w)

" Incsearch plugin settings.
let g:incsearch#consistent_n_direction = 0

" I'm not mapping backward search because it breaks the use of n.
map /  <Plug>(incsearch-forward)
" map ?  <Plug>(incsearch-backward)
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)

" Don't map these for now.
" map g/ <Plug>(incsearch-stay)
" map g/ <Plug>(incsearch-fuzzy-stay)


" Make the second letter NOT highlighted in easymotion to prevent massive
" colors on screen. Still easy to use.
" au BufRead,BufNewFile * hi EasyMotionTarget2Second ctermbg=none ctermfg=none

" let g:EasyMotion_re_anywhere = '\v' .
            " " \       '(<.|^)' . '|' .
            " " \       '(<.|.$)' . '|' .
            " " \       '(\l)\zs(\u)' . '|' .


" Surround.vim: Map regular "s" (as opposed to capital "S") in visual mode to
" surround.
xmap s <Plug>VSurround



" This makes star stay in place. Not sure I need it right now.
" nnoremap <silent> * :let stay_star_view = winsaveview()<cr>*:call winrestview(stay_star_view)<cr>

let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1

let EasyGrepMode = 2
let EasyGrepRecursive=1

" Syntastic stuff.
" let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-", " proprietary attribute \"ui-", "missing </a", "discarding unexpected </a", "missing </a", "trimming empty"]
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected"]

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Make - and shift-"-" add a newline above/below this line in normal mode. 
noremap - mzO<Esc>`z
noremap _ mzo<Esc>`z



" vim-expand-region mappings.
" map <leader>f <Plug>(expand_region_expand)
" map <leader>F <Plug>(expand_region_shrink)

" Next test: map 'v' to expand-region from visual mode. 
" This means hitting 'v' repeatedly expands the region, very useful.
" This is OK, beacuse the normal map for 'v' from visual mode is to escape
" visual mode, something I use <leader><leader> to do.
vmap v <plug>(expand_region_expand)
vmap <leader>v <Plug>(expand_region_shrink)


" Make the "-" a part of words, for completion and other stuff. 
" test
set iskeyword ^=-


set formatoptions+=j " Delete comment character when joining commented lines


let g:cycle_no_mappings=1
nmap  gc     <Plug>CycleNext
nmap  gC     <Plug>CyclePrevious


" I hate wrapping.
set nowrap

" Syntax coloring lines that are too long just slows down the world
" Made this MUCH larger otherwise it screws up things like bracket matching.
set synmaxcol=5000
set lazyredraw " to avoid scrolling problems


" That wasn't fun in yanking, let's try the old way,
map ,w <Plug>CamelCaseMotion_w
map ,b <Plug>CamelCaseMotion_b
map ,e <Plug>CamelCaseMotion_e

" Map ctrl-s to save, for sanity.
nmap <c-s> :w<cr>

" And in insert mode.
imap <c-s> jk:w<cr>


let g:user_emmet_leader_key='<c-t>'


if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif


" Let's just turn backups off already! Never use them.
set nobackup
set nowritebackup
set noswapfile
" set backup " enable backups
" set backupdir=f:/vim/backup " where to put backup files
" set directory=f:/vim/temp " new temp dir

" Very important for Linux - map w!! to force save if file is readonly. 
cmap w!! %!sudo tee > /dev/null %


" Make the brightest work by underlining the word under the cursor.
let g:brightest#highlight = {"group": "BrightestUnderline"}


" set cptions+=I
" set cpoptions+=$ " Try this for a while 

"; let Tlist_Show_One_File=1
" let Tlist_GainFocus_On_ToggleOpen=1
" let Tlist_Close_On_Select=1
" let Tlist_Use_Right_Window = 1
" let Tlist_WinWidth = 50
" "let tlist_css_settings = 'css;c:Classes;o:Objects(ID);t:Tags(Elements)'
" "let tlist_css_settings = 'css;s:Selector;e:section;c:class;i:id'
" let tlist_css_settings = 'css;i:Selector'
let g:tagbar_autofocus = 1

" let g:tagbar_usearrows=1

let g:tagbar_type_css = {
\ 'ctagstype' : 'Css',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
    \ ]
\ }


" We set these for snimpate to work properly. 
" au BufRead,BufNewFile *.py		set filetype=python.django
" au BufRead,BufNewFile *.html	set filetype=htmldjango.html


" For highlight builtin functions and objects:
let python_highlight_builtins = 1
"
"    For highlight builtin objects:
let python_highlight_builtin_objs = 1
"
"    For highlight builtin funtions:
let python_highlight_builtin_funcs = 1
"
"    For highlight standard exceptions:
let python_highlight_exceptions = 1
"
"    For highlight string formatting:
let python_highlight_string_formatting = 1
"
"    For highlight str.format syntax:
let python_highlight_string_format = 1
"
"    For highlight string.Template syntax:
let python_highlight_string_templates = 1
"
let python_highlight_numbers = 1

" let g:snips_trigger_key='<c-space>'
" let g:snips_trigger_key='<c-f>'


" Jump to a number.
fun! GoToNumber()
	let pattern = '\d\+'
	let found_num = search(pattern, '', line("."))
	if found_num == 0
		call search(pattern, 'b', line("."))
	endif
endf

fun! GoToBlock()
	let pattern = "[()'\"{}<>]" 
	let found = search(pattern, '', line("."))
	if found == 0
		call search(pattern, 'b', line("."))
	endif
endf
nnoremap <silent> gm :call GoToNumber()<cr>
nnoremap <silent> gb :call GoToBlock()<cr>


" Make "gy" do a copy that moves the cursor to the END of the block.
" Turns out this is similar to the biult-in gp, which does the same with paste.
vmap gy y']

" Make buffers hideable, so that they act like tabs (more or less).
set hidden

" Make backspace behave like it should.
set bs=2

" But in normal mode, we make <bs> do the opposite of enter:
nnoremap <bs> k^
vnoremap <bs> k^

" set guifont=Envy\ Code\ R:h10
" set guifont=DejaVu_Sans_Mono:h10
set guifont=Monaco:h12
" set guifont=Consolas:h10

 " Maximize Vim on startup.
" au GUIEnter * simalt ~x
 
set guioptions-=m
set guioptions-=L
set guioptions-=l
set guioptions-=R
set guioptions-=r
set guioptions-=b
set guioptions-=T

" nmap <c-tab> <c-^>
nmap <c-tab> :bp<cr>
nmap <c-s-tab> :bn<cr>

" set complete=.,w,b,u,t,i,]

fun! AlterBrightness(hexcolor, steps)
	let colorstr = strpart(a:hexcolor, 1)

	let rhex = strpart(colorstr,0,2)
	let ghex = strpart(colorstr,2,2)
	let bhex = strpart(colorstr,4,2)

	let r = str2nr(rhex, 16)
	let g = str2nr(ghex, 16)
	let b = str2nr(bhex, 16)

	let ri = min([255, r + a:steps])
	let r = max([0, ri])

	let gi = min([255, g + a:steps])
	let g = max([0, gi])

	let bi = min([255, b + a:steps])
	let b = max([0, bi])

	return '#' . printf('%02x', r) . printf('%02x', g) . printf('%02x', b)
endf

" Set global color settings, regardless of colorschem currently in use.
function! GlobalColorSettings()
	" Setting my own personal preferences for color schemes. This OVERRIDES
	" other color settings in a scheme.

	" These lines make it so NonText is invisible. NonText is used for the
	" "Tilde" chars at the end of the file, when no more lines exist. I think
	" it's ugly, personally, so this makes them invisible. It also makes sure
	" the background is the same as a normal file.
	" I prefer to use the end of the line number column as a way of seeing
	" where the file ends.
	" Note: NonText also deals with some of the listchars, for example, eol,
	" extends and precedes.
    " TEMP: I'm trying to turn this off, because it makes me not see EOL
    " chars.
    " Will make the bg the bg, but keep it visible.
	" hi NonText guifg=bg
    hi NonText guibg=bg
    hi NonText ctermbg=bg

	" These lines deal with the SpecialKey, which is used for listchars. This
	" basically gives the listchars the same background as everything else,
	" and a foreground that's a little bit brighter than the background.
	" The way I use listchars, is that I have only tabs visible all the time. 
	" I use them as indentation markers. Giving them the same background but a
	" slighly lighter foreground makes them look like the indent markers in
	" most editors, exactly how I like it.
	" This only work with Tabs though.
	let bgcolor=synIDattr(hlID('NonText'), 'bg#')
	if exists("&background")
		if &background == "light"
			let step = -40
		else
			let step = 40
		endif
	else
		let step = 40
	endif

	let newcolor=AlterBrightness(bgcolor, step)
	execute "hi SpecialKey guifg=" . newcolor . " guibg=bg gui=NONE"
    " execute "hi SpecialKey ctermfg=" . newcolor . " ctermbg=bg gui=NONE"

	" I like matchparen to have an underline to make it more obvious.
	hi MatchParen gui=underline

    hi Folded guibg=bg
endfunction
autocmd ColorScheme * call GlobalColorSettings()  " Call the global color settings on every colorscheme change.

" Some colorschemes that I like.
" colorscheme evening
" colorscheme peaksea
" colorscheme pyte 
" colorscheme vibrantink 
" colorscheme inkpot
" colorscheme wombat
" colorscheme lucius
" colorscheme xoria256
" colorscheme mustang 
" colorscheme ir_black 
" colorscheme risto 
" colorscheme jellybeans
" colorscheme solarized 
" colorscheme moria 

" let g:molokai_original = 1
" colorscheme molokai
" colorscheme wombat
set background=dark
" colorscheme base16-flat
colorscheme monokai


" Gets rid of the bell (still use a visual bell).
" Actually, new trial, don't do that.
set vb
set noerrorbells visualbell t_vb=

" No sound on errors
autocmd GUIEnter * set visualbell t_vb=
autocmd GUIEnter * call GlobalColorSettings()

" Better searching.
set ignorecase
set smartcase
set incsearch
set hlsearch



nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T

" Fix the searches to use normal regex syntax.
" NOTE: This is a very popular fix, that I currently don't like.
" TODO: Read more about this.
" vnoremap / /\v
" nnoremap / /\v

" Ctrl-p settings
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0 
let g:ctrlp_working_path_mode = 0 
let g:ctrlp_max_height=15
" let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$|.pyc$'
let g:ctrlp_highlight_match = [1, 'Identifier']
" let g:ctrlp_custom_ignore = '\.pyc$\|\.hg$\|\.git$\|\.*migrations\.*\|\.png$\|\.*bower_components\.*\|\.*sass-cache\.*\|\.*.tmp\.*\|\.*node_modules\.*\|\.*target\.*'
" Actually, I need to let bower_components be visible, apparently :(
let g:ctrlp_custom_ignore = '\.pyc$\|\.hg$\|\.git$\|\.*migrations\.*\|\.png$\|\.*sass-cache\.*\|\.*.tmp\.*\|\.*node_modules\.*\|\.*target\.*'
let g:ctrlp_extensions = ['tag', 'buffertag']

" Don't want to jump to tabs if they're open, it's not how I use tabs right now.
let g:ctrlp_jump_to_buffer = 1

" Ctrl-p keymaps.
let g:ctrlp_map = '<m-p>'
nnoremap <c-p> :CtrlP <cr>
nnoremap <c-b> :CtrlPBuffer <cr>
nnoremap <leader>p :CtrlP <cr>
" Think - go to symbol.
nnoremap <leader>g :CtrlPBufTag <cr>
nnoremap <leader>o :CtrlPMRUFiles <cr>
" Think- reference. Ala sublime @r.
nnoremap <leader>r :CtrlPTag <cr>

let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    \ }
endif

" Sane Ignore For ctrlp
" let g:ctrlp_custom_ignore = {
  " \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp|migrations$',
  " \ 'file': '\.exe$\|\.so$\|\.dat$|\.png$|\.jpg$'
  " \ }


" I dislike <> in matchpairs for some reason. At least in html.
" This is done with autocommand cause syntax files screw this up for me.
au BufRead,BufNewFile *.html set matchpairs=(:),{:},[:]


" Command mode mappings for easier searcher and stuff.
cmap <m-8> .*
cmap ,. .*
cmap <m-v> '<,'>
cmap <m-f> **/*

" New: try to adda command line mappign which goes to the end of a search.
" And actually, let's also add a normal mode map.
cmap ,e /e+1
nmap <leader>E //e+1<left><left><left><left>


" let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
" let g:ctrlp_custom_ignore = {
    " \ 'dir':  '\.git$\|\.hg$\|\.svn$',
    " \ 'file': '\.exe$\|\.so$\|\.dll$|\.pyc$',
    " \ }



" Cool mappings from: http://www.vimbits.com/bits/12
" Use to underline lines.
nnoremap <leader>l*  yyPv$r*^r/jyypv$r*$r/
nnoremap <leader>l8  yyPv$r*^r/jyypv$r*$r/
nnoremap <leader>l#  I# <esc>yyPv$r#jyypv$r#$
nnoremap <leader>l3  I# <esc>yyPv$r#jyypv$r#$
nnoremap <leader>l=  yypv$r=
nnoremap <leader>l-  yypv$r-
nnoremap <leader>l"  yypv$r"



" PyFlakes seems to mess up the quickfix window! Argh! 
let g:pyflakes_use_quickfix = 0


" Make <leader>/ open a quickresults pane for the latest search.
nnoremap <silent> <leader>/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>

" Emulate standard Ctrl+Backspace behaviour in insert mode.
inoremap <C-BS> <C-w>


" Needed for Syntax Highlighting and stuff
filetype on
filetype indent on
filetype plugin on
syntax enable
set ofu=syntaxcomplete#Complete
set grepprg=grep\ -nH\ $*
set grepprg=ag\ --nogroup\ --nocolor\ --column

" Who doesn't like autoindent?
set autoindent
" set smartindent

set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

nnoremap <leader>t :set expandtab!<cr>:set expandtab?<cr>

set timeoutlen=1000

set spell
set spellsuggest=5
" set nospell

fun! SplitBracesCR()
    if strpart(getline('.'), col('.') - 2, 2) == '{}'
        return "\<CR>\<CR>\<Up>\<Tab>"
    endif
    if strpart(getline('.'), col('.') - 2, 2) == '()'
        return "\<CR>\<CR>\<Up>\<Tab>"
    endif
    if strpart(getline('.'), col('.') - 2, 2) == '><'
        return "\<CR>\<CR>\<Up>\<Tab>"
    endif
    if strpart(getline('.'), col('.') - 2, 2) == '> <'
        return "\<CR>\<CR>\<Up>\<Tab>"
    endif

    " Tryout!!! 
    " This has a few bugs, get rid of it for now.
    " if match(getline('.'), '^\s*\*') != -1
        " return "\<CR>* "
    " endif

    " if match(getline('.'), '^\s*\-') != -1
        " return "\<CR>- "
    " endif


    " End Tryout!! 

    " if strpart(getline('.'), col('.') - 2, 2) == '()'
        " return "\<CR>\<CR>\<Up>\<Tab>"
    " endif

    " if strpart(getline('.'), col('.') - 2, 2) == '[]'
        " return "\<CR>\<CR>\<Up>\<Tab>"
    " endif

    " if strpart(getline('.'), col('.') - 2, 2) == '""'
        " return "\<CR>\<CR>\<Up>\<Tab>"
    " endif
    return "\<CR>"
endfun
inoremap <CR> <C-R>=SplitBracesCR()<CR>


" Zip Right: stolen from Steve Losh :) Remapped to a different key
" https://bitbucket.org/sjl/dotfiles/src/tip/vim/vimrc#vimrc-338
" Zip Right
"
" Moves the character under the cursor to the end of the line.  Handy when you
" have something like:
"
"     foo
"
" And you want to wrap it in a method call, so you type:
"
"     println()foo
"
" Once you hit escape your cursor is on the closing paren, so you can 'zip' it
" over to the right with this mapping.
"
" This should preserve your last yank/delete as well.
nnoremap z; :let @z=@"<cr>x$p:let @"=@z<cr>


" Visually select the text that was last edited/pasted
" Copied from: http://vimcasts.org/episodes/bubbling-text/
nnoremap gV `[v`]

" And a quick fix - reformat the last moved text. Cause I always forget to use
" ]p instead of p.
" The mnemonic here is: "=" is the format op, "==" formats a line, "+" (which
" is shift+=) formats the last moved text.
nnoremap + `[v`]=


let delimitMate_expand_space = 1
" let delimitMate_expand_cr = 1
" imap <c-g> <Plug>delimitMateJumpMany


" From: http://vim.wikia.com/wiki/VimTip1142
" nmap . .`[
noremap <leader>q `[<Down>.
vnoremap <silent> . :normal .<CR>


let g:QRecord=0
function! QRecord()
	if(g:QRecord == 0)
		let g:QRecord=1
		execute "normal qz"
	else
		let g:QRecord=0
		execute "normal q"
	endif
endfunction


function! QActivate()
	if(g:QRecord == 0)
		let g:QRecord=1
		execute "normal qz"
	else
		let g:QRecord=0
		execute "normal q"
	endif
endfunction

" And my own addition, which repeats a macro (recorded on register "q") on selected lines.
vnoremap <silent> <leader>s :normal @q<CR>



"set wildchar=<Tab> wildmenu wildmode=longest:full,full
"set wildchar=<Tab> wildmenu wildmode=list:longest
"set wildchar=<Tab> wildmenu wildmode=full
" set wildchar=<Tab> wildmenu wildmode=list:longest,full
set wildmenu

" Highlight current line
" Try without this for a bit
set cursorline


" This makes folds work by indent, but also allows manual folding.
" augroup vimrc
  " au BufReadPre * setlocal foldmethod=indent
  " au bufwinenter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
" augroup end

fun! SetFoldMethodIndent()
	set foldmethod=indent   "fold based on indent
	set foldignore -=# " Don't ignore # as part of the indented text to be folded, because python is ripe with # marks. 
endf

au BufRead,BufNewFile * let b:fold_open_search = 0

fun! ToggleFoldSearch()
	if b:fold_open_search == 0
		set foldopen +=search
		let b:fold_open_search = 1
	else
		set foldopen -=search
		let b:fold_open_search = 0
	endif
endf

au BufRead,BufNewFile * let b:fold_follow_movement = 0
fun! ToggleFoldFollowCursor()
	if b:fold_follow_movement == 0
		set foldopen +=all
		set foldclose +=all
		let b:fold_follow_movement = 1
	else
		set foldopen -=all
		set foldclose -=all
		let b:fold_follow_movement = 0
	endif
endf

fun! SetFoldByLastSearch()
	setlocal foldexpr=(getline(v:lnum)=~@/)?0:(getline(v:lnum-1)=~@/)\\|\\|(getline(v:lnum+1)=~@/)?1:2 foldmethod=expr foldlevel=0 foldenable
endf

" Try this for a while - the \ key is now my "fold-options" key.
nnoremap \i :call SetFoldMethodIndent()<cr>
nnoremap \/ :call SetFoldByLastSearch()<cr>
nnoremap \s :call ToggleFoldSearch()<cr>
nnoremap \J /function <cr><c-o>:call SetFoldByLastSearch()<cr>
nnoremap \P /def \\|class <cr><c-o>:call SetFoldByLastSearch()<cr>
nnoremap \p /^class \\|^def <cr><c-o>:call SetFoldByLastSearch()<cr>
nnoremap \H /div <cr><c-o>:call SetFoldByLastSearch()<cr>
nnoremap \\ zMzx
nnoremap \f :call ToggleFoldFollowCursor()<cr>
nnoremap \o zczO

call SetFoldMethodIndent()
set foldlevel=99         " Start with no folds. If I want to enable folds, I'll have to zM myself.

set nofoldenable " Fold by default 
set foldnestmax=10      "deepest fold is 10 levels

" Settings for navigating folds
set foldopen -=hor
set foldopen -=block
" Searches don't open folds, but this is toggleable.
set foldopen -=search


" set foldcolumn=4

fu! CustomFoldText()
	"get first non-blank line
	let fs = v:foldstart
	while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
	endwhile
	if fs > v:foldend
		let line = getline(v:foldstart)
	else
		let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
	endif

	let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
	let foldSize = 1 + v:foldend - v:foldstart
	let foldSizeStr = " " . foldSize . " lines "
	let foldLevelStr = repeat("+--", v:foldlevel)
	let lineCount = line("$")
	let foldPercentage = printf("[%.1f", (foldSize*1.0)/lineCount*100) . "%] "
	let expansionString = repeat(" ", w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
	return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
endf


function! MyFoldText()
    let line = getline(v:foldstart)
    let line2 = getline(v:foldstart + 1)
    let sub = substitute(line . "|" . line2, '/\*\|\*/\|{{{\d\=', '', 'g')
    let ind = indent(v:foldstart)
    let lines = v:foldend-v:foldstart + 1
    let i = 0
    let spaces = ''
    while i < (ind - ind/4)
        let spaces .= ' '
        let i = i+1
    endwhile
    return spaces . sub . ' --------(' . lines . ' lines)'
endfunction

function! MyFoldText2()
	" setting fold text
	let nl = v:foldend - v:foldstart + 1
	let comment = substitute(getline(v:foldstart),"^ *\" *","",1)
	let linetext = substitute(getline(v:foldstart+1),"^ *","",1)
	let txt = '+ ' . comment . ': ' . nl .  ' ' . v:foldstart . '                                                                                                                                                                  '
	return txt
endfunction


function! MyFoldTextOverflow()
	let lines = 1 + v:foldend - v:foldstart
	let ind = indent(v:foldstart)

	let spaces = ''
	let i = 0
	while i < ind
		let i = i+1
		let spaces = spaces . ' '
	endwhile

	let linestxt = 'lines'
	if lines == 1
		linestxt = 'line'
	endif

	return spaces . '+' . v:folddashes . ' '. lines . ' ' . linestxt . ': ' . getline(v:foldstart)
endfunction

function! EdanFoldText()
	let lines = 1 + v:foldend - v:foldstart
	let ind = indent(v:foldstart)

	let spaces = ''
	let i = 0
	while i < ind
		let i = i + 1
		let spaces = spaces . ' '
	endwhile

	let linestxt = 'lines'
	if lines == 1
		linestxt = 'line'
	endif

	let sep = repeat(' ', 20)

	" return spaces . '+' . v:folddashes . ' '. lines . ' ' . linestxt
	return spaces . '... ' . sep . lines . ' ' . linestxt
endfunction

function! EdanFoldText2()
	let lines = 1 + v:foldend - v:foldstart
    let line = getline(v:foldstart)
	let ind = indent(v:foldstart)

	let spaces = ''
	let i = 0
	while i < ind
		let i = i + 1
		let spaces = spaces . ' '
	endwhile

	let linestxt = 'lines'
	if lines == 1
		linestxt = 'line'
	endif

	let sep = repeat(' ', 20)

    return line . '+' . v:folddashes . ' '. lines . ' ' . linestxt
    " return spaces . '... ' . sep . lines . ' ' . linestxt
endfunction


" Copied from Steve Losh:
" https://bitbucket.org/sjl/dotfiles/src/tip/vim/vimrc
function! LoshFoldText() " {{{
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart

    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
    return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
endfunction " }}}

" set foldtext=MyFoldText()

" set foldtext=CustomFoldText()
" set foldtext=MyFoldText2()

" The following makes the fold fillchars invisible.
" After trying it for a bit, I decided I don't much like it.
" set fillchars=fold:\ 
set foldtext=EdanFoldText()
" set foldtext=LoshFoldText()

"make shift Y behave like shift-[cd] (copy to end of line)
nnoremap Y y$

set history=1000

" Faster viewport scrolling
nnoremap <C-e> 4<C-e>
nnoremap <C-y> 4<C-y>

" 2 lines above/below cursor when scrolling 
set scrolloff=2
set sidescrolloff=15

" Still haven't decided whether this is a good idea or not.
set virtualedit=block

set ruler

" Set "<leader> s" to show whitespace.
set list
" set listchars=tab:\|\ ,trail:·,extends:»,precedes:«,nbsp:×
" set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set listchars=tab:▸\ ,extends:❯,precedes:❮
nmap <silent> <leader>S :set nolist!<CR>

"autocmd FileType python 
"set omnifunc=pythoncomplete#Complete

" My mapping for the nerd commenter insert, which makes sure to add a space.
imap <D-/> <plug>NERDCommenterInsert
" New idea - when commenting, go down one line.
nmap      <D-/> <plug>NERDCommenterToggle<cr>
vmap      <D-/> <plug>NERDCommenterToggle

" Add spaces when commenting.
let NERDSpaceDelims=1


set laststatus=2
" I think this statusline is no longer relevant. Because we use plugins for
" this.
set statusline=%1*%m%*\ %t\ %f\ %r%h%w\ [FILETYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=0x\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]
hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red 

"command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
	 "\ | wincmd p | diffthis
	 "
	 "
	 "
function! DiffWithFileFromDisk()
  let filename=expand('%')


  let diffname = filename.'.fileFromBuffer'
  exec 'saveas! '.diffname
  diffthis
  vsplit
  exec 'edit '.filename
  diffthis
endfunction





" Make all substitutions happen globally (on line) by default.
set gdefault

" select all
map <Leader>a ggVG
" Copy all
map <Leader>A :%y<cr>



function! ToggleNuMode()
	if(&rnu == 1)
		set nu
	else
		set rnu
	endif
endfunc

" nnoremap <C-g> :call ToggleNuMode()<CR>
set number

" nmap <cr> <Plug>unimpairedBlankUp
" nmap <S-cr> <Plug>unimpairedBlankDown

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
" New: Move the lines using <leader>j<motion>
" Shamelessly copied from here: http://amix.dk/vim/vimrc.html
nnoremap <D-j> mz:m+<cr>==`z
nnoremap <D-k> mz:m-2<cr>==`z
vnoremap <D-j> :m'>+<cr>`<my`>mzgv`yo`z
vnoremap <D-k> :m'<-2<cr>`>my`<mzgv`yo`z

nnoremap ' `
nnoremap ` '
nnoremap d' d`
nnoremap d` d'

" It's always made more sense to me to use 0 instead of ^ to go to the home,
" because it's something I do ALL THE FRIGGING TIME and I always prefer to go
" to the first character.
nnoremap 0 ^
nnoremap ^ 0
vnoremap 0 ^
vnoremap ^ 0


let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\~$', '**/*.pyc']
let NERDTreeStatusline="NERDTree"
" let NERDTreeShowLineNumbers=1
let NERDTreeChDirMode=2 " Changes the cwd to whatever the root is. 
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1



" Jump to the next or previous line that has the same level or a lower
" level of indentation than the current line.

" exclusive (bool): true: Motion is exclusive
" false: Motion is inclusive
" fwd (bool): true: Go to next line
" false: Go to previous line
" lowerlevel (bool): true: Go to line with lower indentation level
" false: Go to line with the same indentation level
" skipblanks (bool): true: Skip blank lines
" false: Don't skip blank lines
function! NextIndent(exclusive, fwd, lowerlevel, skipblanks)
	let line = line('.')
	let lastline = line('$')
	let indent = indent(line)
	let stepvalue = a:fwd ? 1 : -1
	while (line > 0 && line <= lastline)
		let line = line + stepvalue
		if ( ! a:lowerlevel && indent(line) == indent ||
					\ a:lowerlevel && indent(line) < indent)
			if (! a:skipblanks || strlen(getline(line)) > 0)
				if (a:exclusive)
					let line = line - stepvalue
				endif
				exe line
				return
			endif
		endif
	endwhile
endfunction

" Moving back and forth between lines of same or lower indentation.
nnoremap <silent> [l :call NextIndent(0, 0, 0, 1)<CR>
nnoremap <silent> ]l :call NextIndent(0, 1, 0, 1)<CR>
nnoremap <silent> [L :call NextIndent(0, 0, 1, 1)<CR>
nnoremap <silent> ]L :call NextIndent(0, 1, 1, 1)<CR>
vnoremap <silent> [l <Esc>:call NextIndent(0, 0, 0, 1)<CR>m'gv''
vnoremap <silent> ]l <Esc>:call NextIndent(0, 1, 0, 1)<CR>m'gv''
vnoremap <silent> [L <Esc>:call NextIndent(0, 0, 1, 1)<CR>m'gv''
vnoremap <silent> ]L <Esc>:call NextIndent(0, 1, 1, 1)<CR>m'gv''
noremap <silent> [l :call NextIndent(0, 0, 0, 1)<CR>
onoremap <silent> ]l :call NextIndent(0, 1, 0, 1)<CR>
onoremap <silent> [L :call NextIndent(1, 0, 1, 1)<CR>
onoremap <silent> ]L :call NextIndent(1, 1, 1, 1)<CR>


" Try these out:
" map <buffer> ]] ]l
" map <buffer> [[ [l
" map <buffer> ][ ]L
" map <buffer> [] [L

" map [[ ?{<CR>w99[{
" map ][ /}<CR>b99]}
" map ]] j0[[%/{<CR>
" map [] k$][%?}<CR>

map [[ [m
map ][ ]M
map ]] ]m
map [] [M

noremap <leader>]] ]]
noremap <leader>[[ [[
noremap <leader>][ ][
noremap <leader>[] []

" The following mappings make a Number text-object, which works with m.
" I.e., you can do dm, dim, etc.
" m is a mnemonic for nu*M*. I didn't use n because it's taken by *n*ext, and
" *N* as it was originally was too close to n for comfort.
onoremap m :<c-u>call <SID>NumberTextObject(0)<cr>
xnoremap m :<c-u>call <SID>NumberTextObject(0)<cr>
onoremap am :<c-u>call <SID>NumberTextObject(1)<cr>
xnoremap am :<c-u>call <SID>NumberTextObject(1)<cr>
onoremap im :<c-u>call <SID>NumberTextObject(1)<cr>
xnoremap im :<c-u>call <SID>NumberTextObject(1)<cr>

function! s:NumberTextObject(whole)
    normal! v

    while getline('.')[col('.')] =~# '\v[0-9]'
        normal! l
    endwhile

    if a:whole
        normal! o

        while col('.') > 1 && getline('.')[col('.') - 2] =~# '\v[0-9]'
            normal! h
        endwhile
    endif
endfunction



" let g:unite_enable_start_insert = 1


function! BufMessage(cmd)
  redir => message
  silent execute a:cmd
  redir END
  vnew
  silent put=message
  set nomodified
endfunction
command! -nargs=+ -complete=command BM call BufMessage(<q-args>)





" " For supertab and other completiony things. 
" set completeopt=longest,menuone


" " inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  " \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  " \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'


" inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
" inoremap <expr> <Up> pumvisible() ? "\<C-n>" : "\<Up>"




" Map the ctrl+hjkl commands to the window switching commands. 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Try: map the ctrl+90-= keys to "stretch" the window.
nnoremap <leader>xo 10<C-w>>
nnoremap <leader>xu 10<C-w><
nnoremap <leader>xi 10<C-w>-
nnoremap <leader>x, 10<C-w>+


" Copied from:
" http://www.derekwyatt.org/vim/the-vimrc-file/walking-around-your-windows/

" Close the window below this one
nnoremap <silent> <leader>xj :wincmd j<cr>:close<cr>
" Close the window above this one
nnoremap <silent> <leader>xk :wincmd k<cr>:close<cr>
" Close the window to the left of this one
nnoremap <silent> <leader>xh :wincmd h<cr>:close<cr>
" Close the window to the right of this one
nnoremap <silent> <leader>xl :wincmd l<cr>:close<cr>
" Close the current window
nnoremap <silent> <leader>xc :close<cr>

" Map to close the buffer, but do it using kwbd so that the window stays the same.
nmap Q <Plug>Kwbd

" Function key mappings

" F1 
" nmap <F1> :NERDTreeToggle<cr>gg<c-w>=
let g:firstNerd=0
function! LoadNerdTree()
    execute ":NERDTreeToggle"
    normal <c-w>=
	if g:firstNerd==0
        normal gg
        let g:firstNerd=1
	endif
endfunction

nmap <F1> :call LoadNerdTree()<cr>

" F2 -
nmap <F2> :NERDTreeFind<cr>

" F4
" map <F3> :TlistToggle <cr>
nmap <F3> :TagbarToggle <cr>


" Set up search in projects. Not really great yet.
" nmap <F4> :vimgrep // **/*.py **/*.js **/*.txt **/*.html **/*.css **/*.bat **/*.less <left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nmap <F4> :Grep 

nmap <F5> :set titlestring=
" set titlestring=%{substitute(getcwd(),\ $HOME,\ '~',\ '')}
" set titlestring=%{substitute(getcwd(),\ $HOME,\ '~',\ '')}
nmap <F6> :let &titlestring=split(getcwd(),"/")[-1]<CR>


function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

nnoremap <silent> <F10> :call <SID>SynStack()<CR>

" F6
nnoremap <F7> :GundoToggle<CR>

" F11
map <f8> :!ctags -R .<cr>
"nnoremap <silent> <F11> :YRShow<CR>

" Copy the current file path to the clipboard.
map <leader>cd :let @*=expand("%:p:h")<CR>:echo "Copied directory path to clipboard: " . expand("%:p:h")<CR>
map <leader>cf :let @*=expand("%:p")<CR>:echo "Copied file path to clipboard: " . expand("%:p")<CR>


" Incidental mappings
" Insert color from photoshop, which comes without # in the front.
" nmap <leader>p pa;jkbi#jk

" Configure multicursor
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<ESC>'
let g:multi_cursor_exit_from_visual_mode=0
let g:multi_cursor_exit_from_insert_mode=0
let g:multi_cursor_normal_maps={'!':1, '@':1, '=':1, 'q':1, 'r':1, 't':1, 'T':1, 'y':1, '[':1, ']':1, '\':1, 'd':1, 'f':1, 'F':1, 'g':1, '"':1, 'z':1, 'c':1, 'm':1, '<':1, '>':1}


" TODO Management
function! Convert_to_char_class(cur) 
    if a:cur =~ '[2-9]'
        return '[0-' . (a:cur-1) . ']'
    endif
    return '0'
endfunction

function! Match_number_before(num)
    let branches = []
    let init = ''
    for i in range(len(a:num))
        if a:num[i] =~ '[1-9]'
            call add(branches, init . Convert_to_char_class(a:num[i]) . repeat('\d', len(a:num) - i - 1))
        endif 
        let init .= a:num[i]
    endfor
    return '\%(' . join(branches, '\|') .'\)'
endfunction

function! Match_date_before(date)
    if a:date !~ '\v\d{4}-\d{2}-\d{2}'
        echo "invalid date"
        return
    endif

    let branches =[]

    let parts = split(a:date, '-')
    call add(branches, Match_number_before(parts[0]) . '-\d\{2}-\d\{2}')
    call add(branches, parts[0] . '-' . Match_number_before(parts[1]) . '-\d\{2}')
    call add(branches, parts[0] . '-' . parts[1] . '-' .Match_number_before(parts[2]))

    return '\%(' . join(branches, '\|') .'\)'
endfunction

" g//caddexpr expand("%") . ":" . line(".") .  ":" . getline(".")


" Javascript debugging functions
let js_debug_num=10
imap ,dj console.log('<c-r>=js_debug_num<cr>');<esc>:let js_debug_num+=10<cr>



" vim-angry customizations (Paramter text objects).
let g:angry_disable_maps = 1

" vmap <silent> aa <Plug>AngryOuterPrefix
" omap <silent> aa <Plug>AngryOuterPrefix
" vmap <silent> ia <Plug>AngryInnerPrefix
" omap <silent> ia <Plug>AngryInnerPrefix

vmap <silent> aP <Plug>AngryOuterSuffix
omap <silent> aP <Plug>AngryOuterSuffix
vmap <silent> iP <Plug>AngryInnerSuffix
omap <silent> iP <Plug>AngryInnerSuffix


" Exchange two paramaters using the Exchange plugin.
" This depends on the Exchange plugin and on the Paramater text object.
" E.g., if you have (first, second, third), running this when you're on the
" first param (cursor somehwere on "first") will swap it with "second". On
" "second", and you swap "second" and "third".
" WARNING: This doesn't work well! Unortunately, because of the way the
" Paramater object works.
nmap cxP cxiPf,llcxiP


" http://www.reddit.com/r/vim/comments/1yfzg2/does_anyone_actually_use_easymotion/
" These map command line stuff that lets you first search, then invoke these
" to do stuff like copy the line.
cnoremap $y <CR>:t''<CR>
cnoremap $m <CR>:m''<CR>
cnoremap $d <CR>:d<CR>``
