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
			"revision": 3
		}, 
		"boxes": [
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.gather /3 /6", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"id": "obj-1", 
					"patching_rect": [
						125.0, 
						154.0, 
						77.0, 
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
					"id": "obj-2", 
					"patching_rect": [
						129.0, 
						243.0, 
						15.0, 
						15.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /button = /3\\, /rate = scale(/6\\, 0\\,100\\, 0.\\, 1.0)", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"id": "obj-4", 
					"patching_rect": [
						129.0, 
						195.0, 
						209.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.io.hid \"Griffin PowerMate\"", 
					"numinlets": 0, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"id": "obj-5", 
					"patching_rect": [
						127.0, 
						103.0, 
						120.0, 
						17.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			568.0, 
			77.0, 
			600.0, 
			400.0
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
						"obj-4", 
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
						"obj-2", 
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
						"obj-1", 
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
				"patcherrelativepath": ".", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.io.hid.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/io"
			}, 
			{
				"patcherrelativepath": "..", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.gather.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/abstractions"
			}, 
			{
				"type": "iLaX", 
				"name": "OpenSoundControl.mxo"
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
				"name": "o.collect.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.difference.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.message.mxo"
			}
		]
	}
}