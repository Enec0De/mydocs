# 附加清单

## 可能遗漏的命令：

### 基础命令：
`help`、`if`、`for`、`while`、`case`、`select`、`test`、`ansible`、`iptables`、`firewall-cmd`、`salt`、`sestatus`、`setenforce`、`ntpdate`、`rsync`、`nohup`、`sh`、`hostnamectl`、`db_load`、`diff`、`dmsetup`、`declare`

### 用户权限：
`chgrp`、`groupdel`、`chroot`、`chpasswd`、`whoami`、`last`

### 系统管理：
`parted`、`lvm`、`chkconfig`、`setup`、`arp`

## 补充方案建议：

1️⃣ 新增【Shell编程基础】课题
命令：`if`/`for`/`while`/`case`/`select`/`test`/`declare`
场景：编写自动化部署脚本
包含：流程控制语句 + 条件测试 + 变量声明

2️⃣ 新增【防火墙管理】课题
命令：`iptables`/`firewall-cmd`/`sestatus`/`setenforce`
场景：配置服务器访问策略/SELinux管理
实验：开放特定端口/设置SELinux宽容模式

3️⃣ 新增【配置同步与传输】课题
命令：`rsync`/`scp`/`ssh`/`nohup`
场景：跨服务器同步代码/后台运行任务
重点：ssh密钥对配置 + rsync增量同步

4️⃣ 新增【存储高级管理】课题
命令：`parted`/`lvm`/`chkconfig`/`arp`/`setup`
场景：企业级存储方案/旧系统服务管理
实验：LVM快照备份 + 传统sysv服务管理

5️⃣ 新增【系统审计与调试】课题
命令：`last`/`diff`/`dmsetup`/`db_load`
场景：追踪用户登录记录/文件变更比对
案例：分析/var/log/secure日志

6️⃣ 新增【集群管理工具】课题
命令：`ansible`/`salt`/`sh`/`hostnamectl`
场景：多服务器批量管理
基础：编写ansible playbook

## 现有方案分组优化建议：

▶ 课题3 用户权限管理 补充：
添加 `chgrp`/`groupdel`/`chroot`/`chpasswd`/`whoami`/`last`

▶ 课题6 网络管理 补充：
添加 `arp`/`setup`/`ntpdate`（时间同步）

▶ 课题9 自动化任务 补充：
添加 `sh`/`hostnamectl`（shell解释器切换）

▶ 课题10 系统调试 补充：
添加 `help`命令（内置帮助）

## 最终学习路径调整：

建议将总课题扩展至14个，按以下顺序学习：
1. 基础导航 → 2. 文件操作 → 3. 用户权限 → 4. Shell基础 
5. 进程服务 → 6. 存储基础 → 7. 存储高级 → 8. 网络配置 
9. 防火墙 → 10. 软件管理 → 11. 文本处理 → 12. 自动任务 
13. 集群管理 → 14. 系统调试
