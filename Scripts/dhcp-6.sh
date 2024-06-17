#!/bin/sh

#     Computer Network Course's Educoder excrises shell script. /计算机网络基础的头歌过关脚本。
#     Copyright (C) 2024  gaobobo

DownloadSite=${1:-Gitee}
readonly DownloadSite

LevelCode='dhcp-6'
readonly LevelCode

mkdir -p /tmp/${LevelCode}
mkdir -p /tmp/fifth

case $DownloadSite in
    Gitee)
        curl -o /tmp/${LevelCode}/PC1_startup.vpc https://gitee.com/coconut_floss/EduCoder_ComputerNet/raw/ExWeek/Resource/${LevelCode}/PC1_startup.vpc
        curl -o /tmp/${LevelCode}/PC2_startup.vpc https://gitee.com/coconut_floss/EduCoder_ComputerNet/raw/ExWeek/Resource/${LevelCode}/PC2_startup.vpc
        ;;
    Github)
        curl -o /tmp/${LevelCode}/PC1_startup.vpc https://raw.githubusercontent.com/gaobobo/EduCoder_ComputerNet/ExWeek/Resource/${LevelCode}/PC1_startup.vpc
        curl -o /tmp/${LevelCode}/PC2_startup.vpc https://raw.githubusercontent.com/gaobobo/EduCoder_ComputerNet/ExWeek/Resource/${LevelCode}/PC2_startup.vpc
        ;;
    *)
        echo "Unknown download site: $DownloadSite"
        echo "未知的下载站点：$DownloadSite"
        return 1
        ;;
esac

mv -f /tmp/${LevelCode}/PC1_startup.vpc /tmp/fifth/PC1_startup.vpc
mv -f /tmp/${LevelCode}/PC2_startup.vpc /tmp/fifth/PC2_startup.vpc

return 0