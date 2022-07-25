#include "ros/ros.h"
#include "dynamic_reconfigure/server.h"
#include "demo02_dr/drConfig.h"
 /*  
    动态参数服务端: 参数被修改时直接打印
    实现流程:
        1.包含头文件
        2.初始化 ros 节点
        3.创建服务器对象
        4.回调函数解析修改后的参数
        5.spin()
*/
//解析动态参数
void cb(demo02_dr::drConfig &config, uint32_t level){
    ROS_INFO("修改后的整形数据是：%d,%.2f,%s,%d,%d",config.int_param,
                                                config.double_param,
                                                config.str_param.c_str(),
                                                config.bool_param,
                                                config.list_param);
}

int main(int argc, char *argv[])
{
    // 1.初始化 ros 节点
    setlocale(LC_ALL, "");
    ros::init(argc, argv,"dr_server");
    // 3.创建服务器对象
    dynamic_reconfigure::Server<demo02_dr::drConfig> server;
    // 4.回调函数解析修改后的参数
    // void setCallback(const boost::function<void (demo02_dr::drConfig &, uint32_t level)> &callback)
    server.setCallback(boost::bind(&cb,_1,_2));
    // 5.spin()
    ros::spin();
    return 0;
}
