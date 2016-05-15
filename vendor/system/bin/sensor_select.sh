#!/system/bin/sh

# Now there may be two different sensor HAL, set ro.hardware.sensors to
# specific value for the hw_get_module to load the right *.so
    chown -h system:system /persist/PSensorThFar.txt
    chmod -h 600 /persist/PSensorThFar.txt
    chown -h system:system /persist/PRSensorData.txt
    chmod -h 600 /persist/PRSensorData.txt
    /system/bin/log -p e -t "SensorSelect" "Use sensors.leo"
    setprop ro.hardware.sensors leo
