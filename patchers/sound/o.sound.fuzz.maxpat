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
					"text": "o.route /fuzz", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-15", 
					"patching_rect": [
						74.0, 
						226.0, 
						77.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "c.smooth~", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-10", 
					"patching_rect": [
						96.0, 
						316.0, 
						66.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "Symmetric distortion\n\nAdrian Freed 2014", 
					"numinlets": 1, 
					"linecount": 3, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-18", 
					"patching_rect": [
						348.0, 
						368.0, 
						150.0, 
						47.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"text": "o.in~ @name fuzz", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-4", 
					"patching_rect": [
						290.0, 
						333.0, 
						124.0, 
						22.0
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
					"id": "obj-5", 
					"patching_rect": [
						290.0, 
						293.0, 
						25.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/fuzz/depth ??= 0,\n/fuzz/ramp/time ??= 0.01,", 
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
					"id": "obj-14", 
					"patching_rect": [
						49.0, 
						125.0, 
						201.0, 
						46.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"text": "o.in~ @name sound", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-12", 
					"patching_rect": [
						258.0, 
						261.0, 
						136.0, 
						22.0
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
					"id": "obj-13", 
					"patching_rect": [
						258.0, 
						222.0, 
						25.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /depth /ramp/time", 
					"numinlets": 3, 
					"numoutlets": 3, 
					"outlettype": [
						"", 
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-11", 
					"patching_rect": [
						75.0, 
						264.0, 
						167.0, 
						22.0
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
					"fontsize": 14.0, 
					"id": "obj-6", 
					"patching_rect": [
						53.0, 
						498.0, 
						129.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"comment": "", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "outlet", 
					"id": "obj-7", 
					"patching_rect": [
						53.0, 
						533.0, 
						25.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.out~ @name sound", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-3", 
					"patching_rect": [
						260.0, 
						496.0, 
						145.0, 
						22.0
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
					"fontsize": 14.0, 
					"id": "obj-1", 
					"patching_rect": [
						49.0, 
						85.0, 
						120.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": " tanh~ as a handy   monotonic odd function", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 14.0, 
					"id": "obj-2", 
					"patching_rect": [
						315.0, 
						451.0, 
						288.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "*~ 1.", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-27", 
					"patching_rect": [
						260.0, 
						415.0, 
						49.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "tanh~", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-22", 
					"patching_rect": [
						260.0, 
						451.0, 
						46.0, 
						22.0
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
					"id": "obj-30", 
					"patching_rect": [
						49.0, 
						48.0, 
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
					"id": "obj-31", 
					"patching_rect": [
						260.0, 
						534.0, 
						25.0, 
						25.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			1218.0, 
			-986.0, 
			670.0, 
			571.0
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
						"obj-14", 
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
					"disabled": 0, 
					"source": [
						"obj-10", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-27", 
						1
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-11", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-10", 
						1
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
						"obj-13", 
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
						"obj-6", 
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
						"obj-11", 
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
					"disabled": 0, 
					"source": [
						"obj-22", 
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
						"obj-27", 
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
						"obj-3", 
						0
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
						"obj-30", 
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
						"obj-27", 
						1
					], 
					"midpoints": [
						299.5, 
						402.0, 
						299.5, 
						402.0
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
					], 
					"midpoints": [
						299.5, 
						322.0, 
						299.5, 
						322.0
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
						"obj-7", 
						0
					], 
					"source": [
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
				"patcherrelativepath": "../../patchers/core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.in.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core"
			}, 
			{
				"patcherrelativepath": "../../patchers/core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.port.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core"
			}, 
			{
				"patcherrelativepath": "../../experimental/aspect", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.aspect.joinpoint.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/experimental/aspect"
			}, 
			{
				"patcherrelativepath": "../../patchers/core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.out~.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core"
			}, 
			{
				"patcherrelativepath": "../../../../../Applications/Max 6.1/patches/m4l-patches/Pluggo for Live resources/patches", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "thru.maxpat", 
				"bootpath": "/Applications/Max 6.1/patches/m4l-patches/Pluggo for Live resources/patches"
			}, 
			{
				"patcherrelativepath": "../../patchers/core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.out.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core"
			}, 
			{
				"patcherrelativepath": "../../patchers/core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.in~.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core"
			}, 
			{
				"patcherrelativepath": ".", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "c.smooth~.maxpat", 
				"bootpath": "/Users/adrian2013/CNMAT-odot/examples/sound"
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
				"name": "o.expr.codebox.mxo"
			}
		]
	}
}