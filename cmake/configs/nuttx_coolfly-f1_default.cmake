
px4_nuttx_configure(HWCLASS m7 CONFIG nsh ROMFS y ROMFSROOT px4fmu_common )

set(config_uavcan_num_ifaces 2)

set(config_module_list
	#
	# Board support modules
	#
	drivers/barometer
	drivers/differential_pressure
	# drivers/distance_sensor
	drivers/magnetometer
	# drivers/telemetry
	drivers/it66021
	drivers/coolfly/cpu2
	drivers/coolfly/RFUart
	drivers/coolfly/bb
	
	drivers/batt_smbus
	# drivers/blinkm
	# drivers/camera_trigger
	drivers/gps
	# drivers/imu/bma180
	drivers/imu/bmi055
	# drivers/imu/bmi160
	drivers/imu/mpu6000
	# drivers/imu/mpu9250
	# drivers/irlock
	drivers/mkblctrl
	# drivers/oreoled
	#drivers/pwm_input
	# drivers/pwm_out_sim
	drivers/px4flow
	drivers/px4fmu
	#drivers/px4io
	#drivers/rc_input
	# drivers/rgbled
	drivers/rgbled_ncp5623c
	# drivers/rgbled_pwm # Enable to put the three leds into PWM RGB mode
	drivers/artosyn
	drivers/artosyn/adc
	drivers/artosyn/tone_alarm
	# drivers/tap_esc
	drivers/vmount
	modules/sensors

	#
	# System commands
	#
	systemcmds/config
	systemcmds/dumpfile
	systemcmds/esc_calib
	systemcmds/hardfault_log
	systemcmds/led_control
	systemcmds/mixer
	systemcmds/motor_ramp
	systemcmds/mtd
	systemcmds/nshterm
	systemcmds/param
	systemcmds/perf
	systemcmds/pwm
	systemcmds/reboot
	systemcmds/sd_bench
	systemcmds/top
	# systemcmds/topic_listener
	systemcmds/tune_control
	systemcmds/ver

	#
	# Testing
	#o
	# drivers/distance_sensor/sf0x/sf0x_teosts
	# ##drivers/test_ppmo
	# #lib/rc/rc_tests
	# modules/commander/commander_tests
	# lib/controllib/controllib_test
	# modules/mavlink/mavlink_tests
	# modules/uORB/uORB_tests
	# systemcmds/tests

	#
	# General system control
	#
	modules/commander
	modules/events
	modules/gpio_led
	modules/land_detector
	modules/load_mon
	modules/mavlink
	modules/navigator
	# modules/uavcan
	# modules/camera_feedback

	#
	# Estimation modules
	#
	modules/attitude_estimator_q
	modules/ekf2
	modules/landing_target_estimator
	modules/local_position_estimator
	modules/position_estimator_inav
	modules/wind_estimator

	#
	# Vehicle Control
	#
	modules/fw_att_control
	modules/fw_pos_control_l1
	# modules/gnd_att_control
	# modules/gnd_pos_control
	modules/mc_att_control
	modules/mc_pos_control
	modules/vtol_att_control

	#
	# Logging
	#
	modules/logger

	#
	# Library modules
	#
	modules/dataman


)
