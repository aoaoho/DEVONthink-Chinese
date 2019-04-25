<div align="center">
<a href="https://www.devontechnologies.com/apps/devonthink" target="_blank"><img src="https://img.shields.io/badge/&#127744;_DEVONthink-v2.11.3-blue.svg" align="left" alt="🌀  DEVONthink v2.11.3"></a>
<a href="https://github.com/aoaoho/DEVONthink-Chinese/releases" target="_blank"><img src="https://img.shields.io/badge/DEVONthink_Chinese-v2.11.3--2.0.0-red.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAANCAYAAAHTSQ6PAAAABGdBTUEAALGPC/xhBQAAAuxJREFUKBVVUk1sE0cU/mZ2Zu1d27Edk8RpEiAgojStmoDaIqFWQqIq9FIJJDhw4AZHkHLg0JMvOVVquNJbOVWRqt7gggSXlksqhV5wqIghTkhM/hyvd53d9cz0OSaIjLSz38y8n++97wHv15yZs1gJfelrX055/2y9W9y//2NmZpA9PT5lnKSD/efLP2U96+Eo/L0mXob+vhkr9Y9+/2262HcQzDoA9+fn5Q0nP8yeXBgxud0R2CyNcnkRfO+5AxOI94YGuOEUvr5TPPHVgSv7eeCL1Phnp2a1SlYKn2JMVvV3Wb813HhbQ3WlimC4uCn82hpLuK2bTo+L3HIGbNWFtgHDKY5FPOJoi5IobnsclukQE7ATDF67jVoc7mzotiaDXnaQ9+P/n7OzOb1c61Uj/fVr09Pb7N7JyUdH+8ee5aeka5WtsynROp/c9VB9tQQuJcrpTFbE1Y2Tn/+2fmn94jEM/JBE/DoBrTWYFNDtGFaiqbm0wJdvFWAPEVNiezg/9YMW7/BVO11GYYWjew0y7ph3XcidFWzGYHOOJLMgCG+343BdRet1rYwKQ85+hPvJRDY/zhypVtvx2oPN1SUK0e7G7u6sVCrxgYXy0cL1K43HV094v8Izv0wnZNF/neodfZOzV7YKzPcHpVbjOtLHolYw5Debw2EYNUTGXQpb8V8N7+0DdhdHMn02e3O6J5uXQwlYOy5S/QKZSQOzJhFXBIwgzBk0VRUELezs1uH7PlLSxruM81+zB2e4C2Z4JLfFhMHI73XkbzfgvSD1npPGeWpIQgK2BKePkdzM4uDUB8YJC8LC0p3iBGg2+R4Q/Gth8VweUtnIfxMjOWDg/52CzFJvD2vwcWs+YIENwmliTvQhNYmpEVWIzYqEzNCZd2e6o4ImJopxGnpSh9xsUsdiVDMUxC42VKD6FkzcstPQgw4zkjHVRDvcVDFfiYClUOtXvoorNKy1zTDwt5rBHqLQLir3SM6Oh+qcx/8DE/gqK8kQwdUAAAAASUVORK5CYII=" align="left" alt="🇨🇳  DEVONthink Chinese v2.11.3-2.0.0"></a>
<a href="https://github.com/aoaoho/DEVONthink-Chinese/issues/new" target="_blank"><img src="https://img.shields.io/badge/Github-New_issue-2cbe4e.svg" align="right" alt="Github: New issue"></a>
<a href="https://t.me/DEVONthink" target="_blank"><img src="https://img.shields.io/badge/Telegram-DEVONthink-5682a3.svg" align="right" alt="Telegram: DEVONthink"></a>
<div>&nbsp;</div>
</div>

# DEVONthink 简体中文语言包
三个授权版本有轻微差异，请按需食用。
> DEVONthink Personal  
DEVONthink Pro  
DEVONthink Pro Office

## 食用方法
> **提示**：语言包无论自动还是手动安装，若 DEVONthink 是刚刚安装或升级后从未启动过，请在安装前先启动一次，否则安装后会提示应用已损坏无法启动。

### 自动安装  
拷贝右侧命令，粘贴到终端内执行：`bash <(curl -L -s https://github.com/aoaoho/DEVONthink-Chinese/raw/master/install.sh)`

### 手动安装  
1. [下载语言包.zip文件](https://github.com/aoaoho/DEVONthink-Chinese/releases)并解压；
1. 根据你使用的授权版本，将压缩包内对应的 `zh_CN.lproj` 目录拷贝到 `/Applications/DEVONthink*.app/Contents/Resources/` （在应用图标上点右键 --> 显示包内容）目录下；
1. 将压缩包内 `Frameworks` 目录下所有子目录中的 `zh_CN.lproj` 目录分别拷贝到 `/Applications/DEVONthink*.app/Contents/Frameworks/` 目录下对应的位置（这里用到的 Frameworks 文件在三个授权版本中一致，可通用）；
1. 重新启动应用即可。

## 相关说明
> **翻译说明：**
> - 此语言包完全基于官方英文版进行翻译；
> - 由于官方语言包内部分资源文件较为分散，所以部分界面仍然存在英文，但主界面和偏好设置界面基本达到无障碍使用了；
> - 有些词汇或段落翻译时候没有上下文可参照，翻译会有偏差甚至歧义，后续发现问题会持续修正，也欢迎提PR。

> **自定义默认打开方式快捷键：**  
当使用外部应用打开文档时，虽然 DEVONthink 为默认打开方式提供了快捷键（`⌘⇧O`），但右手拿着鼠标的情况下，左手没法操作，幸好[ macOS 自带的功能](https://support.apple.com/kb/PH6896?viewlocale=zh_CN)可以方便地自定义快捷键（我改成了`⌃⌥C`），也可以参考[ DEVONthink 官方给出的例子](https://blog.devontechnologies.com/2017/02/tuesday-tip-add-hotkeys-to-open-with-items/)。  
但是问题来了： macOS 自带的这个功能是读取菜单文字实现的（纯猜测，未去证实），而 DEVONthink 软件只考虑了英文（也是猜测）所以默认打开方式的应用名称后边的` (default)`字符翻译成中文以后，自定义快捷键就失效了。解决方式：这个地方暂时使用英文吧（先解决有没有的问题，之后再看有没有别的解决方式，心疼各位强迫症患者 1 秒）。

> **如果你的 macOS 系统语言*不是*简体中文**，但又想让 DEVONthink 的软件界面显示中文，那么你可能需要切换一下 DEVONthink 的默认语言，提供两种方式任选：
> - 使用第三方软件：[App Language Chooser](https://itunes.apple.com/us/app/app-language-chooser/id451732904) 或 [Language Switcher](http://www.tj-hd.co.uk/en-gb/languageswitcher/)
> - 使用终端命令行：[修改 macOS 应用的界面语言](https://sspai.com/post/44536)

## 其他
> **中文搜索**
> - [DEVONthink To Go 中文搜索现状讨论](https://sspai.com/post/44657)
> - [部分解决 DEVONthink 搜索问题](https://github.com/ringsaturn/DEVONthink-Chinese-Search)

> **一些 DEVONthink 使用相关文章：**
> - 【推荐阅读】[从 Evernote 到 DEVONthink](https://sspai.com/post/44648) *（少数派作者 @OscarGong 写的一篇非常详尽的长文，可以忽略标题，文内 80% 以上的篇幅都是在介绍 DEVONthink 本身）*
> - 网友 `@YJ On-Line ~` 写的一个系列文章：
[&nbsp; P1 &nbsp;](https://medium.com/p/cf6564014474) [&nbsp; P2 &nbsp;](https://medium.com/p/a159fc6e61e5) [&nbsp; P3 &nbsp;](https://medium.com/p/ddfa8e71d856) [&nbsp; P4 &nbsp;](https://medium.com/p/8957e781515f) [&nbsp; P5 &nbsp;](https://medium.com/p/f5aed8758728)  

## License
本项目使用的许可证是GPL v3.0许可证的反996扩展许可证  

>     This program is free software: you can redistribute it and/or modify  
>     it under the terms of the GNU General Public License as published by  
>     the Free Software Foundation, either version 3 of the License, or  
>     (at your option) any later version.  
>   
>     This program is distributed in the hope that it will be useful,  
>     but WITHOUT ANY WARRANTY; without even the implied warranty of  
>     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the  
>     GNU General Public License for more details.  
>   
>     You should have received a copy of the GNU General Public License  
>     along with this program.  If not, see <https://www.gnu.org/licenses/>.  

更多信息, 请参见[英文版许可证](LICENSE)或[中文版许可证](LICENSE-zh-CN)
