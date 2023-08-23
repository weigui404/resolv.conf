SKIPMOUNT=false
#是否安装模块后自动关闭，改为true，安装后不会自动勾选启用

PROPFILE=false
#是否使用common/system.prop文件

POSTFSDATA=false
#是否使用post-fs-data脚本执行文件

LATESTARTSERVICE=false
#是否在开机时候允许允许common/service.sh中脚本

##############################
# Replace list
##############################

# This is an example
REPLACE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"
##############################
REPLACE="
"
#添加您要精简的APP/文件夹目录
#例如:/system/priv-app/SystemUI

##############################
# Permissions
##############################
#释放文件，普通shell命令
on_install() {
  ui_print "- 正在释放文件"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}

set_permissions() {
  set_perm_recursive  $MODPATH  0  0  0755  0644
  
  #设置权限，基本不要去动
}
