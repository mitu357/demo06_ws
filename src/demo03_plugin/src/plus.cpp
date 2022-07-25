#include "pluginlib/class_list_macros.hpp"
#include "demo03_plugin/dbx_base.h"
#include "demo03_plugin/dbx_plugins.h"

//参数1子类 参数2父类
PLUGINLIB_EXPORT_CLASS(dbx_plugins_ns::SanBian,dbx_base_ns::Dbx_Base)
PLUGINLIB_EXPORT_CLASS(dbx_plugins_ns::SiBian,dbx_base_ns::Dbx_Base)