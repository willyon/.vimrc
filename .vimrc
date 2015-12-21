"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"系统：Ubuntu14.04
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
inoremap c, #  

inoremap z, %

inoremap x, *

inoremap a, &

inoremap s, !

inoremap q, ?

inoremap g, /

inoremap f, \

inoremap jk <esc>

"Python格式配置
inoremap ,, {}<ESC>i

"C格式配置：<ESC>表示回到命令行模式，i表示进入输入模式，<cr>表示换行，大写O表示在该行前一行插入
"inoremap ,, {}<ESC>i<CR><ESC>O

"python格式配置
inoremap ' ''<esc>i

inoremap " ""<esc>i

"c格式配置
"inoremap ' ""<esc>i

"inoremap " ''<esc>i

inoremap ;; <><ESC>i

inoremap /* /**/<ESC>i

inoremap .. ()<ESC>i

inoremap [ []<ESC>i 

"将刚才编辑的英文转换为大写 
inoremap <C-u> <esc>gUiwea 



"普通模式(非命令，非输入模式)下，非递归映射,n=normal

"将 hh 映射为 :nohl<cr> 去除在命令 :/<content>
"后的字符高亮。其中content表示要查找的内容
nnoremap hh :nohl<cr>

nnoremap ; :

nnoremap ' :/

"关闭当前标签
nnoremap q :q<cr>

"关闭全部标签
nnoremap aa :qa<cr>

"保存
nnoremap ss :w<cr> 

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

 


""""""""""""""""
"2.set设置值
""""""""""""""""

"搜索高亮 
set hlsearch 

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
set tabstop=4      

"将tab出来的空白转变为对应距离的空格个数(此处用 et 替代 expandtab 亦可)
set expandtab

"设置软制表符的宽度(此值最好与 tabstop 一致。在此，表示逢4空格进1制表符)  
set softtabstop=4  

"(自动) 缩进使用的4个空格
set shiftwidth=4   

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

"检测文件类型
filetype on 

"依文件类型设置自动缩进
filetype plugin indent on 

"语法高亮
if has("syntax")
      syntax on            " 条件成立，则开启语法高亮
endif
    colorscheme ron       "选择高亮色方案，vim自带的17种配色方案保存在/usr/share/vim/vim74/colors目录下

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

