# `pacman`

<!-- 简介  -->
个人总结的 `pacman` 基本用法。

## 操作环境

<!-- 环境、权限、工具  -->
- 操作系统：Arch Linux

*[Arch Linux]: 操作日期为 2025.4.11. 本地 Hyper-V 虚拟机.

## 使用命令

以安装 rsync 工具及其依赖为例.

#### 更新环境并检索相关包:

``` bash
$ sudo pacman -Syu
$ sudo pacman -Sc
$ sudo pacman -Ss rsync
$ sudo pacman -Si rsync
```  

#### 安装相关:

=== "`pacman -S`"

    ``` bash
    $ sudo pacman -S rsync
    $ sudo pacman -Qi rsync
    ```

=== "`pacman -U`"

    ``` bash
    $ sudo pacman -Swv rsync
    ...
    Cache Dirs: /var/cache/pacman/pkg/
    ...
    Packages (2) xxhash-0.8.3-1  rsync-3.4.1-2
    ...
    $ sudo pacman -U --asdeps /var/cache/pacman/pkg/xxhash-0.8.3-1-x86_64.pkg.tar.zst
    $ sudo pacman -U --asexplicit /var/cache/pacman/pkg/rsync-3.4.1-2-x86_64.pkg.tar.zst
    $ sudo pacman -Qi rsync
    ```

#### 卸载相关:

``` bash
$ sudo pacman -Qo rsync
$ sudo pacman -Rns rsync
$ sudo pacman -Qtdq
```

## 附录：相关链接


- 官方文档：[pacman(8)][pacman]

   [pacman]: https://man.archlinux.org/man/pacman.8
