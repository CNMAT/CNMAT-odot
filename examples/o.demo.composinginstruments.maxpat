{
	"patcher": {
		"fileversion": 1, 
		"imprint": 0, 
		"boxanimatetime": 200, 
		"devicewidth": 0.0, 
		"default_fontsize": 20.0, 
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
					"text": "/key/down : false,\n/key/number : 31", 
					"numinlets": 2, 
					"maxclass": "o.compose", 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"linecount": 2, 
					"fontsize": 14.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-19", 
					"patching_rect": [
						466.0, 
						80.0, 
						130.0, 
						42.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/key/down : true,\n/key/number : 31", 
					"numinlets": 2, 
					"maxclass": "o.compose", 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"linecount": 2, 
					"fontsize": 14.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-20", 
					"patching_rect": [
						348.0, 
						80.0, 
						124.0, 
						42.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.sound.synth.waveshaping", 
					"numinlets": 3, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-1", 
					"patching_rect": [
						10.0, 
						401.0, 
						184.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "Tests", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 14.0, 
					"id": "obj-5", 
					"patching_rect": [
						371.0, 
						120.0, 
						123.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/key/up = ! /key/down,", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "o.expr.codebox", 
					"fontsize": 14.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-17", 
					"patching_rect": [
						46.0, 
						132.0, 
						149.0, 
						35.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.sound.synth.waveshaping", 
					"numinlets": 3, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-16", 
					"patching_rect": [
						10.0, 
						364.0, 
						184.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "API", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 14.0, 
					"id": "obj-15", 
					"patching_rect": [
						432.0, 
						460.0, 
						33.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "Synthesis", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 14.0, 
					"id": "obj-7", 
					"patching_rect": [
						372.0, 
						397.0, 
						71.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "Control Stucture", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 14.0, 
					"id": "obj-6", 
					"patching_rect": [
						375.0, 
						271.0, 
						112.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/key/number : 59.,\n/key/velocity : 0.181102,\n/key/down : false,\n/key/up : true,\n/instructions : \"Key height represents velocity\",\n/range/key/velocity : [0., 1.],\n/range/key/number : [0., 128.],\n/instance : 59.,\n/waveforms/frequency : 246.942,\n/waveforms/portamento/time : 0.2,\n/adsr/trigger : false,\n/adsr/attack : 0.16378,\n/adsr/amplitude : 0.181102,\n/fuzz/depth : 2.17323,\n/audio/enabled : 0", 
					"numinlets": 1, 
					"maxclass": "o.display", 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"linecount": 15, 
					"fontsize": 14.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-13", 
					"patching_rect": [
						11.0, 
						474.0, 
						412.0, 
						255.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "o.compose", 
					"fontsize": 14.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-12", 
					"patching_rect": [
						313.0, 
						132.0, 
						27.0, 
						26.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/key/down : false,\n/key/number : 30", 
					"numinlets": 2, 
					"maxclass": "o.compose", 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"linecount": 2, 
					"fontsize": 14.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-11", 
					"patching_rect": [
						164.0, 
						80.0, 
						130.0, 
						42.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/key/down : true,\n/key/number : 30", 
					"numinlets": 2, 
					"maxclass": "o.compose", 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"linecount": 2, 
					"fontsize": 14.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-9", 
					"patching_rect": [
						46.0, 
						80.0, 
						124.0, 
						42.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/key/number ??= 30,\n/key/down ??= true,\n/instance = /key/number,\n/waveforms/frequency ??= mtof(/key/number),\n/waveforms/portamento/time ??= 0.2,\n/adsr/trigger = /key/down??false,\n/key/velocity ??= 1.,\n/adsr/attack = (1.0 - /key/velocity) *0.2,\n/adsr/amplitude = /key/velocity,\n/fuzz/depth = /key/velocity * 12.,\n", 
					"numinlets": 1, 
					"maxclass": "o.expr.codebox", 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"linecount": 10, 
					"fontsize": 14.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-14", 
					"patching_rect": [
						11.0, 
						170.0, 
						329.0, 
						176.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "Gesture Acquisition", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 14.0, 
					"id": "obj-10", 
					"patching_rect": [
						532.0, 
						30.0, 
						131.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "Composing Instruments\nKeyboard note based\n\" o.\" MSP design pattern\nAdrian Freed 2011-2014", 
					"numinlets": 1, 
					"linecount": 4, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 14.0, 
					"id": "obj-8", 
					"patching_rect": [
						448.0, 
						168.0, 
						167.0, 
						69.0
					]
				}
			}, 
			{
				"box": {
					"numoutlets": 0, 
					"maxclass": "ezdac~", 
					"id": "obj-4", 
					"numinlets": 2, 
					"patching_rect": [
						589.0, 
						471.0, 
						45.0, 
						45.0
					]
				}
			}, 
			{
				"box": {
					"name": "o.io.mono.manual.maxpat", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "bpatcher", 
					"lockeddragscroll": 1, 
					"id": "obj-3", 
					"patching_rect": [
						10.0, 
						9.0, 
						516.0, 
						60.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			678.0, 
			44.0, 
			762.0, 
			702.0
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
						"obj-13", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-1", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-4", 
						1
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-1", 
						1
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
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"disabled": 0, 
					"hidden": 0, 
					"destination": [
						"obj-17", 
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
						"obj-16", 
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
						"obj-16", 
						0
					], 
					"hidden": 0, 
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
						"obj-16", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-4", 
						1
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-16", 
						1
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
						"obj-17", 
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
						"obj-17", 
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
						"obj-3", 
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
						"obj-17", 
						0
					], 
					"source": [
						"obj-9", 
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
				"patcherrelativepath": "../patchers/io", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.io.mono.manual.maxpat", 
				"bootpath": "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/io"
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
				"patcherrelativepath": "../patchers/sound", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.sound.synth.waveshaping.maxpat", 
				"bootpath": "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/sound"
			}, 
			{
				"patcherrelativepath": "../patchers/sound", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.sound.waveforms.maxpat", 
				"bootpath": "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/sound"
			}, 
			{
				"patcherrelativepath": "../patchers/core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.in~.maxpat", 
				"bootpath": "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/core"
			}, 
			{
				"patcherrelativepath": "../../../../../../../Applications/Max 6.1/patches/m4l-patches/Pluggo for Live resources/patches", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "thru.maxpat", 
				"bootpath": "/Applications/Max 6.1/patches/m4l-patches/Pluggo for Live resources/patches"
			}, 
			{
				"patcherrelativepath": "../patchers/sound", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "c.smooth~.maxpat", 
				"bootpath": "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/sound"
			}, 
			{
				"patcherrelativepath": "../patchers/sound", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.sound.fuzz.maxpat", 
				"bootpath": "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/sound"
			}, 
			{
				"patcherrelativepath": "../patchers/core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.out~.maxpat", 
				"bootpath": "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/core"
			}, 
			{
				"patcherrelativepath": "../patchers/sound", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.sound.note.adsr.maxpat", 
				"bootpath": "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/sound"
			}, 
			{
				"patcherrelativepath": "../patchers/sound", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.sound.note.helper.maxpat", 
				"bootpath": "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/sound"
			}, 
			{
				"patcherrelativepath": "../patchers/core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.righttoleft.maxpat", 
				"bootpath": "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/core"
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
				"name": "o.compose.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.display.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.expr.mxo"
			}
		]
	}
}