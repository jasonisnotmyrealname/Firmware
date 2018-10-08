[  0%] Built target uorb_headers   #就是msg的.h文件，声明struct sensor_baro_s这类数据结构
[  8%] Built target df_driver_framework  #可以搜索df_add_library(df_driver_framework，包括很多文件，主要是driver framework的一些底层文件，比如I2C/SPI等
[ 10%] Built target perf  #搜索add_library(perf，包括用于计算performance的一些定时器 
[ 13%] Built target tinybson  #在src/lib/parameters,bson是一种数据格式，tinybson用于生成和parse bson格式的数据
[ 20%] Built target work_queue #搜add_library(work_queue，只有在非nuttx条件下会用到它，包括很多c文件，主要是一些queue的调度
[ 71%] Built target uorb_msgs  #就是msg的.cpp文件,主要作用就是ORB_DEFINE，以及print_message
Scanning dependencies of target px4_layer  
[ 75%] Built target px4_layer #主要是xxx_impl和xxx_task文件
Scanning dependencies of target px4_daemon  
[ 78%] Built target px4_daemon #主要是server和client文件
[ 78%] Generating parameters.xml  #执行px_process_params.py
[ 78%] Generating px4_parameters.c, px4_parameters.h, px4_parameters_public.h  #定义px4_parameters_t结构体
Scanning dependencies of target parameters
[ 78%] Building CXX object src/lib/parameters/CMakeFiles/parameters.dir/parameters.cpp.o
[ 80%] Building C object src/lib/parameters/CMakeFiles/parameters.dir/px4_parameters.c.o
[ 80%] Linking CXX static library libparameters.a
[ 80%] Built target parameters  #主要是配置的一些参数文件，parameters.cpp比较麻烦：包括对参数的读写锁等。
Scanning dependencies of target platforms__common  #搜索px4_add_library(platforms__common，包括一些shutdown等函数
[ 83%] Built target platforms__common
Scanning dependencies of target drivers__device  
[ 86%] Built target drivers__device #搜索px4_add_library(drivers__device 包括CDev、ringbuffer、integrator（和gps/ins有关）等
Scanning dependencies of target cdev
[ 88%] Built target cdev
Scanning dependencies of target DriverFramework__framework  #就一个df_dummy.cpp，是空白的文件
[ 88%] Built target DriverFramework__framework
Scanning dependencies of target systemlib
[ 91%] Built target systemlib
Scanning dependencies of target modules__uORB__uORB_tests
Scanning dependencies of target modules__uORB
[ 91%] Building CXX object src/modules/uORB/uORB_tests/CMakeFiles/modules__uORB__uORB_tests.dir/uORB_tests_main.cpp.o
[ 91%] Building CXX object src/modules/uORB/uORB_tests/CMakeFiles/modules__uORB__uORB_tests.dir/uORBTest_UnitTest.cpp.o
[ 96%] Built target modules__uORB   #包括了组成uORB框架的所有文件
[ 98%] Linking CXX static library libmodules__uORB__uORB_tests.a
[ 98%] Built target modules__uORB__uORB_tests
Scanning dependencies of target px4
[ 98%] Building CXX object platforms/posix/CMakeFiles/px4.dir/apps.cpp.o
[ 98%] Linking CXX executable ../../bin/px4
[100%] Built target px4
