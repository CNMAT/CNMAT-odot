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
									"fontname": "Arial", 
									"text": "o.expr /total/count = getmsgcount()\\, /total/count /= 3", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-8", 
									"patching_rect": [
										188.5, 
										378.0, 
										285.0, 
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
										279.0, 
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
						"fontface": 0, 
						"globalpatchername": "", 
						"fontsize": 12.0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p fuse concurrent events with timeout delay", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-10", 
					"patching_rect": [
						66.0, 
						26.0, 
						239.5, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "t l l l", 
					"numinlets": 1, 
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
						231.0, 
						150.0, 
						46.0, 
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
					"id": "obj-4", 
					"patching_rect": [
						66.0, 
						53.0, 
						32.5, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.select /total/count", 
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
						88.0, 
						77.0, 
						114.0, 
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
						21.0, 
						654.0, 
						25.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"presentation_rect": [
						512.0, 
						44.46875, 
						19.0, 
						55.8125
					], 
					"handoff": "", 
					"numinlets": 1, 
					"hltcolor": [
						1.0, 
						0.059025, 
						0.041294, 
						0.5
					], 
					"numoutlets": 4, 
					"outlettype": [
						"bang", 
						"bang", 
						"", 
						"int"
					], 
					"maxclass": "ubutton", 
					"presentation": 1, 
					"id": "obj-47", 
					"patching_rect": [
						809.349976, 
						126.0, 
						65.0, 
						34.0
					]
				}
			}, 
			{
				"box": {
					"presentation_rect": [
						512.0, 
						100.28125, 
						19.0, 
						21.0
					], 
					"handoff": "", 
					"numinlets": 1, 
					"hltcolor": [
						1.0, 
						0.015209, 
						0.083379, 
						0.5
					], 
					"numoutlets": 4, 
					"outlettype": [
						"bang", 
						"bang", 
						"", 
						"int"
					], 
					"maxclass": "ubutton", 
					"presentation": 1, 
					"id": "obj-41", 
					"patching_rect": [
						623.349976, 
						126.0, 
						65.0, 
						34.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.io.tablet.display.helper.pen.button", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"bang", 
						"bang"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-29", 
					"patching_rect": [
						623.349976, 
						89.0, 
						198.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.io.tablet.display.helper.pen.tilt", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-27", 
					"patching_rect": [
						948.849976, 
						216.0, 
						177.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.io.tablet.display.helper.pen.xyz", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-26", 
					"patching_rect": [
						491.5, 
						223.0, 
						183.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.io.tablet.display.helper.touch", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"clear", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-25", 
					"patching_rect": [
						66.0, 
						223.0, 
						171.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"presentation_rect": [
						105.0, 
						44.46875, 
						400.849976, 
						250.0
					], 
					"bgtransparent": 1, 
					"numinlets": 1, 
					"numoutlets": 4, 
					"outlettype": [
						"list", 
						"list", 
						"int", 
						""
					], 
					"maxclass": "lcd", 
					"presentation": 1, 
					"id": "obj-79", 
					"patching_rect": [
						491.5, 
						265.5, 
						400.849976, 
						250.0
					]
				}
			}, 
			{
				"box": {
					"presentation_rect": [
						3.0, 
						91.625, 
						91.0, 
						155.6875
					], 
					"name": "tilt.disp", 
					"numinlets": 1, 
					"maxclass": "jit.pwindow", 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"idlemouse": 1, 
					"presentation": 1, 
					"id": "obj-76", 
					"patching_rect": [
						903.849976, 
						287.5, 
						368.0, 
						228.0
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
					"id": "obj-24", 
					"patching_rect": [
						183.0, 
						116.0, 
						115.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"presentation_rect": [
						112.0, 
						79.03125, 
						320.0, 
						180.375
					], 
					"bgtransparent": 1, 
					"border": 0, 
					"numinlets": 1, 
					"presentation": 1, 
					"numoutlets": 4, 
					"outlettype": [
						"list", 
						"list", 
						"int", 
						""
					], 
					"maxclass": "lcd", 
					"local": 0, 
					"id": "obj-28", 
					"patching_rect": [
						66.0, 
						250.5, 
						400.0, 
						250.0
					]
				}
			}, 
			{
				"box": {
					"presentation_rect": [
						-3.075012, 
						-1.375, 
						565.0, 
						341.6875
					], 
					"numinlets": 1, 
					"pic": "wacom-intuos-5-tablet.jpg", 
					"autofit": 1, 
					"numoutlets": 0, 
					"maxclass": "fpic", 
					"presentation": 1, 
					"id": "obj-23", 
					"patching_rect": [
						273.0, 
						23.0, 
						100.0, 
						50.0
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
						66.0, 
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
			28.0, 
			44.0, 
			1412.0, 
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
						"obj-10", 
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
						"obj-4", 
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
						"obj-25", 
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
						"obj-5", 
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
						"obj-28", 
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
						"obj-79", 
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
						"obj-41", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-29", 
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
						"obj-3", 
						1
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
						"obj-3", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-25", 
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
						"obj-2", 
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
						1
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
						"obj-5", 
						2
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
						"obj-5", 
						0
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
	}
}