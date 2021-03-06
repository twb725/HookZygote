@echo off
adb shell su -c 'mkdir /data/local/tmp/anti_debug'
adb shell su -c 'chmod 777 /data/local/tmp/anti_debug'
adb shell su -c 'rm -rf /data/local/tmp/anti_debug/*'
adb push inject /data/local/tmp/anti_debug/inject
adb push libHookUtil.so /data/local/tmp/anti_debug/libHookUtil.so
adb push libanti_debug.so /data/local/tmp/anti_debug/libanti_debug.so
adb push new_cmdline /data/local/tmp/anti_debug/new_cmdline
adb push new_maps /data/local/tmp/anti_debug/new_maps
adb push new_status /data/local/tmp/anti_debug/new_status
adb push new_tcp /data/local/tmp/anti_debug/new_tcp
adb push new_wchan /data/local/tmp/anti_debug/new_wchan
adb shell su -c 'chmod 777 /data/local/tmp/anti_debug/inject'
adb shell su -c './data/local/tmp/anti_debug/inject zygote /data/local/tmp/anti_debug/libanti_debug.so 1'
pause