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
			"revision": 6
		}, 
		"boxes": [
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /waveforms", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-19", 
					"patching_rect": [
						46.0, 
						253.0, 
						113.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "c.smooth~", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-18", 
					"patching_rect": [
						795.0, 
						403.0, 
						66.0, 
						20.0
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
						156.0, 
						56.0, 
						25.0, 
						24.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "classical waveshapes\n\nAdrian Freed 2014", 
					"numinlets": 1, 
					"linecount": 3, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-46", 
					"patching_rect": [
						215.0, 
						43.0, 
						150.0, 
						47.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.in~ @name frequency", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-43", 
					"patching_rect": [
						45.0, 
						339.0, 
						160.0, 
						22.0
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
						45.0, 
						299.0, 
						25.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "c.smooth~", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-42", 
					"patching_rect": [
						206.0, 
						340.0, 
						66.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "+~ 0.", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-41", 
					"patching_rect": [
						263.0, 
						408.0, 
						38.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "c.smooth~", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-38", 
					"patching_rect": [
						453.0, 
						380.0, 
						66.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "c.smooth~", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-34", 
					"patching_rect": [
						681.0, 
						380.0, 
						66.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "c.smooth~", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-30", 
					"patching_rect": [
						572.0, 
						380.0, 
						66.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "c.smooth~", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-28", 
					"patching_rect": [
						356.0, 
						380.0, 
						66.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.in~ @name amplitude", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-5", 
					"patching_rect": [
						70.0, 
						494.0, 
						159.0, 
						22.0
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
						70.0, 
						455.0, 
						25.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/waveforms/sine/amplitude ??= 1.,\n/waveforms/sawtooth/amplitude ??= 0.,\n/waveforms/triangle/amplitude ??= 0.,\n/waveforms/noise/amplitude ??= 0.,\n/waveforms/square/amplitude ??= 0.,\n/waveforms/frequency ??= 440.,\n/waveforms/portamento/time ??= 0.01,\n/waveforms/ramp/time  ??= 0.01,", 
					"numinlets": 1, 
					"maxclass": "o.expr.codebox", 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"linecount": 8, 
					"fontsize": 14.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-10", 
					"patching_rect": [
						19.0, 
						99.0, 
						291.0, 
						145.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "*~ 0.", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-24", 
					"patching_rect": [
						751.0, 
						492.0, 
						62.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "*~ 0.", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-23", 
					"patching_rect": [
						637.0, 
						492.0, 
						63.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "*~ 0.", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-22", 
					"patching_rect": [
						537.0, 
						492.0, 
						54.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "*~ 0.", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-21", 
					"patching_rect": [
						412.0, 
						492.0, 
						68.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "rect~", 
					"numinlets": 3, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-20", 
					"patching_rect": [
						751.0, 
						453.0, 
						41.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "*~ 0.", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-16", 
					"patching_rect": [
						264.0, 
						494.0, 
						106.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "pink~", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-15", 
					"patching_rect": [
						637.0, 
						453.0, 
						44.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "tri~", 
					"numinlets": 3, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-14", 
					"patching_rect": [
						537.0, 
						453.0, 
						35.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "saw~", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-13", 
					"patching_rect": [
						412.0, 
						453.0, 
						43.0, 
						22.0
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
					"fontsize": 14.0, 
					"id": "obj-11", 
					"patching_rect": [
						20.0, 
						560.0, 
						129.0, 
						22.0
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
						19.0, 
						607.0, 
						25.0, 
						25.0
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
					"fontsize": 14.0, 
					"id": "obj-8", 
					"patching_rect": [
						18.0, 
						60.0, 
						120.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "*~ 1.", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-6", 
					"patching_rect": [
						392.0, 
						554.0, 
						40.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /frequency /portamento/time /sine/amplitude /sawtooth/amplitude /triangle/amplitude /noise/amplitude /square/amplitude /ramp/time", 
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
					"fontsize": 14.0, 
					"id": "obj-1", 
					"patching_rect": [
						110.0, 
						285.0, 
						900.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "cycle~", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-2", 
					"patching_rect": [
						264.0, 
						455.0, 
						51.0, 
						22.0
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
					"id": "obj-3", 
					"patching_rect": [
						18.0, 
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
					"id": "obj-4", 
					"patching_rect": [
						392.0, 
						592.0, 
						25.0, 
						25.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			569.0, 
			-991.0, 
			1244.0, 
			690.0
		], 
		"lines": [
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-1", 
						7
					], 
					"hidden": 0, 
					"destination": [
						"obj-18", 
						1
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
						"obj-18", 
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
						"obj-28", 
						1
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
						"obj-28", 
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
						"obj-30", 
						1
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
						"obj-30", 
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
						"obj-34", 
						1
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
						"obj-34", 
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
						"obj-38", 
						1
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
						"obj-38", 
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
						"obj-42", 
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
						"obj-42", 
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
						"obj-11", 
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
						"obj-19", 
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
					"disabled": 0, 
					"source": [
						"obj-13", 
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
						"obj-14", 
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
						"obj-15", 
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
						"obj-16", 
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
						"obj-18", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-24", 
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
						"obj-1", 
						0
					], 
					"source": [
						"obj-19", 
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
						"obj-16", 
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
						"obj-24", 
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
						"obj-6", 
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
						"obj-6", 
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
						"obj-6", 
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
						"obj-6", 
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
						"obj-16", 
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
						"obj-8", 
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
						"obj-30", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-22", 
						1
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
						"obj-23", 
						1
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
						"obj-21", 
						1
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-41", 
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
						"obj-41", 
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
						"obj-41", 
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
						"obj-41", 
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
						"obj-42", 
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
						"obj-43", 
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
						"obj-44", 
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
						"obj-5", 
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
						"obj-10", 
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
		"bglocked": 0, 
		"dependency_cache": [
			{
				"patcherrelativepath": "../../patchers/core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.in.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core"
			}, 
			{
				"patcherrelativepath": "../../patchers/core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.port.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core"
			}, 
			{
				"patcherrelativepath": "../../experimental/aspect", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.aspect.joinpoint.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/experimental/aspect"
			}, 
			{
				"patcherrelativepath": "../../patchers/core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.out.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core"
			}, 
			{
				"patcherrelativepath": "../../patchers/core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.in~.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core"
			}, 
			{
				"patcherrelativepath": "../../../../../Applications/Max 6.1/patches/m4l-patches/Pluggo for Live resources/patches", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "thru.maxpat", 
				"bootpath": "/Applications/Max 6.1/patches/m4l-patches/Pluggo for Live resources/patches"
			}, 
			{
				"patcherrelativepath": ".", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "c.smooth~.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/examples/sound"
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
				"name": "o.collect.mxo"
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
				"name": "o.expr.codebox.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.compose.mxo"
			}
		]
	}
}