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

## 关于查重
据我目前了解到的情况我们学校使用的是知网查重，硕博论文提交窗口要求的提交的格式也是PDF。本科论文似乎是通过各院系教务科统一提交，通常是提交PDF文档，部分院系可能要求提交WORD文档，对于这个问题，我目前找到两种解决方案：

1. 通过Adobe Acrobat导出到Microsoft Word，这是我目前找到的唯一一个可以比较完美识别PDF格式并转换为WORD格式的工具，导出格式中的公式图片可能存在问题，但是查重不查公式图片，所以问题不大，但缺点是这个工具是收费的；
2. 通过[Pandoc](http://pandoc.org/)直接从LaTeX转换为Microsoft Word，这需要一个已经设置好各级标题样式的WORD文档作为格式参考，好处是转换结果中公式都能完整展现，坏处是需要已经设定好格式的WORD文档而且直接生成PDF脚本的命令（如各种绘图宏包）不能正常工作。

个人认为提交的WORD文档仅作为查重使用，并不需要格式完全准确，所以虽然转换得到的WORD存在各种问题，但并不会有太大影响。当然，如果对最终提交的WORD格式有近乎完美的追求，建议使用WORD直接进行论文排版。关于这个问题如果您有更好的建议也请[联系我](mailto:me@stringblog.com)。

## 未发布的更新内容
* 更正“关键词：”和“Abstract: ”为四号字体；