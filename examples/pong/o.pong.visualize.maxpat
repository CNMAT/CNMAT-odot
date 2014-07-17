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
					"text": "assigntobundlemember(/displaylist[[5]], /text, /ball/left/phase[[0]] / pi()), # the score\nassigntobundlemember(/displaylist[[4]], /text, /ball/right/phase[[0]] / pi())", 
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
					"id": "obj-19", 
					"patching_rect": [
						79.392189, 
						337.59729, 
						457.0, 
						46.0
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
					"id": "obj-18", 
					"patching_rect": [
						79.392189, 
						564.453003, 
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
					"id": "obj-17", 
					"patching_rect": [
						79.392189, 
						256.198334, 
						105.0, 
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
					"id": "obj-5", 
					"patching_rect": [
						754.549927, 
						57.879044, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "# the bats\nassigntobundlemember(/displaylist[[1]], /from, [/bat/left[[0]]*/court[[0]], (/bat/left[[1]] - /bat/halfheight)*/court[[1]] , 0 ]), \nassigntobundlemember(/displaylist[[1]], /to, [/bat/left[[0]]*/court[[0]], (/bat/left[[1]] +/bat/halfheight)*/court[[1]], 0] ),\nassigntobundlemember(/displaylist[[2]], /from, [/bat/right[[0]]*/court[[0]], (/bat/right[[1]] - /bat/halfheight)*/court[[1]] , 0 ]), \nassigntobundlemember(/displaylist[[2]], /to, [/bat/right[[0]]*/court[[0]], (/bat/right[[1]] +/bat/halfheight)*/court[[1]], 0] )", 
					"numinlets": 1, 
					"maxclass": "o.expr.codebox", 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"linecount": 5, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-2", 
					"patching_rect": [
						79.392189, 
						459.851257, 
						641.0, 
						87.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "# the ball\nassigntobundlemember(/displaylist[[0]], /position, /court * /ball/position) ", 
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
					"id": "obj-11", 
					"patching_rect": [
						79.392189, 
						396.586792, 
						439.0, 
						46.0
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
					"id": "obj-13", 
					"patching_rect": [
						79.392189, 
						302.59729, 
						50.0, 
						20.0
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
					"id": "obj-12", 
					"patching_rect": [
						754.549927, 
						85.847488, 
						60.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/displaylist : [{\n\t/position : [0, 0, 0],\n\t/color : [0.9, 0.3, 0.1],\n\t/radius : 0.04,\n\t/shape : \"sphere\"\n}, {\n\t/color : [0.9, 0., 0.9],\n\t/from : [0, 0],\n\t/to : [0, 0],\n\t/shape : \"line\"\n}, {\n\t/color : [0., 0.9, 0.9],\n\t/from : [0, 0],\n\t/to : [0, 0],\n\t/shape : \"line\"\n}, {\n\t/color : [0., 0.6, 0.],\n\t/position : [0, 0, -1.],\n\t/scale : 0.9,\n\t/shape : \"cube\"\n}, {\n\t/position : [-0.2, 0.6],\n\t/color : [0.9, 0.9, 0.9],\n\t/text : \"0\",\n\t/shape : \"text\"\n}, {\n\t/position : [0.2, 0.6],\n\t/color : [0.9, 0.9, 0.9],\n\t/text : \"0\",\n\t/shape : \"text\"\n}],\n/court : [0.9, 0.9],\n/ball/position : [-0.94594, -0.764669],\n/bat/halfheight : 0.05,\n/game/start : false,\n/bat/right : [0.9, -0.102041],\n/bat/left : [-0.9, -0.183673],\n/court : [0.9, 0.9]", 
					"numinlets": 2, 
					"maxclass": "o.message", 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"linecount": 38, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-9", 
					"patching_rect": [
						754.549927, 
						137.374176, 
						234.365891, 
						516.0
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
					"id": "obj-20", 
					"patching_rect": [
						79.392189, 
						137.374176, 
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
					"id": "obj-21", 
					"patching_rect": [
						79.392189, 
						592.793396, 
						25.0, 
						25.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			31.0, 
			86.0, 
			1409.0, 
			742.0
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
						"obj-2", 
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
						"obj-9", 
						0
					], 
					"midpoints": [
						764.049927, 
						105.0, 
						764.049927, 
						105.0
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
						"obj-19", 
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
						"obj-21", 
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
						"obj-11", 
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
						"obj-18", 
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
						"obj-17", 
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
						"obj-12", 
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
						"obj-13", 
						1
					], 
					"midpoints": [
						764.049927, 
						675.0, 
						723.0, 
						675.0, 
						723.0, 
						297.0, 
						119.892189, 
						297.0
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
				"bootpath": "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/core"
			}, 
			{
				"patcherrelativepath": "../../patchers/core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.port.maxpat", 
				"bootpath": "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/core"
			}, 
			{
				"patcherrelativepath": "../../patchers/aspect", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.aspect.joinpoint.maxpat", 
				"bootpath": "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/aspect"
			}, 
			{
				"patcherrelativepath": "../../patchers/core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.out.maxpat", 
				"bootpath": "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/core"
			}, 
			{
				"type": "iLaX", 
				"name": "o.message.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.union.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.expr.codebox.mxo"
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
			}
		]
	}
}