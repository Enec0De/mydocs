# 首页

## 第一阶段：基础操作篇

### 课题1：目录导航与基础信息查看

`cd` `ls` `pwd` `clear` `hostname` `date` `who` `w` `uptime`

- 场景：快速定位工作目录/查看系统基础信息
- 学习目标：掌握目录层级切换技巧，学会用不同参数（如`ls -l`）查看文件属性

### 课题2：文件基础操作

`touch` `mkdir` `rm` `rmdir` `mv` `cp` `cat` `head` `tail`

- 场景：创建项目目录结构/批量处理日志文件
- 拓展：学习通配符使用（`*.log`）和危险操作防范（`rm -i`）

## 第二阶段：系统管理篇

### 课题3：用户与权限管理

`useradd` `usermod` `groupadd` `chmod` `chown` `sudo` `id` `passwd` `umask`

- 场景：创建开发团队账户/设置共享目录权限
- 实践：模拟不同用户权限测试（rwx效果验证）

### 课题4：进程与服务管理

`ps` `top` `kill` `systemctl` `service` `nohup` `&`

- 场景：监控异常进程/配置开机自启动服务
- 进阶：学习信号机制（`kill -9` vs `kill -15`）

### 课题5：存储管理

`df` `du` `fdisk` `mount` `lsblk` `mkfs.ext4` `lvm`

- 场景：添加新硬盘并挂载/LVM动态扩容
- 实验：使用dd生成测试文件（`dd if=/dev/zero`）

## 第三阶段：高效运维篇

### 课题6：网络配置与诊断

`ifconfig` `ip` `ping` `traceroute` `netstat` `ss` `tcpdump`

- 场景：配置多网卡服务器/抓包分析HTTP请求
- 对比：传统命令（`ifconfig`）vs `iproute2`（`ip addr`）

### 课题7：软件包管理

`yum` `apt-get` `rpm` `tar` `unzip` `wget` `curl`

- 场景：搭建本地YUM源/编译安装软件
- 安全：验证rpm包签名（`--checksig`）

## 第四阶段：高级技巧篇

### 课题8：文本处理三剑客
`grep` `sed` `awk` `sort` `uniq` `cut` `wc`

- 场景：分析Nginx访问日志TOP10 IP
- 案例：使用`awk`生成统计报表

### 课题9：自动化任务

`crontab` `at` `bash` `sh` `read` `test`

- 场景：设置数据库定时备份/编写安装脚本
- 安全：注意`cron`的环境变量问题

### 课题10：系统调试与优化

`free` `vmstat` `iostat` `lsof` `strace` `ulimit`

- 场景：诊断内存泄漏问题/优化文件打开数限制
- 技巧：使用`watch`动态监控（`watch -n1 free`）

## 学习建议：

1. 每天攻克1个课题，配合`man`手册记录常用参数
1. 使用VirtualBox创建实验环境，推荐CentOS+Ubuntu双系统
1. 每个课题完成后尝试解决一个实际问题，例如：
   - 编写自动清理/tmp目录的脚本
   - 实现SSH免密登录多台服务器
   - 创建受限的SFTP-only账户

## 扩展工具推荐：

``` markdown title="markdown"
- 可视化学习：explainshell.com（解析命令参数）
- 交互练习：linuxjourney.com
- 命令速查：tldr.sh（简化版man手册）
- 安全工具：fail2ban（防暴力破解）
```

这种分阶段、场景化的学习方式既能保证学习深度，又能通过实际案例保持学习动力。每个课题建议投入4-6小时（包含实验时间），遇到复杂命令可分多次学习。
