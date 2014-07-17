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
					"text": "o.route /adsr", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-26", 
					"patching_rect": [
						398.0, 
						305.0, 
						78.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "* 1000.", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"float"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-25", 
					"patching_rect": [
						635.0, 
						368.0, 
						49.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "* 1000.", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"float"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-20", 
					"patching_rect": [
						517.0, 
						370.0, 
						49.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "* 1000.", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"float"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-16", 
					"patching_rect": [
						459.0, 
						371.0, 
						49.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.out @name voice", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-4", 
					"patching_rect": [
						189.0, 
						561.0, 
						114.0, 
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
					"id": "obj-10", 
					"patching_rect": [
						189.0, 
						595.0, 
						25.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
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
					"id": "obj-7", 
					"patching_rect": [
						87.0, 
						23.0, 
						25.0, 
						24.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/trigger : true", 
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
					"id": "obj-5", 
					"patching_rect": [
						118.0, 
						24.0, 
						79.0, 
						24.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "classical ADSR Attack/Decay/Sustain/Release\nAdrian Freed 2014", 
					"numinlets": 1, 
					"maxclass": "comment", 
					"numoutlets": 0, 
					"linecount": 3, 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-35", 
					"patching_rect": [
						227.0, 
						20.0, 
						198.0, 
						47.0
					]
				}
			}, 
			{
				"box": {
					"numoutlets": 0, 
					"maxclass": "ezdac~", 
					"id": "obj-32", 
					"numinlets": 2, 
					"patching_rect": [
						608.0, 
						560.0, 
						45.0, 
						45.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"int"
					], 
					"maxclass": "toggle", 
					"parameter_enable": 0, 
					"id": "obj-30", 
					"patching_rect": [
						556.0, 
						475.0, 
						44.0, 
						44.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/playing = (/playing==0)", 
					"numinlets": 1, 
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
					"id": "obj-27", 
					"patching_rect": [
						189.0, 
						517.0, 
						150.0, 
						33.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pack /playing", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-24", 
					"patching_rect": [
						189.0, 
						484.0, 
						91.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/adsr/trigger ??= true,", 
					"numinlets": 1, 
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
					"id": "obj-9", 
					"patching_rect": [
						49.0, 
						97.0, 
						131.0, 
						33.0
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
					"id": "obj-11", 
					"patching_rect": [
						356.0, 
						347.0, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.if /adsr/trigger==true", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-19", 
					"patching_rect": [
						49.0, 
						137.0, 
						498.0, 
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
					"id": "obj-23", 
					"patching_rect": [
						325.0, 
						422.0, 
						25.0, 
						25.0
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
					"id": "obj-21", 
					"patching_rect": [
						323.0, 
						491.0, 
						136.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/adsr/amplitude ??= 0.,\n/adsr/amplitude = (/adsr/amplitude == 0.0)? 0.00001 : /adsr/amplitude, \n/adsr/attack ??= 0.02,\n/adsr/decay ??= 0.03,\n/adsr/sustain ??= 0.6,\n/adsr/release ??= 1.0,", 
					"numinlets": 1, 
					"linecount": 6, 
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
					"id": "obj-2", 
					"patching_rect": [
						49.0, 
						162.0, 
						391.0, 
						100.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "route mute", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-22", 
					"patching_rect": [
						557.0, 
						423.0, 
						68.0, 
						20.0
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
					"fontsize": 12.0, 
					"id": "obj-14", 
					"patching_rect": [
						49.0, 
						322.0, 
						112.0, 
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
					"id": "obj-15", 
					"patching_rect": [
						49.0, 
						360.0, 
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
					"fontsize": 12.0, 
					"id": "obj-3", 
					"patching_rect": [
						473.0, 
						573.0, 
						126.0, 
						20.0
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
					"fontsize": 12.0, 
					"id": "obj-1", 
					"patching_rect": [
						49.0, 
						69.0, 
						105.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "adsr~", 
					"numinlets": 5, 
					"numoutlets": 4, 
					"outlettype": [
						"signal", 
						"signal", 
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-13", 
					"patching_rect": [
						399.0, 
						396.0, 
						256.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "0", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 12.0, 
					"id": "obj-12", 
					"patching_rect": [
						356.0, 
						374.0, 
						25.0, 
						18.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "*~", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"signal"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-8", 
					"patching_rect": [
						473.0, 
						544.0, 
						24.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /amplitude /attack /decay /sustain /release", 
					"numinlets": 6, 
					"numoutlets": 6, 
					"outlettype": [
						"", 
						"", 
						"", 
						"", 
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-6", 
					"patching_rect": [
						398.0, 
						330.0, 
						318.0, 
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
					"id": "obj-17", 
					"patching_rect": [
						48.0, 
						22.0, 
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
					"id": "obj-18", 
					"patching_rect": [
						473.0, 
						604.0, 
						25.0, 
						25.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			472.0, 
			-946.0, 
			762.0, 
			624.0
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
						"obj-9", 
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
						"obj-11", 
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
					"disabled": 0, 
					"source": [
						"obj-12", 
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
						"obj-13", 
						2
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
						"obj-13", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-8", 
						1
					], 
					"midpoints": [
						408.5, 
						462.0, 
						487.5, 
						462.0
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
					"disabled": 0, 
					"source": [
						"obj-16", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-13", 
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
						"obj-1", 
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
					"color": [
						1.0, 
						0.8, 
						0.4, 
						1.0
					], 
					"destination": [
						"obj-11", 
						0
					], 
					"disabled": 0, 
					"source": [
						"obj-19", 
						1
					], 
					"midpoints": [
						537.5, 
						276.0, 
						365.5, 
						276.0
					], 
					"hidden": 0
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
					"destination": [
						"obj-14", 
						0
					], 
					"disabled": 0, 
					"source": [
						"obj-19", 
						1
					], 
					"midpoints": [
						537.5, 
						276.0, 
						58.5, 
						276.0
					], 
					"hidden": 0
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
						"obj-19", 
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
						"obj-2", 
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
					"destination": [
						"obj-26", 
						0
					], 
					"disabled": 0, 
					"source": [
						"obj-2", 
						0
					], 
					"midpoints": [
						58.5, 
						269.0, 
						407.5, 
						269.0
					], 
					"hidden": 0
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
						"obj-13", 
						2
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
						"obj-8", 
						0
					], 
					"midpoints": [
						332.5, 
						510.0, 
						482.5, 
						510.0
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
						"obj-24", 
						0
					], 
					"midpoints": [
						566.5, 
						463.0, 
						405.0, 
						463.0, 
						405.0, 
						463.0, 
						198.5, 
						463.0
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
						"obj-30", 
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
						"obj-21", 
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
						"obj-27", 
						0
					], 
					"source": [
						"obj-24", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-25", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-13", 
						4
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
						"obj-26", 
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
						"obj-4", 
						0
					], 
					"source": [
						"obj-27", 
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
						"obj-18", 
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
						"obj-10", 
						0
					], 
					"source": [
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
						"obj-1", 
						0
					], 
					"source": [
						"obj-5", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-6", 
						3
					], 
					"hidden": 0, 
					"destination": [
						"obj-13", 
						3
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
						"obj-13", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-6", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-16", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-6", 
						2
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
						"obj-6", 
						4
					], 
					"hidden": 0, 
					"destination": [
						"obj-25", 
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
						"obj-7", 
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
						"obj-19", 
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
				"bootpath": "/Users/adrian2013/CNMAT-odot/experimental/aspect", 
				"type": "JSON", 
				"patcherrelativepath": "../../experimental/aspect", 
				"name": "o.aspect.joinpoint.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core", 
				"type": "JSON", 
				"patcherrelativepath": "../../patchers/core", 
				"name": "o.out~.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Applications/Max 6.1/patches/m4l-patches/Pluggo for Live resources/patches", 
				"type": "JSON", 
				"patcherrelativepath": "../../../../../Applications/Max 6.1/patches/m4l-patches/Pluggo for Live resources/patches", 
				"name": "thru.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core", 
				"type": "JSON", 
				"patcherrelativepath": "../../patchers/core", 
				"name": "o.out.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core", 
				"type": "JSON", 
				"patcherrelativepath": "../../patchers/core", 
				"name": "o.in~.maxpat", 
				"implicit": 1
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
				"name": "o.expr.codebox.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.compose.mxo"
			}
		]
	}
}