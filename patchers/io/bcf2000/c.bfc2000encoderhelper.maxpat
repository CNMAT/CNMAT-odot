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
					"text": "#1", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 12.0, 
					"id": "obj-44", 
					"patching_rect": [
						491.859467, 
						233.181808, 
						32.5, 
						18.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "t b b", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"bang", 
						"bang"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-24", 
					"patching_rect": [
						462.0, 
						180.0, 
						30.0, 
						17.0
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
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-27", 
					"patching_rect": [
						462.0, 
						152.0, 
						48.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "assign(\"/\" + /name +  string(/suffix ), /value), \ndelete(/value), delete(/name), delete(/suffix),", 
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
					"id": "obj-38", 
					"patching_rect": [
						109.5, 
						353.578522, 
						275.0, 
						46.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "thru", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-1", 
					"patching_rect": [
						275.0, 
						175.0, 
						26.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "thru", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-2", 
					"patching_rect": [
						187.0, 
						175.0, 
						26.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "thru", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-3", 
					"patching_rect": [
						99.0, 
						175.0, 
						26.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "thru", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-4", 
					"patching_rect": [
						11.0, 
						175.0, 
						26.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 1, 
					"nofsaa": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "jsui", 
					"parameter_enable": 0, 
					"border": 0, 
					"id": "obj-5", 
					"patching_rect": [
						27.0, 
						55.0, 
						19.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 1, 
					"nofsaa": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "jsui", 
					"parameter_enable": 0, 
					"border": 0, 
					"id": "obj-6", 
					"patching_rect": [
						7.0, 
						55.0, 
						19.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 1, 
					"nofsaa": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "jsui", 
					"parameter_enable": 0, 
					"border": 0, 
					"id": "obj-7", 
					"patching_rect": [
						27.0, 
						35.0, 
						19.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "thru", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-8", 
					"patching_rect": [
						346.0, 
						127.0, 
						26.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "thru", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-9", 
					"patching_rect": [
						271.0, 
						127.0, 
						26.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "thru", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-10", 
					"patching_rect": [
						196.0, 
						127.0, 
						26.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route #1", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-11", 
					"patching_rect": [
						346.0, 
						103.0, 
						51.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route  #1", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-12", 
					"patching_rect": [
						271.0, 
						103.0, 
						54.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route  #1", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-13", 
					"patching_rect": [
						196.0, 
						103.0, 
						54.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route #1", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-14", 
					"patching_rect": [
						121.0, 
						103.0, 
						51.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /value /name encoder/d /suffix", 
					"numinlets": 3, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-18", 
					"patching_rect": [
						355.272705, 
						310.0, 
						159.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /value /name encoder/c /suffix", 
					"numinlets": 3, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-22", 
					"patching_rect": [
						271.0, 
						281.0, 
						159.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /value /name encoder/b /suffix", 
					"numinlets": 3, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-26", 
					"patching_rect": [
						211.0, 
						255.0, 
						159.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /value /name encoder/a /suffix", 
					"numinlets": 3, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-32", 
					"patching_rect": [
						11.0, 
						255.0, 
						159.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 1, 
					"nofsaa": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "jsui", 
					"parameter_enable": 0, 
					"border": 0, 
					"id": "obj-33", 
					"patching_rect": [
						7.0, 
						35.0, 
						19.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"comment": "", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "outlet", 
					"id": "obj-34", 
					"patching_rect": [
						126.5, 
						426.223145, 
						15.0, 
						15.0
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
					"hidden": 1, 
					"id": "obj-35", 
					"patching_rect": [
						121.0, 
						50.0, 
						15.0, 
						15.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /a /b /c /d", 
					"numinlets": 5, 
					"numoutlets": 5, 
					"outlettype": [
						"", 
						"", 
						"", 
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-36", 
					"patching_rect": [
						156.0, 
						58.0, 
						78.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "thru", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-37", 
					"patching_rect": [
						121.0, 
						128.0, 
						26.0, 
						17.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			274.0, 
			269.0, 
			716.0, 
			509.0
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
						"obj-18", 
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
						"obj-7", 
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
					"hidden": 1, 
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
						"obj-12", 
						0
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
					"disabled": 0, 
					"source": [
						"obj-13", 
						0
					], 
					"hidden": 1, 
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
						"obj-14", 
						0
					], 
					"hidden": 1, 
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
						"obj-18", 
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
						"obj-2", 
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
						"obj-22", 
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
						"obj-24", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-44", 
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
						"obj-38", 
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
					"hidden": 1, 
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
						"obj-26", 
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
						"obj-38", 
						0
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
						"obj-35", 
						0
					], 
					"hidden": 1, 
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
						"obj-36", 
						3
					], 
					"hidden": 1, 
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
						"obj-36", 
						2
					], 
					"hidden": 1, 
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
						"obj-36", 
						1
					], 
					"hidden": 1, 
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
						"obj-36", 
						0
					], 
					"hidden": 1, 
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
						"obj-37", 
						0
					], 
					"hidden": 1, 
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
						"obj-38", 
						0
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
						"obj-32", 
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
						"obj-18", 
						2
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
						"obj-22", 
						2
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
						"obj-26", 
						2
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
						"obj-32", 
						2
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
					"hidden": 1, 
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
						"obj-6", 
						0
					], 
					"hidden": 1, 
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
						"obj-7", 
						0
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
						"obj-8", 
						0
					], 
					"hidden": 1, 
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
						"obj-9", 
						0
					], 
					"hidden": 1, 
					"destination": [
						"obj-6", 
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
				"patcherrelativepath": "../../../../../../Applications/Max 6.1/patches/m4l-patches/Pluggo for Live resources/patches", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "thru.maxpat", 
				"bootpath": "/Applications/Max 6.1/patches/m4l-patches/Pluggo for Live resources/patches"
			}, 
			{
				"patcherrelativepath": "../../../../../../Applications/Max 6.1/Cycling '74/jsui-library", 
				"implicit": 1, 
				"type": "TEXT", 
				"name": "jsui_default.js", 
				"bootpath": "/Applications/Max 6.1/Cycling '74/jsui-library"
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
				"name": "o.expr.codebox.mxo"
			}
		]
	}
}