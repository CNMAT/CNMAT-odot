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
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"bang"
					], 
					"maxclass": "button", 
					"hidden": 1, 
					"id": "obj-24", 
					"patching_rect": [
						232.0, 
						45.0, 
						20.0, 
						20.0
					]
				}
			}, 
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
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-22", 
					"patching_rect": [
						250.5, 
						142.0, 
						32.5, 
						15.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "assign(\"/\" + /name +  /suffix1 + /suffix2, /value), \ndelete(/value), delete(/name), delete(/suffix1),delete(/suffix2),", 
					"numinlets": 1, 
					"maxclass": "o.expr.codebox", 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"linecount": 2, 
					"fontsize": 12.0, 
					"hidden": 1, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-38", 
					"patching_rect": [
						145.5, 
						282.5, 
						382.0, 
						46.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /value /name button /suffix1 /suffix2", 
					"numinlets": 4, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-32", 
					"patching_rect": [
						206.0, 
						255.0, 
						180.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"offcolor": [
						0.4, 
						0.0, 
						0.0, 
						1.0
					], 
					"presentation_rect": [
						5.0, 
						28.0, 
						16.0, 
						16.0
					], 
					"outlettype": [
						"int"
					], 
					"numinlets": 1, 
					"numoutlets": 1, 
					"bgcolor": [
						0.501961, 
						0.501961, 
						0.501961, 
						0.0
					], 
					"maxclass": "led", 
					"blinktime": 151, 
					"parameter_enable": 0, 
					"presentation": 1, 
					"id": "obj-14", 
					"patching_rect": [
						5.0, 
						28.0, 
						16.0, 
						16.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route #2", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-1", 
					"patching_rect": [
						72.0, 
						78.0, 
						51.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "#2", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-3", 
					"patching_rect": [
						225.0, 
						142.0, 
						21.0, 
						15.0
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
					"id": "obj-4", 
					"patching_rect": [
						225.0, 
						115.0, 
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
					"id": "obj-7", 
					"patching_rect": [
						225.0, 
						87.0, 
						48.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"comment": "", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "outlet", 
					"hidden": 1, 
					"id": "obj-10", 
					"patching_rect": [
						139.0, 
						344.0, 
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
					"id": "obj-11", 
					"patching_rect": [
						58.0, 
						21.0, 
						15.0, 
						15.0
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
					"id": "obj-12", 
					"patching_rect": [
						58.0, 
						52.0, 
						51.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "prepend set", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-13", 
					"patching_rect": [
						92.0, 
						126.0, 
						62.0, 
						17.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			391.0, 
			58.0, 
			988.0, 
			572.0
		], 
		"lines": [
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-1", 
						0
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
						"obj-11", 
						0
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
						"obj-12", 
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
						"obj-13", 
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
						"obj-14", 
						0
					], 
					"hidden": 1, 
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
						"obj-22", 
						0
					], 
					"hidden": 1, 
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
						"obj-24", 
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
						"obj-3", 
						0
					], 
					"hidden": 1, 
					"destination": [
						"obj-32", 
						3
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
					"hidden": 1, 
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
						"obj-38", 
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
						"obj-4", 
						1
					], 
					"hidden": 1, 
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
						"obj-4", 
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
						"obj-7", 
						0
					], 
					"hidden": 1, 
					"destination": [
						"obj-4", 
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