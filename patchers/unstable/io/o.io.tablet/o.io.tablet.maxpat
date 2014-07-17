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
					"fontname": "Arial", 
					"text": "getmessagecount for messages in a specific region;\nor messages under specific conditions", 
					"numinlets": 1, 
					"maxclass": "comment", 
					"numoutlets": 0, 
					"linecount": 2, 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-12", 
					"patching_rect": [
						348.414978, 
						567.5, 
						350.0, 
						33.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /five/plane", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-9", 
					"patching_rect": [
						569.414978, 
						686.5, 
						122.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /tetra/plane", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-7", 
					"patching_rect": [
						435.414978, 
						686.5, 
						113.0, 
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
									"text": "o.expr /position = [scale(/position[[0]]\\, 0.\\, 1\\, -1\\, 1)\\, scale(/position[[1]]\\, 0.\\, 1\\, 1\\, -1) ]\\,", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-19", 
									"patching_rect": [
										50.0, 
										100.0, 
										456.0, 
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
									"id": "obj-1", 
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
									"id": "obj-2", 
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
										"obj-1", 
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
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-2", 
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
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-4", 
					"patching_rect": [
						22.456665, 
						221.500061, 
						80.0, 
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
					"id": "obj-5", 
					"patching_rect": [
						259.956665, 
						190.340881, 
						32.5, 
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
									"text": "o.route /pen", 
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
										147.438354, 
										144.0, 
										75.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /touch", 
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
										144.0, 
										84.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.select /touch /pen", 
									"numinlets": 3, 
									"numoutlets": 3, 
									"outlettype": [
										"", 
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-11", 
									"patching_rect": [
										50.0, 
										100.0, 
										115.0, 
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
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-37", 
									"patching_rect": [
										50.0, 
										224.0, 
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
										147.438354, 
										224.0, 
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
										"obj-11", 
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
										"obj-11", 
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
										"obj-12", 
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
										"obj-13", 
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
										"obj-36", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-11", 
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
					"text": "p route input", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-39", 
					"patching_rect": [
						22.456665, 
						111.0, 
						80.0, 
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
									"text": "loadbang", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"bang"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-1", 
									"patching_rect": [
										507.375, 
										100.0, 
										60.0, 
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
													"text": "prepend xyrange", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-4", 
													"patching_rect": [
														309.0, 
														214.357025, 
														101.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "1", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "message", 
													"fontsize": 12.0, 
													"id": "obj-3", 
													"patching_rect": [
														309.0, 
														184.357025, 
														32.5, 
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
														"bang"
													], 
													"maxclass": "inlet", 
													"id": "obj-5", 
													"patching_rect": [
														170.0, 
														91.0, 
														25.0, 
														25.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"hint": "press menu to update the list of tablets and tools", 
													"text": "menu", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "message", 
													"fontsize": 11.595187, 
													"id": "obj-51", 
													"patching_rect": [
														441.0, 
														195.357025, 
														40.0, 
														17.0
													]
												}
											}, 
											{
												"box": {
													"labelclick": 1, 
													"fontname": "Arial", 
													"items": [
														"All tablets and tools", 
														",", 
														"<separator>", 
														",", 
														"0: Intuos pro L / all tools", 
														",", 
														"0: Intuos pro L / 1: R3JpcCBQZW4", 
														",", 
														"<separator>", 
														",", 
														"(1: Intuos pro S / all tools)", 
														",", 
														"(1: Intuos pro S / 1: R3JpcCBQZW4)"
													], 
													"numinlets": 1, 
													"numoutlets": 3, 
													"outlettype": [
														"int", 
														"", 
														""
													], 
													"maxclass": "umenu", 
													"fontsize": 12.0, 
													"parameter_enable": 0, 
													"id": "obj-55", 
													"patching_rect": [
														574.0, 
														214.357025, 
														178.0, 
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
													"id": "obj-33", 
													"patching_rect": [
														170.0, 
														159.357025, 
														20.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "nopointer $1", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "message", 
													"fontsize": 11.595187, 
													"id": "obj-34", 
													"patching_rect": [
														170.0, 
														214.357025, 
														75.0, 
														17.0
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
													"id": "obj-14", 
													"patching_rect": [
														574.0, 
														149.100006, 
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
													"id": "obj-15", 
													"patching_rect": [
														276.0, 
														292.357025, 
														25.0, 
														25.0
													]
												}
											}
										], 
										"default_fontface": 0, 
										"gridonopen": 0, 
										"rect": [
											267.0, 
											141.0, 
											640.0, 
											480.0
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
														"obj-55", 
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
														"obj-33", 
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
														"obj-15", 
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
														"obj-15", 
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
														"obj-3", 
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
														"obj-33", 
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
														"obj-51", 
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
														"obj-15", 
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
									"text": "p initialize", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										"int"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-17", 
									"patching_rect": [
										507.375, 
										149.5, 
										63.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Verdana", 
									"color": [
										1.0, 
										0.603922, 
										0.0, 
										1.0
									], 
									"text": "s2m.wacom", 
									"numinlets": 1, 
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
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 9.0, 
									"id": "obj-35", 
									"patching_rect": [
										50.0, 
										182.857025, 
										536.0, 
										17.0
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
									"id": "obj-19", 
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
									"id": "obj-20", 
									"patching_rect": [
										50.0, 
										273.857025, 
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
									"id": "obj-22", 
									"patching_rect": [
										114.0, 
										273.857025, 
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
									"id": "obj-24", 
									"patching_rect": [
										179.0, 
										273.857025, 
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
									"id": "obj-25", 
									"patching_rect": [
										243.0, 
										273.857025, 
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
									"id": "obj-26", 
									"patching_rect": [
										308.0, 
										273.857025, 
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
										373.0, 
										273.857025, 
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
									"id": "obj-28", 
									"patching_rect": [
										437.0, 
										273.857025, 
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
									"id": "obj-29", 
									"patching_rect": [
										502.0, 
										273.857025, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							670.0, 
							98.0, 
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
										"obj-35", 
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
										8
									], 
									"hidden": 0, 
									"destination": [
										"obj-17", 
										1
									], 
									"midpoints": [
										576.5, 
										211.857056, 
										611.1875, 
										211.857056, 
										611.1875, 
										132.500031, 
										560.875, 
										132.500031
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
										"obj-20", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-35", 
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
										"obj-35", 
										2
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
										"obj-35", 
										3
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
										"obj-35", 
										4
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
										"obj-35", 
										5
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
										"obj-35", 
										6
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
										"obj-35", 
										7
									], 
									"hidden": 0, 
									"destination": [
										"obj-29", 
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
					"text": "p get pen data", 
					"numinlets": 1, 
					"numoutlets": 8, 
					"outlettype": [
						"", 
						"", 
						"", 
						"", 
						"", 
						"", 
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-30", 
					"patching_rect": [
						165.456665, 
						164.500061, 
						113.5, 
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
													"items": [
														"All tablets", 
														",", 
														"tablet ID 1 ", 
														",", 
														"tablet ID 0 "
													], 
													"numinlets": 1, 
													"numoutlets": 3, 
													"outlettype": [
														"int", 
														"", 
														""
													], 
													"maxclass": "umenu", 
													"fontsize": 11.5, 
													"parameter_enable": 0, 
													"id": "obj-16", 
													"patching_rect": [
														268.949982, 
														147.0, 
														100.0, 
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
														"list"
													], 
													"maxclass": "inlet", 
													"id": "obj-18", 
													"patching_rect": [
														268.949982, 
														62.0, 
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
													"id": "obj-20", 
													"patching_rect": [
														268.949982, 
														204.0, 
														25.0, 
														25.0
													]
												}
											}
										], 
										"default_fontface": 0, 
										"gridonopen": 0, 
										"rect": [
											579.0, 
											120.0, 
											640.0, 
											480.0
										], 
										"lines": [
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-16", 
														0
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
														"obj-18", 
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
									"text": "p initialize", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"int"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-22", 
									"patching_rect": [
										121.0, 
										102.845001, 
										63.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Verdana", 
									"color": [
										1.0, 
										0.603922, 
										0.0, 
										1.0
									], 
									"text": "s2m.wacomtouch", 
									"numinlets": 1, 
									"numoutlets": 4, 
									"outlettype": [
										"list", 
										"list", 
										"list", 
										"list"
									], 
									"maxclass": "newobj", 
									"fontsize": 10.0, 
									"id": "obj-5", 
									"patching_rect": [
										50.0, 
										135.5, 
										402.0, 
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
										""
									], 
									"maxclass": "inlet", 
									"id": "obj-7", 
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
									"id": "obj-8", 
									"patching_rect": [
										50.0, 
										309.517181, 
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
										"obj-22", 
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
										"obj-5", 
										3
									], 
									"hidden": 0, 
									"destination": [
										"obj-22", 
										0
									], 
									"midpoints": [
										442.5, 
										164.5, 
										490.0, 
										164.5, 
										490.0, 
										101.845001, 
										130.5, 
										101.845001
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
										"obj-8", 
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
					"text": "p get touch data", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"list"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-14", 
					"patching_rect": [
						22.456665, 
						162.15918, 
						127.0, 
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
										74.5, 
										149.0, 
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
																	"text": "/ID/vendor : \"$1\",\n/ID/tablet : \"$2\",\n/ID/fromOS/tablet : \"$5\",\n/serialnumber/pen : \"$7\",\n/serialnumber/tablet : \"$8\",\n/code : \"$9\"", 
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
																	"id": "obj-59", 
																	"patching_rect": [
																		50.0, 
																		100.0, 
																		150.0, 
																		87.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.prepend /details", 
																	"numinlets": 1, 
																	"numoutlets": 1, 
																	"outlettype": [
																		"FullPacket"
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-120", 
																	"patching_rect": [
																		50.0, 
																		210.700073, 
																		106.0, 
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
																	"id": "obj-2", 
																	"patching_rect": [
																		50.0, 
																		290.700073, 
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
																		"obj-59", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-120", 
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
																		"obj-59", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-120", 
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
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-3", 
													"patching_rect": [
														50.0, 
														100.0, 
														56.0, 
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
													"numinlets": 1, 
													"numoutlets": 0, 
													"maxclass": "outlet", 
													"id": "obj-78", 
													"patching_rect": [
														50.0, 
														290.700073, 
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
											114.0, 
											640.0, 
											480.0
										], 
										"lines": [
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-3", 
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
														"obj-77", 
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
									"text": "p details", 
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
										55.0, 
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
																	"text": "/code : \"$9\"", 
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
																	"id": "obj-57", 
																	"patching_rect": [
																		50.0, 
																		100.0, 
																		150.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.prepend /capabilities", 
																	"numinlets": 1, 
																	"numoutlets": 1, 
																	"outlettype": [
																		"FullPacket"
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-9", 
																	"patching_rect": [
																		50.0, 
																		305.200073, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.expr /deviceId = (/code / 1) % 2 == 1\\, /absX = (/code / 2) % 2 == 1\\, /absY = (/code / 4) % 2 == 1\\, /vendor1 = (/code / 8) % 2 == 1\\, /vendor2 = (/code / 16) % 2 == 1\\, /vendor3 = (/code / 16) % 2 == 1\\, /buttons = (/code / 32) % 2 == 1\\, /tiltX = (/code / 64) % 2 == 1\\, /tiltY = (/code / 128) % 2 == 1\\, /absZ = (/code / 256) % 2 == 1\\, /pressure = (/code / 512) % 2 == 1\\, /tangential/pressure = (/code / 1024) % 2 == 1\\, /orientation = (/code / 2048) % 2 == 1\\, /rotation = (/code / 4096) % 2 == 1", 
																	"numinlets": 1, 
																	"linecount": 10, 
																	"numoutlets": 1, 
																	"outlettype": [
																		"FullPacket"
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-64", 
																	"patching_rect": [
																		50.0, 
																		127.5, 
																		279.0, 
																		141.0
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
																	"id": "obj-2", 
																	"patching_rect": [
																		50.0, 
																		385.200073, 
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
																		"obj-57", 
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
																		"obj-64", 
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
																		"obj-9", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-2", 
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
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-3", 
													"patching_rect": [
														50.0, 
														100.0, 
														56.0, 
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
													"id": "obj-74", 
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
													"id": "obj-75", 
													"patching_rect": [
														50.0, 
														385.200073, 
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
											147.0, 
											626.0, 
											480.0
										], 
										"lines": [
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-3", 
														0
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
														"obj-74", 
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
									"text": "p capabilities", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-76", 
									"patching_rect": [
										109.0, 
										100.0, 
										80.0, 
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
									"id": "obj-67", 
									"patching_rect": [
										74.5, 
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
									"id": "obj-68", 
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
							345.0, 
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
										0
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
										"obj-67", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-79", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-76", 
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
										"obj-79", 
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
					"text": "p self describe - tablet", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-70", 
					"patching_rect": [
						273.456665, 
						248.840881, 
						131.0, 
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
									"text": "o.expr /pen/position[[1]] = scale(/pen/position[[1]]\\, 0.\\, 1\\, 1\\, 0)\\, /pen/position[[1]] = clip(/pen/position[[1]]\\, 0.\\, 1)", 
									"numinlets": 1, 
									"linecount": 3, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-19", 
									"patching_rect": [
										50.0, 
										100.0, 
										290.0, 
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
									"id": "obj-32", 
									"patching_rect": [
										50.0, 
										207.0, 
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
										"obj-19", 
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
										"obj-30", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-19", 
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
					"text": "p nuetralize", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-33", 
					"patching_rect": [
						165.456665, 
						276.500061, 
						76.0, 
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
					"id": "obj-2", 
					"patching_rect": [
						22.456665, 
						72.0, 
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
					"id": "obj-6", 
					"patching_rect": [
						22.456665, 
						475.0, 
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
									"text": "o.prepend /pen", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-1", 
									"patching_rect": [
										50.0, 
										396.0, 
										91.0, 
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
									"id": "obj-37", 
									"patching_rect": [
										73.25, 
										142.0, 
										32.5, 
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
													"text": "/situated/as : \"writer\",\n/proximity : \"false\",\n/position : [0.497603, 0.769915],\n/tilt : [-0.296884, -0.0625019],\n/pressure : 0.,\n/contact : \"false\",\n/button/pressed : [\"up\", \"up\"]", 
													"numinlets": 2, 
													"linecount": 7, 
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
														100.0
													]
												}
											}, 
											{
												"box": {
													"comment": "", 
													"numinlets": 0, 
													"numoutlets": 1, 
													"outlettype": [
														"bang"
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
											660.0, 
											64.0, 
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
									"text": "p o.message", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-86", 
									"patching_rect": [
										50.0, 
										334.599976, 
										79.0, 
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
										110.0, 
										299.289978, 
										50.0, 
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
									"id": "obj-38", 
									"patching_rect": [
										90.0, 
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
									"id": "obj-39", 
									"patching_rect": [
										50.0, 
										437.5, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							310.0, 
							272.0, 
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
										"obj-39", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-131", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-86", 
										1
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-37", 
										1
									], 
									"hidden": 0, 
									"destination": [
										"obj-131", 
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
										"obj-86", 
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
										"obj-37", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-86", 
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
										"obj-86", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-131", 
										1
									], 
									"midpoints": [
										59.5, 
										375.599976, 
										252.0, 
										375.599976, 
										252.0, 
										274.289978, 
										150.5, 
										274.289978
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
					"id": "obj-40", 
					"patching_rect": [
						165.456665, 
						248.840881, 
						82.0, 
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
									"text": "o.pack /tangential-pressure", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-22", 
									"patching_rect": [
										691.375, 
										139.0, 
										155.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /Z-position", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-21", 
									"patching_rect": [
										586.375, 
										139.0, 
										105.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /rotation", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-20", 
									"patching_rect": [
										478.0, 
										100.0, 
										93.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /button/pressed", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-19", 
									"patching_rect": [
										410.5, 
										142.142975, 
										132.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /disposition", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-18", 
									"patching_rect": [
										860.375, 
										149.142975, 
										109.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /contact", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-16", 
									"patching_rect": [
										316.5, 
										142.142975, 
										91.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /proximity", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-15", 
									"patching_rect": [
										977.375, 
										149.142975, 
										101.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /tilt", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-13", 
									"patching_rect": [
										248.25, 
										142.142975, 
										65.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /pressure", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-12", 
									"patching_rect": [
										151.875, 
										142.142975, 
										99.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /position", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-11", 
									"patching_rect": [
										50.0, 
										131.0, 
										94.0, 
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
													"text": "false", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "message", 
													"fontsize": 12.0, 
													"id": "obj-14", 
													"patching_rect": [
														301.0, 
														182.217285, 
														36.0, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "true", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "message", 
													"fontsize": 12.0, 
													"id": "obj-15", 
													"patching_rect": [
														263.0, 
														182.217285, 
														32.5, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "sel 1", 
													"numinlets": 2, 
													"numoutlets": 2, 
													"outlettype": [
														"bang", 
														""
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-16", 
													"patching_rect": [
														284.0, 
														142.0, 
														36.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "unpack 0 0 0 0 0 0 0 0 0 0 0", 
													"numinlets": 1, 
													"numoutlets": 11, 
													"outlettype": [
														"int", 
														"int", 
														"int", 
														"int", 
														"int", 
														"int", 
														"int", 
														"int", 
														"int", 
														"int", 
														"int"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-7", 
													"patching_rect": [
														124.0, 
														53.0, 
														159.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "plunger", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "message", 
													"fontsize": 12.0, 
													"id": "obj-6", 
													"patching_rect": [
														201.0, 
														179.217285, 
														51.0, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "writer", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "message", 
													"fontsize": 12.0, 
													"id": "obj-5", 
													"patching_rect": [
														159.0, 
														179.217285, 
														40.0, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "sel 1", 
													"numinlets": 2, 
													"numoutlets": 2, 
													"outlettype": [
														"bang", 
														""
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-3", 
													"patching_rect": [
														184.0, 
														139.0, 
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
													"id": "obj-91", 
													"patching_rect": [
														124.0, 
														15.0, 
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
													"id": "obj-92", 
													"patching_rect": [
														276.0, 
														296.217285, 
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
														170.0, 
														311.217285, 
														25.0, 
														25.0
													]
												}
											}
										], 
										"default_fontface": 0, 
										"gridonopen": 0, 
										"rect": [
											754.0, 
											88.0, 
											640.0, 
											480.0
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
														"obj-92", 
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
														"obj-92", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-16", 
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
														"obj-3", 
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
														"obj-3", 
														1
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
														"obj-5", 
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
														"obj-7", 
														10
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
														"obj-7", 
														9
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
														"obj-91", 
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
									"text": "p prox & disposition", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-94", 
									"patching_rect": [
										860.375, 
										81.0, 
										115.0, 
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
													"text": "false", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "message", 
													"fontsize": 12.0, 
													"id": "obj-80", 
													"patching_rect": [
														90.89502, 
														149.721069, 
														36.0, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "true", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "message", 
													"fontsize": 12.0, 
													"id": "obj-77", 
													"patching_rect": [
														50.0, 
														149.721069, 
														32.5, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "sel 1", 
													"numinlets": 2, 
													"numoutlets": 2, 
													"outlettype": [
														"bang", 
														""
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-74", 
													"patching_rect": [
														73.89502, 
														113.721069, 
														36.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "pak sym sym", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-40", 
													"patching_rect": [
														180.89502, 
														269.228516, 
														81.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "up", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "message", 
													"fontsize": 12.0, 
													"id": "obj-156", 
													"patching_rect": [
														281.89502, 
														224.210938, 
														32.5, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "down", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "message", 
													"fontsize": 12.0, 
													"id": "obj-157", 
													"patching_rect": [
														242.89502, 
														224.210938, 
														39.0, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "up", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "message", 
													"fontsize": 12.0, 
													"id": "obj-155", 
													"patching_rect": [
														194.897949, 
														224.210938, 
														32.5, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "down", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "message", 
													"fontsize": 12.0, 
													"id": "obj-153", 
													"patching_rect": [
														155.897949, 
														224.210938, 
														39.0, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "sel 4", 
													"numinlets": 2, 
													"numoutlets": 2, 
													"outlettype": [
														"bang", 
														""
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-151", 
													"patching_rect": [
														244.39502, 
														188.623779, 
														36.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "sel 2", 
													"numinlets": 2, 
													"numoutlets": 2, 
													"outlettype": [
														"bang", 
														""
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-150", 
													"patching_rect": [
														155.897949, 
														186.267944, 
														36.0, 
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
													"id": "obj-149", 
													"patching_rect": [
														155.897949, 
														156.567993, 
														50.0, 
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
													"id": "obj-148", 
													"patching_rect": [
														244.39502, 
														160.923828, 
														50.0, 
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
													"id": "obj-97", 
													"patching_rect": [
														244.39502, 
														130.355865, 
														21.0, 
														21.0
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
													"id": "obj-99", 
													"patching_rect": [
														155.898071, 
														130.355865, 
														21.0, 
														21.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "& 4", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														"int"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-102", 
													"patching_rect": [
														244.39502, 
														100.355835, 
														27.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "& 2", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														"int"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-104", 
													"patching_rect": [
														155.898071, 
														100.0, 
														27.0, 
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
													"id": "obj-86", 
													"patching_rect": [
														153.062744, 
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
													"id": "obj-87", 
													"patching_rect": [
														65.44751, 
														349.228516, 
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
													"id": "obj-88", 
													"patching_rect": [
														180.89502, 
														349.228516, 
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
														"obj-102", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-97", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-104", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-99", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-148", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-151", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-149", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-150", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-150", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-153", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-150", 
														1
													], 
													"hidden": 0, 
													"destination": [
														"obj-155", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-151", 
														1
													], 
													"hidden": 0, 
													"destination": [
														"obj-156", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-151", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-157", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-153", 
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
														"obj-155", 
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
														"obj-156", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-40", 
														1
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-157", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-40", 
														1
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
														"obj-88", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-74", 
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
														"obj-74", 
														1
													], 
													"hidden": 0, 
													"destination": [
														"obj-80", 
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
														"obj-87", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-80", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-87", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-86", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-102", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-86", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-104", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-86", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-74", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-97", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-148", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-99", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-149", 
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
									"text": "p contact & buttons", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-89", 
									"patching_rect": [
										316.5, 
										100.0, 
										113.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"varname": "u570002000", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "inlet", 
									"id": "obj-23", 
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
									"varname": "u232002001", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "inlet", 
									"id": "obj-24", 
									"patching_rect": [
										151.875, 
										40.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"varname": "u940002002", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "inlet", 
									"id": "obj-25", 
									"patching_rect": [
										248.25, 
										40.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"varname": "u949002003", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "inlet", 
									"id": "obj-26", 
									"patching_rect": [
										316.5, 
										40.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"varname": "u735002004", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "inlet", 
									"id": "obj-27", 
									"patching_rect": [
										478.0, 
										40.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"varname": "u296002005", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "inlet", 
									"id": "obj-28", 
									"patching_rect": [
										586.375, 
										40.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"varname": "u706002006", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "inlet", 
									"id": "obj-29", 
									"patching_rect": [
										691.375, 
										40.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"varname": "u082002007", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "inlet", 
									"id": "obj-30", 
									"patching_rect": [
										860.375, 
										40.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"varname": "u916002008", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-31", 
									"patching_rect": [
										466.524994, 
										260.142975, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							272.0, 
							84.0, 
							1168.0, 
							701.0
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
										"obj-31", 
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
										"obj-15", 
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
										"obj-16", 
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
										"obj-18", 
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
										"obj-19", 
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
										"obj-20", 
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
										"obj-21", 
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
										"obj-22", 
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
										"obj-23", 
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
										"obj-24", 
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
										"obj-25", 
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
										"obj-26", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-89", 
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
										"obj-20", 
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
										"obj-21", 
										0
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
										"obj-22", 
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
										"obj-94", 
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
										"obj-16", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-89", 
										1
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
										"obj-94", 
										1
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
										"obj-94", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-18", 
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
					"numinlets": 8, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-32", 
					"patching_rect": [
						165.456665, 
						221.500061, 
						113.5, 
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
					"id": "obj-51", 
					"patching_rect": [
						165.456665, 
						330.500061, 
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
									"text": "o.expr /duration/seconds = /most/recent/time - /starting/time\\, /distance/from/new = l2norm(/most/recent/position - /starting/position)\\, /position/diff = l2norm(/most/recent/position - /was/most/recent/position)\\, /time/diff = /most/recent/time - /was/most/recent/time\\, /speed/rating = /position/diff / /time/diff\\, delete(/position/diff)\\, delete(/time/diff)\\,", 
									"numinlets": 1, 
									"linecount": 2, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-76", 
									"patching_rect": [
										50.0, 
										100.0, 
										1090.0, 
										33.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /instance", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-60", 
									"patching_rect": [
										50.0, 
										227.0, 
										100.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /starting/instance", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-59", 
									"patching_rect": [
										50.0, 
										155.0, 
										199.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "set $1", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "message", 
									"fontsize": 12.0, 
									"id": "obj-61", 
									"patching_rect": [
										50.0, 
										188.0, 
										50.0, 
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
										"FullPacket"
									], 
									"maxclass": "inlet", 
									"id": "obj-3", 
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
									"id": "obj-4", 
									"patching_rect": [
										50.0, 
										307.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							186.0, 
							317.0, 
							1240.0, 
							637.0
						], 
						"lines": [
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-3", 
										0
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
										"obj-59", 
										1
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
										"obj-59", 
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
										"obj-60", 
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
										"obj-61", 
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
										"obj-76", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-59", 
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
					"text": "p calculate", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-1", 
					"patching_rect": [
						22.456665, 
						338.0, 
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
									"text": "o.timetag /time", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-5", 
									"patching_rect": [
										50.0, 
										106.0, 
										100.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /instance = /touches[[0]]\\, /state = /touches[[1]]\\, /position = [/touches[[2]]\\, /touches [[3]]]\\, /size = [/touches[[4]]\\, /touches [[5]]]\\, delete(/touches)", 
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
										133.0, 
										522.0, 
										33.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /touches", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-1", 
									"patching_rect": [
										50.0, 
										77.0, 
										100.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /gesture/new/touch = /state == 1\\, /gesture/touching = /state == 2\\, /gesture/last/touch = /state == 3\\, delete(/state)\\,", 
									"numinlets": 1, 
									"linecount": 2, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-57", 
									"patching_rect": [
										50.0, 
										289.0, 
										379.0, 
										33.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /instance = [ \\\"/1\\\"\\, \\\"/2\\\"\\, \\\"/3\\\"\\, \\\"/4\\\"\\,\\\"/5\\\"\\, \\\"/6\\\"\\, \\\"/7\\\"\\, \\\"/8\\\"\\, \\\"/9\\\"\\, \\\"/10\\\"\\, \\\"/11\\\"\\, \\\"/12\\\"\\,\\\"/13\\\"\\, \\\"/14\\\"\\, \\\"/15\\\"\\, \\\"/16\\\" ] [[/instance]]\\,", 
									"numinlets": 1, 
									"linecount": 2, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-10", 
									"patching_rect": [
										50.0, 
										232.0, 
										403.0, 
										33.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										"list"
									], 
									"maxclass": "inlet", 
									"id": "obj-37", 
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
									"id": "obj-38", 
									"patching_rect": [
										50.0, 
										505.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							543.0, 
							124.0, 
							897.0, 
							747.0
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
										"obj-10", 
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
										"obj-37", 
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
										"obj-57", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-38", 
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
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-8", 
					"patching_rect": [
						22.456665, 
						192.340881, 
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
									"text": "o.righttoleft", 
									"numinlets": 1, 
									"numoutlets": 8, 
									"outlettype": [
										"FullPacket", 
										"FullPacket", 
										"FullPacket", 
										"FullPacket", 
										"FullPacket", 
										"FullPacket", 
										"FullPacket", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-33", 
									"patching_rect": [
										50.0, 
										155.0, 
										100.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.righttoleft", 
									"numinlets": 1, 
									"numoutlets": 8, 
									"outlettype": [
										"FullPacket", 
										"FullPacket", 
										"FullPacket", 
										"FullPacket", 
										"FullPacket", 
										"FullPacket", 
										"FullPacket", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-31", 
									"patching_rect": [
										247.416641, 
										155.0, 
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
													"text": "o.was /most/recent/time", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-34", 
													"patching_rect": [
														580.0, 
														307.0, 
														142.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.was /most/recent/time", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-33", 
													"patching_rect": [
														481.0, 
														412.0, 
														142.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.was /most/recent/time", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-32", 
													"patching_rect": [
														812.0, 
														227.0, 
														142.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.was /most/recent/time", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-31", 
													"patching_rect": [
														1148.625, 
														202.0, 
														142.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.was /most/recent/time", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-30", 
													"patching_rect": [
														1097.0, 
														456.0, 
														142.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.was /most/recent/time", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-29", 
													"patching_rect": [
														860.0, 
														456.0, 
														142.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.was /most/recent/time", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-28", 
													"patching_rect": [
														407.0, 
														287.0, 
														142.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.was /most/recent/time", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-27", 
													"patching_rect": [
														1121.0, 
														307.0, 
														142.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.was /most/recent/time", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-26", 
													"patching_rect": [
														931.0, 
														325.0, 
														142.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.was /most/recent/time", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-25", 
													"patching_rect": [
														592.5, 
														227.0, 
														142.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.was /most/recent/time", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-24", 
													"patching_rect": [
														727.0, 
														380.0, 
														142.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.was /most/recent/time", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-23", 
													"patching_rect": [
														260.0, 
														358.0, 
														142.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.was /most/recent/time", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-20", 
													"patching_rect": [
														138.0, 
														207.0, 
														142.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.was /most/recent/time", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-19", 
													"patching_rect": [
														339.0, 
														207.0, 
														142.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.was /most/recent/time", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-18", 
													"patching_rect": [
														201.0, 
														499.0, 
														142.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.was /most/recent/time", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-17", 
													"patching_rect": [
														47.0, 
														293.0, 
														142.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.cond /most/recent/instance == \\\"/1\\\"\\, /most/recent/instance == \\\"/2\\\"\\, /most/recent/instance == \\\"/3\\\"\\, /most/recent/instance == \\\"/4\\\"\\, /most/recent/instance == \\\"/5\\\"\\, /most/recent/instance == \\\"/6\\\"\\, /most/recent/instance == \\\"/7\\\"\\, /most/recent/instance == \\\"/8\\\"\\, /most/recent/instance == \\\"/9\\\"\\, /most/recent/instance == \\\"/10\\\"\\, /most/recent/instance == \\\"/11\\\"\\, /most/recent/instance == \\\"/12\\\"\\, /most/recent/instance == \\\"/13\\\"\\, /most/recent/instance == \\\"/14\\\"\\, /most/recent/instance == \\\"/15\\\"\\, /most/recent/instance == \\\"/16\\\"\\,", 
													"numinlets": 1, 
													"linecount": 3, 
													"numoutlets": 17, 
													"outlettype": [
														"FullPacket", 
														"FullPacket", 
														"FullPacket", 
														"FullPacket", 
														"FullPacket", 
														"FullPacket", 
														"FullPacket", 
														"FullPacket", 
														"FullPacket", 
														"FullPacket", 
														"FullPacket", 
														"FullPacket", 
														"FullPacket", 
														"FullPacket", 
														"FullPacket", 
														"FullPacket", 
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-1", 
													"patching_rect": [
														61.0, 
														92.0, 
														1262.0, 
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
													"id": "obj-21", 
													"patching_rect": [
														61.0, 
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
													"id": "obj-22", 
													"patching_rect": [
														592.5, 
														709.0, 
														25.0, 
														25.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"bgcolor": [
														1.0, 
														0.982198, 
														0.996625, 
														1.0
													], 
													"text": "o.was /most/recent/position", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-9", 
													"patching_rect": [
														407.0, 
														252.0, 
														177.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"bgcolor": [
														1.0, 
														0.982198, 
														0.996625, 
														1.0
													], 
													"text": "o.was /most/recent/position", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-10", 
													"patching_rect": [
														1097.0, 
														429.0, 
														177.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"bgcolor": [
														1.0, 
														0.982198, 
														0.996625, 
														1.0
													], 
													"text": "o.was /most/recent/position", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-11", 
													"patching_rect": [
														860.0, 
														427.0, 
														177.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"bgcolor": [
														1.0, 
														0.982198, 
														0.996625, 
														1.0
													], 
													"text": "o.was /most/recent/position", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-12", 
													"patching_rect": [
														931.0, 
														290.0, 
														177.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"bgcolor": [
														1.0, 
														0.982198, 
														0.996625, 
														1.0
													], 
													"text": "o.was /most/recent/position", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-13", 
													"patching_rect": [
														1148.625, 
														169.0, 
														177.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"bgcolor": [
														1.0, 
														0.982198, 
														0.996625, 
														1.0
													], 
													"text": "o.was /most/recent/position", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-14", 
													"patching_rect": [
														1121.0, 
														276.0, 
														177.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"bgcolor": [
														1.0, 
														0.982198, 
														0.996625, 
														1.0
													], 
													"text": "o.was /most/recent/position", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-15", 
													"patching_rect": [
														812.0, 
														200.0, 
														177.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"bgcolor": [
														1.0, 
														0.982198, 
														0.996625, 
														1.0
													], 
													"text": "o.was /most/recent/position", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-16", 
													"patching_rect": [
														727.0, 
														346.0, 
														177.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"bgcolor": [
														1.0, 
														0.982198, 
														0.996625, 
														1.0
													], 
													"text": "o.was /most/recent/position", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-5", 
													"patching_rect": [
														580.0, 
														278.0, 
														177.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"bgcolor": [
														1.0, 
														0.982198, 
														0.996625, 
														1.0
													], 
													"text": "o.was /most/recent/position", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-6", 
													"patching_rect": [
														592.5, 
														198.0, 
														177.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"bgcolor": [
														1.0, 
														0.982198, 
														0.996625, 
														1.0
													], 
													"text": "o.was /most/recent/position", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-7", 
													"patching_rect": [
														481.0, 
														381.0, 
														177.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"bgcolor": [
														1.0, 
														0.982198, 
														0.996625, 
														1.0
													], 
													"text": "o.was /most/recent/position", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-8", 
													"patching_rect": [
														339.0, 
														167.5, 
														177.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"bgcolor": [
														1.0, 
														0.982198, 
														0.996625, 
														1.0
													], 
													"text": "o.was /most/recent/position", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-3", 
													"patching_rect": [
														260.0, 
														329.0, 
														177.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"bgcolor": [
														1.0, 
														0.982198, 
														0.996625, 
														1.0
													], 
													"text": "o.was /most/recent/position", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-4", 
													"patching_rect": [
														201.0, 
														465.0, 
														177.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"bgcolor": [
														1.0, 
														0.982198, 
														0.996625, 
														1.0
													], 
													"text": "o.was /most/recent/position", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-2", 
													"patching_rect": [
														138.0, 
														176.0, 
														177.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"bgcolor": [
														1.0, 
														0.982198, 
														0.996625, 
														1.0
													], 
													"text": "o.was /most/recent/position", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-126", 
													"patching_rect": [
														47.0, 
														268.0, 
														177.0, 
														20.0
													]
												}
											}
										], 
										"default_fontface": 0, 
										"gridonopen": 0, 
										"rect": [
											110.0, 
											66.0, 
											1330.0, 
											795.0
										], 
										"lines": [
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-1", 
														15
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
														12
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
														"obj-1", 
														11
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
														"obj-1", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-126", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-1", 
														14
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
														"obj-1", 
														13
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
														"obj-1", 
														10
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
														"obj-1", 
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
														"obj-1", 
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
														"obj-1", 
														3
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
														"obj-1", 
														2
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
														8
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
														"obj-1", 
														7
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
														"obj-1", 
														6
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
														"obj-1", 
														4
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
														"obj-1", 
														5
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
														"obj-10", 
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
														"obj-11", 
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
														"obj-12", 
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
														"obj-126", 
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
														"obj-13", 
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
														"obj-15", 
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
														"obj-16", 
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
														"obj-17", 
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
														"obj-18", 
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
														"obj-19", 
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
														"obj-2", 
														0
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
														"obj-20", 
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
														"obj-21", 
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
														"obj-23", 
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
														"obj-24", 
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
														"obj-25", 
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
														"obj-26", 
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
														"obj-27", 
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
														"obj-28", 
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
														"obj-29", 
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
														"obj-30", 
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
														"obj-31", 
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
														"obj-32", 
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
														"obj-33", 
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
														"obj-34", 
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
														"obj-4", 
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
														"obj-5", 
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
														"obj-6", 
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
														"obj-7", 
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
														"obj-8", 
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
														"obj-9", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-28", 
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
									"text": "p was", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-23", 
									"patching_rect": [
										231.916641, 
										306.5, 
										168.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /gesture", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-54", 
									"patching_rect": [
										247.416641, 
										128.0, 
										100.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /gesture", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-52", 
									"patching_rect": [
										50.0, 
										128.0, 
										100.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /instance", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 9.0, 
									"id": "obj-29", 
									"patching_rect": [
										247.416641, 
										191.5, 
										78.0, 
										17.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /instance", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 9.0, 
									"id": "obj-12", 
									"patching_rect": [
										328.416626, 
										191.5, 
										78.0, 
										17.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.table @key /instance", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-9", 
									"patching_rect": [
										231.916641, 
										247.0, 
										136.666687, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /instance", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 9.0, 
									"id": "obj-6", 
									"patching_rect": [
										50.0, 
										191.5, 
										78.0, 
										17.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.table @key /instance", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-2", 
									"patching_rect": [
										50.0, 
										247.0, 
										147.0, 
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
									"id": "obj-53", 
									"patching_rect": [
										50.0, 
										338.0, 
										100.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.prepend /most/recent", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-32", 
									"patching_rect": [
										231.916641, 
										277.0, 
										158.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.prepend /starting", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-20", 
									"patching_rect": [
										50.0, 
										277.0, 
										124.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.cond /gesture/new/touch == true\\, /gesture/new/touch == false\\,", 
									"numinlets": 1, 
									"numoutlets": 3, 
									"outlettype": [
										"FullPacket", 
										"FullPacket", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-24", 
									"patching_rect": [
										58.916641, 
										100.0, 
										396.0, 
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
									"id": "obj-34", 
									"patching_rect": [
										58.916641, 
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
									"id": "obj-35", 
									"patching_rect": [
										50.0, 
										418.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							285.0, 
							101.0, 
							568.0, 
							612.0
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
										"obj-20", 
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
										"obj-53", 
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
										"obj-53", 
										1
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
										"obj-52", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-24", 
										1
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
										"obj-29", 
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
										"obj-31", 
										7
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
										5
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
										"obj-31", 
										6
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
										"obj-33", 
										7
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
										6
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
										"obj-34", 
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
										"obj-52", 
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
										"obj-53", 
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
										"obj-54", 
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
										"obj-6", 
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
										"obj-9", 
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
					"text": "p tabulate", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-36", 
					"patching_rect": [
						22.456665, 
						254.500061, 
						67.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /tri/plane", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-22", 
					"patching_rect": [
						322.414978, 
						686.5, 
						100.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /line", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-18", 
					"patching_rect": [
						212.414978, 
						686.5, 
						100.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /point", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-17", 
					"patching_rect": [
						88.414978, 
						686.5, 
						100.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.cond /touches/total == 1\\, /touches/total == 2\\, /touches/total == 3\\, /touches/total == 4\\, /touches/touch == 5\\,", 
					"numinlets": 1, 
					"linecount": 2, 
					"numoutlets": 6, 
					"outlettype": [
						"FullPacket", 
						"FullPacket", 
						"FullPacket", 
						"FullPacket", 
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-16", 
					"patching_rect": [
						88.414978, 
						620.5, 
						531.0, 
						33.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /touches/total = getmsgcount()", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-15", 
					"patching_rect": [
						88.414978, 
						589.5, 
						260.0, 
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
									"id": "obj-3", 
									"patching_rect": [
										252.0, 
										255.0, 
										50.0, 
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
										"FullPacket"
									], 
									"maxclass": "inlet", 
									"id": "obj-5", 
									"patching_rect": [
										175.0, 
										41.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "t l 0", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"int"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-7", 
									"patching_rect": [
										188.5, 
										319.0, 
										32.5, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										""
									], 
									"maxclass": "gswitch2", 
									"parameter_enable": 0, 
									"id": "obj-34", 
									"patching_rect": [
										117.0, 
										204.0, 
										39.0, 
										32.0
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
									"id": "obj-12", 
									"patching_rect": [
										188.5, 
										285.0, 
										55.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "delay 3.", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										"bang"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-1", 
									"patching_rect": [
										137.0, 
										245.0, 
										53.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "t b 1 l", 
									"numinlets": 1, 
									"numoutlets": 3, 
									"outlettype": [
										"bang", 
										"int", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-4", 
									"patching_rect": [
										175.0, 
										100.0, 
										46.0, 
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
									"id": "obj-9", 
									"patching_rect": [
										188.5, 
										458.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							676.0, 
							319.0, 
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
										"obj-12", 
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
										"obj-3", 
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
										"obj-34", 
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
										"obj-4", 
										2
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
										1
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
										"obj-4", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-34", 
										1
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
										"obj-7", 
										1
									], 
									"hidden": 0, 
									"destination": [
										"obj-34", 
										0
									], 
									"midpoints": [
										211.5, 
										348.0, 
										52.0, 
										348.0, 
										52.0, 
										187.0, 
										126.5, 
										187.0
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
										"obj-9", 
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
					"text": "p congregate", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-11", 
					"patching_rect": [
						22.456665, 
						367.500061, 
						87.0, 
						20.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			59.0, 
			44.0, 
			767.0, 
			757.0
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
						"obj-11", 
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
						"obj-6", 
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
						"obj-8", 
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
						"obj-16", 
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
						"obj-16", 
						1
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
						2
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
						"obj-16", 
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
						"obj-16", 
						4
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
						"obj-2", 
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
						"obj-30", 
						6
					], 
					"hidden": 0, 
					"destination": [
						"obj-32", 
						6
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-30", 
						5
					], 
					"hidden": 0, 
					"destination": [
						"obj-32", 
						5
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-30", 
						4
					], 
					"hidden": 0, 
					"destination": [
						"obj-32", 
						4
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-30", 
						3
					], 
					"hidden": 0, 
					"destination": [
						"obj-32", 
						3
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-30", 
						2
					], 
					"hidden": 0, 
					"destination": [
						"obj-32", 
						2
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
						"obj-32", 
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
						"obj-32", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-30", 
						7
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
						"obj-32", 
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
						"obj-33", 
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
						"obj-36", 
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
						"obj-14", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-39", 
						1
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
						"obj-40", 
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
						"obj-5", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-32", 
						7
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
						"obj-70", 
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
						"obj-6", 
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
						"obj-51", 
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
						"obj-4", 
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