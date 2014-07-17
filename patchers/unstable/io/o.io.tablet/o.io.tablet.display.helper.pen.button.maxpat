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
					"comment": "", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "outlet", 
					"id": "obj-57", 
					"patching_rect": [
						262.107391, 
						280.0, 
						25.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.select /button", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-55", 
					"patching_rect": [
						80.607391, 
						100.0, 
						92.0, 
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
					"id": "obj-53", 
					"patching_rect": [
						80.607391, 
						280.0, 
						25.0, 
						25.0
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
					"id": "obj-52", 
					"patching_rect": [
						256.607391, 
						173.0, 
						20.0, 
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
					"id": "obj-50", 
					"patching_rect": [
						80.607391, 
						173.0, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.cond /button/pressed [[0]] == down \\, /button/pressed [[1]] == down", 
					"numinlets": 1, 
					"numoutlets": 3, 
					"outlettype": [
						"FullPacket", 
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-48", 
					"patching_rect": [
						80.607391, 
						133.0, 
						371.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /pen", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-42", 
					"patching_rect": [
						80.607391, 
						62.0, 
						75.0, 
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
					"id": "obj-14", 
					"patching_rect": [
						80.607391, 
						24.0, 
						25.0, 
						25.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			50.0, 
			94.0, 
			640.0, 
			480.0
		], 
		"lines": [
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-14", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-42", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-42", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-55", 
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
						"obj-50", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-48", 
						1
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
						"obj-50", 
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
						"obj-52", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-57", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-55", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-48", 
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
				"name": "o.cond.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.select.mxo"
			}
		]
	}
}