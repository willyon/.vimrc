"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"系      统：Ubuntu14.04
"文本文件名：.vimrc
"文件位置：用户主目录：/home/username/.vimrc(.vimrc文件一般需要自己创建)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"一.非插件类配置（无需额外下载vim的插件，即时配置即时生效）
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""
"1.习惯键映射
""""""""""""""""""
"在vim输入模式下，非递归映射,inore = input with no recursive

"将 c, 映射为 #
inoremap cc; #<esc>i

inoremap zz; %

inoremap xx; *

inoremap aa; $

inoremap ss; !

inoremap qq; ?

inoremap g;; \

inoremap ff; /

inoremap jk <esc>

inoremap jl <esc>la

"python格式配置
"inoremap ; :

"Python格式配置
"inoremap ,, {}<ESC>i

"C格式配置：<ESC>表示回到命令行模式，i表示进入输入模式，<cr>表示换行，大写O表示在该行前一行插入
"(注意，这个在有后缀名的源代码文件中，在输入行，会自动缩进4空格)
inoremap ,, {}<ESC>i<CR><ESC>O 

"python格式配置
inoremap ' ""<esc>i

inoremap " ''<esc>i

"c格式配置
"inoremap ' ""<esc>i

"inoremap " ''<esc>i

inoremap ;; <><ESC>i

inoremap ;inor inoremap<space>

inoremap ;nnor nnoremap<space>

inoremap /* /**/<ESC>hi

inoremap .. ()<ESC>i

inoremap [ []<ESC>i 

"将刚才编辑的英文转换为大写 
inoremap <C-u> <esc>gUiwea 



"普通模式(非命令，非输入模式)下，非递归映射,n=normal

"将 hh 映射为 :nohl<cr> 去除在命令 :/<content>
"后的字符高亮。其中content表示要查找的内容
nnoremap hl :nohl<cr>

"标记语句
nnoremap m mA
nnoremap ; `A

nnoremap n mB
nnoremap b `B

"nnoremap n mb
"nnoremap b `b

nnoremap ' :/

"mz表示标记当前行为 z ，gg=G表示全局缩进对齐
nnoremap r mzgg=G`z

"关闭当前标签
nnoremap q :q<cr>

"关闭全部标签
"nnoremap aa :qa<cr>

"保存
nnoremap ss :w<cr> 

"删除文本中多余的空行
nnoremap ;kk  :g/^$/d<cr>

"python文件解释执行 该句意思是：解释并执行当前文件目录下，名为 test.py 的文本文件
nnoremap ee :!./test.py<cr>

"编译 :make命令用F8快捷键替代
nnoremap <F8> :make<cr>

"执行编译结果,:!./edit命令用F7快捷键替代
nnoremap <F7> :! ./edit<cr>

"创建会话文件Session的快捷键,mksession后可加file名，不加的话默认名字为Session.vim
"nnoremap sm :mksession!<cr>

"打开Session的快捷键
"nnoremap sv :source ./Session.vim<cr>

"创建保存与恢复历史操作文件viminfo
"nnoremap wi :wviminfo! viminfo<cr>

"打开viminfo的快捷键
"nnoremap wr :rviminfo ./viminfo<cr>

nnoremap ,a ^

nnoremap ,l $
 


""""""""""""""""
"2.set设置值
""""""""""""""""

"搜索高亮 
set hlsearch 

"设置代码折叠方法
"set foldmethod=indent

"为终端使用的背景调整配色，其中，用 bg 替代 background 亦可
set background=dark

"vim是vi的加强版，但不与vi完全兼容,为避免旧版本的bug和局限。需关闭vim所有扩展功能，使其兼容于vi，故有此设置项
set nocompatible 

"设置shell命令输入记录条数上限
set history=1000

"设置行号 
set number 

"在状态栏显示正在输入的命令
set showcmd  

"设置匹配模式，类似当输入一个做括号时会匹配相应的有括号
set showmatch

"自动换行
set wrap

"允许被编辑文件以注释形式设置vim选项(modleline：往文件里写入特定行，当vim打开该文件时会自动读取特定行参数并调整自己的配置。如有些代码中有这样的语句：#vim:et:ts=4:sw=4: 当 .vimrc 中写有 set modeling，则会自动读入该配置)
set modeline  

"文件编码语言
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1,en_US 

"搜索模式里忽略大小写
set ignorecase       
 
"如果搜索模式包含大写字符，不使用 'ignorecase' 选项。只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用
set smartcase       

"自动把内容写回文件
set autowrite       

"设置自动对齐(缩进)：即每行的缩进值与上一行相等；可用 noautoindent 取消设置
set autoindent        

"智能缩进(一般smartindent与autoindent同时打开)
set smartindent     

"设置制表符(tab键)的宽度(即向右缩进距离相当于4个空格(仅是距离相等)。此处用 ts 替代 tabstop 亦可)
set tabstop=2      

"将tab出来的空白转变为对应距离的空格个数(此处用 et 替代 expandtab 亦可)
set expandtab

"设置软制表符的宽度(此值最好与 tabstop 一致。在此，表示逢4空格进1制表符)  
set softtabstop=2 

"(自动) 缩进使用的4个空格
set shiftwidth=2  

"使用 C/C++ 语言的自动缩进方式
set cindent      

"设置C/C++语言的具体缩进方式(下面语句是完整的，后面无需加 ) 和 } )
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s     
  
"整词换行
set linebreak      

"光标从行首和行末时可以跳到另一行去
set whichwrap=b,s,<,>,[,] 
    
"允许在 有未保存的修改时切换缓冲区
set hidden   

"设置在哪些模式下可使用鼠标功能(这里的 a 表示 all 即所有模式)
set mouse=a   

"标识预览窗口
set previewwindow   

"设置显示最后一个窗口的状态行；1表示窗口 >1时，显示最后一个窗口状态行；0表示不显示最后一个窗口状态行
set laststatus=2   

"标尺，用于显示光标位置的行号和列号
set ruler  

"命令行显示vim当前模式
set showmode        

"输入字符串就显示匹配点
set incsearch       




"""""""""""
"3.其它
"""""""""""
"语法启用。只有启用了，一些语法设置才能生效，如语法高亮设置
syntax enable

"语法高亮
syntax on

"检测文件类型
filetype plugin on 

"依文件类型设置自动缩进
filetype plugin indent on 


"设置光标回到上次编辑的所在行开头
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"编辑完成后，重新更新载入
autocmd! bufwritepost .vimrc source ~/.vimrc




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"二.插件类配置（需额外下载安装对应的插件，以下配置方可生效）
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"1.taglist 将当前文件的宏 全局变量 函数 等显示在Symbol，点击tag可跳转到相应内容
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"只显示当前文件的taglist，而插件默认的是显示多个
let Tlist_Show_One_File=1 

"如果taglist是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow=1 

"打开taglist时，光标保留在taglist窗口
let Tlist_GainFocus_On_ToggleOpen=1  

"每五秒自动保存一下
let autosave=2

"在右侧窗口中显示taglist
"let Tlist_Use_Right_Window=1

"设置关闭和打开taglist窗口的快捷键
"nnoremap <leader>tl :Tlist<CR> 




""""""""""""""""""""""""""""""""""""""""
"2.winmanager 文件浏览器和窗口管理器 
""""""""""""""""""""""""""""""""""""""""

"合并显示 fileExplorer 和TagList (FileExplorer是一个插件，可显示当前所在文件所在目录内容)
let g:winManagerWindowLayout='FileExplorer|TagList'

"映射 快速打开上述合并的fileexpolrer和taglist窗口
nnoremap ww :WMToggle<cr>




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"3.QuickFix 该插件将编译错误信息保存到文件中，然后vim利用这些信息快速定位跳转到运文件相应位置进行修正
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"切换到下一个结果，:cn命令用F10快捷键替代
nnoremap <F10> :cn<cr>

"切换到上一个结果，:cp命令用F9快捷键替代
nnoremap <F9> :cp<cr>

"调出编译结果窗口,:cw命令用F6快捷键替代
nnoremap <F6> :cw<cr>




"""""""""""""""""""""
"4.MiniBuExplorer
"""""""""""""""""""""

"用<ctrl>+箭头在编辑主窗口与taglist等窗口间自由切换
let g:miniBufExplMapWindowNavArrows = 1 




"""""""""""
"5.Grep
"""""""""""

"查找光标所在关键词（函数名 宏 变量 关键字等）在.h .c等文件中的位置
nnoremap  <F12> :Grep <cr>

 


""""""""""""""""""""""""
"6.supertab 加速补全 
""""""""""""""""""""""""
"记住上次补全方式，直到退出input模式为止。0-不计录上次的补全方式；1-记住上次补全方式，直到用其他补全命令改变
let g:SuperTabRetainCompletionType=2

"设置按下<Tab>后默认的补全方式，默认是<C-P>，现在改为<C-X><C-O>
"let g:SuperTabDefaultCompletionType="<C-X><C-O>" 




""""""""""""""""""""""""""""
"7.nerdcommenter 注释插件
""""""""""""""""""""""""""""

"原本<leader>符为默认是 \ ,现改为 ,
let mapleader = ","

"命令详情：  
	"1、 \cc 注释当前行和选中行  
	"2、 \cn 没有发现和\cc有区别  
	"3、 \c<空格> 如果被选区域有部分被注释，则对被选区域执行取消注释操作，其它情况执行反转注释操作  
	"4、 \cm 对被选区域用一对注释符进行注释，前面的注释对每一行都会添加注释  
	"5、 \ci 执行反转注释操作，选中区域注释部分取消注释，非注释部分添加注释  
	"6、 \cs 添加性感的注释，代码开头介绍部分通常使用该注释  
	"7、 \cy 添加注释，并复制被添加注释的部分  
	"8、 \c$ 注释当前光标到改行结尾的内容  
	"9、 \cA 跳转到该行结尾添加注释，并进入编辑模式  
	"10、\ca 转换注释的方式，比如： /**/和//  
	"11、\cl \cb 左对齐和左右对其，左右对其主要针对/**/  
	"12、\cu 取消注释  


	

"""""""""""""""""""""""""""""""""
"8.ctags tag标签关联搜索插件
"""""""""""""""""""""""""""""""""

"按下F5重新生成tag文件，并更新taglist
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>

imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
    
set tags=tags
    
"在当前工作目录下搜索名为 tags 的文件
set tags=./tags 
    



"""""""""""""""""""""""""""""""""""""""""
"9.omnicppcomplete 函数等自动补全插件
"""""""""""""""""""""""""""""""""""""""""

"按下F2根据头文件内关键字补全
imap <F2> <C-X><C-I>
    
"关掉智能补全时的预览窗口
set completeopt=menu,menuone     

"用 . 自动完成
let OmniCpp_MayCompleteDot = 1     

"用 -> 自动完成
let OmniCpp_MayCompleteArrow = 1  

"用 :: 自动完成
let OmniCpp_MayCompleteScope = 1 

"选择第一项 (但并不自动输入，等待编辑者确认是否选择该项)
let OmniCpp_SelectFirstItem = 2     

"在本文件和目录包含的文件中搜索命名空间
let OmniCpp_NamespaceSearch = 2     

"在弹出的窗口中显示函数原型
let OmniCpp_ShowPrototypeInAbbr = 1     

"能在全局范围内搜索
let OmniCpp_GlobalScopeSearch=1   

"类范围补全模式：始终显示所有成员
let OmniCpp_DisplayMode=1     

let OmniCpp_DefaultNamespaces=["std"]

"show scope in abbreviation and remove the last column(不知如何翻译好=.=)
let OmniCpp_ShowScopeInAbbr=1  

let OmniCpp_ShowAccess=1




"""""""""""""""""""""""""""""""""""""""""
"10.vim-markdown插件
"""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"注意：该插件针对类型为 .mkd
"的文件会自动设置foldmethod=expr,其会对用rakenew_post生成的markdown文件产生折叠某处
"展开和语法高亮的副作用
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"由于是用markdown写jekyll博客，故需额外对yaml语法字体进行高亮显示
let g:vim_markdown_frontmatter=1

"禁用自动折叠(要启用代码折叠功能，需要将 1 改为 0 )
let g:vim_markdown_folding_disabled=1


au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=mkd


"""""""""""""""""""""""""""""""""""""""""""""""""
"11.vim插件 管理插件 vundle
"""""""""""""""""""""""""""""""""""""""""""""""""

"be improved
set nocompatible

"required(该设置是必须的)
"filetype
"off(注意啊啊啊啊！！！！如果这个不注释掉的化，就没有代码高亮了。因为filetype on(前面已设置)之后才可以syntax on生效)

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"let vundle manage vundle
"required(也是必须的)
Bundle 'gmarik/vundle'

"vim-scripts repos
Bundle 'bash-support.vim'
Bundle 'perl-support.vim'

"css取色插件(color.vim & webapi-vim)
Bundle 'Rykka/colorv.vim'
"needed for fetching schemes online
Bundle 'mattn/webapi-vim' 

"缩进垂直线显示插件
Bundle 'nathanaelkane/vim-indent-guides'

"网页全尺寸截图
Bundle 'GNOME/gnome-web-photo'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"利用vundle下载其它插件的方法：
"1.将相应插件的github仓库路径，按如下方式填写在 .vimrc。
"2.vim命令模式下 :BundleInstall 则会自动将按照正确方式，在 .vimrc 描述过的插件下载安装好
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"github网上vim-scripts仓库的插件，按以下格式填写(写插件(仓库)名即可)
"Bundle 'FuzzyFinder'

"在github其他用户仓库的插件，按以下格式填写(写 用户名/插件(仓库)名)
"Bundle 'tope/vim-fugitive'

"非上两种情况的，即不在github上的插件，按以下格式填写(写出插件所在位置的绝对路径)
"Bundle 'git://git.wincent.com/command-t.git'




"""""""""""""""""""""""""""""""""""""""""
"12.vim-indent-guides插件
"""""""""""""""""""""""""""""""""""""""""
"显示垂直缩进线命令 在命令模式下 ,ig
"显示 :set cc=[Num] Num表示需要高亮的一列

"设置是否自动开启对齐垂直线，1为自动开启，0为关闭，待输入 ,ig 命令再开启
let g:indent_guides_enable_on_vim_startup=0

"设置垂直线宽度
let g:indent_guides_guide_size = 1 

"自定义颜色(该设置颜色只在gvim中生效，而在终端中颜色仅取决于background的设置是dark还是light，垂直线根据bg颜色自动调整)
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=yellow   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

hi IndentGuidesOdd guibg=red ctermbg=3

hi IndentGuidesEven guibg=green ctermbg=4




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"html标签语言编辑 快捷输入设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"标题输入
inoremap ;h1 <h1 class=""></h1><esc>6hi

inoremap ;h2 <h2 class=""></h2><esc>6hi

inoremap ;h3 <h3 class=""></h3><esc>6hi

inoremap ;h4 <h4 class=""></h4><esc>6hi

inoremap ;h5 <h5 class=""></h5><esc>6hi

inoremap ;h6 <h6 class=""></h6><esc>6hi


"li输入
inoremap ;lil <li></li><esc>4hi

"粗体格式(bold)
inoremap ;bb <b class=""></b><esc>5hi

"粗体格式(strong)
inoremap ;sg <strong class=""></strong><esc>10hi

"强调格式(emphasized)
inoremap ;em <em class=""></em><esc>6hi

"强调格式(italic)
inoremap ;ii <i class=""></i><esc>5hi

"大写格式(big)
inoremap ;big <big class=""></big><esc>7hi

"小写格式(small)
inoremap ;small <small class=""></small><esc>9hi

"上标格式(superscript)
inoremap ;sup <sup class=""></sup><esc>7hi

"下标格式(subscript)
inoremap ;sub <sub class=""></sub><esc>7hi

"img图片插入
inoremap ;img <img src="/home/willyon/ds//.png" alt=""/><esc>14hi

"a内容链接插入
inoremap ;aa <a href="#" class=""></a><esc>5hi

"ul输入(会自动缩进)
inoremap ;ul <ul class=""></ul><esc>4hi<cr><esc>k12li

"html输入(会自动缩进)
inoremap ;html <html></html><esc>6hi<cr><esc>k

"body输入(会自动缩进)
inoremap ;body <body><cr></body><esc>O

"div输入(会自动缩进)
inoremap ;div <div class=""></div><esc>5hi<cr><esc>k13li

"head输入（会自动缩进）
inoremap ;head <head><cr></head><esc>O

"script输入
inoremap ;scr <script ></script><esc>8hi<cr><esc>k

"在firefox浏览器中显示本文件内容
nmap ,v :exec '!exec firefox %'<CR>

"预格式文本
inoremap ;pre <pre class=""></pre><esc>5hi<cr><esc>k12li

"段落
inoremap ;pp <p class=""></p><esc>5hi

"padding-left
inoremap ;padl padding-left:px;<esc>2hi

"padding-top
inoremap ;padt padding-top:px;<esc>2hi

"padding-left
inoremap ;padl padding-left:px;<esc>2hi

"padding-right
inoremap ;padr padding-right:px;<esc>2hi

"padding-bottom
inoremap ;padb padding-bottom:px;<esc>2hi

"margin-left
inoremap ;marl margin-left:px;<esc>2hi

"margin-right
inoremap ;marr margin-right:px;<esc>2hi

"margin-top
inoremap ;mart margin-top:px;<esc>2hi

"margin-bottom
inoremap ;marb margin-bottom:px;<esc>2hi

"表单标签
inoremap ;form <form class=""></form><esc>6hi<cr><esc>k14li

"在文本域建立输入项
inoremap ;inp <input value="" type="" class=""/><esc>11hi

"button标签
inoremap ;btn <button class=""/></button><esc>9hi

"换行
inoremap ;br <br />

"下拉列表
inoremap ;sel <select class=""></select><esc>8hi<cr><esc>k15li

"列表选项
inoremap ;option <option value=""></option><esc>10hi

"输入文本框(多行)
inoremap ;txt <textarea class="" rows="10" cols="30"></textarea><esc>10hi<cr><esc>k17li

"带标题的框
inoremap ;fil <fieldset class=""></fieldset><esc>10hi<cr><esc>k17li

inoremap ;legend <legend class=""></legend><esc>10hi

"base标签
inoremap ;base <base target="_blank" /><esc>

"meta字码标签
inoremap ;metac <meta charset="utf-8" /><esc>

"text-indent
inoremap ;texi text-indent:px;<esc>2hi

"text-align
inoremap ;texa text-align:center;<esc>

"meta网页更新标签
inoremap ;metah <meta http-equiv="refresh" content="2"><esc>

"title标签
inoremap ;title <title></title><esc>7hi

"link标签(定义文档与外部资源之间的关系，最常用于链接样式表)
inoremap ;css <link rel="stylesheet" type="text/css" href="/home/willyon/ds/css/.css" /><esc>7hi

"style标签(可在style中规定html元素在浏览器中呈现的样式,常用css样式)
inoremap ;sty <style type="text/css"></style><esc>7hi<cr><esc>k

"noscript标签
inoremap ;noscript <noscript></noscript><esc>10hi

"label
inoremap ;lab <label for=""></label><esc>9hi

"float:left
inoremap ;fll float:left;<esc>

"float:right
inoremap ;flr float:right;<esc>

"position:absolute
inoremap ;poa position:absolute;<esc>

"position:relative
inoremap ;por position:relative;<esc>

"居中
inoremap ;mara margin:0 auto;

"tr标签
inoremap ;trt <tr class=""></tr><esc>4hi<cr><esc>k12li

"th标签
inoremap ;tht <th></th><esc>4hi

"td标签
inoremap ;tdt <td></td><esc>4hi

"span标签
inoremap ;spa <span class=""></span><esc>8hi

"button标签
inoremap ;btn <button class="" type="button"></button><esc>8hi<cr><esc>k15li

"外部script文件
inoremap ;js <script src="/home/willyon/ds/js/.js"></script><esc>13hi

"document.getElementById("")快捷输入设置
inoremap ;did document.getElementById("");<esc>2hi

"document.getElementsByTagName("")快捷输入设置
inoremap ;dtn document.getElementsByTagName("");<esc>2hi

"document.getElementsByClassName("")快捷输入设置
inoremap ;dcn document.getElementsByClassName("");<esc>2hi

"background快捷输入设置
inoremap ;bgd background:;<esc>i

"background-color
inoremap ;bgc background-color:#;<esc>i

"border
inoremap ;border border:solid 1px #;<esc>i

"border-bottom
inoremap ;bob border-bottom:solid 1px #;<esc>i

"border-top
inoremap ;bot border-top:solid 1px #;<esc>i

"border-left
inoremap ;bol border-left:solid 1px #;<esc>i

"border-right
inoremap ;bor border-right:solid 1px #;<esc>i

"line-height
inoremap ;line line-height:px;<esc>2hi

"color
inoremap ;col color:#;<esc>i

"加入背景图片
inoremap ;bgi background:url(/home/willyon/ds//.png) left center no-repeat;<esc>28hi

"微软雅黑快捷键
inoremap ;mro "Microsoft YaHei"<esc>a,"微软雅黑";

"function [函数名]()快捷输入设置
inoremap ;fn function<space>()<esc>hi

"在当前行尾部输入大括号{}快捷设置
inoremap ;,, <esc>$a{}<esc>i<cr><esc>O

"引入jQuery函数库
inoremap ;jq <script src="/home/willyon/webDevelop/js/jquery-1.12.0.min.js"></script>

"dl
inoremap ;dld <dl class=""></dl><esc>4hi<cr><esc>k12li

"dt
inoremap ;dtd <dt class=""></dt><esc>4hi<cr><esc>k12li

"dd
inoremap ;dd <dd class=""></dd><esc>4hi<cr><esc>k12li

inoremap ;txd text-decoration:underline;<esc>i

"文字加粗
inoremap ;fonw font-weight:bold;<esc>

"文字样式
inoremap ;fons font-style:normal;<esc>i

"文字大小
inoremap ;fonz font-size:12px;<esc>2h

"字体字体
inoremap ;fonf font-family:;<esc>i

"height
inoremap ;hei height:px;<esc>2hi

"width
inoremap ;wid width:px;<esc>2hi
