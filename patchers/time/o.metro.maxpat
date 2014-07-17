{
	"patcher": {
		"fileversion": 1, 
		"imprint": 0, 
		"boxanimatetime": 200, 
		"devicewidth": 0.0, 
		"default_fontsize": 12.0, 
		"toolbarvisible": 1, 
		"default_fontname": "Helvetica Neue", 
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
			"revision": 6
		}, 
		"boxes": [
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": " /bpm ??= 60.", 
					"numinlets": 1, 
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
					"id": "obj-27", 
					"patching_rect": [
						208.5, 
						64.0, 
						150.0, 
						33.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "/units/interval = \"Seconds\", \n/units/bpm = \"Beats Per Minute\", \n/units/rate = \"Hertz (cycles per second)\",", 
					"numinlets": 1, 
					"maxclass": "o.expr.codebox", 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"linecount": 3, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-18", 
					"patching_rect": [
						249.0, 
						134.0, 
						397.0, 
						61.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "Ilya \nAdrian\n2014", 
					"numinlets": 1, 
					"linecount": 3, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-19", 
					"patching_rect": [
						313.0, 
						647.0, 
						150.0, 
						48.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "Rate", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-26", 
					"patching_rect": [
						106.0, 
						330.0, 
						103.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "Beats Per Minute", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-25", 
					"patching_rect": [
						106.0, 
						259.0, 
						103.0, 
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
					"id": "obj-24", 
					"patching_rect": [
						209.0, 
						660.0, 
						25.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.out @name main", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-23", 
					"patching_rect": [
						209.0, 
						600.0, 
						110.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"patcher": {
						"fileversion": 1, 
						"imprint": 0, 
						"boxanimatetime": 200, 
						"devicewidth": 0.0, 
						"default_fontsize": 12.0, 
						"toolbarvisible": 1, 
						"default_fontname": "Helvetica Neue", 
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
							"revision": 6
						}, 
						"boxes": [
							{
								"box": {
									"fontname": "Helvetica Neue", 
									"text": "clear", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "message", 
									"fontsize": 12.0, 
									"id": "obj-4", 
									"patching_rect": [
										264.0, 
										347.0, 
										36.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Helvetica Neue", 
									"text": "o.recurse", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-2", 
									"patching_rect": [
										264.0, 
										413.0, 
										61.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Helvetica Neue", 
									"text": "outputs bangs", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 12.0, 
									"id": "obj-46", 
									"patching_rect": [
										242.0, 
										463.5, 
										88.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Helvetica Neue", 
									"text": "expects a bundle containing /interval", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 12.0, 
									"id": "obj-45", 
									"patching_rect": [
										240.0, 
										30.0, 
										208.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Helvetica Neue", 
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
									"id": "obj-43", 
									"patching_rect": [
										210.0, 
										75.0, 
										113.5, 
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
									"id": "obj-42", 
									"patching_rect": [
										210.0, 
										30.0, 
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
										212.0, 
										461.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Helvetica Neue", 
									"text": "init functions;\nnote that /metro/started is offset by 0.01 seconds to provide bounded latency on first tick.", 
									"numinlets": 1, 
									"linecount": 4, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 12.0, 
									"id": "obj-37", 
									"patching_rect": [
										20.0, 
										167.0, 
										190.0, 
										62.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Helvetica Neue", 
									"text": "o.when /interval > 0.", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-35", 
									"patching_rect": [
										210.0, 
										145.0, 
										119.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Helvetica Neue", 
									"text": "o.schedule /metro/next", 
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
									"id": "obj-9", 
									"patching_rect": [
										212.0, 
										371.0, 
										135.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Helvetica Neue", 
									"text": "o.expr /n = 0\\, /metro/started += 0.01\\,", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-8", 
									"patching_rect": [
										210.0, 
										209.0, 
										210.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Helvetica Neue", 
									"text": "o.expr /metro/next = /n * /interval + /metro/started\\, ++/n\\,", 
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
										270.0, 
										314.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Helvetica Neue", 
									"text": "o.timetag /metro/started", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-1", 
									"patching_rect": [
										210.0, 
										179.0, 
										141.0, 
										20.0
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
							779.0
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
										"obj-2", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-6", 
										0
									], 
									"midpoints": [
										273.5, 
										447.0, 
										546.0, 
										447.0, 
										546.0, 
										345.0, 
										546.0, 
										345.0, 
										546.0, 
										247.0, 
										219.5, 
										247.0
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
										"obj-9", 
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
										"obj-35", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-43", 
										7
									], 
									"hidden": 0, 
									"destination": [
										"obj-4", 
										0
									], 
									"midpoints": [
										314.0, 
										105.0, 
										564.0, 
										105.0, 
										564.0, 
										255.0, 
										565.0, 
										255.0, 
										565.0, 
										333.0, 
										273.5, 
										333.0
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
										"obj-6", 
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
										1
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
										"obj-9", 
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
						"fontname": "Helvetica Neue", 
						"description": "", 
						"tags": "", 
						"fontface": 0, 
						"globalpatchername": "", 
						"fontsize": 12.0, 
						"default_fontface": 0, 
						"default_fontname": "Helvetica Neue", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p metronome", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-22", 
					"patching_rect": [
						209.0, 
						510.0, 
						82.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.union", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-21", 
					"patching_rect": [
						209.0, 
						571.0, 
						50.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "blend in parameters the metronome is using...", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-20", 
					"patching_rect": [
						330.0, 
						485.0, 
						257.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.select /interval", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-17", 
					"patching_rect": [
						209.0, 
						465.0, 
						99.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.expr /bpm = 60. / /interval\\, /rate = 1. / /interval\\,", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-16", 
					"patching_rect": [
						315.0, 
						465.0, 
						272.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
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
					"id": "obj-15", 
					"patching_rect": [
						209.0, 
						420.0, 
						125.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.expr /interval = 1. / /rate", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-14", 
					"patching_rect": [
						209.0, 
						369.0, 
						150.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.if bound(/rate)", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-13", 
					"patching_rect": [
						209.0, 
						339.0, 
						286.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.expr /interval = 60. / /bpm", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-12", 
					"patching_rect": [
						209.0, 
						298.0, 
						160.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.if bound(/bpm)", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-11", 
					"patching_rect": [
						209.0, 
						268.0, 
						286.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.in @name main", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-10", 
					"patching_rect": [
						60.0, 
						134.0, 
						102.0, 
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
					"id": "obj-9", 
					"patching_rect": [
						60.0, 
						12.5, 
						25.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
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
					"id": "obj-8", 
					"patching_rect": [
						208.5, 
						195.5, 
						30.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.union", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-7", 
					"patching_rect": [
						209.0, 
						240.5, 
						59.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.init", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-6", 
					"patching_rect": [
						249.0, 
						209.5, 
						37.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "t b", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"bang"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-5", 
					"patching_rect": [
						208.5, 
						164.5, 
						25.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
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
					"id": "obj-3", 
					"patching_rect": [
						208.5, 
						104.5, 
						113.5, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.arguments", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-2", 
					"patching_rect": [
						208.5, 
						35.0, 
						78.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "patcherargs", 
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
						208.5, 
						7.0, 
						129.0, 
						20.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			167.0, 
			79.0, 
			1013.0, 
			736.0
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
						"obj-2", 
						1
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
						"obj-2", 
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
						"obj-10", 
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
						"obj-12", 
						0
					], 
					"source": [
						"obj-11", 
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
						"obj-13", 
						0
					], 
					"source": [
						"obj-11", 
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
						"obj-13", 
						0
					], 
					"source": [
						"obj-12", 
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
						"obj-14", 
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
						"obj-15", 
						0
					], 
					"source": [
						"obj-13", 
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
						"obj-15", 
						0
					], 
					"source": [
						"obj-14", 
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
						"obj-16", 
						0
					], 
					"source": [
						"obj-15", 
						7
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
						"obj-17", 
						0
					], 
					"source": [
						"obj-15", 
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
						"obj-21", 
						1
					], 
					"source": [
						"obj-16", 
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
						"obj-22", 
						0
					], 
					"source": [
						"obj-17", 
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
						"obj-27", 
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
						"obj-23", 
						0
					], 
					"source": [
						"obj-21", 
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
						"obj-21", 
						0
					], 
					"source": [
						"obj-22", 
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
						"obj-24", 
						0
					], 
					"source": [
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
						3
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
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"disabled": 0, 
					"hidden": 0, 
					"destination": [
						"obj-5", 
						0
					], 
					"source": [
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
						"obj-7", 
						1
					], 
					"source": [
						"obj-6", 
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
						"obj-11", 
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
						"obj-10", 
						0
					], 
					"source": [
						"obj-9", 
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