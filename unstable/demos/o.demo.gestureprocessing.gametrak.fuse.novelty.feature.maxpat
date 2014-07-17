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
			10.0, 
			10.0
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
					"text": "o.expr /radius/delta = /radius - median(/window/radius ?? 0)", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-7", 
					"patching_rect": [
						73.5, 
						310.0, 
						326.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.callpatch /radius [zl stream 5] @as /window/radius", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-3", 
					"patching_rect": [
						73.5, 
						280.0, 
						285.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /pluck = (/radius/delta > /pluck/upper/threshold) || (/radius/delta < /pluck/lower/threshold)", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-70", 
					"patching_rect": [
						73.5, 
						350.0, 
						513.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr (/anticlockwise = /delta/orientation > /anticlockwise/delta/orientation/threshold)\\, (/clockwise = /delta/orientation < /clockwise/delta/orientation/threshold)", 
					"numinlets": 1, 
					"maxclass": "newobj", 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"linecount": 2, 
					"fontsize": 12.0, 
					"id": "obj-20", 
					"patching_rect": [
						73.5, 
						239.0, 
						466.5, 
						33.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "unit delay: previous value is bound to /was/orientation", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"bubble": 1, 
					"id": "obj-2", 
					"patching_rect": [
						210.5, 
						178.0, 
						313.0, 
						24.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /delta/orientation = /orientation - /was/orientation ?? /orientation", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-55", 
					"patching_rect": [
						73.5, 
						210.0, 
						383.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.was /orientation", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-56", 
					"patching_rect": [
						73.5, 
						180.0, 
						105.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /orientation = atan2(/x\\, /y)", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-50", 
					"patching_rect": [
						73.5, 
						150.0, 
						184.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /radius = l2norm(list(/x \\, /y) )", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-41", 
					"patching_rect": [
						73.5, 
						110.0, 
						196.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "panel", 
					"background": 1, 
					"border": 1, 
					"id": "obj-26", 
					"patching_rect": [
						50.0, 
						340.0, 
						560.0, 
						40.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "panel", 
					"background": 1, 
					"border": 1, 
					"id": "obj-21", 
					"patching_rect": [
						50.0, 
						140.0, 
						560.0, 
						201.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "panel", 
					"background": 1, 
					"border": 1, 
					"id": "obj-73", 
					"patching_rect": [
						50.0, 
						100.0, 
						560.0, 
						40.0
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
					"id": "obj-34", 
					"patching_rect": [
						73.5, 
						65.0, 
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
					"id": "obj-36", 
					"patching_rect": [
						73.5, 
						390.0, 
						25.0, 
						25.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			25.0, 
			69.0, 
			778.0, 
			745.0
		], 
		"lines": [
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-20", 
						0
					], 
					"hidden": 0, 
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
						"obj-3", 
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
						"obj-34", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-41", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-41", 
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
						"obj-50", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-56", 
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
						"obj-20", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-56", 
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
						"obj-7", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-70", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-70", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-36", 
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
				"patcherrelativepath": "../abstractions/time", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.was.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/time"
			}, 
			{
				"patcherrelativepath": "../experimental", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.callpatch.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/experimental"
			}, 
			{
				"type": "iLaX", 
				"name": "o.expr.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.collect.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.var.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.prepend.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.intersection.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.atomize.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.select.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.union.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.message.mxo"
			}
		]
	}
}