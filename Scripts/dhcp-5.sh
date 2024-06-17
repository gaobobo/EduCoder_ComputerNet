#!/bin/sh

#     Computer Network Course's Educoder excrises shell script. /计算机网络基础的头歌过关脚本。
#     Copyright (C) 2024  gaobobo

DownloadSite=${1:-Gitee}
readonly DownloadSite

LevelCode='dhcp-5'
readonly LevelCode

mkdir -p /tmp/${LevelCode}

case $DownloadSite in
    Gitee)
        curl -o /tmp/${LevelCode}/R1_configs_i1_startup-config.cfg https://gitee.com/coconut_floss/EduCoder_ComputerNet/raw/ExWeek/Resource/${LevelCode}/R1_configs_i1_startup-config.cfg
        ;;
    Github)
        curl -o /tmp/${LevelCode}/R1_configs_i1_startup-config.cfg https://raw.githubusercontent.com/gaobobo/EduCoder_ComputerNet/ExWeek/Resource/${LevelCode}/R1_configs_i1_startup-config.cfg
        ;;
    *)
        echo "Unknown download site: $DownloadSite"
        echo "未知的下载站点：$DownloadSite"
        return 1
        ;;
esac

mv -f /tmp/${LevelCode}/R1_configs_i1_startup-config.cfg /tmp/fifth/R1_configs_i1_startup-config.cfg

return 0