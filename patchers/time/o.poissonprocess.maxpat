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
			"architecture": "x86", 
			"minor": 1, 
			"revision": 6
		}, 
		"boxes": [
			{
				"box": {
					"fontname": "Arial", 
					"text": "Adrian Freed\nJohn MacCallum 2014", 
					"numinlets": 1, 
					"linecount": 2, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-27", 
					"patching_rect": [
						309.0, 
						725.0, 
						150.0, 
						33.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "delete(/refill),\ndelete(/r),\ndelete(/time_to_next_event) , \ndelete(/emptyqueue)", 
					"numinlets": 1, 
					"maxclass": "o.expr.codebox", 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"linecount": 4, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-18", 
					"patching_rect": [
						145.0, 
						604.0, 
						179.0, 
						73.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/emptyqueue = true,\nif( bound(/persecond), \n			 /mu = 1. / /persecond, \n			 /persecond = 1. / (/mu ??= 1.0) ),", 
					"numinlets": 1, 
					"maxclass": "o.expr.codebox", 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"linecount": 4, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-9", 
					"patching_rect": [
						145.0, 
						110.0, 
						243.0, 
						73.0
					]
				}
			}, 
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
					"id": "obj-22", 
					"patching_rect": [
						213.0, 
						437.0, 
						37.0, 
						18.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.uniform /r", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-17", 
					"patching_rect": [
						145.0, 
						324.0, 
						71.0, 
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
					"id": "obj-25", 
					"patching_rect": [
						145.0, 
						405.0, 
						113.5, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /emptyqueue = false", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-24", 
					"patching_rect": [
						145.0, 
						497.0, 
						156.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.if /emptyqueue==true", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-23", 
					"patching_rect": [
						145.0, 
						381.0, 
						134.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.init", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-19", 
					"patching_rect": [
						270.0, 
						82.0, 
						40.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "patcherargs", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-12", 
					"patching_rect": [
						270.0, 
						22.0, 
						78.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.arguments", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-4", 
					"patching_rect": [
						270.0, 
						54.0, 
						81.0, 
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
					"id": "obj-11", 
					"patching_rect": [
						145.0, 
						733.0, 
						25.0, 
						25.0
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
					"id": "obj-10", 
					"patching_rect": [
						145.0, 
						699.0, 
						112.0, 
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
					"id": "obj-5", 
					"patching_rect": [
						145.0, 
						77.0, 
						105.0, 
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
					"id": "obj-15", 
					"patching_rect": [
						145.0, 
						557.0, 
						113.5, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /refill=true \\,", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-14", 
					"patching_rect": [
						15.0, 
						325.0, 
						107.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.if bound(/refill)", 
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
						145.0, 
						530.0, 
						251.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.forward", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-3", 
					"patching_rect": [
						145.0, 
						300.0, 
						61.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /time_to_next_event += (-1. * /mu) * log(/r)", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-7", 
					"patching_rect": [
						145.0, 
						349.0, 
						272.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.timetag /time_to_next_event", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-2", 
					"patching_rect": [
						145.0, 
						186.0, 
						171.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.uniform /r", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-1", 
					"patching_rect": [
						145.0, 
						220.0, 
						71.0, 
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
					"id": "obj-6", 
					"patching_rect": [
						145.0, 
						37.0, 
						25.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.schedule /time_to_next_event", 
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
					"id": "obj-20", 
					"patching_rect": [
						145.0, 
						464.0, 
						180.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /time_to_next_event += (-1. * /mu) * log(/r)", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-8", 
					"patching_rect": [
						145.0, 
						256.0, 
						272.0, 
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
					"disabled": 0, 
					"source": [
						"obj-12", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-4", 
						1
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
						"obj-15", 
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
						"obj-18", 
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
						"obj-23", 
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
						"obj-18", 
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
					"destination": [
						"obj-3", 
						0
					], 
					"disabled": 0, 
					"source": [
						"obj-15", 
						5
					], 
					"midpoints": [
						222.0, 
						585.0, 
						427.0, 
						585.0, 
						427.0, 
						330.0, 
						427.0, 
						330.0, 
						427.0, 
						293.0, 
						154.5, 
						293.0
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
						"obj-7", 
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
					"disabled": 0, 
					"hidden": 0, 
					"destination": [
						"obj-10", 
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
						"obj-9", 
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
						"obj-24", 
						0
					], 
					"source": [
						"obj-20", 
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
						"obj-24", 
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
					"disabled": 0, 
					"source": [
						"obj-22", 
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
						"obj-23", 
						1
					], 
					"midpoints": [
						269.5, 
						402.0, 
						269.0, 
						402.0, 
						269.0, 
						432.0, 
						198.0, 
						432.0, 
						198.0, 
						450.0, 
						154.5, 
						450.0
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
						"obj-25", 
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
						"obj-20", 
						0
					], 
					"source": [
						"obj-25", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-25", 
						5
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
						"obj-19", 
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
						"obj-9", 
						0
					], 
					"source": [
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
						"obj-5", 
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
						"obj-23", 
						0
					], 
					"source": [
						"obj-7", 
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
						"obj-14", 
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
						"obj-3", 
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
						"obj-2", 
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
				"patcherrelativepath": "..", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.uniform.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers"
			}, 
			{
				"patcherrelativepath": "../core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.righttoleft.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core"
			}, 
			{
				"patcherrelativepath": "../core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.in.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core"
			}, 
			{
				"patcherrelativepath": "../core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.port.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core"
			}, 
			{
				"patcherrelativepath": "../aspect", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.aspect.joinpoint.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/aspect"
			}, 
			{
				"patcherrelativepath": "../core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.out.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core"
			}, 
			{
				"patcherrelativepath": "../../../Documents/Max/Packages/odot/patchers", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.forward.maxpat", 
				"bootpath": "/Users/adrian2013/Documents/Max/Packages/odot/patchers"
			}, 
			{
				"patcherrelativepath": "../../../Documents/Max/Packages/odot/patchers", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.arguments.maxpat", 
				"bootpath": "/Users/adrian2013/Documents/Max/Packages/odot/patchers"
			}, 
			{
				"patcherrelativepath": "../core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.init.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core"
			}, 
			{
				"type": "iLaX", 
				"name": "o.expr.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.schedule.mxo"
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
				"name": "o.route.mxo"
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
				"name": "randdist.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.timetag.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "trampoline.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.expr.codebox.mxo"
			}
		]
	}
}