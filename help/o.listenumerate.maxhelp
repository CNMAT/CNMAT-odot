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
			"architecture": "x64", 
			"minor": 1, 
			"revision": 6
		}, 
		"boxes": [
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.if /length != 0", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-25", 
					"patching_rect": [
						135.0, 
						375.0, 
						90.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "/bar : 43", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "o.display", 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-23", 
					"patching_rect": [
						862.0, 
						448.521118, 
						98.0, 
						34.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "o.display", 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-22", 
					"patching_rect": [
						739.0, 
						448.521118, 
						98.0, 
						34.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "/value : 5,\n/address : \"/foo\",\n/index : 4,\n/length : 5", 
					"numinlets": 1, 
					"maxclass": "o.display", 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"linecount": 4, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-20", 
					"patching_rect": [
						618.200012, 
						448.521118, 
						108.0, 
						76.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "/value : {\n\t/thing : 3\n},\n/address : \"/foo\",\n/index : 3,\n/length : 5", 
					"numinlets": 1, 
					"maxclass": "o.display", 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"linecount": 6, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-21", 
					"patching_rect": [
						497.400024, 
						448.521118, 
						108.0, 
						104.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "/value : \"three\",\n/address : \"/foo\",\n/index : 2,\n/length : 5", 
					"numinlets": 1, 
					"maxclass": "o.display", 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"linecount": 4, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-19", 
					"patching_rect": [
						376.600006, 
						448.521118, 
						108.0, 
						76.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "/value : 2.,\n/address : \"/foo\",\n/index : 1,\n/length : 5", 
					"numinlets": 1, 
					"maxclass": "o.display", 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"linecount": 4, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-17", 
					"patching_rect": [
						255.799988, 
						448.521118, 
						108.0, 
						76.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "/value : 1,\n/address : \"/foo\",\n/index : 0,\n/length : 5", 
					"numinlets": 1, 
					"maxclass": "o.display", 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"linecount": 4, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-16", 
					"patching_rect": [
						135.0, 
						448.521118, 
						108.0, 
						76.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.cond /index==0 \\, /index == 1\\, /index == 2\\, /index == 3 \\, /index == 4", 
					"numinlets": 1, 
					"numoutlets": 6, 
					"outlettype": [
						"FullPacket", 
						"FullPacket", 
						"FullPacket", 
						"FullPacket", 
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-15", 
					"patching_rect": [
						135.0, 
						405.0, 
						623.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "/value : 5,\n/address : \"/foo\",\n/index : 4,\n/length : 5", 
					"numinlets": 1, 
					"maxclass": "o.display", 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"linecount": 4, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-11", 
					"patching_rect": [
						19.0, 
						448.521118, 
						108.0, 
						76.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "/foo : [1, 2., \"three\", {\n\t/thing : 3\n}, 5],\n/bar : 43", 
					"numinlets": 2, 
					"maxclass": "o.compose", 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"linecount": 4, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-5", 
					"patching_rect": [
						19.0, 
						222.521118, 
						146.0, 
						66.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "(last entry)", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-18", 
					"patching_rect": [
						38.0, 
						420.521118, 
						66.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "see Max window for output order", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-14", 
					"patching_rect": [
						176.5, 
						330.0, 
						188.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.print o.listenumerate", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-13", 
					"patching_rect": [
						19.0, 
						330.0, 
						131.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "an OSC address is required as the first argument", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-7", 
					"patching_rect": [
						176.5, 
						296.521118, 
						272.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.listenumerate /foo", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-1", 
					"patching_rect": [
						19.0, 
						296.521118, 
						118.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "see also:", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-12", 
					"patching_rect": [
						595.0, 
						44.521118, 
						150.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.helpfilehelper @obj o.listenumerate /foo", 
					"numinlets": 1, 
					"numoutlets": 4, 
					"outlettype": [
						"", 
						"", 
						"", 
						"clear"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"hidden": 1, 
					"id": "obj-10", 
					"patching_rect": [
						595.0, 
						129.521118, 
						232.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.listenumerate enumerates the values of a list at an OSC packet and outputs them out one at a time.", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-9", 
					"patching_rect": [
						38.0, 
						185.521118, 
						549.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "Iterate over a list at a user-defined OSC address", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-8", 
					"patching_rect": [
						38.0, 
						137.521118, 
						268.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.listenumerate", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 72.0, 
					"id": "obj-6", 
					"patching_rect": [
						30.0, 
						33.021118, 
						503.0, 
						87.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"items": [
						"o.iterate", 
						",", 
						"o.route"
					], 
					"numinlets": 1, 
					"numoutlets": 3, 
					"outlettype": [
						"int", 
						"", 
						""
					], 
					"maxclass": "umenu", 
					"fontsize": 12.0, 
					"parameter_enable": 0, 
					"id": "obj-4", 
					"patching_rect": [
						595.0, 
						66.521118, 
						132.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"patcher": {
						"fileversion": 1, 
						"imprint": 0, 
						"boxanimatetime": 200, 
						"devicewidth": 0.0, 
						"default_fontsize": 12.0, 
						"toolbarvisible": 1, 
						"default_fontname": "Helvetica Neue", 
						"digest": "", 
						"gridsize": [
							15.0, 
							15.0
						], 
						"openinpresentation": 0, 
						"showontab": 0, 
						"enablehscroll": 1, 
						"description": "", 
						"tags": "", 
						"enablevscroll": 1, 
						"appversion": {
							"major": 6, 
							"architecture": "x64", 
							"minor": 1, 
							"revision": 6
						}, 
						"boxes": [
							{
								"box": {
									"fontname": "Helvetica Neue", 
									"text": "/foo : [1, 2, 3, 4, 5],\n/bar : [\"woo\", \"wee\", \"waa\"],\n/boing : [\"boom\", \"tschak\"]", 
									"numinlets": 2, 
									"maxclass": "o.compose", 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"linecount": 3, 
									"fontsize": 12.0, 
									"textcolor": [
										0.0, 
										0.0, 
										0.0, 
										1.0
									], 
									"id": "obj-3", 
									"patching_rect": [
										45.0, 
										240.0, 
										173.0, 
										52.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Helvetica Neue", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "o.display", 
									"fontsize": 12.0, 
									"textcolor": [
										0.0, 
										0.0, 
										0.0, 
										1.0
									], 
									"id": "obj-1", 
									"patching_rect": [
										176.0, 
										390.0, 
										150.0, 
										34.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Helvetica Neue", 
									"text": "the right outlet provides a bundle consisting of all of the unmatched addresses in the input bundle", 
									"numinlets": 1, 
									"linecount": 2, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 12.0, 
									"id": "obj-18", 
									"patching_rect": [
										195.0, 
										353.0, 
										285.0, 
										34.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Helvetica Neue", 
									"text": "o.print list", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-13", 
									"patching_rect": [
										45.0, 
										390.0, 
										63.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Helvetica Neue", 
									"text": "o.listenumerate /foo", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-2", 
									"patching_rect": [
										45.0, 
										315.0, 
										150.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.helpfilehelper @obj o.listenumerate /foo", 
									"numinlets": 1, 
									"numoutlets": 4, 
									"outlettype": [
										"", 
										"", 
										"", 
										"clear"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"hidden": 1, 
									"id": "obj-10", 
									"patching_rect": [
										611.5, 
										93.0, 
										232.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.listenumerate enumerates the values of a list at an OSC packet and outputs them out one at a time.", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 12.0, 
									"id": "obj-9", 
									"patching_rect": [
										45.0, 
										182.0, 
										600.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "Iterate over a list at a user-defined OSC address", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 12.0, 
									"id": "obj-8", 
									"patching_rect": [
										45.0, 
										134.0, 
										600.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.listenumerate", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 72.0, 
									"id": "obj-6", 
									"patching_rect": [
										45.0, 
										45.0, 
										600.0, 
										87.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							34.0, 
							95.0, 
							1152.0, 
							678.0
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
										"obj-6", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-10", 
										1
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
										"obj-10", 
										2
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
										"obj-2", 
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
										"obj-13", 
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
									"disabled": 0, 
									"hidden": 0, 
									"destination": [
										"obj-2", 
										0
									], 
									"source": [
										"obj-3", 
										0
									]
								}
							}
						], 
						"statusbarvisible": 2, 
						"gridsnaponopen": 0, 
						"bglocked": 0
					}, 
					"saved_object_attributes": {
						"fontname": "Helvetica Neue", 
						"description": "", 
						"tags": "", 
						"fontface": 0, 
						"globalpatchername": "", 
						"fontsize": 12.0, 
						"default_fontface": 0, 
						"default_fontname": "Helvetica Neue", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p delegation", 
					"numinlets": 0, 
					"numoutlets": 0, 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-3", 
					"patching_rect": [
						892.0, 
						214.0, 
						87.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"patcher": {
						"fileversion": 1, 
						"imprint": 0, 
						"boxanimatetime": 200, 
						"devicewidth": 0.0, 
						"default_fontsize": 12.0, 
						"toolbarvisible": 1, 
						"default_fontname": "Helvetica Neue", 
						"digest": "", 
						"gridsize": [
							15.0, 
							15.0
						], 
						"openinpresentation": 0, 
						"showontab": 0, 
						"enablehscroll": 1, 
						"description": "", 
						"tags": "", 
						"enablevscroll": 1, 
						"appversion": {
							"major": 6, 
							"architecture": "x64", 
							"minor": 1, 
							"revision": 6
						}, 
						"boxes": [
							{
								"box": {
									"fontname": "Helvetica Neue", 
									"text": "/foo : [1, 2, {\n\t/bar : [1, 2, 3],\n\t/boing : [\"boom\", \"tcshak\"]\n}]", 
									"numinlets": 2, 
									"maxclass": "o.compose", 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"linecount": 4, 
									"fontsize": 12.0, 
									"textcolor": [
										0.0, 
										0.0, 
										0.0, 
										1.0
									], 
									"id": "obj-3", 
									"patching_rect": [
										45.0, 
										225.0, 
										168.0, 
										66.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Helvetica Neue", 
									"text": "/value : {\n\t/bar : [1, 2, 3],\n\t/boing : [\"boom\", \"tcshak\"]\n},\n/address : \"/foo\",\n/index : 2,\n/length : 3", 
									"numinlets": 1, 
									"maxclass": "o.display", 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"linecount": 7, 
									"fontsize": 12.0, 
									"textcolor": [
										0.0, 
										0.0, 
										0.0, 
										1.0
									], 
									"id": "obj-1", 
									"patching_rect": [
										150.0, 
										388.0, 
										163.0, 
										118.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Helvetica Neue", 
									"text": "If a nested bundle is present at a matched address, it will be mapped to /value, just like numbers or strings. Please see the Max window for full output.", 
									"numinlets": 1, 
									"linecount": 3, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 12.0, 
									"id": "obj-18", 
									"patching_rect": [
										315.0, 
										388.0, 
										300.0, 
										48.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Helvetica Neue", 
									"text": "o.print list", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-13", 
									"patching_rect": [
										45.0, 
										388.0, 
										63.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Helvetica Neue", 
									"text": "o.listenumerate /foo", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-2", 
									"patching_rect": [
										45.0, 
										315.0, 
										150.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.helpfilehelper @obj o.listenumerate /foo", 
									"numinlets": 1, 
									"numoutlets": 4, 
									"outlettype": [
										"", 
										"", 
										"", 
										"clear"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"hidden": 1, 
									"id": "obj-10", 
									"patching_rect": [
										651.5, 
										90.0, 
										232.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.listenumerate enumerates the values of a list at an OSC packet and outputs them out one at a time.", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 12.0, 
									"id": "obj-9", 
									"patching_rect": [
										45.0, 
										182.0, 
										600.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "Create and display OSC bundles", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 12.0, 
									"id": "obj-8", 
									"patching_rect": [
										45.0, 
										134.0, 
										600.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.listenumerate", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 72.0, 
									"id": "obj-6", 
									"patching_rect": [
										45.0, 
										45.0, 
										600.0, 
										87.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							34.0, 
							44.0, 
							1152.0, 
							678.0
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
										"obj-6", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-10", 
										1
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
										"obj-10", 
										2
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
										"obj-2", 
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
									"color": [
										1.0, 
										0.8, 
										0.4, 
										1.0
									], 
									"disabled": 0, 
									"hidden": 0, 
									"destination": [
										"obj-13", 
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
										"obj-3", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-2", 
										0
									]
								}
							}
						], 
						"statusbarvisible": 2, 
						"gridsnaponopen": 0, 
						"bglocked": 0
					}, 
					"saved_object_attributes": {
						"fontname": "Helvetica Neue", 
						"description": "", 
						"tags": "", 
						"fontface": 0, 
						"globalpatchername": "", 
						"fontsize": 12.0, 
						"default_fontface": 0, 
						"default_fontname": "Helvetica Neue", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p \"nested bundles\"", 
					"numinlets": 0, 
					"numoutlets": 0, 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-2", 
					"patching_rect": [
						1005.0, 
						214.0, 
						114.0, 
						20.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			130.0, 
			85.0, 
			1281.0, 
			719.0
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
						"obj-13", 
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
					"destination": [
						"obj-23", 
						0
					], 
					"disabled": 0, 
					"source": [
						"obj-1", 
						1
					], 
					"midpoints": [
						127.5, 
						318.521118, 
						871.5, 
						318.521118
					], 
					"hidden": 0
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-10", 
						3
					], 
					"hidden": 1, 
					"destination": [
						"obj-4", 
						0
					], 
					"midpoints": [
						817.5, 
						159.521118, 
						581.0, 
						159.521118, 
						581.0, 
						63.521118, 
						604.5, 
						63.521118
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
						"obj-6", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-10", 
						1
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
						"obj-10", 
						2
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
						"obj-13", 
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
						"obj-25", 
						0
					], 
					"source": [
						"obj-13", 
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
						"obj-15", 
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
						"obj-15", 
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
						"obj-19", 
						0
					], 
					"source": [
						"obj-15", 
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
						"obj-20", 
						0
					], 
					"source": [
						"obj-15", 
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
						"obj-21", 
						0
					], 
					"source": [
						"obj-15", 
						3
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
						"obj-22", 
						0
					], 
					"source": [
						"obj-15", 
						5
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
						"obj-15", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-4", 
						1
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
			}
		], 
		"statusbarvisible": 2, 
		"gridsnaponopen": 0, 
		"bglocked": 0, 
		"dependency_cache": [
			{
				"patcherrelativepath": "../../../../../Max/Packages/odot/misc", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.helpfilehelper.maxpat", 
				"bootpath": "/Users/ilyarostovtsev/Documents/Max/Packages/odot/misc"
			}, 
			{
				"type": "iLaX", 
				"name": "o.listenumerate.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.route.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.print.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.display.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.compose.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.cond.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.if.mxo"
			}
		]
	}
}