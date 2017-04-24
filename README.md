# 华中科技大学毕业论文LaTeX模板2017

本项目为非官方的华中科技大学本科生毕业论文LaTeX模板，考虑到目前网络上可以找到的本校模板已经严重过时，本人重新制作了该模板，符合2017年华中科技大学本科生毕业论文官方模板格式。

## 模板样例
![样例](Example/example.png)
正文样例可以参照[PDF样例文档](Example/example.pdf)

## 使用方法

### 在Windows系统中
* 下载本模板[最新Release版本](https://github.com/skinaze/HUSTPaperTemp/releases)
* 下载并安装最新版本的MiKTeX 或者TeX Live
* 打开TeX works，并设置默认编译工具(Edit->Preference->Typesetting->Processing Tools->Default)为XeLaTeX+MakeIndex+BibTeX
* 新建一个tex文档并保存在一个文件夹下，将Template文件夹下所有文件拷贝到该文件夹下
* 在新的tex文档中使用\documentclass{HustGraduPaper}使用模板定义的样式

### 在Mac OS X系统中
* 下载本模板[最新Release版本](https://github.com/skinaze/HUSTPaperTemp/releases)
* 下载并安装最新版本的MacTeX
* 打开TeXshop，新建一个tex 文档并保存在一个文件夹下，将Template文件夹下所有文件拷贝到该文件夹下
* 在新的tex 文档中使用\documentclass{HustGraduPaper} 使用模板定义的样式
* 编写完成论文后，使用XeLaTeX->MakeIndex->BibTeX->XeLaTeX 的顺序进行编译

### 在Ubuntu系统中
* 下载本模板[最新Release版本](https://github.com/skinaze/HUSTPaperTemp/releases)
* 使用命令apt-get install texlive 安装最新版TEX Live
* 新建一个.tex 文件并保存在一个文件夹下，将Template 文件夹下所有文件拷贝到该文件夹下
* 在新的tex 文档中使用\documentclass[ubuntufont]{HustGraduPaper}使用模板定义的样式，并设置使用Ubuntu 自带的文泉驿和文鼎字体
* 编写完成论文后，使用XeLaTeX->MakeIndex->BibTeX->XeLaTeX 的顺序进行编译

## 详细说明
详细说明请参考[使用说明](Instruction/HGP.pdf)，或者查看[Example文件夹](Example)下的例子。

## 问题反馈
如果在使用本模板遇到任何问题，可以[发邮件给我](mailto:me@stringblog.com)，或者前往[我的博客](https://stringblog.com/hustgradupaperlatex/)，亦可在[Issues](https://github.com/skinaze/HUSTPaperTemp/issues)中留言。

## 未发布的更新内容
* 修正图表编号后使用冒号的错误，改为使用1em间距；