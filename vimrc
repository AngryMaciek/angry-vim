" Enable syntax processing
syntax enable

" Do not mimic vi
set nocompatible

" Enable mouse support
set mouse=a

" Monokai color theme
colorscheme molokai

" Display line numbers
"set numberwidth=3
"set number

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Spell checking
" By default it is turned off, turn on with: set spell
set spelllang=en_us
set nospell

" Enable smart tab line
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#enabled = 1

" Do not duplicate the vim mode info in the built-in statusline
set noshowmode

" Remove delay after ESC mode switch
set timeoutlen=1000
set ttimeoutlen=0

" Highlight the current line
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#262626 ctermbg=235

" Gitgutter: remove the limit on changes to display
let g:gitgutter_max_signs = -1   " default value (otherwise)

" GitGutter: disable key mappings
let g:gitgutter_map_keys = 0

" Gitgutter: set mark for changes in folded lines
set foldtext=gitgutter#fold#foldtext()

" Gitgutter: disable whole line coloring
let g:gitgutter_highlight_lines = 0

" Gitgutter: set sign colors
let g:gitgutter_set_sign_backgrounds = 1
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

" Gitgutter: set sign symbols
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '#'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_removed_above_and_below = '-'
let g:gitgutter_sign_modified_removed = '#-'

" Reduce delay in file update
set updatetime=100

" Customize the airline-statusline:
"
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
"
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
"
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
"
function! AirlineInit()
  let g:airline_section_a = airline#section#create([''])
  let g:airline_section_b = airline#section#create([''])
  let g:airline_section_c = airline#section#create([''])
  let g:airline_section_x = airline#section#create(['mode'])
  let g:airline_section_y = airline#section#create(['%{GitStatus()}', ' ', 'branch'])
  let g:airline_section_z .= airline#section#create(['/%{strlen(getline("."))}'])
endfunction
autocmd User AirlineAfterInit call AirlineInit()
