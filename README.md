vim
===============

因为开发经常会遇到新环境，在新环境下编辑文件就不得不用到vim。然而，新环境下的vim在没有配置时，难用的不行。我之前都是通过scp来复制我自己常用的配置到新环境，现在决定迁到github上来，方便自己使用。同时，也借机梳理一下vim的相关知识，解决“知其然而不知其所以然”的问题。但是，网上的vim教程实在是少，而且都比较陈旧，要想搞懂vim，只能硬着头皮去看文档和google了。所以，暂且把这个库当做是一个文档+配置示例用吧。

## 安装

1. 进入Home目录 `cd ~`
2. 执行 `git clone https://github.com/poettian/vim.git .vim`
3. 复制vim配置文件 `cp .vim/.vimrc.example .vimrc`
4. 打开vim，执行命令 `:PlugInstall`
5. 安装完成

## 关于插件

其实插件就是一个以“.vim”结尾的脚本文件，里面定义了很多函数和变量，使用了if else这样的流程控制。vim 传统的插件组织形式是将插件分拆为几个部分分别放到不同的目录，如下：

`~/.vim/colors/`

Vim将会查找该目录下的配色文件并执行它。这个文件应该包括生成你的配色方案所需的一切Vim script命令。

`~/.vim/plugin/`

该目录下的文件将在每次Vim启动的时候执行。这里的文件包括那些无论何时，在启动Vim之后你就想加载的代码。

`~/.vim/ftdetect/`

该目录下的文件在每次你启动Vim的时候也会执行。ftdetect是"filetype detection"的缩写。这里的文件仅仅负责启动检测和设置文件的filetype类型的自动命令。

`~/.vim/ftplugin/`

该目录下的文件则各不相同。一切皆取决于它的名字!当Vim把一个缓冲区的filetype设置成某个值时，它会去查找~/.vim/ftplugin/下对应的文件。比如：如果你执行set filetype=derp，Vim将查找~/.vim/ftplugin/derp.vim。一旦文件存在，Vim将执行它。

Vim也支持在~/.vim/ftplugin/下放置文件夹。例如set filetype=derp将告诉Vim去执行~/.vim/ftplugin/derp/下的全部*.vim文件。这使得你可以按代码逻辑分割在ftplugin下的文件。

因为每次在一个缓冲区中执行filetype时都会执行这些文件，所以它们只能设置buffer-local选项！如果在它们中设置了全局选项，所有打开的缓冲区的设置都会遭到覆盖！

`~/.vim/indent/`

该目录下的文件类似于ftplugin下的文件。加载时也是只加载名字对应的文件。

indent文件应该设置跟对应文件类型相关的缩进，而且这些设置应该是buffer-local的。

是的，你当然可以把这些代码也一并放入ftplugin文件，但最好把它们独立出来，让其他Vim用户理解你的意图。这只是一种惯例，不过请尽量体贴用户并遵从它。

`~/.vim/compiler/`

该目录下的文件非常类似于indent文件。它们应该设置同类型名的当前缓冲区下的编译器相关选项。

`~/.vim/after/`

该文件夹有点神奇。这个文件夹下的文件会在每次Vim启动的时候加载，不过是在~/.vim/plugin/下的文件加载了之后。

这允许你覆盖Vim的默认设置。实际上你将很少需要这么做，所以不用理它，除非你有"Vim设置了选项x，但我想要不同的设置"的主意。

`~/.vim/autoload/`

autoload是一种延迟插件代码到需要时才加载的方法。举个例子：当在 .vimrc 中使用了一个未定义的函数，vim会自动去 autoload 目录下的文件中查找是否有此函数的定义。

`~/.vim/doc/`

最后，~/.vim/doc/文件夹提供了一个你可以放置你的插件的文档的地方。 Vim对文档的要求是多多益善(看看我们执行过的所有:help命令就知道)，所以为你的插件写文档是重要的。

### 插件管理器

显然，自己写插件是一件费时费力的事，如果有人帮你干了，又何必再去造轮子。

我使用的管理器是 [vim-plug](https://github.com/junegunn/vim-plug)，安装很简单，只要把 `plug.vim` 放入 ~/.vim/autoload 目录下即可。

vim-plug 的配置可以参考其文档。
