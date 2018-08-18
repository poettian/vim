vim
===============

因为开发经常会遇到新环境，在新环境下编辑文件就不得不用到vim。然而，新环境下的vim在没有配置时，难用的不行。我之前都是通过scp来复制我自己常用的配置到新环境，现在决定迁到github上来，方便自己使用。

其中的配置是比较简单的。我曾经也去网上copy过复杂的配置，但是把vim搞的像个IDE一样后，加载起来速度实在慢。而且平时在做项目时，确实也很少用vim去写代码，所以简单实用就可以啦。

## 安装

1. 进入Home目录 `cd ~`
2. 执行 `git clone https://github.com/poettian/vim.git .vim`
3. `mv .vim/.vimrc ./`
4. 修改.vimrc中 **xxx** 为自己的vim对应目录，我自己对应的目录为`/usr/share/vim/vim80`
5. 大功告成

## 说明

因为我平时是用PHP做开发的，所以有针对PHP的配置，可以根据需要自行删掉和更改
