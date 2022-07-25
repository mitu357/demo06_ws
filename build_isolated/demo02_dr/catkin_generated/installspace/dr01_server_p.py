#!/usr/bin/env python3

import rospy
from dynamic_reconfigure.server import Server
from demo02_dr.cfg import drConfig
""" 
    动态参数服务端
        1.导包
        2.初始化ros节点
        3.创建服务端对象
        4.回调函数解析参数
        5.spin()
 """

def cb(drConfig,level):
    rospy.loginfo("修改后的整形数据是：%d,%.2f,%s,%d,%d",drConfig.int_param,
                                                    drConfig.double_param,
                                                    drConfig.str_param,
                                                    drConfig.bool_param,
                                                    drConfig.list_param)
    return drConfig

if __name__ == '__main__':
    # 2.初始化ros节点
    rospy.init_node("dr_server_p")
    # 3.创建服务端对象
    # type类型, callback回调函数, namespace=""
    server = Server(drConfig,cb)
    # 4.回调函数解析参数
    # 5.spin()
    rospy.spin()