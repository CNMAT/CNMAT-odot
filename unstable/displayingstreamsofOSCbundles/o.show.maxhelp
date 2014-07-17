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
					"contdata": 1, 
					"presentation_rect": [
						270.0, 
						64.0, 
						0.0, 
						0.0
					], 
					"orientation": 0, 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "multislider", 
					"parameter_enable": 0, 
					"id": "obj-10", 
					"patching_rect": [
						186.0, 
						61.0, 
						215.0, 
						13.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /example/1/32", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-8", 
					"patching_rect": [
						186.0, 
						84.0, 
						125.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/example/2 = 3,\n/example/3 = \"thing\" \"thong\",", 
					"numinlets": 1, 
					"linecount": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "o.expr.codebox", 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-5", 
					"patching_rect": [
						186.0, 
						109.5, 
						165.0, 
						46.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/show : 0.78", 
					"numinlets": 1, 
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
					"id": "obj-4", 
					"patching_rect": [
						32.0, 
						17.0, 
						150.0, 
						24.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.show help", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"id": "obj-1", 
					"patching_rect": [
						488.0, 
						178.0, 
						62.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"name": "o.show.maxpat", 
					"numinlets": 1, 
					"args": [
						"o.show.help"
					], 
					"numoutlets": 0, 
					"maxclass": "bpatcher", 
					"lockeddragscroll": 1, 
					"id": "obj-6", 
					"patching_rect": [
						32.0, 
						195.0, 
						915.0, 
						281.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.show, a real-time viewer of OSC messages. Messages fade from black to grey to disappearing to help you see temporal relationships Use in a bpatcher or double click to open a window.\n\nAdrian Freed 2013", 
					"numinlets": 1, 
					"maxclass": "comment", 
					"numoutlets": 0, 
					"linecount": 9, 
					"frgb": 0.0, 
					"fontsize": 9.0, 
					"id": "obj-7", 
					"patching_rect": [
						741.0, 
						84.0, 
						143.0, 
						97.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			187.0, 
			83.0, 
			1084.0, 
			484.0
		], 
		"lines": [
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-10", 
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
						"obj-4", 
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
						"obj-1", 
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
						"obj-5", 
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
				"bootpath": "/Users/adrian2013/CNMAT-odot/experimental/tentative", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "o.show.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core", 
				"type": "JSON", 
				"patcherrelativepath": "../../patchers/core", 
				"name": "o.in.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core", 
				"type": "JSON", 
				"patcherrelativepath": "../../patchers/core", 
				"name": "o.port.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/aspect", 
				"type": "JSON", 
				"patcherrelativepath": "../../patchers/aspect", 
				"name": "o.aspect.joinpoint.maxpat", 
				"implicit": 1
			}, 
			{
				"type": "iLaX", 
				"name": "o.atomize.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.downcast.mxo"
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
				"name": "o.compose.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.expr.codebox.mxo"
			}
		]
	}
}