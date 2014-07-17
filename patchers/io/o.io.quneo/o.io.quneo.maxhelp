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
		"showontab": 0, 
		"showrootpatcherontab": 0, 
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
					"patcher": {
						"fileversion": 1, 
						"imprint": 0, 
						"boxanimatetime": 200, 
						"devicewidth": 0.0, 
						"default_fontsize": 11.0, 
						"toolbarvisible": 1, 
						"default_fontname": "Arial", 
						"digest": "", 
						"gridsize": [
							15.0, 
							15.0
						], 
						"openinpresentation": 0, 
						"showontab": 1, 
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
									"text": "o.expr /slider/a/position = sin(abs(/slider/a/x - /slider/a/y))\\,", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-20", 
									"patching_rect": [
										708.0, 
										247.0, 
										297.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.prepend /slider/a", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-19", 
									"patching_rect": [
										708.0, 
										222.328003, 
										100.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /pad/a/4", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-18", 
									"patching_rect": [
										708.0, 
										191.0, 
										100.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"name": "o.io.quneo.display.helper.pad.maxpat", 
									"numinlets": 1, 
									"args": [
										"/pad/a/4"
									], 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "bpatcher", 
									"id": "obj-8", 
									"patching_rect": [
										708.0, 
										66.79303, 
										125.336945, 
										105.867409
									]
								}
							}, 
							{
								"box": {
									"name": "o.io.quneo.display.helper.pad.maxpat", 
									"numinlets": 1, 
									"args": [
										"/pad/a/4"
									], 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "bpatcher", 
									"id": "obj-7", 
									"patching_rect": [
										234.852142, 
										408.79303, 
										118.336945, 
										104.867409
									]
								}
							}, 
							{
								"box": {
									"name": "o.io.quneo.display.helper.slide.A-D.maxpat", 
									"numinlets": 1, 
									"args": [
										"/slider/a"
									], 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "bpatcher", 
									"id": "obj-6", 
									"patching_rect": [
										708.0, 
										323.0, 
										63.0, 
										170.0
									]
								}
							}, 
							{
								"box": {
									"name": "o.io.quneo.display.helper.slide.A-D.maxpat", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "bpatcher", 
									"id": "obj-5", 
									"patching_rect": [
										552.0, 
										275.460602, 
										63.0, 
										170.0
									]
								}
							}, 
							{
								"box": {
									"name": "o.io.quneo.display.helper.slide.A-D.maxpat", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "bpatcher", 
									"id": "obj-4", 
									"patching_rect": [
										490.0, 
										81.460602, 
										63.0, 
										170.0
									]
								}
							}, 
							{
								"box": {
									"name": "o.io.quneo.display.helper.arrowbutton.1A-D.maxpat", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "bpatcher", 
									"id": "obj-3", 
									"patching_rect": [
										607.0, 
										499.0, 
										50.0, 
										44.453491
									]
								}
							}, 
							{
								"box": {
									"name": "o.io.quneo.display.helper.arrowbutton.1A-D.maxpat", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "bpatcher", 
									"id": "obj-2", 
									"patching_rect": [
										441.0, 
										458.0, 
										50.0, 
										44.453491
									]
								}
							}, 
							{
								"box": {
									"name": "o.io.quneo.display.helper.arrowbutton.1A-D.maxpat", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "bpatcher", 
									"id": "obj-1", 
									"patching_rect": [
										360.0, 
										323.0, 
										50.0, 
										44.453491
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "Name the sensor domain in the bpatcher inspector, with an argument, such as /pad/a/4/ to identify the domain to the device.", 
									"numinlets": 1, 
									"maxclass": "comment", 
									"numoutlets": 0, 
									"linecount": 4, 
									"frgb": 0.0, 
									"fontsize": 12.0, 
									"id": "obj-30", 
									"patching_rect": [
										244.0, 
										136.460602, 
										229.0, 
										60.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "Quneo Parts (or Sensor domains) exist as separate patches (to be opened as bpatchers), for building new relations between existing and non-existing sensor domains.  Compose new assemblages of interactivity, distribute the device across patchers or reconfigure the device completely. ", 
									"numinlets": 1, 
									"maxclass": "comment", 
									"numoutlets": 0, 
									"linecount": 5, 
									"frgb": 0.0, 
									"fontsize": 12.0, 
									"id": "obj-17", 
									"patching_rect": [
										83.155273, 
										44.375305, 
										386.0, 
										74.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "/pad/a/4/velocity : 0.,\n/pad/a/4/pressure : 0.,\n/pad/a/4/x : 0.574803,\n/pad/a/4/y : 0.15748", 
									"numinlets": 2, 
									"linecount": 4, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "o.message", 
									"fontsize": 12.0, 
									"textcolor": [
										0.0, 
										0.0, 
										0.0, 
										1.0
									], 
									"id": "obj-15", 
									"patching_rect": [
										59.020569, 
										506.453491, 
										150.0, 
										60.0
									]
								}
							}, 
							{
								"box": {
									"name": "o.io.quneo.display.helper.pad.maxpat", 
									"numinlets": 1, 
									"args": [
										"/pad/a/4"
									], 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "bpatcher", 
									"id": "obj-9", 
									"patching_rect": [
										118.852112, 
										136.460602, 
										125.147888, 
										104.867409
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							0.0, 
							26.0, 
							652.0, 
							654.0
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
										"obj-19", 
										0
									], 
									"source": [
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
										"obj-20", 
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
										"obj-6", 
										0
									], 
									"source": [
										"obj-20", 
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
										"obj-8", 
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
									"color": [
										1.0, 
										0.8, 
										0.4, 
										1.0
									], 
									"disabled": 0, 
									"hidden": 0, 
									"destination": [
										"obj-18", 
										0
									], 
									"source": [
										"obj-8", 
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
										"obj-7", 
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
						"bglocked": 0
					}, 
					"saved_object_attributes": {
						"fontname": "Arial", 
						"description": "", 
						"tags": "", 
						"fontsize": 11.0, 
						"globalpatchername": "", 
						"fontface": 0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 11.0, 
						"digest": ""
					}, 
					"text": "p reconstructions", 
					"numinlets": 0, 
					"linecount": 3, 
					"numoutlets": 0, 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-3", 
					"patching_rect": [
						289.0, 
						88.0, 
						56.0, 
						43.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"patcher": {
						"fileversion": 1, 
						"imprint": 0, 
						"boxanimatetime": 200, 
						"devicewidth": 0.0, 
						"default_fontsize": 11.0, 
						"toolbarvisible": 1, 
						"default_fontname": "Arial", 
						"digest": "", 
						"gridsize": [
							15.0, 
							15.0
						], 
						"openinpresentation": 0, 
						"showontab": 1, 
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
													"text": "/pad/c/4/pressure : 0.,\n/pad/c/4/x : 0.456693,\n/pad/c/4/y : 0.488189,\n/pad/c/4/velocity : 0.,\n/pad/a/4/pressure : 0.,\n/pad/a/4/x : 0.976378,\n/pad/a/4/y : 0.362205,\n/pad/a/4/velocity : 0.,\n/pad/b/4/pressure : 0.,\n/pad/b/4/x : 0.708661,\n/pad/b/4/y : 0.590551,\n/pad/b/4/velocity : 0.,\n/pad/b/3/pressure : 0.,\n/pad/b/3/x : 0.417323,\n/pad/b/3/y : 0.496063,\n/pad/b/3/velocity : 0.,\n/pad/a/3/pressure : 0.,\n/pad/a/3/x : 0.464567,\n/pad/a/3/y : 0.0787402,\n/pad/a/3/velocity : 0.,\n/pad/c/3/x : 0.425197,\n/pad/c/3/y : 0.,\n/pad/c/3/velocity : 0.,\n/pad/c/3/pressure : 0.,\n/pad/a/1/pressure : 0.,\n/pad/a/1/x : 0.519685,\n/pad/a/1/y : 0.433071,\n/pad/a/1/velocity : 0.,\n/pad/a/2/x : 0.496063,\n/pad/a/2/y : 0.496063,\n/pad/a/2/velocity : 0.,\n/pad/a/2/pressure : 0.,\n/pad/c/2/x : 1.,\n/pad/c/2/y : 1.,\n/pad/c/2/velocity : 0.,\n/pad/c/2/pressure : 0.,\n/pad/d/2/pressure : 0.,\n/pad/d/2/x : 0.149606,\n/pad/d/2/y : 0.,\n/pad/d/2/velocity : 0.,\n/pad/d/1/x : 0.433071,\n/pad/d/1/y : 0.606299,\n/pad/d/1/velocity : 0.,\n/pad/d/1/pressure : 0.,\n/pad/d/3/pressure : 0.,\n/pad/d/3/x : 0.755906,\n/pad/d/3/y : 1.,\n/pad/d/3/velocity : 0.,\n/pad/c/1/x : 0.,\n/pad/c/1/y : 0.346457,\n/pad/c/1/velocity : 0.,\n/pad/c/1/pressure : 0.,\n/large/arrowbutton/b/1/pressure : 0.,\n/large/arrowbutton/b/1/velocity : 0.,\n/large/arrowbutton/b/2/pressure : 0.,\n/large/arrowbutton/b/2/velocity : 0.,\n/large/arrowbutton/a/1/velocity : 0.,\n/large/arrowbutton/a/1/pressure : 0.,\n/large/arrowbutton/a/2/pressure : 0.,\n/large/arrowbutton/a/2/velocity : 0.,\n/button/b/pressure : 0.,\n/button/b/velocity : 0.,\n/button/c/velocity : 0.,\n/button/c/pressure : 0.,\n/button/a/velocity : 0.,\n/button/a/pressure : 0.,\n/slider/3/position : 0.338583,\n/slider/3/pressure : 0.,\n/slider/3/velocity : 0.,\n/instructions : \"first tap 'mode' button, then tap 'pad /a/1' to enable preset 1. Ok to change the settings within preset 1, using the QuNeo Editor, as long as the midi mappings are not changed\",\n/manufactuer : [\"KESUMO, LLC.\", \"Keith McMillen\"],\n/product : \"Quneo, #K-707\"", 
													"numinlets": 2, 
													"linecount": 87, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "o.message", 
													"fontsize": 11.0, 
													"textcolor": [
														0.0, 
														0.0, 
														0.0, 
														1.0
													], 
													"id": "obj-7", 
													"patching_rect": [
														50.0, 
														100.0, 
														150.0, 
														1076.0
													]
												}
											}, 
											{
												"box": {
													"comment": "", 
													"numinlets": 0, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "inlet", 
													"id": "obj-8", 
													"patching_rect": [
														181.0, 
														40.0, 
														25.0, 
														25.0
													]
												}
											}
										], 
										"default_fontface": 0, 
										"gridonopen": 0, 
										"rect": [
											279.0, 
											44.0, 
											640.0, 
											480.0
										], 
										"lines": [
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-8", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-7", 
														1
													]
												}
											}
										], 
										"statusbarvisible": 2, 
										"gridsnaponopen": 0, 
										"bglocked": 0
									}, 
									"saved_object_attributes": {
										"fontname": "Arial", 
										"description": "", 
										"tags": "", 
										"fontsize": 12.0, 
										"globalpatchername": "", 
										"fontface": 0, 
										"default_fontface": 0, 
										"default_fontname": "Arial", 
										"default_fontsize": 12.0, 
										"digest": ""
									}, 
									"text": "p see data", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-9", 
									"patching_rect": [
										3.187012, 
										646.275208, 
										81.135498, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "r display", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"hidden": 1, 
									"id": "obj-2", 
									"patching_rect": [
										42.0, 
										6.0, 
										74.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "* o.io.quneo.display\nWhat Things Mean", 
									"numinlets": 1, 
									"maxclass": "comment", 
									"numoutlets": 0, 
									"linecount": 2, 
									"frgb": 0.0, 
									"fontsize": 24.0, 
									"id": "obj-13", 
									"patching_rect": [
										746.155273, 
										78.587738, 
										249.0, 
										60.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial Unicode MS", 
									"text": "'Redness' represents '/velocity.' \nHowever, the red graphics on the two '/disc'(s) indicate '/direction'\n\n'Blueness' represents '/pressure.'\n\n'Green graphics' respond to touching the actual QuNeo.\n For '/slider/long' green indicates a range between two fingers. For pads and sliders, green indicates '/position' of one finger.\n\n'Yellow graphics' can be clicked and dragged around with a mouse, in order to generate OSC bundles without the actual QuNeo in hand.\n", 
									"numinlets": 1, 
									"maxclass": "comment", 
									"numoutlets": 0, 
									"linecount": 16, 
									"frgb": 0.0, 
									"fontsize": 18.0, 
									"textcolor": [
										0.040087, 
										0.213358, 
										0.109884, 
										1.0
									], 
									"id": "obj-93", 
									"patching_rect": [
										746.155273, 
										138.587738, 
										352.0, 
										392.0
									]
								}
							}, 
							{
								"box": {
									"name": "o.io.quneo.display.maxpat", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "bpatcher", 
									"id": "obj-1", 
									"patching_rect": [
										3.187012, 
										43.900269, 
										736.968262, 
										581.374939
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							566.0, 
							120.0, 
							652.0, 
							654.0
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
						"fontname": "Arial", 
						"description": "", 
						"tags": "", 
						"fontsize": 11.0, 
						"globalpatchername": "", 
						"fontface": 0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 11.0, 
						"digest": ""
					}, 
					"text": "p display", 
					"numinlets": 0, 
					"numoutlets": 0, 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-2", 
					"patching_rect": [
						173.0, 
						88.0, 
						72.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"patcher": {
						"fileversion": 1, 
						"imprint": 0, 
						"boxanimatetime": 200, 
						"devicewidth": 0.0, 
						"default_fontsize": 11.0, 
						"toolbarvisible": 1, 
						"default_fontname": "Arial", 
						"digest": "", 
						"gridsize": [
							15.0, 
							15.0
						], 
						"openinpresentation": 0, 
						"showontab": 1, 
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
									"text": "<< o.io.midi.panel checks available midi ports for connected devices", 
									"numinlets": 1, 
									"maxclass": "comment", 
									"numoutlets": 0, 
									"linecount": 3, 
									"frgb": 0.0, 
									"fontsize": 11.0, 
									"id": "obj-7", 
									"patching_rect": [
										343.0, 
										234.0, 
										150.0, 
										43.0
									]
								}
							}, 
							{
								"box": {
									"name": "o.io.midi.panel.maxpat", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "bpatcher", 
									"id": "obj-4", 
									"patching_rect": [
										175.135498, 
										234.0, 
										156.0, 
										52.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "s display", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"hidden": 1, 
									"id": "obj-3", 
									"patching_rect": [
										584.0, 
										579.0, 
										100.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
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
													"text": "/pad/b/4/pressure : 0.,\n/pad/b/4/velocity : 0.,\n/pad/b/4/y : 0.551181,\n/pad/b/4/x : 0.661417,\n/pad/a/4/pressure : 0.,\n/pad/a/4/velocity : 0.,\n/pad/a/4/y : 0.417323,\n/pad/a/4/x : 0.543307,\n/pad/c/4/pressure : 0.,\n/pad/c/4/velocity : 0.,\n/pad/c/4/y : 0.92126,\n/pad/c/4/x : 0.551181,\n/pad/a/2/pressure : 0.,\n/pad/a/2/velocity : 0.,\n/pad/a/2/y : 0.496063,\n/pad/a/2/x : 0.496063,\n/pad/d/3/pressure : 0.,\n/pad/d/3/velocity : 0.,\n/pad/d/3/y : 0.173228,\n/pad/d/3/x : 1.,\n/pad/a/3/pressure : 0.,\n/pad/a/3/velocity : 0.,\n/pad/a/3/y : 0.669291,\n/pad/a/3/x : 0.354331,\n/button/a/velocity : 0.,\n/button/a/pressure : 0.,\n/button/b/velocity : 0.,\n/button/b/pressure : 0.,\n/button/c/velocity : 0.,\n/button/c/pressure : 0.,\n/disc/b/pressure : 0.,\n/disc/b/velocity : 0.,\n/disc/b/direction : 0.,\n/disc/a/pressure : 0.,\n/disc/a/velocity : 0.,\n/disc/a/direction : 0.,\n/button/rhombus/pressure : 0.,\n/button/rhombus/velocity : 0.,\n/large/arrowbutton/b/1/pressure : 0.,\n/large/arrowbutton/b/1/velocity : 0.,\n/large/arrowbutton/b/2/pressure : 0.,\n/large/arrowbutton/b/2/velocity : 0.,\n/large/arrowbutton/a/1/pressure : 0.,\n/large/arrowbutton/a/1/velocity : 0.,\n/large/arrowbutton/a/2/velocity : 0.,\n/large/arrowbutton/a/2/pressure : 0.,\n/arrowbutton/b/1/velocity : 0.,\n/arrowbutton/b/1/pressure : 0.,\n/arrowbutton/a/1/velocity : 0.,\n/arrowbutton/a/1/pressure : 0.,\n/arrowbutton/b/2/pressure : 0.,\n/arrowbutton/b/2/velocity : 0.,\n/arrowbutton/a/2/pressure : 0.,\n/arrowbutton/a/2/velocity : 0.,\n/arrowbutton/b/3/velocity : 0.,\n/arrowbutton/b/3/pressure : 0.,\n/arrowbutton/a/3/velocity : 0.,\n/arrowbutton/a/3/pressure : 0.,\n/arrowbutton/b/4/pressure : 0.,\n/arrowbutton/b/4/velocity : 0.,\n/arrowbutton/a/4/pressure : 0.,\n/arrowbutton/a/4/velocity : 0.,\n/slider/long/velocity : 0.,\n/slider/long/pressure : 0.,\n/slider/long/2nd/position : 0.,\n/slider/long/position : 0.,\n/slider/d/velocity : 0.,\n/slider/d/position : 0.,\n/slider/d/pressure : 0.,\n/slider/c/pressure : 0.,\n/slider/c/position : 0.,\n/slider/c/velocity : 0.,\n/slider/b/position : 0.,\n/slider/b/pressure : 0.,\n/slider/b/velocity : 0.,\n/slider/a/velocity : 0.,\n/slider/a/pressure : 0.,\n/slider/a/position : 0.,\n/slider/1/velocity : 0.,\n/slider/1/pressure : 0.,\n/slider/1/position : 0.,\n/slider/2/velocity : 0.,\n/slider/2/pressure : 0.,\n/slider/2/position : 0.,\n/slider/3/pressure : 0.,\n/slider/3/velocity : 0.,\n/slider/3/position : 0.,\n/slider/4/pressure : 0.,\n/slider/4/position : 0.,\n/slider/4/velocity : 0.,\n/pad/d/4/velocity : 0.,\n/pad/d/4/pressure : 0.,\n/pad/d/4/x : 0.,\n/pad/d/4/y : 0.,\n/pad/c/3/velocity : 0.,\n/pad/c/3/pressure : 0.,\n/pad/c/3/x : 0.,\n/pad/c/3/y : 0.,\n/pad/b/3/pressure : 0.,\n/pad/b/3/x : 0.,\n/pad/b/3/y : 0.,\n/pad/b/3/velocity : 0.,\n/pad/d/2/pressure : 0.,\n/pad/d/2/y : 0.,\n/pad/d/2/velocity : 0.,\n/pad/d/2/x : 0.,\n/pad/c/2/pressure : 0.,\n/pad/c/2/y : 0.,\n/pad/c/2/velocity : 0.,\n/pad/c/2/x : 0.,\n/pad/b/2/pressure : 0.,\n/pad/b/2/x : 0.,\n/pad/b/2/y : 0.,\n/pad/b/2/velocity : 0.,\n/pad/d/1/velocity : 0.,\n/pad/d/1/pressure : 0.,\n/pad/d/1/x : 0.,\n/pad/d/1/y : 0.,\n/pad/c/1/x : 0.,\n/pad/c/1/y : 0.,\n/pad/c/1/velocity : 0.,\n/pad/c/1/pressure : 0.,\n/pad/b/1/pressure : 0.,\n/pad/b/1/y : 0.,\n/pad/b/1/velocity : 0.,\n/pad/b/1/x : 0.,\n/pad/a/1/velocity : 0.,\n/pad/a/1/pressure : 0.,\n/pad/a/1/x : 0.,\n/pad/a/1/y : 0.,\n/instructions : \"first tap 'mode' button, then tap 'pad /a/1' to enable preset 1. Ok to change the settings within preset 1, using the QuNeo Editor, as long as the midi mappings are not changed\",\n/manufactuer : [\"KESUMO, LLC.\", \"Keith McMillen\"],\n/product : \"Quneo, #K-707\"", 
													"numinlets": 1, 
													"linecount": 158, 
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
														175.0, 
														112.0, 
														150.0, 
														2125.0
													]
												}
											}, 
											{
												"box": {
													"comment": "", 
													"numinlets": 0, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "inlet", 
													"id": "obj-8", 
													"patching_rect": [
														181.0, 
														40.0, 
														25.0, 
														25.0
													]
												}
											}
										], 
										"default_fontface": 0, 
										"gridonopen": 0, 
										"rect": [
											587.0, 
											70.0, 
											640.0, 
											480.0
										], 
										"lines": [
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-8", 
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
										"bglocked": 0
									}, 
									"saved_object_attributes": {
										"fontname": "Arial", 
										"description": "", 
										"tags": "", 
										"fontsize": 12.0, 
										"globalpatchername": "", 
										"fontface": 0, 
										"default_fontface": 0, 
										"default_fontname": "Arial", 
										"default_fontsize": 12.0, 
										"digest": ""
									}, 
									"text": "p see data", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-9", 
									"patching_rect": [
										94.135498, 
										618.806458, 
										81.135498, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.io.quneo", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"FullPacket", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-2", 
									"patching_rect": [
										94.135498, 
										293.0, 
										100.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "OSC encoding of Keith McMillen's QuNeo controller  for prototyping and design of related algorithms.", 
									"numinlets": 1, 
									"maxclass": "comment", 
									"numoutlets": 0, 
									"linecount": 2, 
									"frgb": 0.0, 
									"fontsize": 12.0, 
									"id": "obj-25", 
									"patching_rect": [
										119.135498, 
										55.30645, 
										333.0, 
										33.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "Provides graphical representation of sensor activity, as well as a  namespace encoding for gesture derivation and LED control.", 
									"numinlets": 1, 
									"maxclass": "comment", 
									"numoutlets": 0, 
									"linecount": 2, 
									"frgb": 0.0, 
									"fontsize": 12.0, 
									"id": "obj-26", 
									"patching_rect": [
										55.135498, 
										22.36441, 
										397.0, 
										33.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.io.quneo", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 24.0, 
									"textcolor": [
										0.4, 
										0.4, 
										0.8, 
										1.0
									], 
									"id": "obj-27", 
									"patching_rect": [
										24.135498, 
										88.36441, 
										241.0, 
										33.0
									]
								}
							}, 
							{
								"box": {
									"bordercolor": [
										0.360784, 
										0.537255, 
										0.8, 
										0.38
									], 
									"rounded": 70, 
									"border": 5, 
									"numinlets": 1, 
									"maxclass": "panel", 
									"numoutlets": 0, 
									"bgcolor": [
										0.87451, 
										0.933333, 
										1.0, 
										1.0
									], 
									"shape": 2, 
									"mode": 1, 
									"grad1": [
										0.431373, 
										0.929412, 
										0.423529, 
										0.7
									], 
									"id": "obj-28", 
									"patching_rect": [
										12.186981, 
										12.36441, 
										424.42041, 
										118.884079
									], 
									"grad2": [
										0.721569, 
										0.373195, 
										0.304401, 
										1.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							0.0, 
							26.0, 
							652.0, 
							654.0
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
										"obj-3", 
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
										"obj-2", 
										1
									], 
									"hidden": 0, 
									"destination": [
										"obj-4", 
										0
									], 
									"midpoints": [
										184.635498, 
										321.0, 
										341.135498, 
										321.0, 
										341.135498, 
										207.0, 
										184.635498, 
										207.0
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
										"obj-9", 
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
										"obj-4", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-2", 
										1
									]
								}
							}
						], 
						"statusbarvisible": 2, 
						"gridsnaponopen": 0, 
						"bglocked": 0
					}, 
					"saved_object_attributes": {
						"fontname": "Arial", 
						"description": "", 
						"tags": "", 
						"fontsize": 11.0, 
						"globalpatchername": "", 
						"fontface": 0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 11.0, 
						"digest": ""
					}, 
					"text": "p GetData", 
					"numinlets": 0, 
					"linecount": 3, 
					"numoutlets": 0, 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-1", 
					"patching_rect": [
						118.0, 
						88.0, 
						47.0, 
						43.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			566.0, 
			94.0, 
			652.0, 
			680.0
		], 
		"lines": [], 
		"statusbarvisible": 2, 
		"gridsnaponopen": 0, 
		"bglocked": 0, 
		"dependency_cache": [
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/io/o.io.quneo", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "o.io.quneo.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/core", 
				"type": "JSON", 
				"patcherrelativepath": "../../core", 
				"name": "o.righttoleft.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/core", 
				"type": "JSON", 
				"patcherrelativepath": "../../core", 
				"name": "o.in.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/core", 
				"type": "JSON", 
				"patcherrelativepath": "../../core", 
				"name": "o.port.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/aspect", 
				"type": "JSON", 
				"patcherrelativepath": "../../aspect", 
				"name": "o.aspect.joinpoint.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/core", 
				"type": "JSON", 
				"patcherrelativepath": "../../core", 
				"name": "o.out.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/unstable/io", 
				"type": "JSON", 
				"patcherrelativepath": "../../unstable/io", 
				"name": "o.io.midi.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/io", 
				"type": "JSON", 
				"patcherrelativepath": "..", 
				"name": "o.io.midi.panel.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/io/o.io.quneo", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "o.io.quneo.display.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/io/o.io.quneo", 
				"type": "JPEG", 
				"patcherrelativepath": ".", 
				"name": "quneopic.jpg", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/io/o.io.quneo", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "o.io.quneo.display.helper.pad.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/io/o.io.quneo", 
				"type": "PNG ", 
				"patcherrelativepath": ".", 
				"name": "green-circle.png", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/io/o.io.quneo", 
				"type": "PNG ", 
				"patcherrelativepath": ".", 
				"name": "yellow-circle.png", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/io/o.io.quneo", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "o.io.quneo.display.helper.slide.A-D.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/io/o.io.quneo", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "o.io.quneo.display.helper.slide.1-4.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/io/o.io.quneo", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "o.io.quneo.display.helper.longslide.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/io/o.io.quneo", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "o.io.quneo.display.helper.arrowbutton.2A-D.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/io/o.io.quneo", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "o.io.quneo.display.helper.arrowbutton.1A-D.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/io/o.io.quneo", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "o.io.quneo.display.helper.disc.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/io/o.io.quneo", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "o.io.quneo.display.helper.large.arrowbutton.2A-B.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/io/o.io.quneo", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "o.io.quneo.display.helper.large.arrowbutton.1A-B.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/io/o.io.quneo", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "o.io.quneo.display.helper.button.A.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/io/o.io.quneo", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "o.io.quneo.display.helper.button.B.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/io/o.io.quneo", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "o.io.quneo.display.helper.button.C.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/io/o.io.quneo", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "o.io.quneo.display.helper.rhombusbutton.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-Internal/max/patches/MMJ_needswork/poletti.voice.killer.pat", 
				"type": "maxb", 
				"patcherrelativepath": "../../../../CNMAT-Internal/max/patches/MMJ_needswork/poletti.voice.killer.pat", 
				"name": "thru", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/patchers/unstable", 
				"type": "JSON", 
				"patcherrelativepath": "../../unstable", 
				"name": "o.collectwithtimeout.maxpat", 
				"implicit": 1
			}, 
			{
				"type": "iLaX", 
				"name": "o.route.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.expr.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.union.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.message.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.collect.mxo"
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
				"name": "o.select.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.context.mxo"
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
			}, 
			{
				"type": "iLaX", 
				"name": "o.display.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.change.mxo"
			}
		]
	}
}