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
									"text": "o.route /touch", 
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
										50.0, 
										100.0, 
										84.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /1 /2 /3 /4 /5 /6 /7 /8 /9 /10 /11 /12 /13 /14 /15 /16", 
									"numinlets": 17, 
									"numoutlets": 17, 
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
									"id": "obj-18", 
									"patching_rect": [
										50.0, 
										137.5, 
										307.0, 
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
									"id": "obj-10", 
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
										45.0, 
										217.5, 
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
										338.0, 
										217.5, 
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
										"obj-11", 
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
										"obj-11", 
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
										15
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
										"obj-18", 
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
										"obj-18", 
										13
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
										"obj-18", 
										12
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
										"obj-18", 
										11
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
										"obj-18", 
										10
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
										"obj-18", 
										9
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
										"obj-18", 
										8
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
										"obj-18", 
										7
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
										"obj-18", 
										6
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
										"obj-18", 
										5
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
										"obj-18", 
										4
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
										"obj-18", 
										3
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
										"obj-18", 
										2
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
										"obj-18", 
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
										"obj-18", 
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
										"obj-18", 
										16
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
						"fontface": 0, 
						"globalpatchername": "", 
						"fontsize": 12.0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p route", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-16", 
					"patching_rect": [
						46.5, 
						56.5, 
						48.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "t b", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"bang"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-9", 
					"patching_rect": [
						93.5, 
						260.0, 
						24.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "t b", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"bang"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-8", 
					"patching_rect": [
						70.333336, 
						260.0, 
						24.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "t clear b", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"clear", 
						"bang"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-7", 
					"patching_rect": [
						18.5, 
						287.0, 
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
									"text": "o.expr /frameoval = list(/position[[0]]\\, /position[[1]] * 0.625\\, /position[[0]] + /size[[0]]\\, (/position[[1]] * 0.625) + (/size[[1]] * .625))\\, /frameoval *= 400.\\,", 
									"numinlets": 1, 
									"maxclass": "newobj", 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"linecount": 2, 
									"fontsize": 12.0, 
									"id": "obj-2", 
									"patching_rect": [
										169.5, 
										221.5, 
										595.0, 
										33.0
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
										138.411133, 
										510.0, 
										32.0, 
										32.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.select /state", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-106", 
									"patching_rect": [
										50.0, 
										95.0, 
										85.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.cond /state == hit\\, /state == held\\, /state == retracted", 
									"numinlets": 1, 
									"maxclass": "newobj", 
									"numoutlets": 4, 
									"outlettype": [
										"FullPacket", 
										"FullPacket", 
										"FullPacket", 
										"FullPacket"
									], 
									"linecount": 3, 
									"fontsize": 12.0, 
									"id": "obj-90", 
									"patching_rect": [
										40.955566, 
										294.5, 
										138.0, 
										47.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /position[[1]] = scale(/position[[1]]\\, 0.\\, 1\\, 1\\, 0)", 
									"numinlets": 1, 
									"maxclass": "newobj", 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"linecount": 3, 
									"fontsize": 12.0, 
									"id": "obj-81", 
									"patching_rect": [
										169.5, 
										162.5, 
										142.0, 
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
										""
									], 
									"maxclass": "inlet", 
									"id": "obj-65", 
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
									"id": "obj-66", 
									"patching_rect": [
										58.455566, 
										510.0, 
										17.0, 
										17.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-67", 
									"patching_rect": [
										97.455566, 
										510.0, 
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
									"id": "obj-69", 
									"patching_rect": [
										218.5, 
										533.0, 
										55.0, 
										55.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							170.0, 
							44.0, 
							949.0, 
							775.0
						], 
						"lines": [
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-106", 
										1
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
										"obj-106", 
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
										"obj-2", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-69", 
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
										"obj-106", 
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
										"obj-2", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-90", 
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
										"obj-90", 
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
										"obj-90", 
										1
									], 
									"hidden": 0, 
									"destination": [
										"obj-67", 
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
						"fontface": 0, 
						"globalpatchername": "", 
						"fontsize": 12.0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p re-situate", 
					"numinlets": 1, 
					"numoutlets": 4, 
					"outlettype": [
						"FullPacket", 
						"FullPacket", 
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-70", 
					"patching_rect": [
						46.5, 
						194.5, 
						71.0, 
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
									"text": "o.route /touch/color", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-3", 
									"patching_rect": [
										130.0, 
										142.0, 
										113.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /touch/color = list(color\\, /total/count * 16)", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-2", 
									"patching_rect": [
										130.0, 
										109.0, 
										261.0, 
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
													"fontsize": 11.5, 
													"id": "obj-30", 
													"patching_rect": [
														50.0, 
														100.0, 
														60.0, 
														19.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "brgb 0 0 0, clear", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "message", 
													"fontsize": 11.5, 
													"id": "obj-55", 
													"patching_rect": [
														50.0, 
														134.5, 
														97.0, 
														17.0
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
														50.0, 
														211.5, 
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
														"obj-30", 
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
														"obj-55", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-41", 
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
										"fontface": 0, 
										"globalpatchername": "", 
										"fontsize": 12.0, 
										"default_fontface": 0, 
										"default_fontname": "Arial", 
										"default_fontsize": 12.0, 
										"digest": ""
									}, 
									"text": "p initialize", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-44", 
									"patching_rect": [
										50.0, 
										133.0, 
										63.0, 
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
									"id": "obj-35", 
									"patching_rect": [
										424.5, 
										101.0, 
										55.0, 
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
									"id": "obj-60", 
									"patching_rect": [
										130.0, 
										25.0, 
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
										"bang"
									], 
									"maxclass": "inlet", 
									"id": "obj-61", 
									"patching_rect": [
										239.5, 
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
									"id": "obj-62", 
									"patching_rect": [
										85.0, 
										236.0, 
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
									"id": "obj-63", 
									"patching_rect": [
										239.5, 
										236.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							800.0, 
							110.0, 
							640.0, 
							480.0
						], 
						"lines": [
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
										"obj-62", 
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
										"obj-63", 
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
										"obj-62", 
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
										"obj-2", 
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
										"obj-35", 
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
						"fontface": 0, 
						"globalpatchername": "", 
						"fontsize": 12.0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p state cache - display", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-64", 
					"patching_rect": [
						140.25, 
						430.0, 
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
						"visible": 1, 
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
									"text": "prepend frameoval", 
									"numinlets": 1, 
									"maxclass": "newobj", 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"linecount": 2, 
									"fontsize": 12.0, 
									"id": "obj-2", 
									"patching_rect": [
										86.0, 
										178.0, 
										100.0, 
										33.0
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
										305.0, 
										208.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /frameoval", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-39", 
									"patching_rect": [
										50.0, 
										100.0, 
										107.0, 
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
									"id": "obj-57", 
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
									"id": "obj-58", 
									"patching_rect": [
										50.0, 
										212.0, 
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
						"boxanimatetime": 200, 
						"lines": [
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-2", 
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
										"obj-39", 
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
										"obj-39", 
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
										"obj-57", 
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
						"fontface": 0, 
						"globalpatchername": "", 
						"fontsize": 12.0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p de-situate", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-59", 
					"patching_rect": [
						251.25, 
						467.0, 
						73.0, 
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
					"id": "obj-86", 
					"patching_rect": [
						637.0, 
						597.0, 
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
					"id": "obj-14", 
					"patching_rect": [
						243.25, 
						38.5, 
						48.0, 
						48.0
					]
				}
			}, 
			{
				"box": {
					"comment": "", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "outlet", 
					"id": "obj-12", 
					"patching_rect": [
						32.5, 
						689.0, 
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
					"id": "obj-1", 
					"patching_rect": [
						46.5, 
						1.0, 
						25.0, 
						25.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			190.0, 
			228.0, 
			1116.0, 
			756.0
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
						"obj-16", 
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
						"obj-16", 
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
						"obj-16", 
						1
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
						"obj-59", 
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
						"obj-59", 
						1
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
						"obj-64", 
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
						"obj-64", 
						1
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
						"obj-7", 
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
						"obj-7", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-64", 
						1
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-70", 
						3
					], 
					"hidden": 0, 
					"destination": [
						"obj-64", 
						1
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
						"obj-7", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-70", 
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
						"obj-70", 
						2
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
						"obj-8", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-64", 
						1
					]
				}
			}
		], 
		"statusbarvisible": 2, 
		"gridsnaponopen": 0, 
		"bglocked": 0
	}
}