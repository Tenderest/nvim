"设置leader键成英文逗号，默认为反斜杆
let mapleader=","
"vimrc 的主要配置
"常用设置
"常用映射
"插件的安装和配置
"自定义函数（vimscript）

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
"R变成后面这个命令
"map E :source $MYVIMRC<CR> 

"设置主题
"industry 无透明，青灰色双引号内容，绿色注释，C语言关键字无高亮
"slate 透明，绿色双引号内容，橙色注释，C语言蓝色高亮关键字
"desert 透明，橙（棕）色双引号内容，绿色注释，C语言关键字高亮
"pablo 透明，森绿色双引号内容，灰色注释，C语言关键字高亮
"peachpuff
"darkblue 无透明，淡紫色双引号，数字内容，红色注释，关键字高亮除printf外，笔记本上的使用
"default 透明，红色双引号，数字内容，蓝色注释，关键字高亮除printf外，笔记本上的使用
"delek 透明，青绿色双引号，数字内容，红色注释，关键字高亮除printf外，笔记本上的使用
"elflord 透明，蓝紫色双引号，数字内容，绿色注释，关键字高亮除printf外，笔记本上的使用
"industry 无透明，蓝灰色双引号，数字内容，绿色注释，关键字高亮除printf外，笔记本上的使用
"morning 白色背景，红色双引号，数字内容，蓝色注释，关键字高亮除printf外，笔记本上的使用
"murphy 无透明，森绿色双引号，数字内容，关键字也是森绿色，灰白色注释，笔记本上的配置
"colorscheme koehler
colorscheme gruvbox9
set background=dark
"colorscheme snazzy
"industry, delek, elflord darkblue koehler"
"上面这个是笔记本上的主题配置
"下面这个是PC上的配置
"colorscheme slate
"

"设置出现输入的键位
" 设置 gvim 显示字体
set guifont=YaHei\ Consolas\ Hybrid\ 11.5

" 设置背景透明
hi Normal ctermfg=252 ctermbg=none
" 设置出现输入的键位
set showcmd
set noshowmode
set laststatus=2

" 设置状态栏格式
"set statusline=%<%F%=%y%m%r%h%w%{&ff}\[%{&fenc}]0x%02B@%040h#%n\(%3l/%3L,%3c\|%3v\)%3p%%
" set statusline=%1*\%<%.50F\               "显示文件名和文件路径
" set statusline+=%=%2*\%y%m%r%h%w\ %*      "显示文件类型及文件状态
" set statusline+=%3*\%{&ff}\[%{&fenc}]\ %* "显示文件编码类型
" set statusline+=%4*\ row:%l/%L,col:%c\ %* "显示光标所在行和列
" set statusline+=%5*\%3p%%\%*              "显示光标前文本所占总文本的比例
" hi User1 cterm=none ctermfg=25 ctermbg=0
" hi User2 cterm=none ctermfg=208 ctermbg=0
" hi User3 cterm=none ctermfg=169 ctermbg=0
" hi User4 cterm=none ctermfg=100 ctermbg=0
" hi User5 cterm=none ctermfg=green ctermbg=0



" 出错时，发出视觉提示，通常是屏幕闪烁。
" set visualbell
" 按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致。" 
set autoindent
" 设置tab转为空格" 
set expandtab
" 设置tab转换成多少个空格" 
set softtabstop=4
" 设置行号
set number 

" 设置行号距离多少,norelativenumber关闭
" set relativenumber 

" 设置光标所在字母的下划线整行
set cursorline
" 设置光标所在字母的竖线
hi Normal ctermfg=241 ctermbg=235 guifg=#6272A4 guibg=#282828
set colorcolumn=80
hi Over80 cterm=bold ctermbg=241 gui=bold guibg=#665C54
au BufNewFile,BufRead * :match Over80 /.\%>81v/
nnoremap <LEADER>s :set cursorline cursorcolumn<CR>
nnoremap <LEADER>ss :set nocursorline nocursorcolumn<CR>
"  总是显示状态栏
set laststatus=2
"  显示光标当前位置
set ruler


" 设置自动换行不会超出屏幕边缘
set wrap

" 设置normal模式命令补全
set wildmenu


" 让vim可以使用鼠标
"  a=allow
"  n=no
set mouse=n

" 让屏幕上下移动时都显示x行
set scrolloff=7

" 更改进入不同模式光标的样式似乎只在alacritty生效
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" 进入时光标在上一次退出的地方
au BufReadPost * if line("'\"" ) > 1 && line("'\"" ) <= line("$" ) | exe "normal! g'\"" | endif

" 把jj设置成Esc键
" inoremap kj <Esc>
" Dvorak in Visual Studio Code - Vim
inoremap <Leader><Leader> <Esc>

" 打开语法高亮
syntax on 
" 打开搜索高亮
set hlsearch
exec "nohlsearch" 
" 打开边搜索边高亮
set incsearch
" 搜索时忽略大小写
set ignorecase
" 搜索时智能搜索
set smartcase
noremap = nzz
noremap - Nzz
" 关闭高亮
noremap <LEADER>/ :nohlsearch<CR>

" 小写s会删除当前字符使用<nop>变为空
" " map s <nop>

" 保存
map <LEADER>w :w<CR> 

" 退出
map <LEADER>q :q<CR>
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y " +y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p " +p

" 分屏操作
" 分屏操作向右设置光标向右，左右分屏vsplit上下split
map sr :set splitright<CR>:vsplit<CR>
map sl :set nosplitright<CR>:vsplit<CR>
map su :set nosplitbelow<CR>:split<CR>
map sd :set splitbelow<CR>:split<CR>
"分屏切换光标Ctrl+W hjkl,注意此处LEADER已在文件头更改成空格
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l
"更改分屏的大小
"map <up> :res +5<CR>
"map <down> :res -5<CR>
"map <right> :vertical resize +5<CR>
"map <left> :vertical resize -5<CR>

"标签操作
"打开一个新的标签
map Tt :tabe<CR>
"下一个标签页
map Tl :+tabnext<CR>
"上一个标签页
map Th :-tabnext<CR>

"noremap格式说明
"noremap ×替换后的键位× ×替换前的键位×
"更改移动键位begin
"Dvorak
"Normal
nnoremap <C-d> h
nnoremap <C-h> j
nnoremap <C-t> k
nnoremap <C-n> l

inoremap <LEADER>d <Esc>i
inoremap <LEADER>n <Esc>lli

nnoremap <S-d> 5h
nnoremap <S-h> 5j
nnoremap <S-t> 5k
nnoremap s <nop>
"Visual
vnoremap <C-d> h
vnoremap <C-h> j
vnoremap <C-t> k
vnoremap <C-n> l


vnoremap <S-d> 5h
vnoremap <S-h> 5j
vnoremap <S-t> 5k
"注意！这里跳5行操作还是原来为更改移动键位时默认的hjkl

"快速移动到行首或行尾
"noremap <C-n> 0
"noremap <C-m> $
"i插入模式被更改这里使用h
"noremap h i
"noremap H I
"更改移动键位end



"快速查找<++>并替换<++>（占位符）可任意替换
"注意此处LEADER已在文件头更改成1左边的符号"
""map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l
"inoremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

"已经用代码片段替代
"设置C自动补全"
"inoremap <C-p> printf("",<++>);<Esc>7hi
"inoremap scanf scanf("",&<++>);<Esc>8hi
"nnoremap co i#include<stdio.h><CR>int main( void )<CR>{}<Esc>i<CR><CR><UP><TAB><TAB>return 0;<Esc>O

"设置注释补全，已经使用了快速注释插件可删除这一段
"inoremap /* /*  */<Esc>2hi

"
call plug#begin()


" Coc
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Or build from source code by using yarn: https://yarnpkg.com
" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}


"
" Ultisnips
"
" Plug 'SirVer/ultisnips'
" Plug 'Tenderest/vim-snippets'
"
" Ultisnips setting
"
"map <C-n> <nop>
let g:UltiSnipsExpandTrigger="<LEADER>l"
let g:UltiSnipsJumpForwardTrigger="<LEADER>l"
let g:UltiSnipsJumpBackwardTrigger="<LEADER>h"
" 使用 UltiSnipsEdit 命令时垂直分割屏幕
let g:UltiSnipsEditSplit="vertical"
" 如果文件不是在 ~/.vim/mycoolsnippets
" 每次进入Vim自动寻找目录下的Snippets文件配置
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/bundle/vim-snippets']
" 如果文件在 ~/.vim/mycoolsnippets
" let g:UltiSnipsSnippetDirectories=["UltiSnips", "mycoolsnippets"]

"
" VimTheme
"
set t_Co=256
Plug 'taigacute/gruvbox9'
Plug 'morhetz/gruvbox'
Plug 'connorholyday/vim-snazzy'
Plug 'junegunn/seoul256.vim'
"设置透明
"let g:SnazzyTransparent = 1
"需要移动vim-snazzy目录下的snazzy.vim到~/.vim/colors


"
" Vim底部状态栏
"
Plug 'itchyny/lightline.vim'
let g:lightline = {
    \ 'colorscheme' : 'gruvbox9',
    \ }
""	g:lightline.colorscheme			*g:lightline.colorscheme*
""		The colorscheme for lightline.vim.
""		Currently, wombat, solarized, powerline, powerlineish,
""		jellybeans, molokai, seoul256, darcula, selenized_dark,
""		Tomorrow, Tomorrow_Night, Tomorrow_Night_Blue,
""		Tomorrow_Night_Bright, Tomorrow_Night_Eighties, PaperColor,
""		landscape, one, materia, material, OldHope, nord, deus,
""		srcery_drk, ayu_mirage, ayu_light and 16color are available.
""		The default value is:
""		let g:lightline.colorscheme = 'default'




"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"
" airline 主题全局设定
"
"let g:airline_theme = 'tomorrow'
""airline_theme"
""simple light fruit_punch behelit dark dark_minimal tomorrow"

"Plug 'Lokaltog/vim-powerline'
""设置状态栏主题风格
"let g:Powerline_colorscheme='solarized256'

"
" 自动补全括号插件
"
Plug 'Raimondi/delimitMate'
"
" 快速注释插件
"
Plug 'tpope/vim-commentary'
"
"缩进线条
"
Plug 'Yggdroot/indentLine'
"
"缩进线条插件配置
"
"let g:indentLine_setColors = 1 "设置突出颜色0开启1关闭"
let g:indentLine_color_term = 000 "设置指示线的颜色" "黑色"
let g:indentLine_bgcolor_term = 111 "蓝色背景"
"let g:indentLine_bgcolor_gui = '#FF5F00'
"let g:indentLine_concealcursor = 'inc'
"let g:indentLine_conceallevel = 2
"let g:indentLine_setConceal = 1 
"设置显示竖线"
"let g:indentLine_char_list = ['^', '`', '*', '!']
let g:indentLine_char_list = ['|', '¦', '┆', '┊']



"
"markdown语法高亮插件
"
"Plug 'plasticboy/vim-markdown'
"Plug 'iamcco/markdown-preview.vim', { 'do': { -> mkdp#util#install_sync()},'for' :['markdown', 'Vundle' ] } "vim编辑markdown预览插件
"let g:mkdp_path_to_chrome = "google-chrome-stable" "设置预览用google chrome打开，同时google chrome安装Markdown Preview Plus
"let g:mkdp_auto_start = 0 "设置自动打开，打开为1,取消为0
"let g:mkdp_auto_close = 1 "设置自动关闭默认为1,取消写0
"let g:mkdp_page_title = '「${name}」' "预览的时候顶部显示markdown文件的名字
"let g:mkdp_browserfunc = 'sync_scrool_type:relative'
"noremap M :MarkdownPreview<CR> "无法自动关闭


Plug 'scrooloose/nerdtree'
"更改启动NERDTree的键位
map <C-x><C-f> :NERDTreeToggle<CR> 
"A plugin of NERDTree showing git status flags. Works with the LATEST version of NERDTree.
Plug 'Xuyuanp/nerdtree-git-plugin'
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:NERDTreeShowIgnoredStatus = 1
call plug#end()            " 必须
filetype plugin indent on    " 必须


" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
