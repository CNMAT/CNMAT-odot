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
			10.0, 
			10.0
		], 
		"openinpresentation": 1, 
		"bgcolor": [
			1.0, 
			1.0, 
			1.0, 
			0.0
		], 
		"enablehscroll": 1, 
		"description": "", 
		"tags": "", 
		"enablevscroll": 1, 
		"appversion": {
			"major": 6, 
			"architecture": "x86", 
			"minor": 1, 
			"revision": 7
		}, 
		"boxes": [
			{
				"box": {
					"fontname": "Arial", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "o.display", 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-1", 
					"patching_rect": [
						690.0, 
						580.0, 
						150.0, 
						34.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.prepend /connector/white", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-28", 
					"patching_rect": [
						150.0, 
						660.0, 
						155.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /left /right", 
					"numinlets": 3, 
					"numoutlets": 3, 
					"outlettype": [
						"", 
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-27", 
					"patching_rect": [
						170.0, 
						140.0, 
						101.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"contdata": 1, 
					"slidercolor": [
						0.0, 
						0.494031, 
						1.0, 
						1.0
					], 
					"presentation_rect": [
						349.0, 
						10.0, 
						18.591858, 
						26.528873
					], 
					"bgcolor": [
						1.0, 
						1.0, 
						1.0, 
						0.0
					], 
					"ghostbar": 100, 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "multislider", 
					"border_top": 0, 
					"border_left": 0, 
					"setminmax": [
						0.0, 
						1.0
					], 
					"border_right": 0, 
					"border_bottom": 0, 
					"presentation": 1, 
					"id": "obj-14", 
					"patching_rect": [
						506.64743, 
						220.0, 
						22.0, 
						32.0
					], 
					"parameter_enable": 0
				}
			}, 
			{
				"box": {
					"contdata": 1, 
					"slidercolor": [
						0.0, 
						0.494031, 
						1.0, 
						1.0
					], 
					"presentation_rect": [
						314.408142, 
						10.0, 
						18.591858, 
						26.528873
					], 
					"bgcolor": [
						1.0, 
						1.0, 
						1.0, 
						0.0
					], 
					"ghostbar": 100, 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "multislider", 
					"border_top": 0, 
					"border_left": 0, 
					"setminmax": [
						0.0, 
						1.0
					], 
					"border_right": 0, 
					"border_bottom": 0, 
					"presentation": 1, 
					"id": "obj-3", 
					"patching_rect": [
						467.64743, 
						220.0, 
						22.0, 
						32.0
					], 
					"parameter_enable": 0
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
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
							10.0, 
							10.0
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
							"revision": 7
						}, 
						"boxes": [
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /vertical = (/vertical * -1.)", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-3", 
									"patching_rect": [
										50.0, 
										190.0, 
										163.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.prepend /joystick", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-2", 
									"patching_rect": [
										70.0, 
										350.0, 
										102.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /left /right /forward /backward /horizontal /vertical /button", 
									"numinlets": 8, 
									"numoutlets": 8, 
									"outlettype": [
										"", 
										"", 
										"", 
										"", 
										"", 
										"", 
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-9", 
									"patching_rect": [
										350.0, 
										278.0, 
										349.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /backward = (/vertical == 1.)", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-14", 
									"patching_rect": [
										50.0, 
										302.0, 
										180.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /forward = (/vertical == -1.)", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-15", 
									"patching_rect": [
										50.0, 
										278.0, 
										173.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /right = (/horizontal == 1.)", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-8", 
									"patching_rect": [
										50.0, 
										254.0, 
										167.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /left = (/horizontal == -1.)", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-4", 
									"patching_rect": [
										50.0, 
										230.0, 
										164.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "inlet", 
									"id": "obj-12", 
									"patching_rect": [
										50.0, 
										40.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-13", 
									"patching_rect": [
										50.0, 
										450.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							99.0, 
							163.0, 
							839.0, 
							601.0
						], 
						"lines": [
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-12", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-3", 
										0
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
										"obj-2", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-15", 
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
										"obj-2", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-13", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-3", 
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
										"obj-4", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-8", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-8", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-15", 
										0
									]
								}
							}
						], 
						"statusbarvisible": 2, 
						"gridsnaponopen": 0, 
						"bglocked": 0
					}, 
					"saved_object_attributes": {
						"fontname": "Arial", 
						"description": "", 
						"tags": "", 
						"fontsize": 12.0, 
						"globalpatchername": "", 
						"fontface": 0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p build_bundle", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-45", 
					"patching_rect": [
						982.0, 
						610.0, 
						82.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /horizontal = /x\\, /vertical = /y", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-44", 
					"patching_rect": [
						982.0, 
						580.0, 
						181.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /none", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-43", 
					"patching_rect": [
						982.0, 
						550.0, 
						75.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.prepend /none", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-42", 
					"patching_rect": [
						850.0, 
						220.0, 
						98.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "loadbang", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"bang"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-40", 
					"patching_rect": [
						1138.0, 
						140.0, 
						60.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.gather /x /y", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-38", 
					"patching_rect": [
						850.0, 
						180.0, 
						120.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /x = /horizontal\\, /y = /vertical\\, /button = 1", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-36", 
					"patching_rect": [
						850.0, 
						150.0, 
						260.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /rect", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-21", 
					"patching_rect": [
						1138.0, 
						420.0, 
						67.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /location /button", 
					"numinlets": 2, 
					"linecount": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-26", 
					"patching_rect": [
						982.0, 
						420.0, 
						106.333336, 
						31.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "c.lcd.xydraw /none", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-25", 
					"patching_rect": [
						982.0, 
						520.0, 
						175.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "getattr presentation_rect", 
					"numinlets": 1, 
					"numoutlets": 3, 
					"outlettype": [
						"", 
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-32", 
					"patching_rect": [
						1138.0, 
						180.0, 
						141.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"presentation_rect": [
						42.0, 
						71.5, 
						150.0, 
						150.0
					], 
					"bgtransparent": 1, 
					"presentation": 1, 
					"numinlets": 1, 
					"local": 0, 
					"numoutlets": 4, 
					"outlettype": [
						"list", 
						"list", 
						"int", 
						""
					], 
					"maxclass": "lcd", 
					"border": 0, 
					"id": "obj-33", 
					"patching_rect": [
						982.0, 
						247.0, 
						150.0, 
						150.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.prepend /led", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-24", 
					"patching_rect": [
						75.5, 
						550.0, 
						87.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /left /right", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-23", 
					"patching_rect": [
						150.0, 
						630.0, 
						99.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /slider/horizontal", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-18", 
					"patching_rect": [
						438.751373, 
						550.0, 
						137.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "t l l", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-19", 
					"patching_rect": [
						400.0, 
						680.0, 
						32.5, 
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
					"id": "obj-10", 
					"patching_rect": [
						400.0, 
						650.0, 
						50.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
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
							10.0, 
							10.0
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
							"revision": 7
						}, 
						"boxes": [
							{
								"box": {
									"fontname": "Arial", 
									"text": "loadbang", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"bang"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-6", 
									"patching_rect": [
										30.0, 
										30.0, 
										60.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-5", 
									"patching_rect": [
										30.0, 
										670.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "/left : false,\n/right : false,\n/forward : false,\n/backward : false,\n/led/rgb : [0, 0, 0],\n/led/red : 0,\n/led/green : 0,\n/led/blue : 0,\n/led/onboard : 0,\n/tone : [0, 0],\n/acceleration/x : 0.,\n/acceleration/y : 0.,\n/acceleration/z : 0.,\n/temperature/celsius : 0,\n/joystick/horizontal : 0,\n/joystick/vertical : 0,\n/joystick/button : \"released\",\n/joystick/left : false,\n/joystick/right : false,\n/joystick/forward : false,\n/joystick/backward : false,\n/slider/horizontal : 0.,\n/photoresistor : 0.,\n/connector/white/right : 0.,\n/connector/white/left : 0.,\n/diamond/backward : \"released\",\n/diamond/left : \"released\",\n/diamond/forward : \"released\",\n/diamond/right : \"released\",\n/vendor : \"Arduino\",\n/productname : \"Esplora\"", 
									"numinlets": 2, 
									"linecount": 31, 
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
									"id": "obj-1", 
									"patching_rect": [
										30.0, 
										110.0, 
										320.0, 
										422.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							896.0, 
							44.0, 
							405.0, 
							759.0
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
										"obj-5", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-6", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-1", 
										0
									]
								}
							}
						], 
						"statusbarvisible": 2, 
						"gridsnaponopen": 0, 
						"bglocked": 0
					}, 
					"saved_object_attributes": {
						"fontname": "Arial", 
						"description": "", 
						"tags": "", 
						"fontsize": 12.0, 
						"globalpatchername": "", 
						"fontface": 0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p init", 
					"numinlets": 0, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-5", 
					"patching_rect": [
						514.352051, 
						690.0, 
						36.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"comment": "", 
					"numinlets": 0, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "inlet", 
					"id": "obj-61", 
					"patching_rect": [
						75.5, 
						20.0, 
						25.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
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
							10.0, 
							10.0
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
							"revision": 7
						}, 
						"boxes": [
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-3", 
									"patching_rect": [
										50.0, 
										210.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "scale -50. 110. 0. 1.", 
									"numinlets": 6, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-1", 
									"patching_rect": [
										50.0, 
										140.0, 
										115.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /celcius", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-55", 
									"patching_rect": [
										50.0, 
										100.0, 
										91.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "inlet", 
									"id": "obj-56", 
									"patching_rect": [
										50.0, 
										40.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							25.0, 
							69.0, 
							640.0, 
							480.0
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
										"obj-3", 
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
										"obj-1", 
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
										"obj-55", 
										0
									]
								}
							}
						], 
						"statusbarvisible": 2, 
						"gridsnaponopen": 0, 
						"bglocked": 0
					}, 
					"saved_object_attributes": {
						"fontname": "Arial", 
						"description": "", 
						"tags": "", 
						"fontsize": 12.0, 
						"globalpatchername": "", 
						"fontface": 0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p temp_in", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-57", 
					"patching_rect": [
						532.0, 
						140.0, 
						63.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
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
							10.0, 
							10.0
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
							"revision": 7
						}, 
						"boxes": [
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.prepend /temperature", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-3", 
									"patching_rect": [
										220.0, 
										290.0, 
										136.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-8", 
									"patching_rect": [
										210.0, 
										370.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /fahrenheit", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-7", 
									"patching_rect": [
										210.0, 
										200.0, 
										106.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /celcius = ((/fahrenheit - 32) * 0.5555555555)", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-6", 
									"patching_rect": [
										210.0, 
										240.0, 
										286.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "scale 0. 1. -60. 224.", 
									"numinlets": 6, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-2", 
									"patching_rect": [
										210.0, 
										160.0, 
										116.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "inlet", 
									"id": "obj-1", 
									"patching_rect": [
										210.0, 
										90.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							25.0, 
							69.0, 
							640.0, 
							480.0
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
										"obj-2", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-2", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-7", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-3", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-8", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-6", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-3", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-7", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-6", 
										0
									]
								}
							}
						], 
						"statusbarvisible": 2, 
						"gridsnaponopen": 0, 
						"bglocked": 0
					}, 
					"saved_object_attributes": {
						"fontname": "Arial", 
						"description": "", 
						"tags": "", 
						"fontsize": 12.0, 
						"globalpatchername": "", 
						"fontface": 0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p temp_out", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-52", 
					"patching_rect": [
						568.571106, 
						470.0, 
						71.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"numoutlets": 1, 
					"oncolor": [
						0.251911, 
						1.0, 
						0.270166, 
						1.0
					], 
					"presentation_rect": [
						117.0, 
						53.527222, 
						12.990123, 
						12.990123
					], 
					"bgcolor": [
						0.501961, 
						0.501961, 
						0.501961, 
						0.0
					], 
					"numinlets": 1, 
					"offcolor": [
						0.0, 
						0.183536, 
						0.028299, 
						1.0
					], 
					"outlettype": [
						"int"
					], 
					"maxclass": "led", 
					"parameter_enable": 0, 
					"presentation": 1, 
					"id": "obj-47", 
					"patching_rect": [
						277.0, 
						260.027222, 
						12.990123, 
						12.990123
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
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
							10.0, 
							10.0
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
							"revision": 7
						}, 
						"boxes": [
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /button/down", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-14", 
									"patching_rect": [
										123.0, 
										170.0, 
										120.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /button/down", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-13", 
									"patching_rect": [
										76.5, 
										140.0, 
										120.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /button/down", 
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
										30.0, 
										110.0, 
										120.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /button/down", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-11", 
									"patching_rect": [
										169.5, 
										200.0, 
										120.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-10", 
									"patching_rect": [
										169.5, 
										250.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-9", 
									"patching_rect": [
										123.0, 
										250.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-8", 
									"patching_rect": [
										76.5, 
										250.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-7", 
									"patching_rect": [
										30.0, 
										250.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /left /right /forward /backward", 
									"numinlets": 5, 
									"numoutlets": 5, 
									"outlettype": [
										"", 
										"", 
										"", 
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-32", 
									"patching_rect": [
										30.0, 
										80.0, 
										205.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "inlet", 
									"id": "obj-33", 
									"patching_rect": [
										30.0, 
										20.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							723.0, 
							65.0, 
							322.0, 
							320.0
						], 
						"lines": [
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-11", 
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
										"obj-12", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-7", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-13", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-8", 
										0
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
										"obj-9", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-32", 
										3
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
										"obj-32", 
										0
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
										"obj-32", 
										1
									], 
									"hidden": 0, 
									"destination": [
										"obj-13", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-32", 
										2
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
										"obj-33", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-32", 
										0
									]
								}
							}
						], 
						"statusbarvisible": 2, 
						"gridsnaponopen": 0, 
						"bglocked": 0
					}, 
					"saved_object_attributes": {
						"fontname": "Arial", 
						"description": "", 
						"tags": "", 
						"fontsize": 12.0, 
						"globalpatchername": "", 
						"fontface": 0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p parse_diamond", 
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
					"id": "obj-34", 
					"patching_rect": [
						760.0, 
						279.0, 
						103.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"numoutlets": 1, 
					"oncolor": [
						0.251911, 
						1.0, 
						0.270166, 
						1.0
					], 
					"presentation_rect": [
						191.0, 
						170.5, 
						20.0, 
						20.0
					], 
					"hint": "toggle audio on to hear tone or output loudness from mic", 
					"numinlets": 1, 
					"bgcolor": [
						0.501961, 
						0.501961, 
						0.501961, 
						0.0
					], 
					"offcolor": [
						0.0, 
						0.183536, 
						0.028299, 
						1.0
					], 
					"outlettype": [
						"int"
					], 
					"maxclass": "led", 
					"parameter_enable": 0, 
					"presentation": 1, 
					"id": "obj-17", 
					"patching_rect": [
						351.0, 
						377.0, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"bordercolor": [
						0.0, 
						0.0, 
						0.0, 
						0.0
					], 
					"contdata": 1, 
					"slidercolor": [
						0.61497, 
						0.696225, 
						0.760784, 
						1.0
					], 
					"presentation_rect": [
						418.607483, 
						58.29834, 
						9.180359, 
						19.863487
					], 
					"bgcolor": [
						1.0, 
						1.0, 
						1.0, 
						0.0
					], 
					"ghostbar": 100, 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "multislider", 
					"candicane2": [
						0.145098, 
						0.207843, 
						0.356863, 
						1.0
					], 
					"parameter_enable": 0, 
					"setminmax": [
						0.0, 
						1.0
					], 
					"presentation": 1, 
					"id": "obj-16", 
					"patching_rect": [
						578.607483, 
						264.79834, 
						9.180359, 
						19.863487
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
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
							10.0, 
							10.0
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
							"revision": 7
						}, 
						"boxes": [
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /photoresistor", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-2", 
									"patching_rect": [
										400.0, 
										260.0, 
										123.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-6", 
									"patching_rect": [
										355.0, 
										300.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-7", 
									"patching_rect": [
										280.0, 
										300.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "offcolor $1 $1 $1", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "message", 
									"fontsize": 12.0, 
									"id": "obj-4", 
									"patching_rect": [
										280.0, 
										230.0, 
										100.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "inlet", 
									"id": "obj-1", 
									"patching_rect": [
										280.0, 
										90.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							50.0, 
							94.0, 
							640.0, 
							480.0
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
										"obj-2", 
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
										"obj-2", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-6", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-4", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-7", 
										0
									]
								}
							}
						], 
						"statusbarvisible": 2, 
						"gridsnaponopen": 0, 
						"bglocked": 0
					}, 
					"saved_object_attributes": {
						"fontname": "Arial", 
						"description": "", 
						"tags": "", 
						"fontsize": 12.0, 
						"globalpatchername": "", 
						"fontface": 0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p photores", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-15", 
					"patching_rect": [
						670.0, 
						165.0, 
						67.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
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
							10.0, 
							10.0
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
							"revision": 7
						}, 
						"boxes": [
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-10", 
									"patching_rect": [
										286.5, 
										475.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /tone", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-4", 
									"patching_rect": [
										286.5, 
										440.0, 
										76.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "dac~ 1 2", 
									"numinlets": 2, 
									"numoutlets": 0, 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-2", 
									"patching_rect": [
										101.0, 
										440.0, 
										57.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "route bang", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-15", 
									"patching_rect": [
										28.5, 
										50.0, 
										211.5, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "t l l", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-9", 
									"patching_rect": [
										221.0, 
										80.0, 
										32.5, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "unpack 0. 0.", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"float", 
										"float"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-8", 
									"patching_rect": [
										261.0, 
										210.0, 
										76.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "gate 2", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-7", 
									"patching_rect": [
										234.5, 
										180.0, 
										45.5, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "zl.len", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-5", 
									"patching_rect": [
										234.5, 
										120.0, 
										39.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "0", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "message", 
									"fontsize": 12.0, 
									"id": "obj-6", 
									"patching_rect": [
										21.0, 
										290.0, 
										32.5, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "delay", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										"bang"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-3", 
									"patching_rect": [
										305.0, 
										260.0, 
										39.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "inlet", 
									"id": "obj-1", 
									"patching_rect": [
										28.5, 
										10.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "*~ 0.2", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										"signal"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-44", 
									"patching_rect": [
										101.0, 
										395.0, 
										42.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "rect~ 0", 
									"numinlets": 3, 
									"numoutlets": 1, 
									"outlettype": [
										"signal"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-42", 
									"patching_rect": [
										60.0, 
										350.0, 
										48.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-30", 
									"patching_rect": [
										60.0, 
										395.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							25.0, 
							69.0, 
							700.0, 
							564.0
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
										"obj-15", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-15", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-6", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-15", 
										1
									], 
									"hidden": 0, 
									"destination": [
										"obj-9", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-3", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-6", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-4", 
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
										"obj-42", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-30", 
										0
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
										"obj-44", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-44", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-2", 
										1
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-44", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-2", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-5", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-7", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-6", 
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
										"obj-6", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-42", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-7", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-42", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-7", 
										1
									], 
									"hidden": 0, 
									"destination": [
										"obj-8", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-8", 
										1
									], 
									"hidden": 0, 
									"destination": [
										"obj-3", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-8", 
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
										"obj-8", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-42", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-9", 
										1
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
										"obj-9", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-7", 
										1
									]
								}
							}
						], 
						"statusbarvisible": 2, 
						"gridsnaponopen": 0, 
						"bglocked": 0
					}, 
					"saved_object_attributes": {
						"fontname": "Arial", 
						"description": "", 
						"tags": "", 
						"fontsize": 12.0, 
						"globalpatchername": "", 
						"fontface": 0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p tone", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"signal", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-31", 
					"patching_rect": [
						306.082947, 
						150.0, 
						44.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"bordercolor": [
						0.2, 
						0.2, 
						0.2, 
						0.0
					], 
					"presentation_rect": [
						146.082947, 
						49.266968, 
						39.907841, 
						39.907841
					], 
					"numinlets": 2, 
					"calccount": 64, 
					"numoutlets": 0, 
					"bgcolor": [
						0.529412, 
						0.529412, 
						0.529412, 
						0.0
					], 
					"maxclass": "scope~", 
					"gridcolor": [
						0.329412, 
						0.329412, 
						0.329412, 
						0.0
					], 
					"bufsize": 64, 
					"presentation": 1, 
					"id": "obj-29", 
					"patching_rect": [
						306.082947, 
						255.766968, 
						39.907841, 
						39.907841
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
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
							10.0, 
							10.0
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
							"revision": 7
						}, 
						"boxes": [
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-7", 
									"patching_rect": [
										330.0, 
										300.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "select 3 $1", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "message", 
									"fontsize": 12.0, 
									"id": "obj-6", 
									"patching_rect": [
										480.0, 
										230.0, 
										69.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "select 2 $1", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "message", 
									"fontsize": 12.0, 
									"id": "obj-5", 
									"patching_rect": [
										400.0, 
										230.0, 
										69.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "select 1 $1", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "message", 
									"fontsize": 12.0, 
									"id": "obj-4", 
									"patching_rect": [
										320.0, 
										230.0, 
										69.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /xyz /x /y /z", 
									"numinlets": 5, 
									"numoutlets": 5, 
									"outlettype": [
										"", 
										"", 
										"", 
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-2", 
									"patching_rect": [
										290.0, 
										170.0, 
										111.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "inlet", 
									"id": "obj-1", 
									"patching_rect": [
										280.0, 
										90.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							50.0, 
							94.0, 
							640.0, 
							480.0
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
										"obj-2", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-2", 
										1
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
										"obj-2", 
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
										"obj-2", 
										3
									], 
									"hidden": 0, 
									"destination": [
										"obj-6", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-4", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-7", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-5", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-7", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-6", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-7", 
										0
									]
								}
							}
						], 
						"statusbarvisible": 2, 
						"gridsnaponopen": 0, 
						"bglocked": 0
					}, 
					"saved_object_attributes": {
						"fontname": "Arial", 
						"description": "", 
						"tags": "", 
						"fontsize": 12.0, 
						"globalpatchername": "", 
						"fontface": 0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p accel_in", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-20", 
					"patching_rect": [
						430.64743, 
						140.0, 
						65.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
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
							10.0, 
							10.0
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
							"revision": 7
						}, 
						"boxes": [
							{
								"box": {
									"fontname": "Arial", 
									"text": "route int float", 
									"numinlets": 3, 
									"numoutlets": 3, 
									"outlettype": [
										"", 
										"", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-5", 
									"patching_rect": [
										42.0, 
										80.0, 
										228.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /rgb", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-4", 
									"patching_rect": [
										360.0, 
										280.0, 
										70.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-3", 
									"patching_rect": [
										360.0, 
										398.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-1", 
									"patching_rect": [
										251.0, 
										398.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-2", 
									"patching_rect": [
										146.5, 
										398.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "vexpr $f1/255.", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-54", 
									"patching_rect": [
										22.0, 
										280.0, 
										87.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "pak 0 0 0", 
									"numinlets": 3, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-48", 
									"patching_rect": [
										289.799988, 
										170.0, 
										96.600021, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /rgb /red /green /blue /onboard", 
									"numinlets": 6, 
									"numoutlets": 6, 
									"outlettype": [
										"", 
										"", 
										"", 
										"", 
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-47", 
									"patching_rect": [
										251.0, 
										130.0, 
										213.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "offcolor $1 $2 $3", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "message", 
									"fontsize": 12.0, 
									"id": "obj-46", 
									"patching_rect": [
										22.0, 
										320.0, 
										100.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "inlet", 
									"id": "obj-81", 
									"patching_rect": [
										42.0, 
										25.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-82", 
									"patching_rect": [
										22.0, 
										398.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							192.0, 
							83.0, 
							505.0, 
							471.0
						], 
						"lines": [
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-4", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-3", 
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
										"obj-82", 
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
										"obj-1", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-47", 
										4
									], 
									"hidden": 0, 
									"destination": [
										"obj-2", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-47", 
										3
									], 
									"hidden": 0, 
									"destination": [
										"obj-48", 
										2
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-47", 
										2
									], 
									"hidden": 0, 
									"destination": [
										"obj-48", 
										1
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
										"obj-48", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-1", 
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
										"obj-4", 
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
										"obj-54", 
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
										"obj-2", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-5", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-2", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-5", 
										2
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
										"obj-54", 
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
										"obj-81", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-5", 
										0
									]
								}
							}
						], 
						"statusbarvisible": 2, 
						"gridsnaponopen": 0, 
						"bglocked": 0
					}, 
					"saved_object_attributes": {
						"fontname": "Arial", 
						"description": "", 
						"tags": "", 
						"fontsize": 12.0, 
						"globalpatchername": "", 
						"fontface": 0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p led_in", 
					"numinlets": 1, 
					"numoutlets": 4, 
					"outlettype": [
						"", 
						"", 
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-83", 
					"patching_rect": [
						100.0, 
						140.0, 
						53.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
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
							10.0, 
							10.0
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
							"revision": 7
						}, 
						"boxes": [
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-3", 
									"patching_rect": [
										50.0, 
										300.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /microphone/loudness", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-2", 
									"patching_rect": [
										120.0, 
										260.0, 
										168.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										"int"
									], 
									"maxclass": "inlet", 
									"id": "obj-1", 
									"patching_rect": [
										130.0, 
										40.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "peakamp~ 100", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										"float"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-33", 
									"patching_rect": [
										80.0, 
										220.0, 
										90.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "*~ 0.7", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										"signal"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-31", 
									"patching_rect": [
										80.0, 
										150.0, 
										42.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "adc~ 1 2", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"signal", 
										"signal"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-30", 
									"patching_rect": [
										64.0, 
										100.0, 
										57.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-77", 
									"patching_rect": [
										80.0, 
										300.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							50.0, 
							94.0, 
							640.0, 
							480.0
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
										"obj-30", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-2", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-77", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-30", 
										1
									], 
									"hidden": 0, 
									"destination": [
										"obj-31", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-30", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-31", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-31", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-33", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-33", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-2", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-33", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-3", 
										0
									]
								}
							}
						], 
						"statusbarvisible": 2, 
						"gridsnaponopen": 0, 
						"bglocked": 0
					}, 
					"saved_object_attributes": {
						"fontname": "Arial", 
						"description": "", 
						"tags": "", 
						"fontsize": 12.0, 
						"globalpatchername": "", 
						"fontface": 0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p mic", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"float", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-78", 
					"patching_rect": [
						351.0, 
						510.0, 
						39.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"numoutlets": 1, 
					"oncolor": [
						1.0, 
						0.0, 
						0.0, 
						0.0
					], 
					"presentation_rect": [
						395.887878, 
						57.527222, 
						19.863487, 
						19.863487
					], 
					"bgcolor": [
						0.501961, 
						0.501961, 
						0.501961, 
						0.0
					], 
					"numinlets": 1, 
					"offcolor": [
						0.7087, 
						0.7087, 
						0.7087, 
						1.0
					], 
					"outlettype": [
						"int"
					], 
					"maxclass": "led", 
					"parameter_enable": 0, 
					"presentation": 1, 
					"id": "obj-62", 
					"patching_rect": [
						555.887878, 
						264.027222, 
						19.863487, 
						19.863487
					]
				}
			}, 
			{
				"box": {
					"contdata": 1, 
					"slidercolor": [
						1.0, 
						1.0, 
						1.0, 
						1.0
					], 
					"presentation_rect": [
						214.845276, 
						200.480438, 
						139.604324, 
						26.528873
					], 
					"orientation": 0, 
					"bgcolor": [
						1.0, 
						1.0, 
						1.0, 
						0.0
					], 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "multislider", 
					"parameter_enable": 0, 
					"setminmax": [
						0.0, 
						1.0
					], 
					"presentation": 1, 
					"id": "obj-58", 
					"patching_rect": [
						374.845276, 
						406.980438, 
						139.604324, 
						26.528873
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /led /connector/white /joystick /acceleration /diamond /microphone/loudness /slider/horizontal /temperature /tone /photoresistor", 
					"numinlets": 11, 
					"linecount": 2, 
					"numoutlets": 11, 
					"outlettype": [
						"", 
						"", 
						"", 
						"", 
						"", 
						"", 
						"", 
						"", 
						"", 
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-13", 
					"patching_rect": [
						75.5, 
						70.0, 
						546.0, 
						33.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
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
							10.0, 
							10.0
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
							"revision": 7
						}, 
						"boxes": [
							{
								"box": {
									"fontname": "Arial", 
									"text": "c.esplora.buttonhelper /right/button/down", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-9", 
									"patching_rect": [
										150.0, 
										60.0, 
										228.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "c.esplora.buttonhelper /left/button/down", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-8", 
									"patching_rect": [
										110.0, 
										87.0, 
										221.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "c.esplora.buttonhelper /forward/button/down", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-7", 
									"patching_rect": [
										70.0, 
										114.0, 
										245.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "t l l", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-2", 
									"patching_rect": [
										150.0, 
										320.0, 
										32.5, 
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
									"id": "obj-1", 
									"patching_rect": [
										150.0, 
										290.0, 
										50.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "c.esplora.buttonhelper /backward/button/down", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-70", 
									"patching_rect": [
										30.0, 
										141.0, 
										256.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.prepend /diamond", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-63", 
									"patching_rect": [
										150.0, 
										200.0, 
										117.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "inlet", 
									"id": "obj-32", 
									"patching_rect": [
										30.0, 
										10.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "inlet", 
									"id": "obj-34", 
									"patching_rect": [
										70.0, 
										10.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "inlet", 
									"id": "obj-36", 
									"patching_rect": [
										110.0, 
										10.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "inlet", 
									"id": "obj-37", 
									"patching_rect": [
										150.0, 
										10.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-38", 
									"patching_rect": [
										150.0, 
										410.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							102.0, 
							86.0, 
							618.0, 
							483.0
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
										"obj-2", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-2", 
										1
									], 
									"hidden": 0, 
									"destination": [
										"obj-1", 
										1
									], 
									"midpoints": [
										173.0, 
										345.0, 
										206.0, 
										345.0, 
										206.0, 
										290.0, 
										190.5, 
										290.0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-2", 
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
										"obj-32", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-70", 
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
										"obj-7", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-36", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-8", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-37", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-9", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-63", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-1", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-7", 
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
										"obj-70", 
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
										"obj-8", 
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
										"obj-9", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-63", 
										0
									]
								}
							}
						], 
						"statusbarvisible": 2, 
						"gridsnaponopen": 0, 
						"bglocked": 0
					}, 
					"outlettype": [
						""
					], 
					"color": [
						0.698039, 
						0.0, 
						0.016455, 
						1.0
					], 
					"text": "p diamond", 
					"numinlets": 4, 
					"numoutlets": 1, 
					"saved_object_attributes": {
						"fontname": "Arial", 
						"description": "", 
						"tags": "", 
						"fontsize": 12.0, 
						"globalpatchername": "", 
						"fontface": 0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-39", 
					"patching_rect": [
						690.0, 
						500.0, 
						67.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
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
							10.0, 
							10.0
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
							"revision": 7
						}, 
						"boxes": [
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
									"id": "obj-8", 
									"patching_rect": [
										50.0, 
										180.0, 
										89.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /x /y /z", 
									"numinlets": 3, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-5", 
									"patching_rect": [
										50.0, 
										220.0, 
										89.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.prepend /acceleration", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-4", 
									"patching_rect": [
										50.0, 
										250.0, 
										136.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-1", 
									"patching_rect": [
										50.0, 
										300.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "inlet", 
									"id": "obj-21", 
									"patching_rect": [
										50.0, 
										40.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							25.0, 
							69.0, 
							236.0, 
							371.0
						], 
						"lines": [
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-21", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-8", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-4", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-1", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-5", 
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
										"obj-8", 
										2
									], 
									"hidden": 0, 
									"destination": [
										"obj-5", 
										2
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-8", 
										1
									], 
									"hidden": 0, 
									"destination": [
										"obj-5", 
										1
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-8", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-5", 
										0
									]
								}
							}
						], 
						"statusbarvisible": 2, 
						"gridsnaponopen": 0, 
						"bglocked": 0
					}, 
					"saved_object_attributes": {
						"fontname": "Arial", 
						"description": "", 
						"tags": "", 
						"fontsize": 12.0, 
						"globalpatchername": "", 
						"fontface": 0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p accel_out", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-22", 
					"patching_rect": [
						455.0, 
						457.0, 
						72.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"bordercolor": [
						0.0, 
						0.0, 
						0.0, 
						0.0
					], 
					"contdata": 1, 
					"slidercolor": [
						0.203441, 
						0.501929, 
						0.761315, 
						1.0
					], 
					"presentation_rect": [
						270.64743, 
						133.5, 
						30.0, 
						20.0
					], 
					"ghostbar": 100, 
					"numinlets": 1, 
					"spacing": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "multislider", 
					"candicane2": [
						0.145098, 
						0.207843, 
						0.356863, 
						1.0
					], 
					"parameter_enable": 0, 
					"setminmax": [
						0.0, 
						1.0
					], 
					"presentation": 1, 
					"id": "obj-11", 
					"patching_rect": [
						430.64743, 
						340.0, 
						30.0, 
						20.0
					], 
					"size": 3
				}
			}, 
			{
				"box": {
					"bordercolor": [
						0.0, 
						0.0, 
						0.0, 
						0.0
					], 
					"contdata": 1, 
					"slidercolor": [
						0.203441, 
						0.501929, 
						0.761315, 
						1.0
					], 
					"presentation_rect": [
						269.64743, 
						170.5, 
						31.0, 
						16.945745
					], 
					"orientation": 0, 
					"ghostbar": 100, 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "multislider", 
					"candicane2": [
						0.145098, 
						0.207843, 
						0.356863, 
						1.0
					], 
					"parameter_enable": 0, 
					"setminmax": [
						0.0, 
						1.0
					], 
					"presentation": 1, 
					"id": "obj-6", 
					"patching_rect": [
						429.64743, 
						377.0, 
						31.0, 
						16.945745
					]
				}
			}, 
			{
				"box": {
					"numoutlets": 1, 
					"oncolor": [
						1.0, 
						0.0, 
						0.0, 
						0.0
					], 
					"presentation_rect": [
						372.068542, 
						204.600037, 
						18.283501, 
						18.283501
					], 
					"bgcolor": [
						0.501961, 
						0.501961, 
						0.501961, 
						0.0
					], 
					"numinlets": 1, 
					"offcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"outlettype": [
						"int"
					], 
					"maxclass": "led", 
					"parameter_enable": 0, 
					"presentation": 1, 
					"id": "obj-60", 
					"patching_rect": [
						532.068542, 
						411.100037, 
						18.283501, 
						18.283501
					]
				}
			}, 
			{
				"box": {
					"comment": "", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "outlet", 
					"id": "obj-49", 
					"patching_rect": [
						400.0, 
						750.0, 
						25.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"presentation_rect": [
						409.571106, 
						129.206818, 
						18.64883, 
						18.946117
					], 
					"name": "c.esplora.buttonui.maxpat", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "bpatcher", 
					"offset": [
						-1.783723, 
						-1.783723
					], 
					"presentation": 1, 
					"id": "obj-9", 
					"patching_rect": [
						568.571106, 
						334.706818, 
						18.64883, 
						18.946117
					]
				}
			}, 
			{
				"box": {
					"presentation_rect": [
						477.0, 
						129.206818, 
						18.64883, 
						18.946117
					], 
					"name": "c.esplora.buttonui.maxpat", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "bpatcher", 
					"offset": [
						-1.783723, 
						-1.783723
					], 
					"presentation": 1, 
					"id": "obj-8", 
					"patching_rect": [
						637.0, 
						334.706818, 
						18.64883, 
						18.946117
					]
				}
			}, 
			{
				"box": {
					"presentation_rect": [
						442.553406, 
						164.5, 
						18.64883, 
						18.946117
					], 
					"name": "c.esplora.buttonui.maxpat", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "bpatcher", 
					"offset": [
						-1.783723, 
						-1.783723
					], 
					"presentation": 1, 
					"id": "obj-7", 
					"patching_rect": [
						601.553406, 
						370.0, 
						18.64883, 
						18.946117
					]
				}
			}, 
			{
				"box": {
					"presentation_rect": [
						443.553406, 
						95.224518, 
						18.64883, 
						18.946117
					], 
					"name": "c.esplora.buttonui.maxpat", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "bpatcher", 
					"offset": [
						-1.783723, 
						-1.783723
					], 
					"presentation": 1, 
					"id": "obj-2", 
					"patching_rect": [
						601.553406, 
						300.724518, 
						18.64883, 
						18.946117
					]
				}
			}, 
			{
				"box": {
					"bordercolor": [
						0.0, 
						0.0, 
						0.0, 
						0.0
					], 
					"slidercolor": [
						0.287005, 
						0.673609, 
						0.866667, 
						1.0
					], 
					"presentation_rect": [
						170.0, 
						201.480438, 
						39.710369, 
						28.111486
					], 
					"bgcolor": [
						1.0, 
						1.0, 
						1.0, 
						0.0
					], 
					"numinlets": 1, 
					"setstyle": 5, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "multislider", 
					"parameter_enable": 0, 
					"setminmax": [
						0.0, 
						1.0
					], 
					"presentation": 1, 
					"id": "obj-35", 
					"patching_rect": [
						330.0, 
						407.980438, 
						39.710369, 
						28.111486
					]
				}
			}, 
			{
				"box": {
					"presentation_rect": [
						10.0, 
						3.5, 
						535.0, 
						247.0
					], 
					"data": [
						867966, 
						"", 
					], 
					"numinlets": 1, 
					"autofit": 1, 
					"numoutlets": 0, 
					"maxclass": "fpic", 
					"background": 1, 
					"embed": 1, 
					"presentation": 1, 
					"id": "obj-4", 
					"patching_rect": [
						170.0, 
						210.0, 
						535.0, 
						247.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			0.0, 
			44.0, 
			1440.0, 
			806.0
		], 
		"lines": [
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-10", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-19", 
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
						"obj-22", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-13", 
						9
					], 
					"hidden": 0, 
					"destination": [
						"obj-16", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-13", 
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
						"obj-13", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-24", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-13", 
						1
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
						"obj-13", 
						8
					], 
					"hidden": 0, 
					"destination": [
						"obj-31", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-13", 
						4
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
						"obj-13", 
						5
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
						"obj-13", 
						2
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
						"obj-13", 
						7
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
						"obj-13", 
						6
					], 
					"hidden": 0, 
					"destination": [
						"obj-58", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-13", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-83", 
						0
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
						"obj-23", 
						1
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-15", 
						1
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
						"obj-15", 
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
						"obj-16", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-15", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-17", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-78", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-18", 
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
						"obj-19", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-10", 
						1
					], 
					"midpoints": [
						423.0, 
						712.0, 
						450.963135, 
						712.0, 
						450.963135, 
						648.0, 
						440.5, 
						648.0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-19", 
						0
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
						"obj-2", 
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
						"obj-20", 
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
						"obj-21", 
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
						"obj-22", 
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
						"obj-24", 
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
						"obj-25", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-33", 
						0
					], 
					"midpoints": [
						1147.5, 
						548.0, 
						1221.5, 
						548.0, 
						1221.5, 
						237.0, 
						991.5, 
						237.0
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
						"obj-43", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-26", 
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
						"obj-27", 
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
						"obj-27", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-3", 
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
						"obj-10", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-3", 
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
						"obj-31", 
						1
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
						"obj-31", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-29", 
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
						"obj-21", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-32", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-33", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-33", 
						2
					], 
					"hidden": 0, 
					"destination": [
						"obj-26", 
						1
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-33", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-26", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-34", 
						2
					], 
					"hidden": 0, 
					"destination": [
						"obj-2", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-34", 
						3
					], 
					"hidden": 0, 
					"destination": [
						"obj-7", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-34", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-8", 
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
						"obj-9", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-36", 
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
						"obj-38", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-42", 
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
						"obj-1", 
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
						"obj-10", 
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
						"obj-32", 
						0
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
						"obj-25", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-43", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-44", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-44", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-45", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-45", 
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
						"obj-5", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-10", 
						1
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-52", 
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
						"obj-57", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-6", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-58", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-18", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-6", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-52", 
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
						"obj-13", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-7", 
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
						"obj-78", 
						1
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
						"obj-78", 
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
						"obj-8", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-39", 
						3
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-83", 
						3
					], 
					"hidden": 0, 
					"destination": [
						"obj-24", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-83", 
						1
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
						"obj-83", 
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
						"obj-9", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-39", 
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
				"bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/CNMAT-odot/patchers/io/esplora", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "c.esplora.buttonui.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/CNMAT-odot/patchers/io/esplora", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "c.esplora.buttonhelper.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/CNMAT-odot/patchers/io/esplora", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "c.lcd.xydraw.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/CNMAT-odot/patchers/io/esplora", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "c.lcd.circle.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/CNMAT-Production/campion/auditory_fiction_02/externals/CNMAT_legacy/odot_legacy", 
				"type": "JSON", 
				"patcherrelativepath": "../../../../CNMAT-Production/campion/auditory_fiction_02/externals/CNMAT_legacy/odot_legacy", 
				"name": "o.gather.maxpat", 
				"implicit": 1
			}, 
			{
				"type": "iLaX", 
				"name": "o.prepend.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.pack.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.expr.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.union.mxo"
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
				"name": "o.intersection.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.collect.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.difference.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.expr.codebox.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.select.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.display.mxo"
			}
		]
	}
}