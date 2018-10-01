-- Build files have been written to: /home/jason/Project/PX4/Firmware/build/posix_sitl_default
[  8%] Built target df_driver_framework
[  8%] Built target uorb_headers  在msg中add_custom_target(uorb_headers DEPENDS ${uorb_headers})
[ 11%] Built target tinybson 在src/lib/parameters,bson是一种数据格式，tinybson用于生成和parse bson格式的数据
[ 11%] Built target perf  在src/lib/perf。Performance measuring tools.
[ 20%] Built target work_queue 
[ 71%] Built target uorb_msgs
[ 75%] Built target px4_layer
[ 78%] Built target px4_daemon
[ 80%] Built target parameters
[ 83%] Built target platforms__common
[ 86%] Built target drivers__device
[ 88%] Built target cdev
[ 88%] Built target DriverFramework__framework
[ 91%] Built target systemlib
[ 93%] Built target modules__uORB__uORB_tests
[ 98%] Built target modules__uORB
[100%] Built target px4


	target_link_libraries(px4
		PRIVATE
			${module_libraries}
			df_driver_framework
			${df_driver_libs}
			pthread m
	)
	target_link_libraries(px4 PRIVATE modules__uORB)
	
	configs中只有module：uORB_tests
	
	
