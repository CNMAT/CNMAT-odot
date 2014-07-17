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
					"text": "assign(\"/\" + /name +  /suffix1, /value), \ndelete(/value), delete(/name), delete(/suffix1),", 
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
						160.5, 
						297.5, 
						382.0, 
						46.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /value /name fader /suffix1", 
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
						221.0, 
						270.0, 
						145.0, 
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
					"id": "obj-3", 
					"patching_rect": [
						346.0, 
						202.0, 
						48.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"peakcolor": [
						0.498039, 
						0.498039, 
						0.498039, 
						1.0
					], 
					"candicane6": [
						0.733333, 
						0.035294, 
						0.788235, 
						1.0
					], 
					"border_right": 0, 
					"candicane4": [
						0.439216, 
						0.619608, 
						0.070588, 
						1.0
					], 
					"candicane5": [
						0.584314, 
						0.827451, 
						0.431373, 
						1.0
					], 
					"candicane2": [
						0.145098, 
						0.203922, 
						0.356863, 
						1.0
					], 
					"candicane3": [
						0.290196, 
						0.411765, 
						0.713726, 
						1.0
					], 
					"setminmax": [
						0.0, 
						1.0
					], 
					"id": "obj-5", 
					"candicane8": [
						0.027451, 
						0.447059, 
						0.501961, 
						1.0
					], 
					"thickness": 5, 
					"numoutlets": 2, 
					"bgcolor": [
						0.615686, 
						0.615686, 
						0.615686, 
						0.0
					], 
					"contdata": 1, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "multislider", 
					"border_top": 0, 
					"parameter_enable": 0, 
					"border_bottom": 0, 
					"patching_rect": [
						-1.0, 
						4.0, 
						30.0, 
						248.0
					], 
					"slidercolor": [
						1.0, 
						1.0, 
						1.0, 
						1.0
					], 
					"candicane7": [
						0.878431, 
						0.243137, 
						0.145098, 
						1.0
					], 
					"ghostbar": 2, 
					"numinlets": 1, 
					"border_left": 0
				}
			}, 
			{
				"box": {
					"comment": "", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "outlet", 
					"id": "obj-6", 
					"patching_rect": [
						160.5, 
						367.0, 
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
					"id": "obj-7", 
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
					"id": "obj-8", 
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
					"text": "#1", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 9.0, 
					"id": "obj-9", 
					"patching_rect": [
						347.0, 
						237.0, 
						21.0, 
						15.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "prepend set 1", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"id": "obj-10", 
					"patching_rect": [
						58.0, 
						80.0, 
						71.0, 
						17.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			597.0, 
			73.0, 
			1138.0, 
			487.0
		], 
		"lines": [
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-10", 
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
						"obj-3", 
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
						"obj-38", 
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
						"obj-5", 
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
						"obj-7", 
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
						"obj-8", 
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
						"obj-9", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-32", 
						2
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