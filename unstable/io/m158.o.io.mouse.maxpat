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
			"revision": 4
		}, 
		"boxes": [
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
					"id": "obj-37", 
					"patching_rect": [
						896.0, 
						179.0, 
						24.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "pipe 100", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-25", 
					"patching_rect": [
						32.0, 
						121.0, 
						56.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "gate", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-2", 
					"patching_rect": [
						205.0, 
						680.0, 
						34.0, 
						20.0
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
					"id": "obj-40", 
					"patching_rect": [
						331.0, 
						191.0, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "t 1 b l b", 
					"numinlets": 1, 
					"numoutlets": 4, 
					"outlettype": [
						"int", 
						"bang", 
						"", 
						"bang"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-20", 
					"patching_rect": [
						374.0, 
						93.0, 
						342.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /delta/angle = ( atan2(-1 * /delta/vertical\\, /delta/horizontal) / pi() ) * 180.", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-13", 
					"patching_rect": [
						444.0, 
						777.0, 
						445.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /delta/distance = sqrt( /delta/horizontal * /delta/horizontal + /delta/vertical * /delta/vertical)", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-14", 
					"patching_rect": [
						444.0, 
						744.0, 
						517.0, 
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
					"id": "obj-9", 
					"patching_rect": [
						327.0, 
						581.0, 
						32.5, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.var", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-7", 
					"patching_rect": [
						247.0, 
						610.0, 
						37.0, 
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
					"id": "obj-65", 
					"patching_rect": [
						247.0, 
						538.0, 
						50.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /button/is", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-61", 
					"patching_rect": [
						152.25, 
						404.0, 
						100.0, 
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
					"id": "obj-48", 
					"patching_rect": [
						247.0, 
						644.0, 
						50.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /angle = ( atan2(/y\\, /x) / pi() ) * 180.", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-53", 
					"patching_rect": [
						444.0, 
						713.0, 
						445.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /distance = sqrt( /x * /x + /y * /y)", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-52", 
					"patching_rect": [
						444.0, 
						680.0, 
						445.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /x = /horizontal - /middle[[0]]\\, /y = /screenDim[[1]] - /vertical - /middle[[1]]", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-47", 
					"patching_rect": [
						444.0, 
						644.0, 
						445.0, 
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
					"id": "obj-46", 
					"patching_rect": [
						444.0, 
						600.0, 
						100.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "v.1	   adrian freed\nv.1.2	rama added screensize, dist and angle", 
					"numinlets": 1, 
					"linecount": 2, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-45", 
					"patching_rect": [
						485.0, 
						871.0, 
						255.0, 
						34.0
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
					"id": "obj-39", 
					"patching_rect": [
						628.0, 
						404.0, 
						100.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /middle = /screenDim / 2", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-4", 
					"patching_rect": [
						662.0, 
						557.0, 
						163.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /screenDim", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-5", 
					"patching_rect": [
						662.0, 
						520.0, 
						100.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "zl slice 2", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-10", 
					"patching_rect": [
						628.0, 
						484.0, 
						53.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "screensize", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"list", 
						"list"
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-38", 
					"patching_rect": [
						628.0, 
						446.0, 
						63.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pak /shift /capslock /option /control /command", 
					"numinlets": 5, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-35", 
					"patching_rect": [
						517.0, 
						318.0, 
						269.0, 
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
					"id": "obj-32", 
					"patching_rect": [
						762.0, 
						234.0, 
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
					"id": "obj-33", 
					"patching_rect": [
						741.0, 
						255.0, 
						39.0, 
						18.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "select 1 0", 
					"numinlets": 3, 
					"numoutlets": 3, 
					"outlettype": [
						"bang", 
						"bang", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-34", 
					"patching_rect": [
						740.0, 
						179.0, 
						62.0, 
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
					"id": "obj-26", 
					"patching_rect": [
						418.0, 
						233.0, 
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
					"id": "obj-27", 
					"patching_rect": [
						397.0, 
						254.0, 
						39.0, 
						18.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "select 1 0", 
					"numinlets": 3, 
					"numoutlets": 3, 
					"outlettype": [
						"bang", 
						"bang", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-28", 
					"patching_rect": [
						396.0, 
						178.0, 
						62.0, 
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
					"id": "obj-29", 
					"patching_rect": [
						506.0, 
						234.0, 
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
					"id": "obj-30", 
					"patching_rect": [
						485.0, 
						255.0, 
						39.0, 
						18.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "select 1 0", 
					"numinlets": 3, 
					"numoutlets": 3, 
					"outlettype": [
						"bang", 
						"bang", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-31", 
					"patching_rect": [
						484.0, 
						179.0, 
						62.0, 
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
					"id": "obj-18", 
					"patching_rect": [
						581.0, 
						232.0, 
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
					"id": "obj-19", 
					"patching_rect": [
						560.0, 
						253.0, 
						39.0, 
						18.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "select 1 0", 
					"numinlets": 3, 
					"numoutlets": 3, 
					"outlettype": [
						"bang", 
						"bang", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-23", 
					"patching_rect": [
						559.0, 
						177.0, 
						62.0, 
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
					"id": "obj-15", 
					"patching_rect": [
						669.0, 
						233.0, 
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
					"id": "obj-16", 
					"patching_rect": [
						648.0, 
						254.0, 
						39.0, 
						18.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "select 1 0", 
					"numinlets": 3, 
					"numoutlets": 3, 
					"outlettype": [
						"bang", 
						"bang", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-17", 
					"patching_rect": [
						647.0, 
						178.0, 
						62.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "loadmess interval 40", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-3", 
					"patching_rect": [
						374.0, 
						63.0, 
						121.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /horizontal /vertical /delta/horizontal /delta/vertical", 
					"numinlets": 4, 
					"maxclass": "newobj", 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"linecount": 4, 
					"fontsize": 12.0, 
					"id": "obj-21", 
					"patching_rect": [
						247.0, 
						299.0, 
						111.0, 
						60.0
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
					"id": "obj-36", 
					"patching_rect": [
						232.0, 
						140.0, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "modifiers", 
					"numinlets": 1, 
					"numoutlets": 5, 
					"outlettype": [
						"int", 
						"int", 
						"int", 
						"int", 
						"int"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-12", 
					"patching_rect": [
						589.333313, 
						121.0, 
						73.0, 
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
					"id": "obj-11", 
					"patching_rect": [
						186.0, 
						341.0, 
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
					"id": "obj-8", 
					"patching_rect": [
						148.0, 
						356.0, 
						39.0, 
						18.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "select 1 0", 
					"numinlets": 3, 
					"numoutlets": 3, 
					"outlettype": [
						"bang", 
						"bang", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-6", 
					"patching_rect": [
						141.0, 
						303.0, 
						62.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "qmetro 20", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"bang"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-1", 
					"patching_rect": [
						232.0, 
						178.0, 
						65.0, 
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
						232.0, 
						730.0, 
						25.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "mousestate", 
					"numinlets": 1, 
					"numoutlets": 5, 
					"outlettype": [
						"int", 
						"int", 
						"int", 
						"int", 
						"int"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"id": "obj-22", 
					"patching_rect": [
						232.0, 
						224.0, 
						73.0, 
						17.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			352.0, 
			44.0, 
			1245.0, 
			939.0
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
						"obj-22", 
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
						"obj-11", 
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
						"obj-12", 
						3
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
						"obj-12", 
						2
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
						"obj-12", 
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
						"obj-12", 
						4
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
						"obj-13", 
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
						"obj-14", 
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
						"obj-15", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-35", 
						3
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
						"obj-35", 
						3
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-17", 
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
						"obj-17", 
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
						"obj-18", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-35", 
						2
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
						2
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
						"obj-24", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-20", 
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
						"obj-20", 
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
						"obj-20", 
						1
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
						"obj-20", 
						3
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
						"obj-21", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-46", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-22", 
						4
					], 
					"hidden": 0, 
					"destination": [
						"obj-21", 
						3
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-22", 
						3
					], 
					"hidden": 0, 
					"destination": [
						"obj-21", 
						2
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-22", 
						2
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
						"obj-22", 
						1
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
						"obj-23", 
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
						"obj-25", 
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
						"obj-26", 
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
						"obj-27", 
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
						"obj-28", 
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
						"obj-28", 
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
						"obj-29", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-35", 
						1
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
						"obj-20", 
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
						"obj-35", 
						1
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-31", 
						1
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
						"obj-32", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-35", 
						4
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
						"obj-35", 
						4
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
						"obj-32", 
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
						"obj-33", 
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
						"obj-9", 
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
						"obj-37", 
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
						"obj-37", 
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
						"obj-37", 
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
						"obj-37", 
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
						"obj-37", 
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
						"obj-38", 
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
						"obj-39", 
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
						"obj-4", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-46", 
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
						"obj-22", 
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
						"obj-47", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-47", 
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
						"obj-48", 
						0
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
						"obj-52", 
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
						"obj-53", 
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
						"obj-6", 
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
						"obj-6", 
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
						"obj-61", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-65", 
						1
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
						"obj-7", 
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
						"obj-48", 
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
						"obj-61", 
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
						"obj-48", 
						1
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
						"obj-7", 
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
				"name": "o.pack.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.pak.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.expr.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.union.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.var.mxo"
			}
		]
	}
}