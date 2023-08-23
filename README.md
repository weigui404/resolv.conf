# 关于
本模块是为了在`Termux`运行[go-cqhttp](https://github.com/Mrs4s/go-cqhttp)而不使用`proot`容器\
\
其他golang项目也同样适用
# 实现方法
通过`Magisk`的`overlayfs`在`/etc`文件夹新建`resolv.conf`文件\
从而不使用`proot`解决`Termux`运行`golang`程序时的DNS问题。
\
[Kernelsu](https://kernelsu.org/zh_CN/)也可以使用本模块
# 使用方法
  一、安装`Magisk`或`Kernelsu`\
  二、使用`Magisk`或`Kernelsu`刷入该模块\
  三、重启
