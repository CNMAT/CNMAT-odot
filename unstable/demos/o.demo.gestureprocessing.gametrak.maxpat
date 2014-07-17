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
		"openinpresentation": 0, 
		"enablehscroll": 1, 
		"description": "", 
		"tags": "", 
		"enablevscroll": 1, 
		"appversion": {
			"major": 6, 
			"architecture": "x86", 
			"minor": 1, 
			"revision": 6
		}, 
		"boxes": [
			{
				"box": {
					"fontname": "Arial", 
					"presentation_rect": [
						1124.0, 
						7.0, 
						0.0, 
						0.0
					], 
					"text": "/left/raw/x : 604,\n/left/raw/y : 387,\n/left/raw/z : 4060,\n/right/raw/x : 4095,\n/right/raw/y : 1508,\n/right/raw/z : 4056", 
					"numinlets": 1, 
					"linecount": 6, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "o.compose", 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-20", 
					"patching_rect": [
						1124.0, 
						11.5, 
						339.0, 
						91.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": " /left/x = scale(/left/raw/x, 0., 4095., -1., 1.), /right/x = scale(/right/raw/x, 0., 4095., -1., 1.),\n/left/y = scale(/left/raw/y, 0., 4095., -1., 1.), /right/y = scale(/right/raw/y, 0., 4095., -1., 1.),\n/left/z = 1 - /left/raw/z / 4095. , /right/z = 1 - /right/raw/z / 4095.,", 
					"numinlets": 1, 
					"linecount": 3, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "o.expr.codebox", 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-10", 
					"patching_rect": [
						300.0, 
						164.0, 
						516.5, 
						60.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/left/pluck/upper/threshold : 0.05,\n/right/pluck/upper/threshold : 0.05,\n/left/pluck/lower/threshold : -0.05,\n/right/pluck/lower/threshold : -0.05,\n/left/clockwise/delta/orientation/threshold : -0.001,\n/right/clockwise/delta/orientation/threshold : -0.001,\n/left/anticlockwise/delta/orientation/threshold : 0.001,\n/right/anticlockwise/delta/orientation/threshold : 0.001", 
					"numinlets": 1, 
					"linecount": 8, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "o.compose", 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-9", 
					"patching_rect": [
						871.0, 
						250.0, 
						339.0, 
						118.0
					]
				}
			}, 
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
					"id": "obj-7", 
					"patching_rect": [
						300.0, 
						946.0, 
						150.0, 
						34.0
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
					"id": "obj-4", 
					"patching_rect": [
						864.0, 
						222.0, 
						60.0, 
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
					"id": "obj-2", 
					"patching_rect": [
						300.0, 
						362.0, 
						50.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.prepend /right", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-61", 
					"patching_rect": [
						880.0, 
						870.0, 
						95.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"name": "o.demo.gestureprocessing.gametrak.fuse.novelty.feature.maxpat", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "bpatcher", 
					"offset": [
						-46.0, 
						-57.0
					], 
					"border": 1, 
					"id": "obj-56", 
					"patching_rect": [
						880.0, 
						500.0, 
						566.5, 
						360.0
					]
				}
			}, 
			{
				"box": {
					"name": "o.demo.gestureprocessing.gametrak.fuse.novelty.feature.maxpat", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "bpatcher", 
					"offset": [
						-46.0, 
						-57.0
					], 
					"border": 1, 
					"id": "obj-50", 
					"patching_rect": [
						313.5, 
						500.0, 
						566.5, 
						360.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.multisliders /pluck/upper/threshhold 0. 0.2 /pluck/lower/threshhold 0. -0.2", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-13", 
					"patching_rect": [
						1015.0, 
						204.0, 
						405.0, 
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
					"id": "obj-48", 
					"patching_rect": [
						1057.666748, 
						1035.0, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "select 1", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"bang", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-49", 
					"patching_rect": [
						1057.666748, 
						1005.0, 
						52.0, 
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
					"id": "obj-52", 
					"patching_rect": [
						991.333374, 
						1035.0, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "select 1", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"bang", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-53", 
					"patching_rect": [
						991.333374, 
						1005.0, 
						52.0, 
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
					"id": "obj-58", 
					"patching_rect": [
						925.0, 
						1035.0, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "select 1", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"bang", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-60", 
					"patching_rect": [
						925.0, 
						1005.0, 
						52.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /pluck /anticlockwise /clockwise", 
					"numinlets": 4, 
					"numoutlets": 4, 
					"outlettype": [
						"", 
						"", 
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-62", 
					"patching_rect": [
						925.0, 
						975.0, 
						218.0, 
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
					"id": "obj-44", 
					"patching_rect": [
						695.5, 
						940.0, 
						101.0, 
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
							"revision": 6
						}, 
						"boxes": [
							{
								"box": {
									"fontname": "Arial", 
									"text": "/left/raw/x : 1565,\n/left/raw/y : 2779,\n/left/raw/z : 4072,\n/right/raw/x : 2937,\n/right/raw/y : 555,\n/right/raw/z : 4070,\n/expr/neutralize/x : \"/left/x = scale(/left/raw/x, 0., 4095., -1., 1.); /right/x = scale(/right/raw/x, 0., 4095., -1., 1.)\",\n/expr/neutralize/y : \"/left/y = scale(/left/raw/y, 0., 4095., -1., 1.); /right/y = scale(/right/raw/y, 0., 4095., -1., 1.)\",\n/expr/neutralize/z : \"/left/z = 1 - /left/raw/z / 4095.; /right/z = 1 - /right/raw/z / 4095.\",\n/expr/calibrate/degrees/x : \"/degrees/left/x = 30. * /left/x; /degrees/right/x = 30. * /right/x\",\n/expr/calibrate/degrees/y : \"/degrees/left/y = 30. * /left/y; /degrees/right/y = 30. * /right/y\",\n/expr/calibrate/meters/z : \"/meters/left/z = 2. * /left/z ; /meters/right/z = 2. * /right/z\"", 
									"numinlets": 2, 
									"linecount": 12, 
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
									"id": "obj-52", 
									"patching_rect": [
										99.5, 
										135.0, 
										582.0, 
										167.0
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
											"revision": 6
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
													"id": "obj-21", 
													"patching_rect": [
														81.0, 
														100.0, 
														60.0, 
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
													"id": "obj-119", 
													"patching_rect": [
														50.0, 
														298.0, 
														50.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "/expr/neutralize/x : \"/left/x = scale(/left/raw/x, 0., 4095., -1., 1.); /right/x = scale(/right/raw/x, 0., 4095., -1., 1.)\",\n/expr/neutralize/y : \"/left/y = scale(/left/raw/y, 0., 4095., -1., 1.); /right/y = scale(/right/raw/y, 0., 4095., -1., 1.)\",\n/expr/neutralize/z : \"/left/z = 1 - /left/raw/z / 4095.; /right/z = 1 - /right/raw/z / 4095.\",\n/expr/calibrate/degrees/x : \"/degrees/left/x = 30. * /left/x; /degrees/right/x = 30. * /right/x\",\n/expr/calibrate/degrees/y : \"/degrees/left/y = 30. * /left/y; /degrees/right/y = 30. * /right/y\",\n/expr/calibrate/meters/z : \"/meters/left/z = 2. * /left/z ; /meters/right/z = 2. * /right/z\"", 
													"numinlets": 2, 
													"linecount": 6, 
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
													"id": "obj-118", 
													"patching_rect": [
														81.0, 
														140.0, 
														582.0, 
														87.0
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
													"id": "obj-47", 
													"patching_rect": [
														50.0, 
														378.0, 
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
											770.0, 
											521.0
										], 
										"lines": [
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-118", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-119", 
														1
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-119", 
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
														"obj-21", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-118", 
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
														"obj-119", 
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
									"text": "p o.io.hid \"Game-Trak V1.3\"", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-48", 
									"patching_rect": [
										50.0, 
										100.0, 
										159.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr eval(/expr/calibrate/degrees/x)\\, eval(/expr/calibrate/degrees/y)\\, eval(/expr/calibrate/meters/z)", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-53", 
									"patching_rect": [
										50.0, 
										348.0, 
										538.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "/left/raw/x : 1565,\n/left/raw/y : 2779,\n/left/raw/z : 4072,\n/right/raw/x : 2937,\n/right/raw/y : 560,\n/right/raw/z : 4070,\n/expr/neutralize/x : \"/left/x = scale(/left/raw/x, 0., 4095., -1., 1.); /right/x = scale(/right/raw/x, 0., 4095., -1., 1.)\",\n/expr/neutralize/y : \"/left/y = scale(/left/raw/y, 0., 4095., -1., 1.); /right/y = scale(/right/raw/y, 0., 4095., -1., 1.)\",\n/expr/neutralize/z : \"/left/z = 1 - /left/raw/z / 4095.; /right/z = 1 - /right/raw/z / 4095.\",\n/expr/calibrate/degrees/x : \"/degrees/left/x = 30. * /left/x; /degrees/right/x = 30. * /right/x\",\n/expr/calibrate/degrees/y : \"/degrees/left/y = 30. * /left/y; /degrees/right/y = 30. * /right/y\",\n/expr/calibrate/meters/z : \"/meters/left/z = 2. * /left/z ; /meters/right/z = 2. * /right/z\",\n/left/x : -0.235653,\n/right/x : 0.434432,\n/left/y : 0.357265,\n/right/y : -0.726496,\n/left/z : 0.00561661,\n/right/z : 0.00610501,\n/degrees/left/x : -7.0696,\n/degrees/right/x : 13.033,\n/degrees/left/y : 10.7179,\n/degrees/right/y : -21.7949,\n/meters/left/z : 0.0112332,\n/meters/right/z : 0.01221", 
									"numinlets": 2, 
									"linecount": 24, 
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
									"id": "obj-44", 
									"patching_rect": [
										99.5, 
										385.0, 
										582.0, 
										328.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr eval(/expr/neutralize/x)\\, eval(/expr/neutralize/y)\\, eval(/expr/neutralize/z)", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-31", 
									"patching_rect": [
										50.0, 
										320.0, 
										425.0, 
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
									"id": "obj-36", 
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
										"obj-31", 
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
										"obj-36", 
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
										"obj-48", 
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
										"obj-48", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-52", 
										1
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-53", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-44", 
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
					"text": "p calibration_functions", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-37", 
					"patching_rect": [
						1290.0, 
						180.0, 
						130.0, 
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
							"revision": 6
						}, 
						"boxes": [
							{
								"box": {
									"fontname": "Arial", 
									"text": "/left/raw/x : 604,\n/left/raw/y : 387,\n/left/raw/z : 4060,\n/right/raw/x : 4095,\n/right/raw/y : 1508,\n/right/raw/z : 4056,\n/left/x : -0.705006,\n/left/y : -0.810989,\n/left/z : 0.00854701,\n/right/x : 1.,\n/right/y : -0.263492,\n/right/z : 0.00952381,\n/lvals : [\"/degrees/left/x\", \"/degrees/left/y\", \"/meters/left/z\", \"/degrees/right/x\", \"/degrees/right/y\", \"/meters/right/z\"],\n/vals : [\"/left/x\", \"/left/y\", \"/left/z\", \"/right/x\", \"/right/y\", \"/right/z\"],\n/degrees : \"fn(lval, val){assign(lval, 30. * val);}\",\n/meters : \"fn(lval, val){assign(lval, 2. * val);}\",\n/fns : [\"/degrees\", \"/degrees\", \"/meters\", \"/degrees\", \"/degrees\", \"/meters\"],\n/degrees/left/x : -21.1502,\n/degrees/left/y : -24.3297,\n/meters/left/z : 0.25641,\n/degrees/right/x : 30.,\n/degrees/right/y : -7.90476,\n/meters/right/z : 0.285714", 
									"numinlets": 2, 
									"linecount": 23, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "o.message", 
									"fontsize": 12.0, 
									"varname": "display[3]", 
									"textcolor": [
										0.0, 
										0.0, 
										0.0, 
										1.0
									], 
									"id": "obj-21", 
									"patching_rect": [
										74.0, 
										570.0, 
										589.0, 
										315.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /lvals /vals /mins /maxs", 
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
									"id": "obj-36", 
									"patching_rect": [
										50.0, 
										250.0, 
										174.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "/left/raw/x : 1565,\n/left/raw/y : 2779,\n/left/raw/z : 4072,\n/right/raw/x : 2937,\n/right/raw/y : 559,\n/right/raw/z : 4070", 
									"numinlets": 2, 
									"linecount": 6, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "o.message", 
									"fontsize": 12.0, 
									"varname": "display[5]", 
									"textcolor": [
										0.0, 
										0.0, 
										0.0, 
										1.0
									], 
									"id": "obj-29", 
									"patching_rect": [
										74.0, 
										310.0, 
										150.0, 
										87.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "/lvals : [\"/left/x\", \"/left/y\", \"/left/z\", \"/right/x\", \"/right/y\", \"/right/z\"],\n/vals : [\"/left/raw/x\", \"/left/raw/y\", \"/left/raw/z\", \"/right/raw/x\", \"/right/raw/y\", \"/right/raw/z\"],\n/mins : [-1., -1., 1., -1., -1., 1.],\n/maxs : [1., 1., 0., 1., 1., 0.]", 
									"numinlets": 2, 
									"linecount": 4, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "o.message", 
									"fontsize": 12.0, 
									"varname": "display[4]", 
									"textcolor": [
										0.0, 
										0.0, 
										0.0, 
										1.0
									], 
									"id": "obj-26", 
									"patching_rect": [
										81.0, 
										100.0, 
										442.0, 
										60.0
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
									"id": "obj-13", 
									"patching_rect": [
										50.0, 
										180.0, 
										50.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr map(lambda(lval\\, val\\, min\\, max){assign(lval\\, scale(value(val)\\, 0.\\, 4095.\\, min\\, max))\\,}\\, /lvals\\, /vals\\, /mins\\, /maxs)", 
									"numinlets": 1, 
									"linecount": 2, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-4", 
									"patching_rect": [
										50.0, 
										210.0, 
										600.0, 
										33.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "/lvals : [\"/degrees/left/x\", \"/degrees/left/y\", \"/meters/left/z\", \"/degrees/right/x\", \"/degrees/right/y\", \"/meters/right/z\"],\n/vals : [\"/left/x\", \"/left/y\", \"/left/z\", \"/right/x\", \"/right/y\", \"/right/z\"],\n/degrees : \"fn(lval, val){assign(lval, 30. * val);}\",\n/meters : \"fn(lval, val){assign(lval, 2. * val);}\",\n/fns : [\"/degrees\", \"/degrees\", \"/meters\", \"/degrees\", \"/degrees\", \"/meters\"]", 
									"numinlets": 2, 
									"linecount": 6, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "o.message", 
									"fontsize": 12.0, 
									"varname": "display[6]", 
									"textcolor": [
										0.0, 
										0.0, 
										0.0, 
										1.0
									], 
									"id": "obj-79", 
									"patching_rect": [
										250.0, 
										407.0, 
										454.0, 
										87.0
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
									"id": "obj-81", 
									"patching_rect": [
										74.0, 
										500.0, 
										50.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr map(lambda(f\\, lval\\, val){apply(value(f)\\, lval\\, value(val))\\,}\\, /fns\\, /lvals\\, /vals)", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-78", 
									"patching_rect": [
										74.0, 
										530.0, 
										439.0, 
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
									"id": "obj-34", 
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
							926.0, 
							567.0
						], 
						"lines": [
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-13", 
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
										"obj-26", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-13", 
										1
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-29", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-81", 
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
										"obj-13", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-36", 
										4
									], 
									"hidden": 0, 
									"destination": [
										"obj-29", 
										1
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
										"obj-36", 
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
										"obj-21", 
										1
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-79", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-81", 
										1
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
										"obj-78", 
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
					"text": "p abstraction", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-35", 
					"patching_rect": [
						1290.0, 
						150.0, 
						79.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "t b l", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"bang", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-51", 
					"patching_rect": [
						300.0, 
						420.0, 
						32.5, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/left/raw/x : 604,\n/left/raw/y : 387,\n/left/raw/z : 4060,\n/right/raw/x : 4095,\n/right/raw/y : 1508,\n/right/raw/z : 4056", 
					"numinlets": 2, 
					"linecount": 6, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "o.message", 
					"fontsize": 12.0, 
					"varname": "display[7]", 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-40", 
					"patching_rect": [
						956.0, 
						27.0, 
						152.0, 
						87.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "Situate with respect to the performer \n(note OS/X specific HID numbers, use o.io.gametrak for PC)", 
					"numinlets": 1, 
					"linecount": 3, 
					"numoutlets": 0, 
					"bgcolor": [
						0.172549, 
						0.556863, 
						0.305882, 
						0.0
					], 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"bubbleside": 3, 
					"bubble": 1, 
					"id": "obj-28", 
					"patching_rect": [
						50.0, 
						80.0, 
						232.0, 
						51.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "Neutralize with respect to vendor numerical encoding \n(0-4095, 12-bit)", 
					"numinlets": 1, 
					"linecount": 3, 
					"numoutlets": 0, 
					"bgcolor": [
						0.172549, 
						0.556863, 
						0.305882, 
						0.0
					], 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"bubbleside": 3, 
					"bubble": 1, 
					"id": "obj-5", 
					"patching_rect": [
						100.0, 
						164.0, 
						180.0, 
						51.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /meters/left/z = 2. * /left/z \\, /meters/right/z = 2. * /right/z", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"varname": "calibrate", 
					"id": "obj-27", 
					"patching_rect": [
						300.0, 
						310.0, 
						340.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /degrees/right/x = 30. * /right/x \\, /degrees/right/y = 30. * /right/y", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-17", 
					"patching_rect": [
						300.0, 
						280.0, 
						381.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /degrees/left/x = 30. * /left/x \\, /degrees/left/y = 30. * /left/y", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-16", 
					"patching_rect": [
						300.0, 
						250.0, 
						352.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.prepend /left", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-39", 
					"patching_rect": [
						313.5, 
						870.0, 
						87.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.collect", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-33", 
					"patching_rect": [
						300.0, 
						900.0, 
						82.0, 
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
					"id": "obj-23", 
					"patching_rect": [
						828.166687, 
						1035.0, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "select 1", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"bang", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-25", 
					"patching_rect": [
						828.166687, 
						1005.0, 
						52.0, 
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
					"id": "obj-19", 
					"patching_rect": [
						761.833374, 
						1035.0, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "select 1", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"bang", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-22", 
					"patching_rect": [
						761.833374, 
						1005.0, 
						52.0, 
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
					"id": "obj-18", 
					"patching_rect": [
						695.5, 
						1035.0, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "select 1", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"bang", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-15", 
					"patching_rect": [
						695.5, 
						1005.0, 
						52.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /pluck /anticlockwise /clockwise", 
					"numinlets": 4, 
					"numoutlets": 4, 
					"outlettype": [
						"", 
						"", 
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-14", 
					"patching_rect": [
						695.5, 
						975.0, 
						218.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "Novelty Detection", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"bgcolor": [
						0.192157, 
						0.67451, 
						0.360784, 
						0.0
					], 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"bubbleside": 3, 
					"bubble": 1, 
					"id": "obj-75", 
					"patching_rect": [
						158.0, 
						668.0, 
						122.0, 
						24.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "Feature Detection", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"bgcolor": [
						0.192157, 
						0.67451, 
						0.360784, 
						0.0
					], 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"bubbleside": 3, 
					"bubble": 1, 
					"id": "obj-67", 
					"patching_rect": [
						158.0, 
						780.0, 
						124.0, 
						24.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "Gestural Input Device Signal flow demonstration from 2011 NIME paper", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-65", 
					"patching_rect": [
						0.0, 
						0.0, 
						394.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "Identify and Source", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"bgcolor": [
						0.192157, 
						0.67451, 
						0.360784, 
						0.0
					], 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"bubbleside": 3, 
					"bubble": 1, 
					"id": "obj-63", 
					"patching_rect": [
						130.0, 
						40.0, 
						150.0, 
						24.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "Select", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"bgcolor": [
						0.192157, 
						0.67451, 
						0.360784, 
						0.0
					], 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"bubbleside": 3, 
					"bubble": 1, 
					"id": "obj-59", 
					"patching_rect": [
						218.0, 
						460.0, 
						62.0, 
						24.0
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
					"id": "obj-57", 
					"patching_rect": [
						313.5, 
						460.0, 
						101.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "Fuse by conversion to polar coordinates", 
					"numinlets": 1, 
					"linecount": 2, 
					"numoutlets": 0, 
					"bgcolor": [
						0.192157, 
						0.67451, 
						0.360784, 
						0.0
					], 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"bubbleside": 3, 
					"bubble": 1, 
					"id": "obj-54", 
					"patching_rect": [
						130.0, 
						544.0, 
						150.0, 
						37.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pak /left/raw/x 0 /left/raw/y 0 /left/raw/z 0 /right/raw/x 0 /right/raw/y 0 /right/raw/z 0", 
					"numinlets": 6, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"varname": "situate", 
					"id": "obj-12", 
					"patching_rect": [
						300.0, 
						110.0, 
						450.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /15 /16 /17 /18 /19 /20", 
					"numinlets": 7, 
					"numoutlets": 7, 
					"outlettype": [
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
					"id": "obj-8", 
					"patching_rect": [
						300.0, 
						80.0, 
						536.200012, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.io.hid \"Game-Trak V1.3\"", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-1", 
					"patching_rect": [
						300.0, 
						40.0, 
						149.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "Calibrate to a \nfamiliar norm: degrees\nand meters", 
					"numinlets": 1, 
					"linecount": 3, 
					"numoutlets": 0, 
					"bgcolor": [
						0.172549, 
						0.556863, 
						0.305882, 
						0.0
					], 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"bubbleside": 3, 
					"bubble": 1, 
					"id": "obj-38", 
					"patching_rect": [
						125.0, 
						264.0, 
						155.0, 
						51.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "panel", 
					"background": 1, 
					"border": 1, 
					"id": "obj-69", 
					"patching_rect": [
						290.0, 
						240.0, 
						550.0, 
						100.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "panel", 
					"background": 1, 
					"border": 1, 
					"id": "obj-64", 
					"patching_rect": [
						290.0, 
						72.0, 
						550.0, 
						68.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "panel", 
					"background": 1, 
					"border": 1, 
					"id": "obj-71", 
					"patching_rect": [
						290.0, 
						450.0, 
						550.0, 
						40.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			0.0, 
			53.0, 
			1440.0, 
			1011.0
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
						"obj-8", 
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
						"obj-16", 
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
						"obj-10", 
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
						"obj-15", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-14", 
						1
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
						"obj-14", 
						2
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
						"obj-15", 
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
						"obj-16", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-17", 
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
						"obj-27", 
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
						"obj-51", 
						0
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
						"obj-10", 
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
						"obj-19", 
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
						"obj-23", 
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
						"obj-44", 
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
						"obj-7", 
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
						"obj-33", 
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
						"obj-9", 
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
						"obj-14", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-44", 
						1
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
						"obj-49", 
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
						"obj-50", 
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
						"obj-51", 
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
						"obj-51", 
						1
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
						"obj-53", 
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
						"obj-50", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-57", 
						1
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
						"obj-60", 
						0
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
						"obj-61", 
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
						"obj-62", 
						2
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
						"obj-62", 
						1
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
						"obj-62", 
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
						"obj-8", 
						5
					], 
					"hidden": 0, 
					"destination": [
						"obj-12", 
						5
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-8", 
						4
					], 
					"hidden": 0, 
					"destination": [
						"obj-12", 
						4
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-8", 
						3
					], 
					"hidden": 0, 
					"destination": [
						"obj-12", 
						3
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
						"obj-12", 
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
						"obj-12", 
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
						"obj-12", 
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
						"obj-2", 
						1
					]
				}
			}
		], 
		"statusbarvisible": 2, 
		"gridsnaponopen": 0, 
		"bglocked": 0, 
		"dependency_cache": [
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/io", 
				"type": "JSON", 
				"patcherrelativepath": "../../patchers/io", 
				"name": "o.io.hid.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core", 
				"type": "JSON", 
				"patcherrelativepath": "../../patchers/core", 
				"name": "o.out.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core", 
				"type": "JSON", 
				"patcherrelativepath": "../../patchers/core", 
				"name": "o.port.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/aspect", 
				"type": "JSON", 
				"patcherrelativepath": "../../patchers/aspect", 
				"name": "o.aspect.joinpoint.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core", 
				"type": "JSON", 
				"patcherrelativepath": "../../patchers/core", 
				"name": "o.in.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/unstable/gui", 
				"type": "JSON", 
				"patcherrelativepath": "../../patchers/unstable/gui", 
				"name": "o.multisliders.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/experimental/demos", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "o.demo.gestureprocessing.gametrak.fuse.novelty.feature.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/time", 
				"type": "JSON", 
				"patcherrelativepath": "../../patchers/time", 
				"name": "o.was.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core", 
				"type": "JSON", 
				"patcherrelativepath": "../../patchers/core", 
				"name": "o.righttoleft.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers", 
				"type": "JSON", 
				"patcherrelativepath": "../../patchers", 
				"name": "o.arguments.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core", 
				"type": "JSON", 
				"patcherrelativepath": "../../patchers/core", 
				"name": "o.init.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/unstable", 
				"type": "JSON", 
				"patcherrelativepath": "../../patchers/unstable", 
				"name": "o.callpatch.maxpat", 
				"implicit": 1
			}, 
			{
				"type": "iLaX", 
				"name": "o.collect.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.message.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.route.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.pack.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.if.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.union.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.select.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.context.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.var.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.pak.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.prepend.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.cond.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.expr.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.atomize.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.intersection.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.display.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.compose.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.expr.codebox.mxo"
			}
		]
	}
}