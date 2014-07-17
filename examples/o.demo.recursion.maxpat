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
					"presentation_rect": [
						141.0, 
						477.0, 
						0.0, 
						0.0
					], 
					"text": "o.recurse", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-35", 
					"patching_rect": [
						145.0, 
						461.0, 
						61.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/a : 1,\n/b : 0,\n/t : 1", 
					"numinlets": 1, 
					"maxclass": "o.display", 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"linecount": 3, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-33", 
					"patching_rect": [
						237.0, 
						550.0, 
						150.0, 
						61.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "Recursion in odot\nFactorial and GCD\nAdrian Freed 2014", 
					"numinlets": 1, 
					"linecount": 3, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-30", 
					"patching_rect": [
						207.0, 
						106.0, 
						154.0, 
						47.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"presentation_rect": [
						34.5, 
						74.0, 
						0.0, 
						0.0
					], 
					"text": "/v : 9", 
					"numinlets": 2, 
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
					"id": "obj-28", 
					"patching_rect": [
						56.0, 
						74.0, 
						78.0, 
						24.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"presentation_rect": [
						204.0, 
						48.0, 
						0.0, 
						0.0
					], 
					"text": "/v : 5", 
					"numinlets": 2, 
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
					"id": "obj-26", 
					"patching_rect": [
						152.0, 
						74.0, 
						78.0, 
						24.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.recurse", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-25", 
					"patching_rect": [
						56.0, 
						246.0, 
						61.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/result ??= 1,\n /result *= /v--,", 
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
					"id": "obj-24", 
					"patching_rect": [
						56.0, 
						188.0, 
						150.0, 
						46.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/result : 120", 
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
					"id": "obj-21", 
					"patching_rect": [
						217.0, 
						236.0, 
						150.0, 
						34.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"presentation_rect": [
						322.0, 
						374.0, 
						0.0, 
						0.0
					], 
					"text": "/a : 240,\n/b : 54", 
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
					"id": "obj-17", 
					"patching_rect": [
						237.0, 
						329.0, 
						73.0, 
						37.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"presentation_rect": [
						203.0, 
						335.0, 
						0.0, 
						0.0
					], 
					"text": "/a : 12,\n/b : 9", 
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
					"id": "obj-14", 
					"patching_rect": [
						152.0, 
						329.0, 
						58.0, 
						37.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/a : 1", 
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
					"id": "obj-12", 
					"patching_rect": [
						68.0, 
						550.0, 
						150.0, 
						34.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/a : 17,\n/b : 19", 
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
					"id": "obj-7", 
					"patching_rect": [
						68.0, 
						329.0, 
						58.0, 
						37.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "GCD", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-34", 
					"patching_rect": [
						22.0, 
						302.0, 
						37.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /t = /b\\, /b = /a % /b\\, /a = /t", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-27", 
					"patching_rect": [
						113.0, 
						428.0, 
						182.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.select /a", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-32", 
					"patching_rect": [
						68.0, 
						512.0, 
						65.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.if /b== 0", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-39", 
					"patching_rect": [
						68.0, 
						398.0, 
						64.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "Factorial", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-11", 
					"patching_rect": [
						22.0, 
						42.0, 
						57.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.select /result", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-13", 
					"patching_rect": [
						217.0, 
						194.0, 
						88.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.if /v > 1", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-22", 
					"patching_rect": [
						56.0, 
						140.0, 
						60.0, 
						20.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			541.0, 
			145.0, 
			674.0, 
			616.0
		], 
		"lines": [
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
						"obj-39", 
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
						"obj-13", 
						0
					], 
					"disabled": 0, 
					"source": [
						"obj-22", 
						1
					], 
					"midpoints": [
						106.5, 
						169.0, 
						226.5, 
						169.0
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
						"obj-24", 
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
						"obj-25", 
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
					"destination": [
						"obj-22", 
						0
					], 
					"disabled": 0, 
					"source": [
						"obj-25", 
						0
					], 
					"midpoints": [
						65.5, 
						278.0, 
						42.0, 
						278.0, 
						42.0, 
						135.0, 
						65.5, 
						135.0
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
						"obj-22", 
						0
					], 
					"source": [
						"obj-26", 
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
						"obj-33", 
						0
					], 
					"disabled": 0, 
					"source": [
						"obj-27", 
						0
					], 
					"midpoints": [
						122.5, 
						504.0, 
						246.5, 
						504.0
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
						"obj-35", 
						0
					], 
					"source": [
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
						"obj-22", 
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
						"obj-39", 
						0
					], 
					"disabled": 0, 
					"source": [
						"obj-35", 
						0
					], 
					"midpoints": [
						154.5, 
						496.0, 
						308.0, 
						496.0, 
						308.0, 
						387.0, 
						77.5, 
						387.0
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
						"obj-27", 
						0
					], 
					"source": [
						"obj-39", 
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
						"obj-32", 
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
						"obj-39", 
						0
					], 
					"source": [
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
				"patcherrelativepath": "../patchers", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.recurse.maxpat", 
				"bootpath": "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers"
			}, 
			{
				"patcherrelativepath": "../patchers/core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.in.maxpat", 
				"bootpath": "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/core"
			}, 
			{
				"patcherrelativepath": "../patchers/core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.port.maxpat", 
				"bootpath": "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/core"
			}, 
			{
				"patcherrelativepath": "../patchers/aspect", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.aspect.joinpoint.maxpat", 
				"bootpath": "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/aspect"
			}, 
			{
				"patcherrelativepath": "../patchers/core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.out.maxpat", 
				"bootpath": "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/core"
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
				"name": "o.expr.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.compose.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.display.mxo"
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
				"name": "o.union.mxo"
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