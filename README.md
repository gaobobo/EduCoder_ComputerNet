# 该Branch仅供实验周使用。

```shell
ping -c 3 www.baidu.com
if [ $? -ne 0 ]; then
    clear
    echo "网络不通，无法安装。请稍后再试。"
    exit 1
fi
clear
# 使用Gitee站点镜像：
curl -o /tmp/start.sh https://gitee.com/coconut_floss/EduCoder_ComputerNet/raw/ExWeek/start.sh
chmod +x /tmp/start.sh
/tmp/start.sh {LevelCode} Gitee
```