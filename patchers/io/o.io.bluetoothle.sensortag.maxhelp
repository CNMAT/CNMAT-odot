{
	"patcher": {
		"fileversion": 1, 
		"imprint": 0, 
		"boxanimatetime": 200, 
		"devicewidth": 0.0, 
		"default_fontsize": 12.0, 
		"toolbarvisible": 1, 
		"default_fontname": "Arial", 
		"digest": "", 
		"gridsize": [
			8.0, 
			8.0
		], 
		"openinpresentation": 0, 
		"enablehscroll": 1, 
		"description": "", 
		"tags": "", 
		"enablevscroll": 1, 
		"appversion": {
			"major": 6, 
			"architecture": "x86", 
			"minor": 1, 
			"revision": 4
		}, 
		"boxes": [
			{
				"box": {
					"presentation_rect": [
						758.0, 
						671.0, 
						0.0, 
						0.0
					], 
					"numinlets": 1, 
					"setstyle": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "multislider", 
					"parameter_enable": 0, 
					"setminmax": [
						0.0, 
						10000.0
					], 
					"id": "obj-76", 
					"patching_rect": [
						755.0, 
						672.0, 
						49.0, 
						128.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "* 15.", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"float"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-75", 
					"patching_rect": [
						783.0, 
						408.0, 
						35.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "zl 4096 group 4096", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-73", 
					"patching_rect": [
						728.0, 
						496.0, 
						113.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "pack 0. 0. 0.", 
					"numinlets": 3, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-72", 
					"patching_rect": [
						728.0, 
						464.0, 
						76.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "split 100. 20000.", 
					"numinlets": 3, 
					"numoutlets": 2, 
					"outlettype": [
						"float", 
						"float"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-71", 
					"patching_rect": [
						728.0, 
						439.0, 
						99.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "dump", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 12.0, 
					"id": "obj-70", 
					"patching_rect": [
						728.0, 
						326.5, 
						41.0, 
						18.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "unpack 0. 0. 0.", 
					"numinlets": 1, 
					"numoutlets": 3, 
					"outlettype": [
						"float", 
						"float", 
						"float"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-68", 
					"patching_rect": [
						728.0, 
						384.0, 
						89.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"saved_object_attributes": {
						"embed": 0
					}, 
					"text": "coll", 
					"numinlets": 1, 
					"numoutlets": 4, 
					"outlettype": [
						"", 
						"", 
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-67", 
					"patching_rect": [
						728.0, 
						350.5, 
						59.5, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"bang"
					], 
					"maxclass": "button", 
					"id": "obj-66", 
					"patching_rect": [
						632.0, 
						688.0, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "t 1.", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"float"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-64", 
					"patching_rect": [
						562.0, 
						696.0, 
						27.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"numoutlets": 0, 
					"maxclass": "ezdac~", 
					"id": "obj-63", 
					"numinlets": 2, 
					"patching_rect": [
						328.0, 
						792.0, 
						45.0, 
						45.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "spectroscope~", 
					"id": "obj-62", 
					"patching_rect": [
						1128.0, 
						712.0, 
						300.0, 
						100.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"signal", 
						"int"
					], 
					"maxclass": "gain~", 
					"parameter_enable": 0, 
					"id": "obj-61", 
					"patching_rect": [
						448.0, 
						752.0, 
						52.0, 
						100.5
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "gate 1 0", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-60", 
					"patching_rect": [
						562.0, 
						752.0, 
						54.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"int"
					], 
					"maxclass": "toggle", 
					"parameter_enable": 0, 
					"id": "obj-59", 
					"patching_rect": [
						562.0, 
						624.0, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "metro 200", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"bang"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-57", 
					"patching_rect": [
						562.0, 
						664.0, 
						65.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "resonators~ 440. 1. 7. 800. 0.5 15.", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"signal", 
						"list"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-56", 
					"patching_rect": [
						562.0, 
						780.0, 
						194.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "t 0", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"int"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-55", 
					"patching_rect": [
						173.0, 
						712.0, 
						24.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "t 1", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"int"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-54", 
					"patching_rect": [
						128.0, 
						712.0, 
						24.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"int"
					], 
					"maxclass": "toggle", 
					"parameter_enable": 0, 
					"id": "obj-53", 
					"patching_rect": [
						128.0, 
						752.0, 
						104.0, 
						104.0
					]
				}
			}, 
			{
				"box": {
					"presentation_rect": [
						985.0, 
						672.0, 
						0.0, 
						0.0
					], 
					"numinlets": 1, 
					"setstyle": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "multislider", 
					"parameter_enable": 0, 
					"setminmax": [
						0.0, 
						10000.0
					], 
					"id": "obj-51", 
					"patching_rect": [
						984.5, 
						672.0, 
						128.0, 
						128.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 1, 
					"setstyle": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "multislider", 
					"parameter_enable": 0, 
					"setminmax": [
						0.0, 
						10000.0
					], 
					"id": "obj-50", 
					"patching_rect": [
						808.0, 
						672.0, 
						128.0, 
						128.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"presentation_rect": [
						985.0, 
						642.0, 
						0.0, 
						0.0
					], 
					"text": "o.route /accelerometer/full", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-49", 
					"patching_rect": [
						984.5, 
						640.0, 
						149.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /accelerometer/full", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-48", 
					"patching_rect": [
						808.0, 
						640.0, 
						149.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /1 /2", 
					"numinlets": 3, 
					"numoutlets": 3, 
					"outlettype": [
						"", 
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-47", 
					"patching_rect": [
						808.0, 
						608.0, 
						75.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /st /thresh", 
					"numinlets": 3, 
					"numoutlets": 3, 
					"outlettype": [
						"", 
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-46", 
					"patching_rect": [
						808.0, 
						584.0, 
						104.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"int", 
						"bang"
					], 
					"maxclass": "number", 
					"fontsize": 12.0, 
					"parameter_enable": 0, 
					"id": "obj-42", 
					"patching_rect": [
						160.0, 
						584.0, 
						50.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/thresh : \"$1\"", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "o.message", 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-40", 
					"patching_rect": [
						159.0, 
						608.0, 
						150.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.union", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-39", 
					"patching_rect": [
						128.0, 
						635.5, 
						50.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.if /st/1/accelerometer/max > /thresh && /st/2/accelerometer/max > /thresh", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-38", 
					"patching_rect": [
						128.0, 
						683.5, 
						409.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /st/1/accelerometer/max = max(/st/1/accelerometer/stream)\\, /st/2/accelerometer/max = max(/st/2/accelerometer/stream)", 
					"numinlets": 1, 
					"linecount": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-35", 
					"patching_rect": [
						128.0, 
						544.0, 
						510.0, 
						33.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.callpatch /st/2/accelerometer/full [zl stream 10] @as /st/2/accelerometer/stream", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-34", 
					"patching_rect": [
						128.0, 
						504.0, 
						441.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.callpatch /st/1/accelerometer/full [zl stream 10] @as /st/1/accelerometer/stream", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-32", 
					"patching_rect": [
						128.0, 
						464.0, 
						441.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.if bound (/33261813_7ACD_4C0F_81D9_D1BD40D80119/accelerometer/x)", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-14", 
					"patching_rect": [
						128.0, 
						192.0, 
						423.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.if bound (/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/accelerometer/x)", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-10", 
					"patching_rect": [
						128.0, 
						88.0, 
						425.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /st/1/accelerometer/x = /C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/accelerometer/x\\, /st/1/accelerometer/y = /C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/accelerometer/y\\, /st/1/accelerometer/z = /C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/accelerometer/z", 
					"numinlets": 1, 
					"linecount": 3, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-11", 
					"patching_rect": [
						128.0, 
						122.0, 
						529.0, 
						47.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /characteristic", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-5", 
					"patching_rect": [
						1192.0, 
						184.0, 
						125.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/peripheral/name : \"SensorTag\",\n/gyroscope/x : 0.839231,\n/gyroscope/y : 0.854917,\n/gyroscope/z : 0.960708,\n/irtemperature/object : 55513,\n/irtemperature/ambient : 34696,\n/accelerometer/x : 4,\n/accelerometer/y : -14,\n/accelerometer/z : -2,\n/humidity/temperature : 0.768663,\n/humidity/humidity : 2.13382,\n/magnetometer/x : 0.294118,\n/magnetometer/y : 0.498054,\n/magnetometer/z : 0.396078,\n/barometer/temperature : 0.580407,\n/barometer/pressure : 0.372549,\n/testservice/irtemp : \"passed\",\n/testservice/humidity : \"passed\",\n/testservice/magnetometer : \"passed\",\n/testservice/accelerometer : \"passed\",\n/testservice/barometer : \"passed\",\n/testservice/gyroscope : \"passed\",\n/testservice/allpassed : false", 
					"numinlets": 2, 
					"linecount": 23, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "o.message", 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-8", 
					"patching_rect": [
						1168.0, 
						288.0, 
						204.0, 
						315.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"bang"
					], 
					"maxclass": "button", 
					"id": "obj-36", 
					"patching_rect": [
						352.0, 
						40.0, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /st/2/accelerometer/full = pow(/st/2/accelerometer/x\\, 2.) + pow(/st/2/accelerometer/y\\, 2.) + pow(/st/2/accelerometer/z\\, 2.)", 
					"numinlets": 1, 
					"linecount": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-28", 
					"patching_rect": [
						128.0, 
						384.0, 
						524.0, 
						33.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /st/2/accelerometer/x = /33261813_7ACD_4C0F_81D9_D1BD40D80119/accelerometer/x\\, /st/2/accelerometer/y = /33261813_7ACD_4C0F_81D9_D1BD40D80119/accelerometer/y\\, /st/2/accelerometer/z = /33261813_7ACD_4C0F_81D9_D1BD40D80119/accelerometer/z", 
					"numinlets": 1, 
					"linecount": 3, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-27", 
					"patching_rect": [
						128.0, 
						232.0, 
						606.0, 
						47.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.select /st", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-25", 
					"patching_rect": [
						128.0, 
						424.0, 
						68.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /st/1/accelerometer/full = pow(/st/1/accelerometer/x\\, 2.) + pow(/st/1/accelerometer/y\\, 2.) + pow(/st/1/accelerometer/z\\, 2.)", 
					"numinlets": 1, 
					"linecount": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-23", 
					"patching_rect": [
						128.0, 
						344.0, 
						524.0, 
						33.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.io.bluetoothle.sensortag", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-1", 
					"patching_rect": [
						128.0, 
						40.0, 
						148.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"bang"
					], 
					"maxclass": "button", 
					"id": "obj-20", 
					"patching_rect": [
						1328.0, 
						176.0, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /characteristic", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-12", 
					"patching_rect": [
						968.0, 
						184.0, 
						125.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/peripheral/name : \"SensorTag\",\n/gyroscope/x : 0.866682,\n/gyroscope/y : 0.113725,\n/gyroscope/z : 0.534981,\n/magnetometer/x : 0.627466,\n/magnetometer/y : 0.949035,\n/magnetometer/z : 0.199207,\n/accelerometer/x : 2,\n/accelerometer/y : -16,\n/accelerometer/z : -1,\n/humidity/temperature : 1.01965,\n/humidity/humidity : 3.13797,\n/irtemperature/object : 35210,\n/irtemperature/ambient : 10280,\n/barometer/temperature : 0.337255,\n/barometer/pressure : 0.756878,\n/testservice/irtemp : \"passed\",\n/testservice/humidity : \"passed\",\n/testservice/magnetometer : \"passed\",\n/testservice/accelerometer : \"passed\",\n/testservice/barometer : \"passed\",\n/testservice/gyroscope : \"passed\",\n/testservice/allpassed : false", 
					"numinlets": 2, 
					"linecount": 23, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "o.message", 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-7", 
					"patching_rect": [
						944.0, 
						288.0, 
						204.0, 
						315.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /F348F23A_C19A_402A_924B_CFF4DD348BD8 /C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF /33261813_7ACD_4C0F_81D9_D1BD40D80119", 
					"numinlets": 4, 
					"linecount": 2, 
					"numoutlets": 4, 
					"outlettype": [
						"", 
						"", 
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-4", 
					"patching_rect": [
						768.0, 
						136.0, 
						582.0, 
						33.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			25.0, 
			69.0, 
			1461.0, 
			879.0
		], 
		"lines": [
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-1", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-10", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-1", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-36", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-1", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-4", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-10", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-11", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-10", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-14", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-11", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-14", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-12", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-7", 
						1
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-14", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-27", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-23", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-28", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-25", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-32", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-27", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-23", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-28", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-25", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-32", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-34", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-34", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-35", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-35", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-39", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-38", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-54", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-38", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-55", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-39", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-38", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-39", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-46", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-4", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-12", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-4", 
						3
					], 
					"hidden": 0, 
					"destination": [
						"obj-20", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-4", 
						2
					], 
					"hidden": 0, 
					"destination": [
						"obj-5", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-40", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-39", 
						1
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-42", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-40", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-46", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-47", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-46", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-76", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-47", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-48", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-47", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-49", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-48", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-50", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-49", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-51", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-5", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-8", 
						1
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-54", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-53", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-54", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-60", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-55", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-53", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-55", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-60", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-56", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-61", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-57", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-64", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-57", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-66", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-59", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-57", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-60", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-56", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-61", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-62", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-61", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-63", 
						1
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-61", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-63", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-64", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-60", 
						1
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-67", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-68", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-67", 
						3
					], 
					"hidden": 0, 
					"destination": [
						"obj-73", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-68", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-71", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-68", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-72", 
						1
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-68", 
						2
					], 
					"hidden": 0, 
					"destination": [
						"obj-75", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-70", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-67", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-71", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-72", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-72", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-73", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-73", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-56", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-75", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-72", 
						2
					]
				}
			}
		], 
		"statusbarvisible": 2, 
		"gridsnaponopen": 0, 
		"bglocked": 0, 
		"dependency_cache": [
			{
				"bootpath": "/Users/john/Development/CNMAT/CNMAT/CNMAT-odot/testing/io", 
				"type": "TEXT", 
				"patcherrelativepath": ".", 
				"name": "o.io.bluetoothle.sensortag.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/john/Development/CNMAT/CNMAT/CNMAT-odot/abstractions/programming", 
				"type": "JSON", 
				"patcherrelativepath": "../../abstractions/programming", 
				"name": "o.callpatch.maxpat", 
				"implicit": 1
			}, 
			{
				"type": "iLaX", 
				"name": "o.route.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.message.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.io.bluetoothle.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.select.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.expr.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.cond.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.union.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.prepend.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.if.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.atomize.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.collect.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.var.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "resonators~.mxo"
			}
		]
	}
}