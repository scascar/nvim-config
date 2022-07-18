call plug#begin('~/AppData/Local/nvim/plugged')
" below are some vim plugins for demonstration purpose.
" add the plugin you want to use here.
"
Plug 'morhetz/gruvbox'
Plug 'airblade/vim-rooter'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'

" Utilities
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'ap/vim-css-color'
Plug 'scrooloose/nerdtree'

" Completion / linters / formatters
Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'}
Plug 'plasticboy/vim-markdown'

" Git
Plug 'airblade/vim-gitgutter'

Plug 'tversteeg/registers.nvim'

" Copilot
Plug 'github/copilot.vim'
call plug#end()

colorscheme gruvbox
" Options
set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set mouse=a
set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu

" Tabs size
set expandtab
set shiftwidth=2
set tabstop=2

"background=dark: apply the color set for dark screens. Not just the background of the screen, as it might look.
"clipboard=unnamedplus: enables the clipboard between Vim/Neovim and other applications.
"cursorline: highlights the current line in the editor.
"completeopt: modifies the auto-complete menu to behave more like an IDE.
"hidden: hide unused buffers1.
"inccommand=split: show replacements in a split screen, before applying to the file.
"mouse=a: allows the use of the mouse in the editor.
"number: shows line numbers.
"relativenumber: show line numbers starting from the current one. Useful for using multiline commands.
"splitbelow splitright: changes split screen behavior with the command :split (split horizontally) and :vsplit (vertically). In this case, the screens will always split below the current screen and to the right.
"title: show the file title
"ttimeoutlen=0: time in milliseconds to run commands.
"wildmenu: shows a more advanced menu for auto-completion suggestions.
"expandtab: transforms tabs into spaces.
"shiftwidth=2: number of spaces for indentation.
"tabstop=2: number of spaces for tabs.

let g:airline_theme='sobrio'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" File browser
let NERDTreeShowHidden=1


let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" Disable math tex conceal feature
let g:tex_conceal = ''
let g:vim_markdown_math = 1

" Markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = ['tsx=typescriptreact']

" Normal mode remappings
nnoremap <C-q> :q!<CR>
nnoremap <F4> :bd<CR>
nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <F6> :sp<CR>:terminal<CR>:resize 20<CR>
:tnoremap <Esc> <C-\><C-n>

" Tabs
nnoremap <S-Tab> gT
nnoremap <Tab> gt
nnoremap <silent> <S-t> :tabnew<CR>

" Ignore node_modules for nerdtree
let NERDTreeIgnore = ['^node_modules$']
