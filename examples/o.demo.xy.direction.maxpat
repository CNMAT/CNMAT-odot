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
					"text": "Direction of rotation of a cursor device\n\nAdrian Freed 2013 2014", 
					"numinlets": 1, 
					"maxclass": "comment", 
					"numoutlets": 0, 
					"linecount": 4, 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-3", 
					"patching_rect": [
						334.0, 
						271.0, 
						150.0, 
						60.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/horizontal : 1146,\n/vertical : -1020,\n/shift : \"up\",\n/capslock : \"up\",\n/option : \"up\",\n/control : \"up\",\n/command : \"down\",\n/button/is : \"up\",\n/was/horizontal : 1147,\n/was/vertical : -1020,\n/angle : 3.14159,\n/was/angle : 3.14159,\n/angle/difference : 0.,\n/direction : \"still\"", 
					"numinlets": 1, 
					"linecount": 14, 
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
						36.0, 
						223.606644, 
						252.0, 
						208.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.was /horizontal /vertical", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-10", 
					"patching_rect": [
						36.0, 
						52.569244, 
						145.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/angle/difference = /angle - /was/angle, \n/direction = /angle/difference==0?still:(/angle/difference>0? clockwise:anticlockwise),", 
					"numinlets": 1, 
					"linecount": 2, 
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
						36.0, 
						162.276978, 
						712.0, 
						46.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.was /angle", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-8", 
					"patching_rect": [
						36.0, 
						125.707726, 
						78.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /angle=atan2(/vertical - /was/vertical\\,/horizontal - /was/horizontal )", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-6", 
					"patching_rect": [
						36.0, 
						89.138489, 
						396.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.io.mouse", 
					"numinlets": 0, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-4", 
					"patching_rect": [
						36.0, 
						16.0, 
						69.0, 
						20.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			313.0, 
			116.0, 
			768.0, 
			456.0
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
						"obj-6", 
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
						"obj-10", 
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
						"obj-8", 
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
						"obj-9", 
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
						"obj-1", 
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
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/io", 
				"type": "JSON", 
				"patcherrelativepath": "../patchers/io", 
				"name": "o.io.mouse.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core", 
				"type": "JSON", 
				"patcherrelativepath": "../patchers/core", 
				"name": "o.out.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core", 
				"type": "JSON", 
				"patcherrelativepath": "../patchers/core", 
				"name": "o.port.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/experimental/aspect", 
				"type": "JSON", 
				"patcherrelativepath": "../experimental/aspect", 
				"name": "o.aspect.joinpoint.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/time", 
				"type": "JSON", 
				"patcherrelativepath": "../patchers/time", 
				"name": "o.was.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core", 
				"type": "JSON", 
				"patcherrelativepath": "../patchers/core", 
				"name": "o.righttoleft.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core", 
				"type": "JSON", 
				"patcherrelativepath": "../patchers/core", 
				"name": "o.in.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers", 
				"type": "JSON", 
				"patcherrelativepath": "../patchers", 
				"name": "o.arguments.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core", 
				"type": "JSON", 
				"patcherrelativepath": "../patchers/core", 
				"name": "o.init.maxpat", 
				"implicit": 1
			}, 
			{
				"type": "iLaX", 
				"name": "o.message.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.collect.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.pack.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.var.mxo"
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
				"name": "o.route.mxo"
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
				"name": "o.intersection.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.expr.codebox.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.display.mxo"
			}
		]
	}
}