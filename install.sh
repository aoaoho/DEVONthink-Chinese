#!/bin/bash
# 描述：此脚本用于将 DEVONthink v2.x 三个授权版本的简体中文语言包拷贝到应用程序目录内
# 版本：0.1.0
# 更新日期：2019/04/19
# 作者：aoaoho
# 网站：https://github.com/aoaoho/DEVONthink-Chinese
# 使用方法：bash <(curl -L -s https://github.com/aoaoho/DEVONthink-Chinese/raw/master/install.sh)

AppName_DTProOffice=DEVONthink\ Pro\ Office
AppName_DTPro=DEVONthink\ Pro
AppName_DTPersonal=DEVONthink

TempDir=/tmp
AppsDir=/Applications
PackDir=${TempDir}/DEVONthink-Chinese

# AppPath=${AppsDir}/${AppName}.app
# ResPath_App=${AppPath}/Contents⁩/Resources⁩
# FwsPath_App=${AppPath}/Contents⁩/Frameworks
# ResPath_Pack=${PackDir}/${AppName}/zh_CN.lproj
# FwsPath_Pack=${PackDir}/Frameworks

# 下载语言包 ##########
function Fn_CheckPack(){
  if [ -d "./${AppName_DTProOffice}" ];then
    Fn_Start
  elif [ -d "${PackDir}" ];then
    echo -e "************************************************************\n在本地找到语言包文件，可能您近期下载过：\n    1. 使用本地语言包文件进行安装\n    2. 清除本地文件并重新下载"
    read -p "✍️   请输入对应的数字后回车 [1/2] " Read_ReDownload;
    if [ "${Read_ReDownload}" = "1" ];then
      cd ${PackDir} && ./install.sh
    elif [ "${Read_ReDownload}" = "2" ];then
      rm -rf ${PackDir} && echo -e "文件已清除，开始重新下载 …\n" && Fn_DownloadPack
    else
      echo -e "\n\n✍️  请输入 1 或 2 后按回车键确认" && Fn_CheckPack;
    fi
  else
    echo -e "************************************************************"
    # read -s -n1 -p "本地未找到语言包，按任意键开始下载 …"
    read  -p "✍️   直接按回车键开始下载 DEVONthink v2.11.3 简体中文语言包，输入exit后按回车键终止安装 " Read_PreDownload
    if [ -z "${Read_PreDownload}" ];then
      Fn_DownloadPack
    elif [ "${Read_PreDownload}" = "exit" ];then
      exit
    fi
  fi
}

function Fn_DownloadPack(){
  cd ${TempDir} && git clone https://github.com/aoaoho/DEVONthink-Chinese.git && echo -e "下载完成" && cd ${PackDir} && ./install.sh
}

# 开始提示 ##########
function Fn_Start(){
  echo -e "\n************************************************************\n即将安装 DEVONthink v2.11.3 简体中文语言包，安装过程中会自动重启应用，\n为避免损坏数据，请先完全退出应用（Dock图标上点右键 -> 退出）\n如需老版本语言包请前往GitHub下载并手动安装\nhttps://github.com/aoaoho/DEVONthink-Chinese";
  read -p "❓  应用已经退出了吗？[yes/no] " Read_YES_OR_NO;
  if [ "${Read_YES_OR_NO}" = "yes" ];then
    Fn_CheckVersion
  elif [ "${Read_YES_OR_NO}" = "no" ];then
    echo -e "\n🔜  那就准备好再重新运行此脚本吧！\n";
  else
    echo -e "\n\n✍️  请输入 yes 或 no 后按回车键确认" && Fn_Start;
  fi
}

# 是否已安装应用 ##########
function Fn_CheckNum_DTPersonal(){
  if [ -d "${AppsDir}/${AppName_DTPersonal}.app" ];then
    echo "    已找到 ${AppName_DTPersonal} Personal"
    CheckNum_DTPersonal=1
  else
    CheckNum_DTPersonal=0
  fi
}
function Fn_CheckNum_DTPro(){
  if [ -d "${AppsDir}/${AppName_DTPro}.app" ];then
    echo "    已找到 ${AppName_DTPro}"
    CheckNum_DTPro=1
  else
    CheckNum_DTPro=0
  fi
}
function Fn_CheckNum_DTProOffice(){
  if [ -d "${AppsDir}/${AppName_DTProOffice}.app" ];then
    echo "    已找到 ${AppName_DTProOffice}"
    CheckNum_DTProOffice=1
  else
    CheckNum_DTProOffice=0
  fi
}
# 是否已安装多个版本 ##########
function Fn_CheckNum(){
  echo -e "\n************************************************************"
  echo -e "正在查找已安装版本 …"
  sleep 1
  Num=0
  Fn_CheckNum_DTPersonal
  Fn_CheckNum_DTPro
  Fn_CheckNum_DTProOffice
  let Num=${CheckNum_DTPersonal}+${CheckNum_DTPro}+${CheckNum_DTProOffice}
}

# 选择版本 ##########
function Fn_ChoseVersion(){
  echo -e "\n************************************************************\n找到多个版本，请选择要安装简体中文语言包的版本\n    1. ${AppName_DTPersonal} Personal\n    2. ${AppName_DTPro}\n    3. ${AppName_DTProOffice}"
  read -p "✍️   请输入对应的数字后回车 [1/2/3] " Read_ChoseVersion;
  if [ "${Read_ChoseVersion}" = "1" ];then
    Copy_DTPersonal
  elif [ "${Read_ChoseVersion}" = "2" ];then
    Copy_DTPro
  elif [ "${Read_ChoseVersion}" = "3" ];then
    Copy_DTProOffice
  else
    echo -e "\n\n✍️   请输入数字 1、2 或 3 后按回车键确认" && Fn_ChoseVersion;
  fi
}

# 判断应用版本 ##########
function Fn_CheckVersion(){
  Fn_CheckNum

  if [[ ${CheckNum_DTPersonal} -eq 1 && ${Num} -eq 1 ]];then
    Copy_DTPersonal
  elif [[ ${CheckNum_DTPro} -eq 1 && ${Num} -eq 1 ]];then
    Copy_DTPro
  elif [[ ${CheckNum_DTProOffice} -eq 1 && ${Num} -eq 1 ]];then
    Copy_DTProOffice
  elif [ ${Num} -gt 1 ];then
    Fn_ChoseVersion
  else
    echo -e "⚠️   未找到 DEVONthink，请将应用放到${AppsDir}目录下，之后重新运行此脚本\n"
  fi
}

# 执行安装 ##########
function Copy_DTPersonal(){
  if [ -d "${PackDir}/${AppName_DTPersonal} Personal" ];then
    echo -e "\n************************************************************\n正在安装 ${AppName_DTPersonal} Personal 简体中文语言包 …"
    sleep 1
    rsync -a "${PackDir}/${AppName_DTPersonal} Personal/" "${AppsDir}/${AppName_DTPersonal}.app/Contents/Resources" --exclude ".DS_Store"
    sleep 1
    rsync -a "${PackDir}/Frameworks/" "${AppsDir}/${AppName_DTPersonal}.app/Contents/Frameworks" --exclude ".DS_Store"
    echo "    安装已完成，正在重启应用 …"
    # say "Cheers!"
    afplay /System/Library/Sounds/Glass.aiff

    sleep 1
    killall ${AppsDir}/"${AppName_DTPersonal}".app
    sleep 3
    open ${AppsDir}/"${AppName_DTPersonal}".app

    sleep 2
    Copy_Done
  else
    Copy_Stop
  fi
}
function Copy_DTPro(){
  if [ -d "${PackDir}/${AppName_DTPro}" ];then
    echo -e "\n************************************************************\n正在安装 ${AppName_DTPro} 简体中文语言包 …"
    sleep 1
    rsync -a "${PackDir}/${AppName_DTPro}/" "${AppsDir}/${AppName_DTPro}.app/Contents/Resources" --exclude ".DS_Store"
    sleep 1
    rsync -a "${PackDir}/Frameworks/" "${AppsDir}/${AppName_DTPro}.app/Contents/Frameworks" --exclude ".DS_Store"
    echo "    安装已完成，正在重启应用 …"
    # say "Cheers!"
    afplay /System/Library/Sounds/Glass.aiff

    sleep 1
    killall ${AppsDir}/"${AppName_DTPro}".app
    sleep 3
    open ${AppsDir}/"${AppName_DTPro}".app

    sleep 2
    Copy_Done
  else
    Copy_Stop
  fi
}
function Copy_DTProOffice(){
  if [ -d "${PackDir}/${AppName_DTProOffice}" ];then
    echo -e "\n************************************************************\n正在安装 ${AppName_DTProOffice} 简体中文语言包 …"
    sleep 1
    rsync -a "${PackDir}/${AppName_DTProOffice}/" "${AppsDir}/${AppName_DTProOffice}.app/Contents/Resources" --exclude ".DS_Store"
    sleep 1
    rsync -a "${PackDir}/Frameworks/" "${AppsDir}/${AppName_DTProOffice}.app/Contents/Frameworks" --exclude ".DS_Store"
    echo "    安装已完成，正在重启应用 …"
    # say "Cheers!"
    afplay /System/Library/Sounds/Glass.aiff

    sleep 1
    killall ${AppsDir}/"${AppName_DTProOffice}".app
    sleep 3
    open ${AppsDir}/"${AppName_DTProOffice}".app

    sleep 2
    Copy_Done
  else
    Copy_Stop
  fi
}

function Copy_Done(){
  echo -e "\n************************************************************\n✅  应用已重启\n    - 若安装语言包后应用无法启动，请重新下载与应用版本一致的语言包\n    - 若界面未显示为中文，您可能需要切换一下 DEVONthink 的默认语言\n      （ 方法：https://github.com/aoaoho/DEVONthink-Chinese ）\n    - 有任何问题可通过 telegram 群求助（ https://t.me/DEVONthink ）\n"
}
function Copy_Stop(){
  echo -e "\n************************************************************\n⚠️   未找到语言文件，请确保您未改变解压后的目录结构"
  echo -e "    操作已中止，请确认后重新运行脚本\n"
}

Fn_CheckPack
