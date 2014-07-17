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
			15.0, 
			15.0
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
			"revision": 3
		}, 
		"boxes": [
			{
				"box": {
					"comment": "", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "outlet", 
					"id": "obj-9", 
					"patching_rect": [
						265.75, 
						532.0, 
						25.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.out @name deviceport", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-8", 
					"patching_rect": [
						265.75, 
						498.0, 
						144.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.in @name deviceport", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-7", 
					"patching_rect": [
						265.75, 
						50.0, 
						144.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.out @name main", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-6", 
					"patching_rect": [
						116.75, 
						498.0, 
						114.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.in @name main", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-3", 
					"patching_rect": [
						116.75, 
						50.0, 
						121.0, 
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
						"FullPacket"
					], 
					"maxclass": "inlet", 
					"id": "obj-2", 
					"patching_rect": [
						116.75, 
						13.0, 
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
					"id": "obj-5", 
					"patching_rect": [
						116.75, 
						532.0, 
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
						"FullPacket"
					], 
					"maxclass": "inlet", 
					"id": "obj-4", 
					"patching_rect": [
						265.75, 
						19.5, 
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
							15.0, 
							15.0
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
							"revision": 3
						}, 
						"boxes": [
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
											15.0, 
											15.0
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
											"revision": 3
										}, 
										"boxes": [
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.pack /note", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-38", 
													"patching_rect": [
														50.0, 
														235.0, 
														100.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.expr /part = value(/parts[[0]])", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-89", 
													"patching_rect": [
														50.0, 
														123.0, 
														202.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.expr apply(lambda(a){/velocity = round(a * 127.)\\,}\\, /part)\\, delete(/part)\\, delete(/parts)\\,", 
													"numinlets": 1, 
													"linecount": 2, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-90", 
													"patching_rect": [
														50.0, 
														148.5, 
														429.0, 
														33.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.expr /parts = getaddresses()", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-92", 
													"patching_rect": [
														50.0, 
														100.0, 
														289.0, 
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
														"FullPacket"
													], 
													"maxclass": "inlet", 
													"id": "obj-53", 
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
													"id": "obj-54", 
													"patching_rect": [
														50.0, 
														358.0, 
														25.0, 
														25.0
													]
												}
											}
										], 
										"default_fontface": 0, 
										"gridonopen": 0, 
										"rect": [
											669.0, 
											203.0, 
											640.0, 
											480.0
										], 
										"lines": [
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
														"obj-53", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-92", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-89", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-90", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-90", 
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
														"obj-92", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-89", 
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
									"text": "p calibrate note", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-55", 
									"patching_rect": [
										50.0, 
										482.688416, 
										117.0, 
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
											15.0, 
											15.0
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
											"revision": 3
										}, 
										"boxes": [
											{
												"box": {
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"bang"
													], 
													"maxclass": "button", 
													"id": "obj-42", 
													"patching_rect": [
														130.0, 
														104.169922, 
														20.0, 
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
													"id": "obj-37", 
													"patching_rect": [
														50.0, 
														104.169922, 
														100.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "/channel : 1", 
													"numinlets": 1, 
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
													"id": "obj-40", 
													"patching_rect": [
														50.0, 
														124.169922, 
														71.0, 
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
													"id": "obj-47", 
													"patching_rect": [
														50.0, 
														204.169922, 
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
														"obj-37", 
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
														"obj-40", 
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
														"obj-42", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-37", 
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
									"text": "p inject", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-48", 
									"patching_rect": [
										131.0, 
										517.688416, 
										62.0, 
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
										50.0, 
										549.518494, 
										100.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "if(bound(/1), /key = 48),\nif(bound(/2), /key = 49),\nif(bound(/3), /key = 50),\nif(bound(/4), /key = 51),\nif(bound(/5), /key = 52),\nif(bound(/6), /key = 53),\nif(bound(/7), /key = 54),\nif(bound(/8), /key = 55),\nif(bound(/9), /key = 56),\nif(bound(/10), /key = 57),\nif(bound(/11), /key = 58),\nif(bound(/12), /key = 59),\nif(bound(/13), /key = 60),\nif(bound(/14), /key = 61),\nif(bound(/15), /key = 62),\nif(bound(/16), /key = 63),\nif(bound(/17), /key = 64),\nif(bound(/18), /key = 65),\nif(bound(/19), /key = 66),\nif(bound(/20), /key = 67),\nif(bound(/21), /key = 68),\nif(bound(/22), /key = 69),\nif(bound(/23), /key = 70),\nif(bound(/24), /key = 71),\nif(bound(/25), /key = 72),\n", 
									"numinlets": 1, 
									"linecount": 25, 
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
									"id": "obj-2", 
									"patching_rect": [
										50.0, 
										89.192749, 
										154.0, 
										356.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /led", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-1", 
									"patching_rect": [
										50.0, 
										59.0, 
										100.0, 
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
										"FullPacket"
									], 
									"maxclass": "inlet", 
									"id": "obj-42", 
									"patching_rect": [
										50.0, 
										13.0, 
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
									"id": "obj-43", 
									"patching_rect": [
										50.0, 
										627.518494, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							138.0, 
							44.0, 
							228.0, 
							674.0
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
										"obj-43", 
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
										"obj-39", 
										1
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
										"obj-39", 
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
					"text": "p leds in", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-44", 
					"patching_rect": [
						116.75, 
						154.0, 
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
							15.0, 
							15.0
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
							"revision": 3
						}, 
						"boxes": [
							{
								"box": {
									"fontname": "Arial", 
									"text": "/use/info : \"load odotcnmat config file into qunexus editor, within editor click SEND TO PRESET C, then on device press SHIFT and shortly after PRES C\"", 
									"numinlets": 2, 
									"linecount": 4, 
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
									"id": "obj-2", 
									"patching_rect": [
										292.0, 
										125.0, 
										265.0, 
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
									"id": "obj-1", 
									"patching_rect": [
										108.0, 
										157.0, 
										100.0, 
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
											15.0, 
											15.0
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
											"revision": 3
										}, 
										"boxes": [
											{
												"box": {
													"fontname": "Arial", 
													"text": "clear", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "message", 
													"fontsize": 12.0, 
													"id": "obj-5", 
													"patching_rect": [
														308.0, 
														133.0, 
														50.0, 
														18.0
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
													"id": "obj-2", 
													"patching_rect": [
														308.0, 
														97.0, 
														100.0, 
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
															15.0, 
															15.0
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
															"revision": 3
														}, 
														"boxes": [
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "bang@timeout", 
																	"numinlets": 1, 
																	"numoutlets": 0, 
																	"maxclass": "comment", 
																	"frgb": 0.0, 
																	"fontsize": 12.0, 
																	"id": "obj-15", 
																	"patching_rect": [
																		454.5, 
																		581.0, 
																		150.0, 
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
																		429.5, 
																		576.0, 
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
																	"id": "obj-11", 
																	"patching_rect": [
																		105.0, 
																		600.0, 
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
																		"FullPacket"
																	], 
																	"maxclass": "inlet", 
																	"id": "obj-14", 
																	"patching_rect": [
																		229.0, 
																		41.0, 
																		25.0, 
																		25.0
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
																	"id": "obj-18", 
																	"patching_rect": [
																		229.0, 
																		88.0, 
																		38.0, 
																		20.0
																	]
																}
															}
														], 
														"default_fontface": 0, 
														"gridonopen": 0, 
														"rect": [
															269.0, 
															44.0, 
															1171.0, 
															731.0
														], 
														"lines": [
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-14", 
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
																		"obj-18", 
																		1
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
																		"obj-18", 
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
													"text": "p pacesetter", 
													"numinlets": 1, 
													"numoutlets": 2, 
													"outlettype": [
														"", 
														"bang"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-1", 
													"patching_rect": [
														86.0, 
														93.5, 
														86.0, 
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
															15.0, 
															15.0
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
															"revision": 3
														}, 
														"boxes": [
															{
																"box": {
																	"numinlets": 1, 
																	"numoutlets": 1, 
																	"outlettype": [
																		"bang"
																	], 
																	"maxclass": "button", 
																	"id": "obj-3", 
																	"patching_rect": [
																		50.0, 
																		68.0, 
																		20.0, 
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
																	"id": "obj-16", 
																	"patching_rect": [
																		50.0, 
																		100.0, 
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
																	"id": "obj-2", 
																	"patching_rect": [
																		564.0, 
																		408.0, 
																		25.0, 
																		25.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "assumed resting state", 
																	"numinlets": 1, 
																	"numoutlets": 0, 
																	"maxclass": "comment", 
																	"frgb": 0.0, 
																	"fontsize": 12.0, 
																	"id": "obj-1", 
																	"patching_rect": [
																		375.0, 
																		138.0, 
																		150.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "/25/pressure : 0.,\n/25/tilt : 0.,\n/25/key/pressed : false,\n/24/pressure : 0.,\n/24/tilt : 0.,\n/24/key/pressed : false,\n/23/pressure : 0.,\n/23/tilt : 0.,\n/23/key/pressed : false,\n/22/pressure : 0.,\n/22/tilt : 0.,\n/22/key/pressed : false,\n/21/pressure : 0.,\n/21/tilt : 0.,\n/21/key/pressed : false,\n/20/pressure : 0.,\n/20/tilt : 0.,\n/20/key/pressed : false,\n/19/pressure : 0.,\n/19/tilt : 0.,\n/19/key/pressed : false,\n/18/pressure : 0.,\n/18/tilt : 0.,\n/18/key/pressed : false,\n/17/pressure : 0.,\n/17/tilt : 0.,\n/17/key/pressed : false,\n/15/pressure : 0.,\n/15/tilt : 0.,\n/15/key/pressed : false,\n/16/pressure : 0.,\n/16/tilt : 0.,\n/16/key/pressed : false,\n/14/pressure : 0.,\n/14/tilt : 0.,\n/14/key/pressed : false,\n/13/pressure : 0.,\n/13/tilt : 0.,\n/13/key/pressed : false,\n/12/pressure : 0.,\n/12/tilt : 0.,\n/12/key/pressed : false,\n/11/pressure : 0.,\n/11/tilt : 0.,\n/11/key/pressed : false,\n/10/pressure : 0.,\n/10/tilt : 0.,\n/10/key/pressed : false,\n/9/pressure : 0.,\n/9/tilt : 0.,\n/9/key/pressed : false,\n/8/pressure : 0.,\n/8/y/position : 0.,\n/8/key/pressed : false,\n/7/pressure : 0.,\n/7/tilt : 0.,\n/7/key/pressed : false,\n/6/pressure : 0.,\n/6/tilt : 0.,\n/6/key/pressed : false,\n/5/pressure : 0.,\n/5/tilt : 0.,\n/5/key/pressed : false,\n/4/pressure : 0.,\n/4/tilt : 0.,\n/4/key/pressed : false,\n/3/pressure : 0.,\n/3/tilt : 0.,\n/3/key/pressed : false,\n/2/pressure : 0.,\n/2/tilt : 0.,\n/2/key/pressed : false,\n/1/pressure : 0.,\n/1/tilt : 0.,\n/1/key/pressed : false", 
																	"numinlets": 2, 
																	"linecount": 75, 
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
																	"id": "obj-132", 
																	"patching_rect": [
																		50.0, 
																		170.0, 
																		320.0, 
																		1012.0
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
																		"obj-132", 
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
																		"obj-16", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-132", 
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
																		"obj-16", 
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
													"text": "p starter", 
													"numinlets": 0, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-3", 
													"patching_rect": [
														161.0, 
														235.036072, 
														83.0, 
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
															15.0, 
															15.0
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
															"revision": 3
														}, 
														"boxes": [
															{
																"box": {
																	"fontname": "Arial", 
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
																	"id": "obj-132", 
																	"patching_rect": [
																		50.0, 
																		100.0, 
																		166.47168, 
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
																	"id": "obj-77", 
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
																	"numinlets": 0, 
																	"numoutlets": 1, 
																	"outlettype": [
																		"FullPacket"
																	], 
																	"maxclass": "inlet", 
																	"id": "obj-84", 
																	"patching_rect": [
																		197.0, 
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
																	"id": "obj-85", 
																	"patching_rect": [
																		50.0, 
																		1024.0, 
																		25.0, 
																		25.0
																	]
																}
															}
														], 
														"default_fontface": 0, 
														"gridonopen": 0, 
														"rect": [
															756.0, 
															63.0, 
															640.0, 
															480.0
														], 
														"lines": [
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-132", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-85", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-77", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-132", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-84", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-132", 
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
													"text": "p container", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-86", 
													"patching_rect": [
														161.0, 
														175.563904, 
														86.0, 
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
													"id": "obj-131", 
													"patching_rect": [
														97.5, 
														272.036072, 
														50.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"comment": "", 
													"varname": "u040001577", 
													"numinlets": 0, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "inlet", 
													"id": "obj-43", 
													"patching_rect": [
														86.0, 
														48.0, 
														25.0, 
														25.0
													]
												}
											}, 
											{
												"box": {
													"comment": "", 
													"varname": "u656001576", 
													"numinlets": 1, 
													"numoutlets": 0, 
													"maxclass": "outlet", 
													"id": "obj-44", 
													"patching_rect": [
														24.0, 
														419.536072, 
														25.0, 
														25.0
													]
												}
											}
										], 
										"default_fontface": 0, 
										"gridonopen": 0, 
										"rect": [
											541.0, 
											93.0, 
											640.0, 
											480.0
										], 
										"lines": [
											{
												"patchline": {
													"color": [
														1.0, 
														0.8, 
														0.4, 
														1.0
													], 
													"disabled": 0, 
													"hidden": 0, 
													"destination": [
														"obj-131", 
														0
													], 
													"source": [
														"obj-1", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"color": [
														1.0, 
														0.8, 
														0.4, 
														1.0
													], 
													"disabled": 0, 
													"hidden": 0, 
													"destination": [
														"obj-86", 
														0
													], 
													"source": [
														"obj-1", 
														1
													]
												}
											}, 
											{
												"patchline": {
													"color": [
														1.0, 
														0.8, 
														0.4, 
														1.0
													], 
													"disabled": 0, 
													"hidden": 0, 
													"destination": [
														"obj-44", 
														0
													], 
													"source": [
														"obj-131", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"color": [
														1.0, 
														0.8, 
														0.4, 
														1.0
													], 
													"destination": [
														"obj-86", 
														1
													], 
													"disabled": 0, 
													"source": [
														"obj-131", 
														0
													], 
													"midpoints": [
														107.0, 
														332.036072, 
														266.5, 
														332.036072, 
														266.5, 
														93.599976, 
														237.5, 
														93.599976
													], 
													"hidden": 0
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
														"obj-5", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"color": [
														1.0, 
														0.8, 
														0.4, 
														1.0
													], 
													"disabled": 0, 
													"hidden": 0, 
													"destination": [
														"obj-131", 
														1
													], 
													"source": [
														"obj-3", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"color": [
														1.0, 
														0.8, 
														0.4, 
														1.0
													], 
													"disabled": 0, 
													"hidden": 0, 
													"destination": [
														"obj-1", 
														0
													], 
													"source": [
														"obj-43", 
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
														"obj-86", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"color": [
														1.0, 
														0.8, 
														0.4, 
														1.0
													], 
													"disabled": 0, 
													"hidden": 0, 
													"destination": [
														"obj-131", 
														1
													], 
													"source": [
														"obj-86", 
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
									"text": "p state cache", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-45", 
									"patching_rect": [
										50.0, 
										100.0, 
										95.0, 
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
										"FullPacket"
									], 
									"maxclass": "inlet", 
									"id": "obj-30", 
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
									"id": "obj-31", 
									"patching_rect": [
										50.0, 
										180.0, 
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
							593.0, 
							459.0
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
										"obj-31", 
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
										"obj-1", 
										1
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
					"text": "p fuse", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-32", 
					"patching_rect": [
						116.75, 
						453.0, 
						91.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.io.midi", 
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
						116.75, 
						190.0, 
						168.0, 
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
							15.0, 
							15.0
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
							"revision": 3
						}, 
						"boxes": [
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
											15.0, 
											15.0
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
											"revision": 3
										}, 
										"boxes": [
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.route /channel", 
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
														50.0, 
														100.0, 
														100.0, 
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
														"FullPacket"
													], 
													"maxclass": "inlet", 
													"id": "obj-40", 
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
													"id": "obj-41", 
													"patching_rect": [
														131.0, 
														180.0, 
														25.0, 
														25.0
													]
												}
											}
										], 
										"default_fontface": 0, 
										"gridonopen": 0, 
										"rect": [
											75.0, 
											119.0, 
											640.0, 
											480.0
										], 
										"lines": [
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-25", 
														1
													], 
													"hidden": 0, 
													"destination": [
														"obj-41", 
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
														"obj-25", 
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
									"text": "p pitchbend", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-42", 
									"patching_rect": [
										272.0, 
										93.0, 
										83.0, 
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
											15.0, 
											15.0
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
											"revision": 3
										}, 
										"boxes": [
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.cond /note/held == true\\, /note/held == false\\,", 
													"numinlets": 1, 
													"numoutlets": 3, 
													"outlettype": [
														"FullPacket", 
														"FullPacket", 
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-19", 
													"patching_rect": [
														131.0, 
														215.5, 
														311.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.expr /note/held = /velocity > 0.", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-17", 
													"patching_rect": [
														131.0, 
														170.5, 
														299.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.route /channel", 
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
														50.0, 
														100.0, 
														170.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.pack /keyboard", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-11", 
													"patching_rect": [
														131.0, 
														266.5, 
														100.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.expr /octave = /key / 12\\,", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-31", 
													"patching_rect": [
														131.0, 
														137.5, 
														193.5, 
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
														"FullPacket"
													], 
													"maxclass": "inlet", 
													"id": "obj-26", 
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
													"id": "obj-27", 
													"patching_rect": [
														131.0, 
														367.5, 
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
														"obj-11", 
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
														"obj-12", 
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
														"obj-17", 
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
														"obj-19", 
														1
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
														"obj-19", 
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
														"obj-26", 
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
														"obj-31", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-17", 
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
									"text": "p as keyboard", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-28", 
									"patching_rect": [
										396.0, 
										93.0, 
										87.0, 
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
											15.0, 
											15.0
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
											"revision": 3
										}, 
										"boxes": [
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.route /key /velocity /index /key/pressed /identity /pressed/time /released/time /change", 
													"numinlets": 9, 
													"numoutlets": 9, 
													"outlettype": [
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
													"id": "obj-68", 
													"patching_rect": [
														50.0, 
														208.0, 
														696.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.expr /identity = [ \\\"/1\\\"\\, \\\"/2\\\"\\, \\\"/3\\\"\\, \\\"/4\\\"\\,\\\"/5\\\"\\, \\\"/6\\\"\\, \\\"/7\\\"\\, \\\"/8\\\"\\, \\\"/9\\\"\\, \\\"/10\\\"\\, \\\"/11\\\"\\, \\\"/12\\\"\\,\\\"/13\\\"\\, \\\"/14\\\"\\, \\\"/15\\\"\\, \\\"/16\\\"\\, \\\"/17\\\"\\, \\\"/18\\\"\\, \\\"/19\\\"\\, \\\"/20\\\"\\, \\\"/21\\\"\\,\\\"/22\\\"\\, \\\"/23\\\"\\,\\\"/24\\\"\\, \\\"/25\\\" ] [[/index]]\\, assign(/identity + \\\"/key/pressed\\\"\\, /key/pressed)\\,", 
													"numinlets": 1, 
													"linecount": 3, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-63", 
													"patching_rect": [
														50.0, 
														138.5, 
														479.0, 
														47.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.expr /index = /key - 48\\,", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-62", 
													"patching_rect": [
														50.0, 
														110.0, 
														240.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.expr /key/pressed = /velocity > 0.", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-43", 
													"patching_rect": [
														50.0, 
														77.0, 
														244.0, 
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
														"FullPacket"
													], 
													"maxclass": "inlet", 
													"id": "obj-103", 
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
													"id": "obj-104", 
													"patching_rect": [
														44.0, 
														241.5, 
														25.0, 
														25.0
													]
												}
											}
										], 
										"default_fontface": 0, 
										"gridonopen": 0, 
										"rect": [
											238.0, 
											135.0, 
											834.0, 
											309.0
										], 
										"lines": [
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-103", 
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
														"obj-43", 
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
														"obj-62", 
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
														"obj-63", 
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
														"obj-68", 
														8
													], 
													"hidden": 0, 
													"destination": [
														"obj-104", 
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
									"text": "p boolean", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-105", 
									"patching_rect": [
										98.625, 
										93.0, 
										70.75, 
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
											15.0, 
											15.0
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
											"revision": 3
										}, 
										"boxes": [
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.expr /value = /value *2. - 1.", 
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
														180.0, 
														168.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.cond /parameter == \\\"/tilt\\\"", 
													"numinlets": 1, 
													"numoutlets": 2, 
													"outlettype": [
														"FullPacket", 
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-2", 
													"patching_rect": [
														50.0, 
														136.0, 
														261.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.route /index /value /parameter /identity /controller", 
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
													"id": "obj-64", 
													"patching_rect": [
														50.0, 
														395.0, 
														425.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.expr /parameter = [\\\"/pressure\\\"\\, \\\"/tilt\\\"] [[/controller % 2]]\\,", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-79", 
													"patching_rect": [
														50.0, 
														100.0, 
														386.75, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.expr /index = (/controller - 60) / 2\\,", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-13", 
													"patching_rect": [
														50.0, 
														288.0, 
														285.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.expr /identity = [ \\\"/1\\\"\\, \\\"/2\\\"\\, \\\"/3\\\"\\, \\\"/4\\\"\\,\\\"/5\\\"\\, \\\"/6\\\"\\, \\\"/7\\\"\\, \\\"/8\\\"\\, \\\"/9\\\"\\, \\\"/10\\\"\\, \\\"/11\\\"\\, \\\"/12\\\"\\,\\\"/13\\\"\\, \\\"/14\\\"\\, \\\"/15\\\"\\, \\\"/16\\\"\\, \\\"/17\\\"\\, \\\"/18\\\"\\, \\\"/19\\\"\\, \\\"/20\\\"\\, \\\"/21\\\"\\,\\\"/22\\\"\\, \\\"/23\\\"\\,\\\"/24\\\"\\, \\\"/25\\\" ] [[/index]]\\, assign(/identity + /parameter\\, /value)\\,", 
													"numinlets": 1, 
													"linecount": 3, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-14", 
													"patching_rect": [
														50.0, 
														331.5, 
														544.0, 
														47.0
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
													"id": "obj-89", 
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
													"id": "obj-90", 
													"patching_rect": [
														60.0, 
														523.5, 
														25.0, 
														25.0
													]
												}
											}
										], 
										"default_fontface": 0, 
										"gridonopen": 0, 
										"rect": [
											283.0, 
											211.0, 
											947.0, 
											639.0
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
														"obj-14", 
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
														"obj-64", 
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
														"obj-13", 
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
														"obj-13", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-64", 
														5
													], 
													"hidden": 0, 
													"destination": [
														"obj-90", 
														0
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
														"obj-2", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-89", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-79", 
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
									"text": "p sensor", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-91", 
									"patching_rect": [
										15.5, 
										93.0, 
										68.0, 
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
										"FullPacket"
									], 
									"maxclass": "inlet", 
									"id": "obj-52", 
									"patching_rect": [
										15.5, 
										41.0, 
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
										"FullPacket"
									], 
									"maxclass": "inlet", 
									"id": "obj-53", 
									"patching_rect": [
										98.625, 
										33.0, 
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
										"FullPacket"
									], 
									"maxclass": "inlet", 
									"id": "obj-54", 
									"patching_rect": [
										272.0, 
										40.0, 
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
										"FullPacket"
									], 
									"maxclass": "inlet", 
									"id": "obj-55", 
									"patching_rect": [
										396.0, 
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
									"id": "obj-56", 
									"patching_rect": [
										181.0, 
										186.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							371.0, 
							341.0, 
							604.0, 
							366.0
						], 
						"lines": [
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-105", 
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
										"obj-28", 
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
										"obj-42", 
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
										"obj-52", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-91", 
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
										"obj-105", 
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
										"obj-42", 
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
										"obj-28", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-91", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-56", 
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
					"text": "p situate", 
					"numinlets": 4, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-57", 
					"patching_rect": [
						116.75, 
						368.0, 
						91.0, 
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
							15.0, 
							15.0
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
							"revision": 3
						}, 
						"boxes": [
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /value /= 127.", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-5", 
									"patching_rect": [
										31.0, 
										100.0, 
										128.0, 
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
									"id": "obj-43", 
									"patching_rect": [
										31.0, 
										13.0, 
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
									"id": "obj-44", 
									"patching_rect": [
										159.0, 
										19.0, 
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
										"FullPacket"
									], 
									"maxclass": "inlet", 
									"id": "obj-45", 
									"patching_rect": [
										319.0, 
										19.0, 
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
									"id": "obj-46", 
									"patching_rect": [
										472.0, 
										31.0, 
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
										31.0, 
										203.0, 
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
									"id": "obj-48", 
									"patching_rect": [
										159.0, 
										192.0, 
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
									"id": "obj-49", 
									"patching_rect": [
										319.0, 
										203.0, 
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
									"id": "obj-50", 
									"patching_rect": [
										472.0, 
										209.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /velocity /= 127.", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-13", 
									"patching_rect": [
										472.0, 
										100.0, 
										165.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /pitch/bend /= 127.", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-37", 
									"patching_rect": [
										319.0, 
										100.0, 
										153.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /velocity /= 127.\\,", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-65", 
									"patching_rect": [
										159.0, 
										100.0, 
										160.0, 
										20.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							52.0, 
							144.0, 
							650.0, 
							293.0
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
										"obj-50", 
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
										"obj-49", 
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
										"obj-5", 
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
										"obj-65", 
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
										"obj-37", 
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
										"obj-13", 
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
										"obj-47", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-65", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-48", 
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
					"text": "p neutralize", 
					"numinlets": 4, 
					"numoutlets": 4, 
					"outlettype": [
						"FullPacket", 
						"FullPacket", 
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-51", 
					"patching_rect": [
						116.75, 
						299.0, 
						91.0, 
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
							15.0, 
							15.0
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
							"revision": 3
						}, 
						"boxes": [
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /note", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-7", 
									"patching_rect": [
										457.0, 
										248.0, 
										100.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /control/change /note", 
									"numinlets": 3, 
									"numoutlets": 3, 
									"outlettype": [
										"", 
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-6", 
									"patching_rect": [
										77.0, 
										135.0, 
										169.0, 
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
									"id": "obj-4", 
									"patching_rect": [
										277.0, 
										317.5, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.cond bound(/pitch/bend)", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"FullPacket", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-1", 
									"patching_rect": [
										263.0, 
										135.0, 
										195.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.cond /channel == 1\\, /channel == 2", 
									"numinlets": 1, 
									"numoutlets": 3, 
									"outlettype": [
										"FullPacket", 
										"FullPacket", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-57", 
									"patching_rect": [
										77.0, 
										73.0, 
										325.0, 
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
										"FullPacket"
									], 
									"maxclass": "inlet", 
									"id": "obj-92", 
									"patching_rect": [
										77.0, 
										33.0, 
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
									"id": "obj-93", 
									"patching_rect": [
										77.0, 
										317.5, 
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
									"id": "obj-94", 
									"patching_rect": [
										163.0, 
										317.5, 
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
									"id": "obj-95", 
									"patching_rect": [
										457.0, 
										295.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							309.0, 
							83.0, 
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
										"obj-4", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-1", 
										1
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
										"obj-57", 
										1
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
										"obj-6", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-93", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-6", 
										1
									], 
									"hidden": 0, 
									"destination": [
										"obj-94", 
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
										"obj-95", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-92", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-57", 
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
					"text": "p desituate", 
					"numinlets": 1, 
					"numoutlets": 4, 
					"outlettype": [
						"", 
						"", 
						"FullPacket", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-96", 
					"patching_rect": [
						116.75, 
						249.5, 
						91.0, 
						20.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			460.0, 
			61.0, 
			875.0, 
			657.0
		], 
		"lines": [
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-1", 
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
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"disabled": 0, 
					"hidden": 0, 
					"destination": [
						"obj-96", 
						0
					], 
					"source": [
						"obj-1", 
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
						"obj-3", 
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
						"obj-44", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"disabled": 0, 
					"hidden": 0, 
					"destination": [
						"obj-6", 
						0
					], 
					"source": [
						"obj-32", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"disabled": 0, 
					"hidden": 0, 
					"destination": [
						"obj-7", 
						0
					], 
					"source": [
						"obj-4", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"disabled": 0, 
					"hidden": 0, 
					"destination": [
						"obj-1", 
						0
					], 
					"source": [
						"obj-44", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"disabled": 0, 
					"hidden": 0, 
					"destination": [
						"obj-57", 
						3
					], 
					"source": [
						"obj-51", 
						3
					]
				}
			}, 
			{
				"patchline": {
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"disabled": 0, 
					"hidden": 0, 
					"destination": [
						"obj-57", 
						2
					], 
					"source": [
						"obj-51", 
						2
					]
				}
			}, 
			{
				"patchline": {
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"disabled": 0, 
					"hidden": 0, 
					"destination": [
						"obj-57", 
						1
					], 
					"source": [
						"obj-51", 
						1
					]
				}
			}, 
			{
				"patchline": {
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"disabled": 0, 
					"hidden": 0, 
					"destination": [
						"obj-57", 
						0
					], 
					"source": [
						"obj-51", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"disabled": 0, 
					"hidden": 0, 
					"destination": [
						"obj-32", 
						0
					], 
					"source": [
						"obj-57", 
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
						"obj-5", 
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
						"obj-1", 
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
						"obj-9", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"disabled": 0, 
					"hidden": 0, 
					"destination": [
						"obj-51", 
						3
					], 
					"source": [
						"obj-96", 
						3
					]
				}
			}, 
			{
				"patchline": {
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"disabled": 0, 
					"hidden": 0, 
					"destination": [
						"obj-51", 
						2
					], 
					"source": [
						"obj-96", 
						2
					]
				}
			}, 
			{
				"patchline": {
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"disabled": 0, 
					"hidden": 0, 
					"destination": [
						"obj-51", 
						1
					], 
					"source": [
						"obj-96", 
						1
					]
				}
			}, 
			{
				"patchline": {
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"disabled": 0, 
					"hidden": 0, 
					"destination": [
						"obj-51", 
						0
					], 
					"source": [
						"obj-96", 
						0
					]
				}
			}
		], 
		"statusbarvisible": 2, 
		"gridsnaponopen": 0, 
		"bglocked": 0
	}
}