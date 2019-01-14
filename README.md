vim
===============

因为开发经常会遇到新环境，在新环境下编辑文件就不得不用到vim。然而，新环境下的vim在没有配置时，难用的不行。我之前都是通过scp来复制我自己常用的配置到新环境，现在决定迁到github上来，方便自己使用。同时，也借机梳理一下vim的相关知识，解决“知其然而不知其所以然”的问题。但是，网上的vim教程实在是少，而且都比较陈旧，要想搞懂vim，只能硬着头皮去看文档和google了。所以，暂且把这个库当做是一个文档+配置示例用吧。

## 安装

1. 进入Home目录 `cd ~`
2. 执行 `git clone https://github.com/poettian/vim.git .vim`
3. 复制vim配置文件 `cp .vim/.vimrc.example ./.vimrc`
4. 打开vim，执行命令 `:PlugInstall`
5. 安装完成

## 关于插件

其实插件就是一个以“.vim”结尾的脚本文件，里面定义了很多函数和变量，使用了if else这样的流程控制。但是对于功能复杂且文件众多的大型插件来说，组织为有目录层次且放在特定命名的目录下显然更好管理。所以，我个人定义插件分为简单插件和复杂插件。

简单插件借助vim的实现机制，只要放到特定目录下即可；而复杂插件大多使用插件管理器，插件放置的目录也并非vim的标准目录，只是会借助管理器的自动加载实现，加载到vim中来。

### 简单插件

vim的插件分为全局插件和文件类型插件。

#### 全局插件

随着vim的启动会自动加载的插件，只需要把以“.vim”结尾的文件放到 ~/.vim/plugin 目录下就可以。

#### 文件类型插件

顾名思义，文件类型插件就是会根据当前vim打开文件的类型而选择性加载的插件。文件类型插件的命名有一定的规则：
```vim
<filetype>.vim
<filetype>_<name>.vim
<filetype>/<name>.vim
```
需要把这些文件放到 ~/.vim/ftplugin 目录下，并执行 `:filetype plugin on` 或者在 .vimrc 中配置 `filetype plugin on` 

### 复杂插件

我使用的管理器是 [vim-plug](https://github.com/junegunn/vim-plug)，安装很简单，只要把 `plug.vim` 放入 ~/.vim/autoload 目录下即可。

至于 autoload 目录，作用是：当在 .vimrc 中使用了一个未定义的函数，vim会自动去 autoload 目录下的文件中查找是否有此函数的定义。

vim-plug 的配置可以参考其文档。
