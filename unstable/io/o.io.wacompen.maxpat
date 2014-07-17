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
			"revision": 7
		}, 
		"boxes": [
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.if exists(/pressure/func)", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-12", 
					"patching_rect": [
						50.0, 
						550.0, 
						250.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /pressure/mod = map(/pressure/func\\, /pressure)", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-11", 
					"patching_rect": [
						50.0, 
						584.0, 
						302.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.union", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-4", 
					"patching_rect": [
						50.0, 
						516.0, 
						250.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /button/front = /button/front != 0\\, /button/back = /button/back != 0\\, /button/tip = /button/tip != 0\\,", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-8", 
					"patching_rect": [
						281.0, 
						630.0, 
						540.0, 
						20.0
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
							5.0, 
							5.0
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
							"revision": 7
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
											5.0, 
											5.0
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
											"revision": 7
										}, 
										"boxes": [
											{
												"box": {
													"fontname": "Arial", 
													"triangle": 0, 
													"numinlets": 1, 
													"ignoreclick": 1, 
													"numoutlets": 2, 
													"outlettype": [
														"int", 
														"bang"
													], 
													"maxclass": "number", 
													"fontsize": 12.0, 
													"parameter_enable": 0, 
													"id": "obj-73", 
													"patching_rect": [
														116.0, 
														58.0, 
														100.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "Tangential Pressure", 
													"numinlets": 1, 
													"numoutlets": 0, 
													"maxclass": "comment", 
													"frgb": 0.0, 
													"fontsize": 10.0, 
													"id": "obj-66", 
													"patching_rect": [
														15.5, 
														431.888672, 
														102.5, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "Rotation", 
													"numinlets": 1, 
													"numoutlets": 0, 
													"maxclass": "comment", 
													"frgb": 0.0, 
													"fontsize": 10.0, 
													"id": "obj-65", 
													"patching_rect": [
														64.0, 
														483.202881, 
														54.0, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "Pressure", 
													"numinlets": 1, 
													"numoutlets": 0, 
													"maxclass": "comment", 
													"frgb": 0.0, 
													"fontsize": 10.0, 
													"id": "obj-64", 
													"patching_rect": [
														64.0, 
														404.872559, 
														54.0, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "Orient Info", 
													"numinlets": 1, 
													"numoutlets": 0, 
													"maxclass": "comment", 
													"frgb": 0.0, 
													"fontsize": 10.0, 
													"id": "obj-63", 
													"patching_rect": [
														61.0, 
														457.436279, 
														57.0, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "AbsZ", 
													"numinlets": 1, 
													"numoutlets": 0, 
													"maxclass": "comment", 
													"frgb": 0.0, 
													"fontsize": 10.0, 
													"id": "obj-62", 
													"patching_rect": [
														79.0, 
														377.856384, 
														39.0, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "TiltY", 
													"numinlets": 1, 
													"numoutlets": 0, 
													"maxclass": "comment", 
													"frgb": 0.0, 
													"fontsize": 10.0, 
													"id": "obj-61", 
													"patching_rect": [
														89.0, 
														350.84021, 
														29.0, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "TiltX", 
													"numinlets": 1, 
													"numoutlets": 0, 
													"maxclass": "comment", 
													"frgb": 0.0, 
													"fontsize": 10.0, 
													"id": "obj-60", 
													"patching_rect": [
														89.0, 
														323.824036, 
														29.0, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "Buttons", 
													"numinlets": 1, 
													"numoutlets": 0, 
													"maxclass": "comment", 
													"frgb": 0.0, 
													"fontsize": 10.0, 
													"id": "obj-59", 
													"patching_rect": [
														73.0, 
														296.807922, 
														45.0, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "Vendor3", 
													"numinlets": 1, 
													"numoutlets": 0, 
													"maxclass": "comment", 
													"frgb": 0.0, 
													"fontsize": 10.0, 
													"id": "obj-55", 
													"patching_rect": [
														70.0, 
														269.791748, 
														48.0, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "Vendor2", 
													"numinlets": 1, 
													"numoutlets": 0, 
													"maxclass": "comment", 
													"frgb": 0.0, 
													"fontsize": 10.0, 
													"id": "obj-54", 
													"patching_rect": [
														67.0, 
														242.775574, 
														51.0, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "Vendor1", 
													"numinlets": 1, 
													"numoutlets": 0, 
													"maxclass": "comment", 
													"frgb": 0.0, 
													"fontsize": 10.0, 
													"id": "obj-53", 
													"patching_rect": [
														71.0, 
														215.75943, 
														47.0, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "AbsY", 
													"numinlets": 1, 
													"numoutlets": 0, 
													"maxclass": "comment", 
													"frgb": 0.0, 
													"fontsize": 10.0, 
													"id": "obj-52", 
													"patching_rect": [
														83.0, 
														188.743256, 
														35.0, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": " AbsX", 
													"numinlets": 1, 
													"numoutlets": 0, 
													"maxclass": "comment", 
													"frgb": 0.0, 
													"fontsize": 10.0, 
													"id": "obj-51", 
													"patching_rect": [
														80.0, 
														161.727112, 
														38.0, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "Use these masks with the capabilities field to determine what fields in a Tablet Event are valid for this device.", 
													"numinlets": 1, 
													"maxclass": "comment", 
													"numoutlets": 0, 
													"linecount": 3, 
													"frgb": 0.0, 
													"fontsize": 14.0, 
													"id": "obj-49", 
													"patching_rect": [
														335.0, 
														85.0, 
														309.0, 
														53.0
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
													"id": "obj-47", 
													"patching_rect": [
														118.0, 
														483.202881, 
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
														"int"
													], 
													"maxclass": "toggle", 
													"parameter_enable": 0, 
													"id": "obj-43", 
													"patching_rect": [
														118.0, 
														457.436279, 
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
														"int"
													], 
													"maxclass": "toggle", 
													"parameter_enable": 0, 
													"id": "obj-44", 
													"patching_rect": [
														118.0, 
														431.888672, 
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
														"int"
													], 
													"maxclass": "toggle", 
													"parameter_enable": 0, 
													"id": "obj-45", 
													"patching_rect": [
														118.0, 
														404.872559, 
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
														"int"
													], 
													"maxclass": "toggle", 
													"parameter_enable": 0, 
													"id": "obj-46", 
													"patching_rect": [
														118.0, 
														377.856384, 
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
														"int"
													], 
													"maxclass": "toggle", 
													"parameter_enable": 0, 
													"id": "obj-42", 
													"patching_rect": [
														118.0, 
														350.84021, 
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
														"int"
													], 
													"maxclass": "toggle", 
													"parameter_enable": 0, 
													"id": "obj-41", 
													"patching_rect": [
														118.0, 
														323.824036, 
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
														"int"
													], 
													"maxclass": "toggle", 
													"parameter_enable": 0, 
													"id": "obj-40", 
													"patching_rect": [
														118.0, 
														296.807922, 
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
														"int"
													], 
													"maxclass": "toggle", 
													"parameter_enable": 0, 
													"id": "obj-39", 
													"patching_rect": [
														118.0, 
														269.791748, 
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
														"int"
													], 
													"maxclass": "toggle", 
													"parameter_enable": 0, 
													"id": "obj-38", 
													"patching_rect": [
														118.0, 
														242.775574, 
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
														"int"
													], 
													"maxclass": "toggle", 
													"parameter_enable": 0, 
													"id": "obj-37", 
													"patching_rect": [
														118.0, 
														215.75943, 
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
														"int"
													], 
													"maxclass": "toggle", 
													"parameter_enable": 0, 
													"id": "obj-36", 
													"patching_rect": [
														118.0, 
														188.743256, 
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
														"int"
													], 
													"maxclass": "toggle", 
													"parameter_enable": 0, 
													"id": "obj-35", 
													"patching_rect": [
														118.0, 
														161.727112, 
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
														"int"
													], 
													"maxclass": "toggle", 
													"parameter_enable": 0, 
													"id": "obj-34", 
													"patching_rect": [
														118.0, 
														134.0, 
														20.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "unpack i i i i i i i i i i i i i i", 
													"numinlets": 1, 
													"numoutlets": 14, 
													"outlettype": [
														"int", 
														"int", 
														"int", 
														"int", 
														"int", 
														"int", 
														"int", 
														"int", 
														"int", 
														"int", 
														"int", 
														"int", 
														"int", 
														"int"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-32", 
													"patching_rect": [
														115.782288, 
														113.0, 
														190.587952, 
														20.0
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
													"fontsize": 12.0, 
													"id": "obj-31", 
													"patching_rect": [
														274.0, 
														28.0, 
														60.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "1 2 4 8 16 32 64 128 256 512 1024 2048 4096 8192", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "message", 
													"fontsize": 12.0, 
													"id": "obj-29", 
													"patching_rect": [
														274.0, 
														56.5, 
														294.0, 
														18.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "vexpr $i1 & $i2 @scalarmode 1", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-30", 
													"patching_rect": [
														116.0, 
														86.0, 
														177.0, 
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
														"int"
													], 
													"maxclass": "inlet", 
													"id": "obj-1", 
													"patching_rect": [
														116.0, 
														21.0, 
														25.0, 
														25.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "\tDeviceId", 
													"numinlets": 1, 
													"numoutlets": 0, 
													"maxclass": "comment", 
													"frgb": 0.0, 
													"fontsize": 10.0, 
													"id": "obj-2", 
													"patching_rect": [
														69.0, 
														134.0, 
														50.0, 
														18.0
													]
												}
											}
										], 
										"default_fontface": 0, 
										"gridonopen": 0, 
										"rect": [
											862.0, 
											397.0, 
											670.0, 
											549.0
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
														"obj-73", 
														0
													], 
													"midpoints": [
														125.5, 
														51.5, 
														125.5, 
														51.5
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
														"obj-30", 
														1
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-30", 
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
														"obj-31", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-29", 
														0
													], 
													"midpoints": [
														283.5, 
														47.0, 
														283.5, 
														47.0
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
														"obj-34", 
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
													"hidden": 0, 
													"destination": [
														"obj-35", 
														0
													], 
													"midpoints": [
														138.481354, 
														133.0, 
														139.0, 
														133.0, 
														139.0, 
														154.0, 
														127.5, 
														154.0
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
													"hidden": 0, 
													"destination": [
														"obj-36", 
														0
													], 
													"midpoints": [
														151.680435, 
														184.0, 
														127.5, 
														184.0
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
													"hidden": 0, 
													"destination": [
														"obj-37", 
														0
													], 
													"midpoints": [
														164.879501, 
														211.0, 
														127.5, 
														211.0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-32", 
														4
													], 
													"hidden": 0, 
													"destination": [
														"obj-38", 
														0
													], 
													"midpoints": [
														178.078583, 
														238.0, 
														127.5, 
														238.0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-32", 
														5
													], 
													"hidden": 0, 
													"destination": [
														"obj-39", 
														0
													], 
													"midpoints": [
														191.277649, 
														265.0, 
														127.5, 
														265.0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-32", 
														6
													], 
													"hidden": 0, 
													"destination": [
														"obj-40", 
														0
													], 
													"midpoints": [
														204.47673, 
														292.0, 
														127.5, 
														292.0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-32", 
														7
													], 
													"hidden": 0, 
													"destination": [
														"obj-41", 
														0
													], 
													"midpoints": [
														217.675797, 
														319.0, 
														127.5, 
														319.0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-32", 
														8
													], 
													"hidden": 0, 
													"destination": [
														"obj-42", 
														0
													], 
													"midpoints": [
														230.874878, 
														346.0, 
														127.5, 
														346.0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-32", 
														12
													], 
													"hidden": 0, 
													"destination": [
														"obj-43", 
														0
													], 
													"midpoints": [
														283.671173, 
														454.0, 
														127.5, 
														454.0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-32", 
														11
													], 
													"hidden": 0, 
													"destination": [
														"obj-44", 
														0
													], 
													"midpoints": [
														270.472107, 
														427.0, 
														127.5, 
														427.0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-32", 
														10
													], 
													"hidden": 0, 
													"destination": [
														"obj-45", 
														0
													], 
													"midpoints": [
														257.27301, 
														400.0, 
														127.5, 
														400.0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-32", 
														9
													], 
													"hidden": 0, 
													"destination": [
														"obj-46", 
														0
													], 
													"midpoints": [
														244.073944, 
														373.0, 
														127.5, 
														373.0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-32", 
														13
													], 
													"hidden": 0, 
													"destination": [
														"obj-47", 
														0
													], 
													"midpoints": [
														296.870239, 
														478.0, 
														127.5, 
														478.0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-73", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-30", 
														0
													]
												}
											}
										], 
										"statusbarvisible": 2, 
										"gridsnaponopen": 0, 
										"bglocked": 0
									}, 
									"color": [
										0.923913, 
										0.55438, 
										0.260774, 
										1.0
									], 
									"text": "p decodeCapabilityMask", 
									"numinlets": 1, 
									"numoutlets": 0, 
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
									"maxclass": "newobj", 
									"fontsize": 10.0, 
									"id": "obj-3", 
									"patching_rect": [
										482.999939, 
										295.0, 
										119.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "1 - entering; 0 - leaving", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"bgcolor": [
										1.0, 
										1.0, 
										1.0, 
										0.67
									], 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 2, 
									"id": "obj-51", 
									"patching_rect": [
										274.999939, 
										337.0, 
										198.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "mask representing capabilities of device", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"bgcolor": [
										1.0, 
										1.0, 
										1.0, 
										0.67
									], 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 2, 
									"id": "obj-54", 
									"patching_rect": [
										274.999939, 
										316.0, 
										197.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "mask representing capabilities of device", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"bgcolor": [
										1.0, 
										1.0, 
										1.0, 
										0.67
									], 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 2, 
									"id": "obj-56", 
									"patching_rect": [
										274.999939, 
										295.0, 
										186.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "vendor defined unique ID - as a symbol", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"bgcolor": [
										1.0, 
										1.0, 
										1.0, 
										0.67
									], 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 2, 
									"id": "obj-57", 
									"patching_rect": [
										274.999939, 
										273.0, 
										186.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "vendor defined serial number of pointing device", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"bgcolor": [
										1.0, 
										1.0, 
										1.0, 
										0.67
									], 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 2, 
									"id": "obj-61", 
									"patching_rect": [
										274.999939, 
										253.0, 
										219.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "vendor defined pointing device type ", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"bgcolor": [
										1.0, 
										1.0, 
										1.0, 
										0.67
									], 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 2, 
									"id": "obj-62", 
									"patching_rect": [
										274.999939, 
										233.0, 
										219.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "system assigned unique tablet ID", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"bgcolor": [
										1.0, 
										1.0, 
										1.0, 
										0.67
									], 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 2, 
									"id": "obj-63", 
									"patching_rect": [
										274.999939, 
										211.0, 
										219.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "deviceID -", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"bgcolor": [
										1.0, 
										1.0, 
										1.0, 
										0.67
									], 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 2, 
									"id": "obj-64", 
									"patching_rect": [
										274.999939, 
										190.0, 
										219.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "index of the device on the tablet. Usually 0, except for tablets that support multiple concurrent devices", 
									"numinlets": 1, 
									"linecount": 2, 
									"numoutlets": 0, 
									"bgcolor": [
										1.0, 
										1.0, 
										1.0, 
										0.67
									], 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 2, 
									"id": "obj-65", 
									"patching_rect": [
										274.999939, 
										165.0, 
										281.0, 
										29.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "vendor defined tablet ID", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"bgcolor": [
										1.0, 
										1.0, 
										1.0, 
										0.67
									], 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 2, 
									"id": "obj-66", 
									"patching_rect": [
										274.999939, 
										148.0, 
										247.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "vendor defined, typically USB vendor ID", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"bgcolor": [
										1.0, 
										1.0, 
										1.0, 
										0.67
									], 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 2, 
									"id": "obj-68", 
									"patching_rect": [
										274.999939, 
										128.0, 
										247.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "tablet proximity record", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 12.0, 
									"id": "obj-67", 
									"patching_rect": [
										175.999939, 
										43.0, 
										174.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "gives you the following tablet and tool properties.", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 2, 
									"id": "obj-70", 
									"patching_rect": [
										175.999939, 
										69.0, 
										230.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"triangle": 0, 
									"numinlets": 1, 
									"ignoreclick": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"int", 
										"bang"
									], 
									"maxclass": "number", 
									"fontsize": 11.595187, 
									"parameter_enable": 0, 
									"id": "obj-71", 
									"patching_rect": [
										160.233337, 
										337.0, 
										114.766602, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"triangle": 0, 
									"numinlets": 1, 
									"ignoreclick": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"int", 
										"bang"
									], 
									"maxclass": "number", 
									"fontsize": 11.595187, 
									"parameter_enable": 0, 
									"id": "obj-72", 
									"patching_rect": [
										160.233337, 
										316.0, 
										114.766602, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"triangle": 0, 
									"numinlets": 1, 
									"ignoreclick": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"int", 
										"bang"
									], 
									"maxclass": "number", 
									"fontsize": 11.595187, 
									"parameter_enable": 0, 
									"id": "obj-73", 
									"patching_rect": [
										160.233337, 
										294.0, 
										114.766602, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "\"9148322486143\"", 
									"numinlets": 2, 
									"ignoreclick": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "message", 
									"fontsize": 12.0, 
									"id": "obj-74", 
									"patching_rect": [
										160.233337, 
										273.0, 
										114.766602, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"triangle": 0, 
									"numinlets": 1, 
									"ignoreclick": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"int", 
										"bang"
									], 
									"maxclass": "number", 
									"fontsize": 11.595187, 
									"parameter_enable": 0, 
									"id": "obj-75", 
									"patching_rect": [
										160.233337, 
										252.0, 
										114.766602, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"triangle": 0, 
									"numinlets": 1, 
									"ignoreclick": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"int", 
										"bang"
									], 
									"maxclass": "number", 
									"fontsize": 11.595187, 
									"parameter_enable": 0, 
									"id": "obj-76", 
									"patching_rect": [
										160.233337, 
										231.0, 
										114.766602, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"triangle": 0, 
									"numinlets": 1, 
									"ignoreclick": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"int", 
										"bang"
									], 
									"maxclass": "number", 
									"fontsize": 11.595187, 
									"parameter_enable": 0, 
									"id": "obj-77", 
									"patching_rect": [
										160.233337, 
										210.0, 
										114.766602, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"triangle": 0, 
									"numinlets": 1, 
									"ignoreclick": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"int", 
										"bang"
									], 
									"maxclass": "number", 
									"fontsize": 11.595187, 
									"parameter_enable": 0, 
									"id": "obj-78", 
									"patching_rect": [
										160.233337, 
										189.0, 
										114.766602, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"triangle": 0, 
									"numinlets": 1, 
									"ignoreclick": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"int", 
										"bang"
									], 
									"maxclass": "number", 
									"fontsize": 11.595187, 
									"parameter_enable": 0, 
									"id": "obj-79", 
									"patching_rect": [
										160.233337, 
										168.0, 
										114.766602, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"triangle": 0, 
									"numinlets": 1, 
									"ignoreclick": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"int", 
										"bang"
									], 
									"maxclass": "number", 
									"fontsize": 11.595187, 
									"parameter_enable": 0, 
									"id": "obj-80", 
									"patching_rect": [
										160.233337, 
										147.0, 
										114.766602, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"triangle": 0, 
									"numinlets": 1, 
									"ignoreclick": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"int", 
										"bang"
									], 
									"maxclass": "number", 
									"fontsize": 11.595187, 
									"parameter_enable": 0, 
									"id": "obj-15", 
									"patching_rect": [
										160.233337, 
										126.0, 
										114.766602, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "unpack 0 0 0 0 0 0 0 s 0 0 0", 
									"numinlets": 1, 
									"numoutlets": 11, 
									"outlettype": [
										"int", 
										"int", 
										"int", 
										"int", 
										"int", 
										"int", 
										"int", 
										"", 
										"int", 
										"int", 
										"int"
									], 
									"maxclass": "newobj", 
									"fontsize": 9.0, 
									"id": "obj-81", 
									"patching_rect": [
										160.233337, 
										95.0, 
										121.0, 
										17.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "isEnteringProximity", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 1, 
									"id": "obj-82", 
									"patching_rect": [
										51.0, 
										336.0, 
										104.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "pointingDeviceType", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 1, 
									"id": "obj-83", 
									"patching_rect": [
										48.0, 
										315.0, 
										107.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "capabilityMask", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 1, 
									"id": "obj-84", 
									"patching_rect": [
										70.0, 
										294.0, 
										85.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "uniqueID", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 1, 
									"id": "obj-85", 
									"patching_rect": [
										99.0, 
										273.0, 
										56.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "pointingDeviceSerialNumber", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 1, 
									"id": "obj-86", 
									"patching_rect": [
										8.0, 
										252.0, 
										147.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "vendorPointingDeviceType", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 1, 
									"id": "obj-87", 
									"patching_rect": [
										15.0, 
										232.0, 
										140.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "systemTabletID", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 1, 
									"id": "obj-88", 
									"patching_rect": [
										70.0, 
										210.0, 
										85.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "deviceID", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 1, 
									"id": "obj-89", 
									"patching_rect": [
										104.0, 
										189.0, 
										51.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "pointingDeviceID", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 1, 
									"id": "obj-90", 
									"patching_rect": [
										65.0, 
										166.0, 
										90.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "tabletID", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 1, 
									"id": "obj-91", 
									"patching_rect": [
										110.0, 
										147.0, 
										45.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "vendorID", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"frgb": 0.0, 
									"fontsize": 10.0, 
									"fontface": 1, 
									"id": "obj-92", 
									"patching_rect": [
										103.0, 
										127.0, 
										52.0, 
										18.0
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
									"id": "obj-96", 
									"patching_rect": [
										160.233337, 
										10.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							631.0, 
							391.0, 
							724.0, 
							419.0
						], 
						"lines": [
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-73", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-3", 
										0
									], 
									"midpoints": [
										169.733337, 
										314.0, 
										474.616638, 
										314.0, 
										474.616638, 
										287.0, 
										492.499939, 
										287.0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-81", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-15", 
										0
									], 
									"midpoints": [
										169.733337, 
										123.0, 
										169.733337, 
										123.0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-81", 
										10
									], 
									"hidden": 0, 
									"destination": [
										"obj-71", 
										0
									], 
									"midpoints": [
										271.733337, 
										333.0, 
										169.733337, 
										333.0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-81", 
										9
									], 
									"hidden": 0, 
									"destination": [
										"obj-72", 
										0
									], 
									"midpoints": [
										261.533325, 
										320.0, 
										169.733337, 
										320.0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-81", 
										8
									], 
									"hidden": 0, 
									"destination": [
										"obj-73", 
										0
									], 
									"midpoints": [
										251.333344, 
										291.0, 
										169.733337, 
										291.0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-81", 
										7
									], 
									"hidden": 0, 
									"destination": [
										"obj-74", 
										1
									], 
									"midpoints": [
										241.133331, 
										270.0, 
										265.499939, 
										270.0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-81", 
										6
									], 
									"hidden": 0, 
									"destination": [
										"obj-75", 
										0
									], 
									"midpoints": [
										230.933334, 
										249.0, 
										169.733337, 
										249.0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-81", 
										5
									], 
									"hidden": 0, 
									"destination": [
										"obj-76", 
										0
									], 
									"midpoints": [
										220.733337, 
										228.0, 
										169.733337, 
										228.0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-81", 
										4
									], 
									"hidden": 0, 
									"destination": [
										"obj-77", 
										0
									], 
									"midpoints": [
										210.53334, 
										207.0, 
										169.733337, 
										207.0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-81", 
										3
									], 
									"hidden": 0, 
									"destination": [
										"obj-78", 
										0
									], 
									"midpoints": [
										200.333344, 
										186.0, 
										169.733337, 
										186.0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-81", 
										2
									], 
									"hidden": 0, 
									"destination": [
										"obj-79", 
										0
									], 
									"midpoints": [
										190.133331, 
										165.0, 
										169.733337, 
										165.0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-81", 
										1
									], 
									"hidden": 0, 
									"destination": [
										"obj-80", 
										0
									], 
									"midpoints": [
										179.933334, 
										144.0, 
										169.733337, 
										144.0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-96", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-81", 
										0
									]
								}
							}
						], 
						"statusbarvisible": 2, 
						"gridsnaponopen": 0, 
						"bglocked": 0
					}, 
					"color": [
						0.690196, 
						0.533333, 
						0.227451, 
						1.0
					], 
					"text": "p TabletProximityRecord", 
					"numinlets": 1, 
					"numoutlets": 0, 
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
					"maxclass": "newobj", 
					"fontsize": 11.595187, 
					"id": "obj-97", 
					"patching_rect": [
						970.0, 
						430.0, 
						139.770386, 
						19.0
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
					"fontsize": 12.0, 
					"id": "obj-6", 
					"patching_rect": [
						390.0, 
						22.5, 
						60.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/s2m : \"poll\",\n/s2m : [\"nopointer\", 1],\n/s2m : [\"xyrange\", 1],\n/s2m : \"menu\"", 
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
					"id": "obj-7", 
					"patching_rect": [
						390.0, 
						52.5, 
						110.0, 
						60.0
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
						50.0, 
						50.0, 
						25.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "freebang", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"bang"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-2", 
					"patching_rect": [
						210.0, 
						22.5, 
						58.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/s2m : \"nopoll\"", 
					"numinlets": 2, 
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
					"id": "obj-69", 
					"patching_rect": [
						210.0, 
						52.5, 
						126.700012, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "nopointer $1", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 11.595187, 
					"id": "obj-63", 
					"patching_rect": [
						114.0, 
						210.0, 
						75.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /s2m /pointer/hide", 
					"numinlets": 3, 
					"numoutlets": 3, 
					"outlettype": [
						"", 
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-62", 
					"patching_rect": [
						50.0, 
						140.0, 
						147.0, 
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
					"id": "obj-61", 
					"patching_rect": [
						281.0, 
						690.0, 
						25.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pak /x /y /pressure 0. /x/tilt /y/tilt /button/front 0 /button/back 0 /button/tip 0 /rotation /z /pressure/tangental", 
					"numinlets": 11, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-1", 
					"patching_rect": [
						50.000015, 
						450.0, 
						830.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"labelclick": 1, 
					"fontname": "Arial", 
					"presentation_rect": [
						0.0, 
						0.0, 
						178.0, 
						20.0
					], 
					"items": [
						"All tablets and tools", 
						",", 
						"<separator>", 
						",", 
						"(0: Intuos2 4x5 / all tools)", 
						",", 
						"(0: Intuos2 4x5 / 1: Grip Pen)"
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
					"presentation": 1, 
					"id": "obj-55", 
					"patching_rect": [
						780.0, 
						190.0, 
						178.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "unpack f f", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"float", 
						"float"
					], 
					"maxclass": "newobj", 
					"fontsize": 11.595187, 
					"id": "obj-13", 
					"patching_rect": [
						293.299988, 
						420.0, 
						100.100014, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "unpack f f", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"float", 
						"float"
					], 
					"maxclass": "newobj", 
					"fontsize": 11.595187, 
					"id": "obj-10", 
					"patching_rect": [
						50.0, 
						420.0, 
						100.099998, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Verdana", 
					"color": [
						1.0, 
						0.603922, 
						0.0, 
						1.0
					], 
					"text": "s2m.wacom", 
					"numinlets": 1, 
					"numoutlets": 9, 
					"outlettype": [
						"", 
						"", 
						"", 
						"", 
						"", 
						"", 
						"", 
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-3", 
					"patching_rect": [
						50.0, 
						280.0, 
						918.200012, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "& 4", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"int"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-34", 
					"patching_rect": [
						536.599976, 
						420.0, 
						27.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "& 2", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"int"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-36", 
					"patching_rect": [
						455.5, 
						420.0, 
						27.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "& 1", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"int"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-38", 
					"patching_rect": [
						617.700012, 
						420.0, 
						27.0, 
						20.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			0.0, 
			44.0, 
			1164.0, 
			758.0
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
						"obj-4", 
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
					"hidden": 0, 
					"destination": [
						"obj-1", 
						1
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
						"obj-8", 
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
						1
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
						"obj-13", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-1", 
						4
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
						"obj-1", 
						3
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
						"obj-69", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-3", 
						6
					], 
					"hidden": 0, 
					"destination": [
						"obj-1", 
						10
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-3", 
						5
					], 
					"hidden": 0, 
					"destination": [
						"obj-1", 
						9
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-3", 
						4
					], 
					"hidden": 0, 
					"destination": [
						"obj-1", 
						8
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-3", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-1", 
						2
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
						"obj-10", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-3", 
						2
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
						"obj-3", 
						3
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
						"obj-3", 
						3
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
						"obj-3", 
						3
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
						"obj-3", 
						8
					], 
					"hidden": 0, 
					"destination": [
						"obj-55", 
						0
					], 
					"midpoints": [
						958.700012, 
						321.0, 
						983.851807, 
						321.0, 
						983.851807, 
						172.0, 
						789.5, 
						172.0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-3", 
						7
					], 
					"hidden": 0, 
					"destination": [
						"obj-97", 
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
						"obj-1", 
						6
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
						"obj-1", 
						5
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
						"obj-1", 
						7
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
						"obj-12", 
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
						"obj-62", 
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
						"obj-3", 
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
						"obj-7", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-62", 
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
						"obj-62", 
						2
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
						"obj-62", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-63", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-63", 
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
						"obj-69", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-62", 
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
						"obj-62", 
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
						"obj-61", 
						0
					]
				}
			}
		], 
		"statusbarvisible": 2, 
		"gridsnaponopen": 0, 
		"bglocked": 0
	}
}