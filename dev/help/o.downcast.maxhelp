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
			"architecture": "x64", 
			"minor": 1, 
			"revision": 6
		}, 
		"boxes": [
			{
				"box": {
					"fontname": "Arial", 
					"presentation_rect": [
						562.0, 
						521.0, 
						0.0, 
						0.0
					], 
					"text": "map( lambda(a){ assign( \"/typetags\" + a, typetags( value(a) ) ), }, getaddresses() )", 
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
					"id": "obj-2", 
					"patching_rect": [
						56.0, 
						552.0, 
						446.0, 
						33.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/foo : 66.6,\n/bar : 10", 
					"numinlets": 2, 
					"maxclass": "o.compose", 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"linecount": 2, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-23", 
					"patching_rect": [
						56.0, 
						195.0, 
						78.0, 
						37.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/foo : 66.6,\n/bar : 10,\n/time : [2143981835, -1718848809],\n/typetags/foo : 'd',\n/typetags/bar : 'i',\n/typetags/time : ['i', 'i']", 
					"numinlets": 1, 
					"maxclass": "o.display", 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"linecount": 6, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-22", 
					"patching_rect": [
						56.0, 
						597.0, 
						206.0, 
						101.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/foo : 66.6,\n/bar : 10,\n/time : [2143981835, -1718848809],\n/typetags/foo : 'f',\n/typetags/bar : 'i',\n/typetags/time : ['i', 'i']", 
					"numinlets": 1, 
					"maxclass": "o.display", 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"linecount": 6, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-7", 
					"patching_rect": [
						120.0, 
						410.0, 
						206.0, 
						101.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/foo : 66.6,\n/bar : 10,\n/time : 2014-07-17T17:55:37.045193Z,\n/typetags/foo : 'd',\n/typetags/bar : 'h',\n/typetags/time : 't'", 
					"numinlets": 1, 
					"maxclass": "o.display", 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"linecount": 6, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-5", 
					"patching_rect": [
						560.0, 
						410.0, 
						221.0, 
						101.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "downcast everything except doubles", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-19", 
					"patching_rect": [
						195.0, 
						520.0, 
						218.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.downcast @doubles 0", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-11", 
					"patching_rect": [
						56.0, 
						520.0, 
						139.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "Put the timetag bound to the address /time into the timetag slot of the header", 
					"numinlets": 1, 
					"linecount": 2, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-14", 
					"patching_rect": [
						313.0, 
						329.5, 
						218.0, 
						33.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "see also:", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-12", 
					"patching_rect": [
						687.0, 
						91.0, 
						150.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.helpfilehelper @obj o.downcast", 
					"numinlets": 1, 
					"numoutlets": 4, 
					"outlettype": [
						"", 
						"", 
						"", 
						"clear"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"hidden": 1, 
					"id": "obj-10", 
					"patching_rect": [
						899.5, 
						45.0, 
						187.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "Downcasts optional types supported by the odot objects to the required types of OSC 1.0.", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-9", 
					"patching_rect": [
						56.0, 
						161.0, 
						600.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "Produces a bundle that conforms to OSC 1.0", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-3", 
					"patching_rect": [
						56.0, 
						113.0, 
						600.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.downcast", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 72.0, 
					"id": "obj-6", 
					"patching_rect": [
						56.0, 
						24.0, 
						600.0, 
						87.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"items": "<empty>", 
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
					"id": "obj-4", 
					"patching_rect": [
						687.0, 
						113.0, 
						132.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "map( lambda(a){ assign(\"/typetags\" + a, typetags(value(a))),}, getaddresses() )", 
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
					"id": "obj-18", 
					"patching_rect": [
						120.0, 
						368.0, 
						430.0, 
						33.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "map( lambda(a){ assign(\"/typetags\" + a, typetags(value(a))), }, getaddresses() )", 
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
						560.0, 
						368.0, 
						433.0, 
						33.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/bar = int64(/bar)", 
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
					"id": "obj-13", 
					"patching_rect": [
						56.0, 
						242.0, 
						102.0, 
						33.0
					]
				}
			}, 
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
					"id": "obj-8", 
					"patching_rect": [
						56.0, 
						288.0, 
						89.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"text": "o.downcast @headertimetag /time", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-1", 
					"patching_rect": [
						120.0, 
						336.0, 
						193.0, 
						20.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			87.0, 
			47.0, 
			1031.0, 
			726.0
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
						"obj-18", 
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
						"obj-10", 
						1
					], 
					"hidden": 1, 
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
						"obj-10", 
						3
					], 
					"hidden": 1, 
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
					"hidden": 1, 
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
						"obj-10", 
						2
					], 
					"hidden": 1, 
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
						"obj-2", 
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
						"obj-8", 
						0
					], 
					"source": [
						"obj-13", 
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
						"obj-7", 
						0
					], 
					"source": [
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
						"obj-22", 
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
						"obj-13", 
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
						"obj-4", 
						1
					], 
					"hidden": 1, 
					"destination": [
						"obj-10", 
						0
					], 
					"midpoints": [
						753.0, 
						144.0, 
						885.0, 
						144.0, 
						885.0, 
						42.0, 
						909.0, 
						42.0
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
						"obj-11", 
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
					"destination": [
						"obj-15", 
						0
					], 
					"disabled": 0, 
					"source": [
						"obj-8", 
						0
					], 
					"midpoints": [
						65.5, 
						313.0, 
						569.5, 
						313.0
					], 
					"hidden": 0
				}
			}
		], 
		"statusbarvisible": 2, 
		"gridsnaponopen": 0, 
		"bglocked": 0, 
		"dependency_cache": [
			{
				"patcherrelativepath": "../../../../../Max/Packages/odot/misc", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.helpfilehelper.maxpat", 
				"bootpath": "/Users/ilyarostovtsev/Documents/Max/Packages/odot/misc"
			}, 
			{
				"type": "iLaX", 
				"name": "o.downcast.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.timetag.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.expr.codebox.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.route.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.display.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.compose.mxo"
			}
		]
	}
}