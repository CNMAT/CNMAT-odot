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
		"openinpresentation": 1, 
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
						476.859467, 
						218.181808, 
						32.5, 
						18.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "assign(\"/\" + /name + string(/suffix ), /value), \ndelete(/value), delete(/name), delete(/suffix),", 
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
					"id": "obj-1", 
					"patching_rect": [
						59.169441, 
						508.999969, 
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
						"int"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-2", 
					"patching_rect": [
						339.545471, 
						278.355377, 
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
						"int"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-3", 
					"patching_rect": [
						250.719025, 
						278.355377, 
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
						"int"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-29", 
					"patching_rect": [
						121.0, 
						278.355377, 
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
						"int"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-34", 
					"patching_rect": [
						83.809929, 
						278.355377, 
						26.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /value /name encoder_button/d /suffix", 
					"numinlets": 3, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-39", 
					"patching_rect": [
						300.809937, 
						476.165283, 
						189.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /value /name encoder_button/c /suffix", 
					"numinlets": 3, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-40", 
					"patching_rect": [
						245.46283, 
						440.553711, 
						189.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /value /name encoder/b _button/suffix", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-41", 
					"patching_rect": [
						176.545471, 
						411.247925, 
						189.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /value /name encoder_button/a  /suffix #1", 
					"numinlets": 4, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 9.0, 
					"hidden": 1, 
					"id": "obj-42", 
					"patching_rect": [
						56.0, 
						369.925629, 
						204.0, 
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
					"id": "obj-43", 
					"patching_rect": [
						76.169441, 
						581.644653, 
						15.0, 
						15.0
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
						28.0, 
						56.0, 
						16.0, 
						16.0
					], 
					"outlettype": [
						"int"
					], 
					"numinlets": 1, 
					"numoutlets": 1, 
					"bgcolor": [
						1.0, 
						1.0, 
						1.0, 
						0.0
					], 
					"maxclass": "led", 
					"blinktime": 151, 
					"parameter_enable": 0, 
					"presentation": 1, 
					"id": "obj-38", 
					"patching_rect": [
						18.0, 
						132.0, 
						16.0, 
						16.0
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
						8.0, 
						56.0, 
						16.0, 
						16.0
					], 
					"outlettype": [
						"int"
					], 
					"numinlets": 1, 
					"numoutlets": 1, 
					"bgcolor": [
						1.0, 
						1.0, 
						1.0, 
						0.0
					], 
					"maxclass": "led", 
					"blinktime": 151, 
					"parameter_enable": 0, 
					"presentation": 1, 
					"id": "obj-37", 
					"patching_rect": [
						56.0, 
						132.0, 
						16.0, 
						16.0
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
						28.0, 
						36.0, 
						16.0, 
						16.0
					], 
					"outlettype": [
						"int"
					], 
					"numinlets": 1, 
					"numoutlets": 1, 
					"bgcolor": [
						1.0, 
						1.0, 
						1.0, 
						0.0
					], 
					"maxclass": "led", 
					"blinktime": 151, 
					"parameter_enable": 0, 
					"presentation": 1, 
					"id": "obj-36", 
					"patching_rect": [
						56.0, 
						33.0, 
						16.0, 
						16.0
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
						8.0, 
						36.0, 
						16.0, 
						16.0
					], 
					"outlettype": [
						"int"
					], 
					"numinlets": 1, 
					"numoutlets": 1, 
					"bgcolor": [
						1.0, 
						1.0, 
						1.0, 
						0.0
					], 
					"maxclass": "led", 
					"blinktime": 151, 
					"parameter_enable": 0, 
					"presentation": 1, 
					"id": "obj-35", 
					"patching_rect": [
						5.0, 
						30.0, 
						16.0, 
						16.0
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
					"id": "obj-4", 
					"patching_rect": [
						346.0, 
						127.0, 
						62.0, 
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
					"id": "obj-5", 
					"patching_rect": [
						271.0, 
						127.0, 
						62.0, 
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
					"id": "obj-6", 
					"patching_rect": [
						196.0, 
						127.0, 
						62.0, 
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
					"id": "obj-7", 
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
					"id": "obj-8", 
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
					"id": "obj-9", 
					"patching_rect": [
						196.0, 
						103.0, 
						51.0, 
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
					"id": "obj-10", 
					"patching_rect": [
						100.0, 
						102.0, 
						51.0, 
						17.0
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
						447.0, 
						165.0, 
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
						447.0, 
						137.0, 
						48.0, 
						17.0
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
					"id": "obj-31", 
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
					"id": "obj-32", 
					"patching_rect": [
						184.0, 
						64.0, 
						78.0, 
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
					"id": "obj-33", 
					"patching_rect": [
						121.0, 
						128.0, 
						62.0, 
						17.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			277.0, 
			60.0, 
			1052.0, 
			668.0
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
						"obj-43", 
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
						"obj-33", 
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
						"obj-39", 
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
						"obj-29", 
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
						"obj-3", 
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
						"obj-31", 
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
						"obj-32", 
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
						"obj-32", 
						3
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
						"obj-32", 
						2
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
						"obj-32", 
						1
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
						"obj-33", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-35", 
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
						"obj-42", 
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
						"obj-36", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-29", 
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
						"obj-3", 
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
						"obj-2", 
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
						"obj-1", 
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
						"obj-38", 
						0
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
						"obj-1", 
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
						"obj-1", 
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
						"obj-1", 
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
						"obj-39", 
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
						"obj-40", 
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
						"obj-41", 
						1
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
						"obj-42", 
						3
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
						"obj-37", 
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
					"hidden": 0, 
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
						"obj-7", 
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