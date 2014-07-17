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
		"parameters": {
			"obj-53": [
				"textbutton[5]", 
				"textbutton", 
				0
			], 
			"obj-38": [
				"textbutton[4]", 
				"textbutton", 
				0
			]
		}, 
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
					"text": "Basic Sequencer\nIlya Adrian 2014", 
					"numinlets": 1, 
					"linecount": 2, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-14", 
					"patching_rect": [
						210.0, 
						711.0, 
						150.0, 
						34.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "eval(/command), delete(/command)", 
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
					"id": "obj-3", 
					"patching_rect": [
						785.5, 
						87.0, 
						219.0, 
						33.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
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
					"id": "obj-42", 
					"patching_rect": [
						629.0, 
						403.5, 
						280.0, 
						34.0
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
						560.0, 
						335.0, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "t 0", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"int"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-29", 
					"patching_rect": [
						153.5, 
						554.5, 
						24.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.pack /value", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-22", 
					"patching_rect": [
						94.5, 
						240.0, 
						83.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "/event/time = /record/end/time,\n/event/endplayback = true,", 
					"numinlets": 1, 
					"maxclass": "o.expr.codebox", 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"linecount": 2, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-20", 
					"patching_rect": [
						94.5, 
						185.0, 
						181.0, 
						47.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.timetag /record/end/time", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-19", 
					"patching_rect": [
						940.5, 
						163.5, 
						154.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.pack /event", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-61", 
					"patching_rect": [
						629.0, 
						183.5, 
						84.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "t clear", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"clear"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-56", 
					"patching_rect": [
						86.0, 
						374.0, 
						44.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "eval(/command), \ndelete(/command),", 
					"numinlets": 1, 
					"maxclass": "o.expr.codebox", 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"linecount": 2, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-51", 
					"patching_rect": [
						475.0, 
						105.5, 
						113.0, 
						47.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.pack /command", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-52", 
					"patching_rect": [
						475.0, 
						70.5, 
						108.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"texton": "/playing = true", 
					"fontname": "Arial", 
					"outputmode": 0, 
					"text": "/playing = false", 
					"numinlets": 1, 
					"numoutlets": 3, 
					"outlettype": [
						"", 
						"", 
						"int"
					], 
					"maxclass": "textbutton", 
					"fontsize": 13.0, 
					"mode": 1, 
					"varname": "textbutton[1]", 
					"presentation_rect": [
						25.652344, 
						20.0, 
						106.695312, 
						22.523438
					], 
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_shortname": "textbutton", 
							"parameter_invisible": 1, 
							"parameter_longname": "textbutton[5]", 
							"parameter_type": 3
						}
					}, 
					"presentation": 1, 
					"id": "obj-53", 
					"patching_rect": [
						431.152344, 
						35.5, 
						106.695312, 
						22.523438
					], 
					"parameter_enable": 1
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.if /playing!=true", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-54", 
					"patching_rect": [
						475.0, 
						169.5, 
						104.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.pack /command", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-49", 
					"patching_rect": [
						785.5, 
						60.0, 
						108.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"texton": "/recording = true", 
					"fontname": "Arial", 
					"fontlink": 1, 
					"outputmode": 0, 
					"text": "/recording  = false", 
					"numinlets": 1, 
					"numoutlets": 3, 
					"outlettype": [
						"", 
						"", 
						"int"
					], 
					"maxclass": "textbutton", 
					"fontsize": 13.0, 
					"mode": 1, 
					"varname": "textbutton[4]", 
					"presentation_rect": [
						186.152344, 
						20.0, 
						119.695312, 
						22.523438
					], 
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_shortname": "textbutton", 
							"parameter_invisible": 1, 
							"parameter_longname": "textbutton[4]", 
							"parameter_type": 3
						}
					}, 
					"presentation": 1, 
					"id": "obj-38", 
					"patching_rect": [
						652.304688, 
						11.5, 
						119.695312, 
						22.523438
					], 
					"parameter_enable": 1
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "prepend set", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-34", 
					"patching_rect": [
						52.0, 
						554.5, 
						75.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.if /recording==true", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-28", 
					"patching_rect": [
						785.5, 
						131.5, 
						174.0, 
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
					"id": "obj-24", 
					"patching_rect": [
						629.0, 
						218.5, 
						50.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.when /recording==true", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-12", 
					"patching_rect": [
						629.0, 
						245.5, 
						143.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "/late = false,", 
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
					"id": "obj-9", 
					"patching_rect": [
						52.0, 
						439.5, 
						78.0, 
						33.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "/late = true,", 
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
					"id": "obj-7", 
					"patching_rect": [
						171.0, 
						439.5, 
						74.0, 
						33.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "erases previously\nstored sequence", 
					"numinlets": 1, 
					"linecount": 2, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-4", 
					"patching_rect": [
						801.0, 
						189.5, 
						107.0, 
						34.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "The time of the playback event starts from /play/start/time - the difference between /evant/time and /record/start/time tells us how long to wait from /play/ started until the scheduling of the event. A small delay is added to make sure there is time for o.schedule to set up the schedule without missing any early events.", 
					"numinlets": 1, 
					"linecount": 5, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-68", 
					"patching_rect": [
						28.0, 
						606.0, 
						420.0, 
						76.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "Ensure that /play/started is included in each bundle", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-67", 
					"patching_rect": [
						118.0, 
						277.0, 
						286.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "Enumerate all  the sub-bundles of /sequence, i.e. all the recorded events to be scheduled", 
					"numinlets": 1, 
					"linecount": 3, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-66", 
					"patching_rect": [
						215.5, 
						132.0, 
						201.0, 
						48.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "Save a copy of the last recorded sequence for future playback", 
					"numinlets": 1, 
					"linecount": 3, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-64", 
					"patching_rect": [
						431.152344, 
						453.0, 
						152.5, 
						48.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "Append the new event to the\n existing sequence.", 
					"numinlets": 1, 
					"linecount": 2, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-60", 
					"patching_rect": [
						684.5, 
						287.5, 
						169.0, 
						34.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.route /event/value /event/endplayback", 
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
						52.0, 
						522.5, 
						227.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.route /value", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-43", 
					"patching_rect": [
						52.0, 
						493.5, 
						84.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.timetag /play/start/time", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-40", 
					"patching_rect": [
						52.0, 
						83.0, 
						146.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "/play/event/time = /play/start/time +\n (/value./event/time - /record/start/time) + 0.1, ", 
					"numinlets": 1, 
					"maxclass": "o.expr.codebox", 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"linecount": 2, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-39", 
					"patching_rect": [
						52.0, 
						306.0, 
						260.0, 
						47.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.schedule /play/event/time", 
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
					"id": "obj-37", 
					"patching_rect": [
						52.0, 
						403.5, 
						159.0, 
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
					"id": "obj-32", 
					"patching_rect": [
						52.0, 
						277.0, 
						57.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.select /sequence /record/end/time", 
					"numinlets": 3, 
					"numoutlets": 3, 
					"outlettype": [
						"", 
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-31", 
					"patching_rect": [
						52.0, 
						114.0, 
						312.695312, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.timetag /record/start/time", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-21", 
					"patching_rect": [
						785.5, 
						163.5, 
						158.0, 
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
					"id": "obj-18", 
					"patching_rect": [
						560.0, 
						389.0, 
						50.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.listenumerate /sequence", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-17", 
					"patching_rect": [
						52.0, 
						146.0, 
						153.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "/sequence = [ /sequence ?? list(), /event ], ", 
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
					"id": "obj-15", 
					"patching_rect": [
						629.0, 
						335.0, 
						240.0, 
						33.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.pack /event/value", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-8", 
					"patching_rect": [
						629.0, 
						118.5, 
						116.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.timetag /event/time", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-6", 
					"patching_rect": [
						629.0, 
						150.5, 
						125.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"presentation_rect": [
						25.652344, 
						74.0, 
						280.195312, 
						30.0
					], 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "slider", 
					"parameter_enable": 0, 
					"presentation": 1, 
					"id": "obj-5", 
					"patching_rect": [
						629.0, 
						70.5, 
						135.0, 
						30.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"outlettype": [
						"FullPacket"
					], 
					"color": [
						0.8, 
						0.839216, 
						0.709804, 
						1.0
					], 
					"text": "o.union", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"bgcolor": [
						0.815686, 
						1.0, 
						1.0, 
						1.0
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-2", 
					"patching_rect": [
						629.0, 
						294.5, 
						50.0, 
						20.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			58.0, 
			49.0, 
			1211.0, 
			782.0
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
						"obj-2", 
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
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"disabled": 0, 
					"hidden": 0, 
					"destination": [
						"obj-18", 
						1
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
					"destination": [
						"obj-2", 
						1
					], 
					"disabled": 0, 
					"source": [
						"obj-15", 
						0
					], 
					"midpoints": [
						638.5, 
						380.5, 
						887.0, 
						380.5, 
						887.0, 
						286.5, 
						669.5, 
						286.5
					], 
					"hidden": 0
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
						"obj-42", 
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
						"obj-32", 
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
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"destination": [
						"obj-40", 
						0
					], 
					"disabled": 0, 
					"source": [
						"obj-18", 
						0
					], 
					"midpoints": [
						569.5, 
						440.0, 
						458.0, 
						440.0, 
						458.0, 
						70.0, 
						61.5, 
						70.0
					], 
					"hidden": 0
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
						"obj-2", 
						0
					], 
					"disabled": 0, 
					"source": [
						"obj-19", 
						0
					], 
					"midpoints": [
						950.0, 
						273.5, 
						638.5, 
						273.5
					], 
					"hidden": 0
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
						"obj-22", 
						0
					], 
					"source": [
						"obj-20", 
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
						"obj-2", 
						1
					], 
					"disabled": 0, 
					"source": [
						"obj-21", 
						0
					], 
					"midpoints": [
						795.0, 
						285.5, 
						669.5, 
						285.5
					], 
					"hidden": 0
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
						"obj-32", 
						0
					], 
					"disabled": 0, 
					"source": [
						"obj-22", 
						0
					], 
					"midpoints": [
						104.0, 
						261.0, 
						61.5, 
						261.0
					], 
					"hidden": 0
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
						"obj-24", 
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
						"obj-28", 
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
						"obj-21", 
						0
					], 
					"source": [
						"obj-28", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"color": [
						0.8, 
						0.8, 
						0.8, 
						1.0
					], 
					"destination": [
						"obj-53", 
						0
					], 
					"disabled": 0, 
					"source": [
						"obj-29", 
						0
					], 
					"midpoints": [
						163.0, 
						582.0, 
						409.0, 
						582.0, 
						409.0, 
						30.0, 
						440.652344, 
						30.0
					], 
					"hidden": 0
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
						"obj-24", 
						1
					], 
					"midpoints": [
						795.0, 
						120.0, 
						765.0, 
						120.0, 
						765.0, 
						213.0, 
						669.5, 
						213.0
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
						"obj-28", 
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
						"obj-17", 
						0
					], 
					"source": [
						"obj-31", 
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
						"obj-20", 
						0
					], 
					"disabled": 0, 
					"source": [
						"obj-31", 
						1
					], 
					"midpoints": [
						208.347656, 
						177.0, 
						104.0, 
						177.0
					], 
					"hidden": 0
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
						"obj-32", 
						1
					], 
					"disabled": 0, 
					"source": [
						"obj-31", 
						2
					], 
					"midpoints": [
						355.195312, 
						267.0, 
						99.5, 
						267.0
					], 
					"hidden": 0
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
						"obj-39", 
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
					"destination": [
						"obj-5", 
						0
					], 
					"disabled": 0, 
					"source": [
						"obj-34", 
						0
					], 
					"midpoints": [
						61.5, 
						585.0, 
						32.0, 
						585.0, 
						32.0, 
						21.0, 
						638.5, 
						21.0
					], 
					"hidden": 0
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
					"destination": [
						"obj-7", 
						0
					], 
					"disabled": 0, 
					"source": [
						"obj-37", 
						1
					], 
					"midpoints": [
						108.166664, 
						435.0, 
						180.5, 
						435.0
					], 
					"hidden": 0
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
						"obj-9", 
						0
					], 
					"source": [
						"obj-37", 
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
						"obj-49", 
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
						"obj-37", 
						0
					], 
					"source": [
						"obj-39", 
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
						"obj-31", 
						0
					], 
					"source": [
						"obj-40", 
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
						"obj-44", 
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
						"obj-44", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-29", 
						0
					], 
					"midpoints": [
						165.5, 
						542.0, 
						163.0, 
						542.0
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
						"obj-34", 
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
					"disabled": 0, 
					"source": [
						"obj-49", 
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
						"obj-54", 
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
						"obj-51", 
						0
					], 
					"source": [
						"obj-52", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-53", 
						1
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
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"destination": [
						"obj-36", 
						0
					], 
					"disabled": 0, 
					"source": [
						"obj-54", 
						1
					], 
					"midpoints": [
						569.5, 
						309.0, 
						569.5, 
						309.0
					], 
					"hidden": 0
				}
			}, 
			{
				"patchline": {
					"color": [
						1.0, 
						0.8, 
						0.4, 
						0.9
					], 
					"destination": [
						"obj-56", 
						0
					], 
					"disabled": 0, 
					"source": [
						"obj-54", 
						0
					], 
					"midpoints": [
						484.5, 
						369.0, 
						95.5, 
						369.0
					], 
					"hidden": 0
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
						"obj-37", 
						0
					], 
					"midpoints": [
						95.5, 
						396.0, 
						61.5, 
						396.0
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
						"obj-61", 
						0
					], 
					"source": [
						"obj-6", 
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
						"obj-61", 
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
						"obj-43", 
						0
					], 
					"disabled": 0, 
					"source": [
						"obj-7", 
						0
					], 
					"midpoints": [
						180.5, 
						486.0, 
						61.5, 
						486.0
					], 
					"hidden": 0
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
						"obj-43", 
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
				"type": "iLaX", 
				"name": "o.union.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.timetag.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.pack.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.expr.codebox.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.listenumerate.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.select.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.schedule.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.route.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.when.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.if.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.display.mxo"
			}
		]
	}
}