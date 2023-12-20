set nocompatible              " be iMproved, required
filetype off                  " required

inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

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

Plugin 'https://github.com/digitaltoad/vim-pug.git'

Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" coc instead of ycm? time to upgrde?
" 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}

" YouCompleteMe
Plugin 'https://github.com/Valloric/YouCompleteMe.git'

" omnisharp
Plugin 'https://github.com/OmniSharp/omnisharp-vim.git'

" syntastic
Plugin 'https://github.com/vim-syntastic/syntastic.git'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
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
augroup ProjectDrawer
    autocmd!
    autocmd VimEnter * :Vexplore
augroup END

" allow vim to source vimrc files from within projects when there is
set exrc
" and keep me safe safe from that
set secure

" automatically save folds, and load them when i open up a file
augroup AutoSaveFolds
  if @% !=""
    autocmd!
    autocmd BufWinLeave * mkview
    autocmd BufWinEnter * silent loadview
  endif
augroup END


" :command! MoveWrite -bang -range -nargs=1 -complete=file MoveWrite  <line1>,<line2>write<bang> <args> | <line1>,<line2>delete _
" :command! MoveAppend -bang -range -nargs=1 -complete=file MoveAppend <line1>,<line2>write<bang> >> <args> | <line1>,<line2>delete _

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
