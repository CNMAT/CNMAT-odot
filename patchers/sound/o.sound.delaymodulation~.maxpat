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
					"text": "o.route /delay", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-2", 
					"patching_rect": [
						87.0, 
						223.0, 
						83.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "*~ 1000.", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-41", 
					"patching_rect": [
						240.0, 
						331.0, 
						63.0, 
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
					"id": "obj-40", 
					"patching_rect": [
						410.0, 
						507.0, 
						175.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"color": [
						0.8, 
						0.8, 
						0.8, 
						1.0
					], 
					"text": "c.smooth~", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-39", 
					"patching_rect": [
						566.0, 
						361.0, 
						75.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "*~ 0.5", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-37", 
					"patching_rect": [
						163.0, 
						403.0, 
						48.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"color": [
						0.8, 
						0.8, 
						0.8, 
						1.0
					], 
					"text": "c.smooth~", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-36", 
					"patching_rect": [
						240.0, 
						303.0, 
						75.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "+~", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-23", 
					"patching_rect": [
						207.0, 
						484.0, 
						44.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "sampstoms~", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"signal", 
						"float"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-17", 
					"patching_rect": [
						261.5, 
						398.0, 
						91.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "adstatus sigvs", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"int"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-19", 
					"patching_rect": [
						261.5, 
						365.0, 
						100.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "+~", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-20", 
					"patching_rect": [
						206.5, 
						554.0, 
						36.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "*~ 30.", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-21", 
					"patching_rect": [
						207.0, 
						436.0, 
						50.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "+~ 1.", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-28", 
					"patching_rect": [
						88.5, 
						363.0, 
						88.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "cycle~ 0.1", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-29", 
					"patching_rect": [
						88.5, 
						336.0, 
						127.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "tapout~", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-32", 
					"patching_rect": [
						207.0, 
						519.0, 
						74.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "tapin~ 1000", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"tapconnect"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-33", 
					"patching_rect": [
						311.0, 
						486.0, 
						86.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"color": [
						0.8, 
						0.8, 
						0.8, 
						1.0
					], 
					"text": "c.smooth~", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-8", 
					"patching_rect": [
						89.0, 
						298.0, 
						75.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/delay/modulation/rate ??= 0.1,\n/delay/modulation/depth ??= 0.01,\n/delay/direct/amplitude ?? = 1.0,\n/delay/units/modulation/rate = \"Hz\",\n/dela/units/modulatio/depth = \"Seconds\",", 
					"numinlets": 1, 
					"maxclass": "o.expr.codebox", 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"linecount": 5, 
					"fontsize": 14.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-14", 
					"patching_rect": [
						63.0, 
						78.0, 
						310.0, 
						98.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
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
						410.0, 
						426.0, 
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
						410.0, 
						383.0, 
						25.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /modulation/rate /modulation/depth /direct/amplitude", 
					"numinlets": 4, 
					"numoutlets": 4, 
					"outlettype": [
						"", 
						"", 
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-11", 
					"patching_rect": [
						89.0, 
						261.0, 
						464.0, 
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
						68.0, 
						581.0, 
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
						68.0, 
						613.0, 
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
						207.0, 
						582.0, 
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
						63.0, 
						41.0, 
						120.0, 
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
						63.0, 
						4.0, 
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
						207.0, 
						616.0, 
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
			812.0, 
			645.0
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
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"disabled": 0, 
					"hidden": 0, 
					"destination": [
						"obj-36", 
						0
					], 
					"source": [
						"obj-11", 
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
						"obj-39", 
						0
					], 
					"source": [
						"obj-11", 
						2
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
						"obj-8", 
						0
					], 
					"source": [
						"obj-11", 
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
						"obj-33", 
						0
					], 
					"midpoints": [
						419.5, 
						454.0, 
						320.5, 
						454.0
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
						"obj-40", 
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
						"obj-2", 
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
					"disabled": 0, 
					"source": [
						"obj-17", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-23", 
						1
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-19", 
						1
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
						"obj-2", 
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
						"obj-3", 
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
						"obj-23", 
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
						"obj-32", 
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
						"obj-37", 
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
						"obj-28", 
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
						"obj-32", 
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
						"obj-33", 
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
						"obj-36", 
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
						"obj-37", 
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
						"obj-39", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-40", 
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
						"obj-20", 
						1
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
						"obj-21", 
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
						"obj-7", 
						0
					], 
					"source": [
						"obj-6", 
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
						"obj-29", 
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