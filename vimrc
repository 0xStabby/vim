set nocompatible              " be iMproved, required
filetype off                  " required

inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

set rtp+=~/.config/vim

" backup and swap directory to keep those out of my projects
" put all config in .config/vim instead of .vim or home directory
set directory=$XDG_CACHE_HOME/vim,~/,/tmp
set backupdir=$XDG_CACHE_HOME/vim,~/,/tmp
set undodir=$XDG_CACHE_HOME/vim,~/,/tmp
set viminfo+=n$XDG_CACHE_HOME/vim/viminfo
set viewdir=$XDG_CONFIG_HOME/vim/view
set runtimepath=$XDG_CONFIG_HOME/vim,$XDG_CONFIG_HOME/vim/bundle/Vundle.vim,$XDG_CONFIG_HOME/vim/after,$VIM,$VIMRUNTIME
let g:netrw_home=$XDG_CACHE_HOME.'/vim'


call vundle#begin('$XDG_CONFIG_HOME/vim/bundle')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin 'file://'.$HOME.'Repos/chatgpt-vim'
Plugin 'https://github.com/0xStabby/chatgpt-vim.git'

Plugin 'powerline/powerline'

Plugin 'https://github.com/digitaltoad/vim-pug.git'

Plugin 'tpope/vim-fugitive'
" Plugin 'wincent/command-t'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" Open fzf file search with Ctrl-P (like CtrlP)
nnoremap <C-p> :Files<CR>
" Search open buffers with Ctrl-B
nnoremap <C-b> :Buffers<CR>
" Search inside files with Ctrl-F (requires ripgrep)
nnoremap <C-f> :Rg<Space>


" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" omnisharp
Plugin 'https://github.com/OmniSharp/omnisharp-vim.git'

" coc instead of ycm? time to upgrde?
Plugin 'neoclide/coc.nvim', {'branch': 'release', 'do': 'npm ci'}

" Autocompletion with CoC
set cmdheight=2
set updatetime=300
set shortmess+=c

" Use tab for autocompletion
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

" Language server support
let g:coc_global_extensions = ['coc-rust-analyzer', 'coc-tsserver', 'coc-ultisnips']

" Go-to definition, references, formatting
nmap gd <Plug>(coc-definition)
nmap gr <Plug>(coc-references)
nmap gf <Plug>(coc-format-selected)

" YouCompleteMe
" Plugin 'https://github.com/Valloric/YouCompleteMe.git'

" syntastic
" Plugin 'https://github.com/vim-syntastic/syntastic.git'
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_cpp_checkers=['cpplint']

Plugin 'https://github.com/evanleck/vim-svelte.git'

" CSound tools
Plugin 'https://github.com/luisjure/csound-vim.git'


" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'https://github.com/mlaursen/vim-react-snippets'
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-space>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Tell UltiSnips where to store and load YOUR snippets
let g:UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit = expand('~/.config/vim/UltiSnips')
let g:UltiSnipsSnippetDirectories = [expand('~/.config/vim/bundle/vim-snippets/UltiSnips'), expand('~/.config/vim/UltiSnips')]


Plugin 'https://github.com/kien/ctrlp.vim.git'
Plugin 'tomlion/vim-solidity'

Plugin 'https://github.com/adamclerk/vim-razor'

Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'maxmellon/vim-jsx-pretty'

autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
" dark red
hi tsxTagName guifg=#E06C75
hi tsxComponentName guifg=#E06C75
hi tsxCloseComponentName guifg=#E06C75
" orange
hi tsxCloseString guifg=#F99575
hi tsxCloseTag guifg=#F99575
hi tsxCloseTagName guifg=#F99575
hi tsxAttributeBraces guifg=#F99575
hi tsxEqual guifg=#F99575
" yellow
hi tsxAttrib guifg=#F8BD7F cterm=italic
" light-grey
hi tsxTypeBraces guifg=#999999
" dark-grey
hi tsxTypes guifg=#666666
" Other Keywords
hi ReactState guifg=#C176A7
hi ReactProps guifg=#D19A66
hi ApolloGraphQL guifg=#CB886B
hi Events ctermfg=204 guifg=#56B6C2
hi ReduxKeywords ctermfg=204 guifg=#C678DD
hi ReduxHooksKeywords ctermfg=204 guifg=#C176A7
hi WebBrowser ctermfg=204 guifg=#56B6C2
hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66


Plugin 'https://github.com/sophacles/vim-processing.git'
let g:processing_fold = 1

" dunno if this works...
" Plugin 'junegunn/rainbow_parentheses.vim'

Plugin 'https://github.com/jmcantrell/vim-virtualenv.git'

" Plugin 'file://'.$HOME.'/Repos/vim-custom-react-component-snippets/'

Plugin 'https://github.com/retorillo/istanbul.vim.git'

Plugin 'fmorisan/vim-solnatspec'

" Add maktaba and coverage to the runtimepath.
" (The latter must be installed before it can be used.)
Plugin 'google/vim-maktaba'
Plugin 'google/vim-coverage'
" Also add Glaive, which is used to configure coverage's maktaba flags. See
" `:help :Glaive` for usage.
Plugin 'google/vim-glaive'
" call glaive#Install()
" Optional: Enable coverage's default mappings on the <Leader>C prefix.
" this next line errors
" Glaive coverage plugin[mappings]
Plugin 'https://github.com/lilydjwg/colorizer.git'

Plugin 'tidalcycles/vim-tidal'

Plugin 'mbbill/undotree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Shut Up Vim 
set vb t_vb=

" powerline
set rtp+=/usr/share/powerline/bindings/vim/
set laststatus=2
set t_Co=256


" normal setup
set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab
set termguicolors
syntax on
colorscheme nachtleben
set number
" set cursorline " this is causing lag but would be nice to fix sometime
" filetype indent on
set lazyredraw
set showmatch
set incsearch
set hlsearch


" search down into subfolders
" provides tab completion for  all file related tasks
set path+=**
"displat all matching files when we tab complete
set wildmenu

" styling my directory view in netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15
let g:netrw_width_expanded = 50
let g:netrw_width_collapsed = 15

augroup ProjectDrawer
    autocmd!
    autocmd VimEnter * :Vexplore
augroup END

augroup ResizeNetrw
  autocmd!
  autocmd VimResized * call ResizeNetrwPane(1)
  autocmd WinEnter * if &filetype ==# 'netrw' | call ResizeNetrwPane(1) | else | call ResizeNetrwPane(0) | endif
augroup END

function! ResizeNetrwPane(expand)
  for w in range(1, winnr('$'))
    if getbufvar(winbufnr(w), '&filetype') ==# 'netrw'
      let l:curwin = winnr()
      execute w . 'wincmd w'
      if a:expand
        execute 'vertical resize' g:netrw_width_expanded
      else
        execute 'vertical resize' g:netrw_width_collapsed
      endif
      execute l:curwin . 'wincmd w'
      break
    endif
  endfor
endfunction

" allow vim to source vimrc files from within projects when there is
set exrc
" and keep me safe safe from that
set secure

" automatically save folds, and load them when i open up a file
" augroup AutoSaveFolds
  " if @% !=""
    " autocmd!
    " autocmd BufWinLeave * mkview
    " autocmd BufWinEnter * silent loadview
  " endif
" augroup END

augroup AutoSaveFolds
  autocmd!
  autocmd BufWinLeave * if expand('%:p') != '' | mkview | endif
  autocmd BufWinEnter * if filereadable(expand('%:p')) | silent loadview | endif
augroup END

" :command! MoveWrite -bang -range -nargs=1 -complete=file MoveWrite  <line1>,<line2>write<bang> <args> | <line1>,<line2>delete _
" :command! MoveAppend -bang -range -nargs=1 -complete=file MoveAppend <line1>,<line2>write<bang> >> <args> | <line1>,<line2>delete _
command Todo noautocmd vimgrep /TODO\|FIXME/j ** | cw

" map '<,'>mw :MoveWrite<cr>
" map '<,'>ma :MoveAppend<cr>

let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'

python3 import sys;sys.path.append("/usr/lib/python3.10/site-packages/")
python3 import sys;sys.path.append("/usr/lib/python3.9/site-packages/")

nnoremap <leader>jq :%!jq .<CR>

" fix backspace
set backspace=indent,eol,start

set mouse=a


nnoremap <C-w>c :tabnew<CR>:silent! Vexplore<CR>
nnoremap <C-w>n :tabn<CR>
nnoremap <C-w>p :tabn<CR>


nnoremap <C-w>u :UndotreeToggle<CR>

if has("persistent_undo")
   let target_path = expand('~/.cache/undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif

:nmap <space>e <Cmd>CocCommand explorer<CR>

function! s:qf_entry() abort
  let e = getqflist()[line('.')-1]
  if empty(e) | return {} | endif
  let file = get(e, 'filename', '')
  if empty(file)
    let b = get(e, 'bufnr', 0)
    if b > 0 | let file = fnamemodify(bufname(b), ':p') | endif
  endif
  return {'file': file, 'ln': get(e,'lnum',1), 'col': get(e,'col',1)}
endfunction

function! s:qf_open(where) abort
  let ent = s:qf_entry()
  if empty(ent) || empty(ent.file) | echo 'No file' | return | endif
  let file = fnamemodify(ent.file, ':p')

  if a:where ==# 'prev'
    wincmd p | execute 'edit ' . fnameescape(file)
  elseif a:where ==# 'split'
    wincmd p | split  | execute 'edit ' . fnameescape(file)
  elseif a:where ==# 'vsplit'
    wincmd p | vsplit | execute 'edit ' . fnameescape(file)
  elseif a:where ==# 'tab'
    tab split | execute 'edit ' . fnameescape(file)
  endif
  call cursor(ent.ln, ent.col)
endfunction

function! s:qf_delete_file() abort
  let ent = s:qf_entry()
  if empty(ent) || empty(ent.file) | return | endif
  let file = fnamemodify(ent.file, ':p')

  if confirm('Delete ' . file . '?', "&Yes\n&No", 2) != 1 | return | endif

  " close buffers visiting the file
  let b = bufnr(file)
  if b > 0
    for w in getwininfo()
      if w.bufnr == b | execute w.winnr . 'wincmd w' | silent! bdelete! | endif
    endfor
    silent! bwipeout! b
  endif

  " delete from disk
  if filereadable(file) | call delete(file) | endif

  " prune quickfix entries for this file
  let qf = getqflist()
  let abs = file
  let pat = '^' . escape(abs, ' \.^$*[]~')
  let new = []
  for item in qf
    let f = get(item, 'filename', '')
    if !empty(f) && fnamemodify(f, ':p') ==# abs
      continue
    endif
    " fallback: some items only have text like "path:line - …"
    if empty(f) && has_key(item, 'text') && item.text =~# pat
      continue
    endif
    call add(new, item)
  endfor
  call setqflist(new, 'r')

  if empty(new) | cclose | endif
  echo 'Deleted ' . file
endfunction

augroup QfNav
  autocmd!
  autocmd FileType qf nnoremap <buffer> <CR> :call <SID>qf_open('prev')<CR>
  autocmd FileType qf nnoremap <buffer> o    :call <SID>qf_open('prev') \| cclose<CR>
  autocmd FileType qf nnoremap <buffer> s    :call <SID>qf_open('split')<CR>
  autocmd FileType qf nnoremap <buffer> v    :call <SID>qf_open('vsplit')<CR>
  autocmd FileType qf nnoremap <buffer> t    :call <SID>qf_open('tab')<CR>
  autocmd FileType qf nnoremap <buffer> D    :call <SID>qf_delete_file()<CR>
augroup END

" Better quickfix selection highlight and UX
augroup QfUX
  autocmd!
  autocmd FileType qf setlocal cursorline nowrap
  " Make the row under the cursor clearly highlighted
  " autocmd FileType qf setlocal winhighlight=CursorLine:QuickFixLine
  " Quick toggle to clear stale /search highlights
  autocmd FileType qf nnoremap <silent><buffer> <leader>h :nohlsearch<CR>
  " Optional: allow double-click open
  autocmd FileType qf setlocal mouse=a
augroup END

augroup QfTheme
  autocmd!
  autocmd FileType qf highlight QuickFixLine cterm=NONE gui=NONE ctermbg=NONE guibg=NONE
augroup END

" --- TS-PRUNE → Quickfix (repo-root, absolute paths, refreshable) ---
function! s:TsPrune(...) abort
  " run from repo root
  let save_cwd = getcwd()
  let root = trim(system('git rev-parse --show-toplevel'))
  if v:shell_error != 0 || empty(root) | let root = save_cwd | endif
  execute 'lcd' fnameescape(root)

  " build cmd with escaped args
  let args = empty(a:000) ? '' : (' ' . join(map(copy(a:000), 'shellescape(v:val)'), ' '))
  let cmd  = 'pnpm -s ts-prune -u -p tsconfig.json' . args

  let lines = systemlist(cmd)

  " drop noisy lines
  call filter(lines, 'v:val !~# ''(used in module''')

  " parse into quickfix entries with ABS paths
  let qf = []
  for l in lines
    let l = trim(l)
    if l =~ '^\f\+:\d\+:\d\+'
      let file = fnamemodify(matchstr(l, '^\f\+'), ':p')
      let lnum = str2nr(matchstr(l, '^\f\+:\zs\d\+'))
      let col  = str2nr(matchstr(l, '^\f\+:\d\+:\zs\d\+'))
      call add(qf, {'filename': file, 'lnum': lnum, 'col': col, 'text': l})
    elseif l =~ '^\f\+:\d\+'
      let file = fnamemodify(matchstr(l, '^\f\+'), ':p')
      let lnum = str2nr(matchstr(l, '^\f\+:\zs\d\+'))
      call add(qf, {'filename': file, 'lnum': lnum, 'text': l})
    elseif l =~ '^\f\+#'
      let file = fnamemodify(matchstr(l, '^\f\+'), ':p')
      call add(qf, {'filename': file, 'lnum': 1, 'text': l})
    endif
  endfor

  call setqflist(qf, 'r')
  " store refresh context
  call setqflist([], 'a', {'context': {'kind':'tsprune','root':root,'args':a:000}})

  execute 'lcd' fnameescape(save_cwd)

  if empty(qf) | cclose | echo 'ts-prune: clean' | else | copen | endif
endfunction
command! -nargs=* TsPrune call s:TsPrune(<f-args>)

function! s:Tsc(...) abort
  let target = empty(a:000) ? '.' : join(a:000, ' ')
  let save_cwd = getcwd()
  let root = trim(system('git rev-parse --show-toplevel'))
  if v:shell_error != 0 || empty(root) | let root = save_cwd | endif
  execute 'lcd' fnameescape(root)

  let save_efm = &errorformat
  set errorformat=%E%f(%l\\,%c):\ error\ %m,%W%f(%l\\,%c):\ warning\ %m,%\-G%.%#
  cgetexpr systemlist('pnpm -s tsc -p ' . shellescape(target) . ' --noEmit --pretty false')
  let &errorformat = save_efm
  execute 'lcd' fnameescape(save_cwd)

  call setqflist([], 'a', {'context': {'kind':'tsc','target':target,'root':root}})
  if len(getqflist()) > 0 | copen | else | cclose | echo 'tsc: no type errors' | endif
endfunction
command! -nargs=* Tsc call s:Tsc(<f-args>)

function! s:Eslint(...) abort
  let target = empty(a:000) ? 'src' : join(a:000, ' ')
  let out = system('npx -y eslint -f json --no-color ' . target)
  if v:shell_error != 0 && empty(out) | echoerr 'eslint failed' | return | endif
  let data = json_decode(out)
  let qf = []
  for file in data
    let fname = get(file, 'filePath', '')
    for m in get(file, 'messages', [])
      let lnum = get(m,'line',1)
      let col  = get(m,'column',1)
      let sev  = get(m,'severity',0)
      let rule = get(m,'ruleId','')
      let msg  = get(m,'message','')
      if !empty(rule) | let msg .= ' ['.rule.']' | endif
      call add(qf, {'filename': fname, 'lnum': lnum, 'col': col, 'text': msg, 'type': sev == 2 ? 'E' : 'W'})
    endfor
  endfor
  call setqflist(qf, 'r')
  call setqflist([], 'a', {'context': {'kind':'eslint','target':target}})
  copen
endfunction
command! -nargs=* Eslint call s:Eslint(<f-args>)

function! s:EslintFix(...) abort
  let target = empty(a:000) ? 'src' : join(a:000, ' ')
  silent execute '!npx -y eslint --fix --no-color ' . target
  call s:Eslint(target)
endfunction
command! -nargs=* EslintFix call s:EslintFix(<f-args>)

" --- KNIP → Quickfix (repo-root, absolute paths, refreshable) ---
function! s:Knip(...) abort
  let save_cwd = getcwd()
  let root = trim(system('git rev-parse --show-toplevel'))
  if v:shell_error != 0 || empty(root) | let root = save_cwd | endif
  execute 'lcd' fnameescape(root)

  let args = empty(a:000) ? '' : (' ' . join(map(copy(a:000), 'shellescape(v:val)'), ' '))
  let lines = systemlist('pnpm -s knip' . args)

  let section = ''
  let qf = []
  for l in lines
    let l = trim(l)
    if l ==# '' | continue | endif
    if l =~? '^unused files'              | let section = 'Unused files'              | continue | endif
    if l =~? '^unused dependencies'       | let section = 'Unused dependencies'       | continue | endif
    if l =~? '^unused devdependencies'    | let section = 'Unused devDependencies'    | continue | endif
    if l =~? '^unlisted dependencies'     | let section = 'Unlisted dependencies'     | continue | endif
    if l =~? '^unlisted binaries'         | let section = 'Unlisted binaries'         | continue | endif
    if l =~? '^unused exports'            | let section = 'Unused exports'            | continue | endif
    if l =~? '^unused exported types'     | let section = 'Unused exported types'     | continue | endif
    if l[0] == '>'                        | continue | endif

    " capture trailing file[:ln[:col]]
    let m = matchlist(l, ' \(\f\+:\d\+:\d\+\)$')
    if empty(m) | let m = matchlist(l, ' \(\f\+:\d\+\)$') | endif
    if empty(m) | let m = matchlist(l, ' \(\f\+\)$')      | endif
    if empty(m) | continue | endif

    let loc  = m[1]
    let file = loc | let lnum = 1 | let col = 1
    if loc =~ ':\d\+:\d\+$'
      let file = matchstr(loc, '^\f\+')
      let lnum = str2nr(matchstr(loc, ':\zs\d\+\ze:'))
      let col  = str2nr(matchstr(loc, ':\d\+:\zs\d\+$'))
    elseif loc =~ ':\d\+$'
      let file = matchstr(loc, '^\f\+')
      let lnum = str2nr(matchstr(loc, ':\zs\d\+$'))
    endif
    let abs = fnamemodify(file, ':p')

    " left side of the line (name/export/etc.)
    let name = substitute(l, '\s\V'.escape(loc,'\'), '', '')
    if name ==# l | let name = section | endif

    call add(qf, {'filename': abs, 'lnum': lnum, 'col': col, 'text': section . ': ' . name})
  endfor

  call setqflist(qf, 'r')
  call setqflist([], 'a', {'context': {'kind':'knip','args':a:000,'root':root}})
  execute 'lcd' fnameescape(save_cwd)

  if empty(qf) | cclose | echo 'knip: clean' | else | copen | endif
endfunction
command! -nargs=* Knip call s:Knip(<f-args>)

function! s:QfRefresh() abort
  let info = getqflist({'context':1})
  let ctx = get(info, 'context', {})
  if empty(ctx) | echo 'no quickfix context' | return | endif
  let cur = line('.')
  if get(ctx,'kind','') ==# 'tsc'
    execute 'Tsc ' . get(ctx,'target','.')
  elseif get(ctx,'kind','') ==# 'eslint'
    execute 'Eslint ' . get(ctx,'target','src')
  elseif get(ctx,'kind','') ==# 'tsprune'
    let argstr = empty(get(ctx,'args',[])) ? '' : join(map(copy(ctx.args), 'shellescape(v:val)'), ' ')
    execute 'TsPrune ' . argstr
  elseif get(ctx,'kind','') ==# 'knip'
    let argstr = empty(get(ctx,'args',[])) ? '' : join(map(copy(ctx.args), 'shellescape(v:val)'), ' ')
    execute 'Knip ' . argstr
  else
    echo 'unknown quickfix context' | return
  endif
  let n = len(getqflist())
  if cur <= n | execute cur | endif
endfunction
command! QfRefresh call s:QfRefresh()

augroup QfUX
  autocmd!
  "autocmd FileType qf setlocal cursorline nowrap winhighlight=CursorLine:QuickFixLine mouse=a
  autocmd FileType qf nnoremap <buffer> r :QfRefresh<CR>
  autocmd FileType qf nnoremap <buffer> q :cclose<CR>
augroup END
