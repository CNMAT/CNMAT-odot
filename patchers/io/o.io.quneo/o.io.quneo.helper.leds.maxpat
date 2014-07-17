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
													"text": "o.pack /control/change", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-84", 
													"patching_rect": [
														50.0, 
														198.0, 
														134.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.expr /piece = value(/pieces[[0]])", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-89", 
													"patching_rect": [
														50.0, 
														123.0, 
														202.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.expr apply(lambda(a){/value = round(a * 127.)\\,}\\, /piece)\\, delete(/piece)\\, delete(/pieces)\\,", 
													"numinlets": 1, 
													"linecount": 2, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-90", 
													"patching_rect": [
														50.0, 
														148.5, 
														429.0, 
														33.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.expr /pieces = getaddresses()", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-92", 
													"patching_rect": [
														50.0, 
														100.0, 
														289.0, 
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
														"FullPacket"
													], 
													"maxclass": "inlet", 
													"id": "obj-53", 
													"patching_rect": [
														50.0, 
														40.0, 
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
													"id": "obj-54", 
													"patching_rect": [
														50.0, 
														241.5, 
														25.0, 
														25.0
													]
												}
											}
										], 
										"default_fontface": 0, 
										"gridonopen": 0, 
										"rect": [
											700.0, 
											114.0, 
											640.0, 
											480.0
										], 
										"lines": [
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-53", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-92", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-84", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-54", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-89", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-90", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-90", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-84", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-92", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-89", 
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
									"text": "p calibrate", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-85", 
									"patching_rect": [
										62.375, 
										368.0, 
										84.25, 
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
													"text": "o.route /brightness", 
													"numinlets": 2, 
													"numoutlets": 2, 
													"outlettype": [
														"", 
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-10", 
													"patching_rect": [
														50.0, 
														101.0, 
														278.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.expr if(bound(/redness/button/rhombus)\\, /key = 45)\\, if(bound(/greenness/button/rhombus)\\, /key = 44)\\, if(bound(/button/a)\\, /key = 33)\\, if(bound(/button/b)\\, /key = 34)\\, if(bound(/button/c)\\, /key = 35)", 
													"numinlets": 1, 
													"linecount": 4, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-9", 
													"patching_rect": [
														50.0, 
														141.0, 
														341.0, 
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
													"id": "obj-76", 
													"patching_rect": [
														50.0, 
														40.0, 
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
													"id": "obj-78", 
													"patching_rect": [
														50.0, 
														275.0, 
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
											640.0, 
											480.0
										], 
										"lines": [
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-10", 
														1
													], 
													"hidden": 0, 
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
														"obj-10", 
														0
													], 
													"hidden": 0, 
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
														"obj-76", 
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
														"obj-9", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-78", 
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
									"text": "p buttons", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-79", 
									"patching_rect": [
										223.125, 
										333.0, 
										61.0, 
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
																	"text": "if(bound(/a/1), /key = 1),\nif(bound(/b/1), /key = 3),\nif(bound(/c/1), /key = 5),\nif(bound(/d/1), /key = 7),\nif(bound(/a/2), /key = 9),\nif(bound(/b/2), /key = 11),\nif(bound(/c/2), /key = 13),\nif(bound(/d/2), /key = 15),\nif(bound(/a/3), /key = 17),\nif(bound(/b/3), /key = 19),\nif(bound(/c/3), /key = 21),\nif(bound(/d/3), /key = 23),\nif(bound(/a/4), /key = 25),\nif(bound(/b/4), /key = 27),\nif(bound(/c/4), /key = 29),\nif(bound(/d/4), /key = 31),", 
																	"numinlets": 1, 
																	"linecount": 16, 
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
																	"id": "obj-7", 
																	"patching_rect": [
																		418.0, 
																		90.0, 
																		260.0, 
																		231.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "if(bound(/a/1), /key = 0),\nif(bound(/b/1), /key = 2),\nif(bound(/c/1), /key = 4),\nif(bound(/d/1), /key = 6),\nif(bound(/a/2), /key = 8),\nif(bound(/b/2), /key = 10),\nif(bound(/c/2), /key = 12),\nif(bound(/d/2), /key = 14),\nif(bound(/a/3), /key = 16),\nif(bound(/b/3), /key = 18),\nif(bound(/c/3), /key = 20),\nif(bound(/d/3), /key = 22),\nif(bound(/a/4), /key = 24),\nif(bound(/b/4), /key = 26),\nif(bound(/c/4), /key = 28),\nif(bound(/d/4), /key = 30),", 
																	"numinlets": 1, 
																	"linecount": 16, 
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
																	"id": "obj-14", 
																	"patching_rect": [
																		90.0, 
																		96.0, 
																		260.0, 
																		231.0
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
																	"id": "obj-33", 
																	"patching_rect": [
																		50.0, 
																		40.0, 
																		25.0, 
																		25.0
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
																		418.0, 
																		40.0, 
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
																	"id": "obj-35", 
																	"patching_rect": [
																		175.5, 
																		474.0, 
																		25.0, 
																		25.0
																	]
																}
															}
														], 
														"default_fontface": 0, 
														"gridonopen": 0, 
														"rect": [
															50.0, 
															94.0, 
															1158.0, 
															567.0
														], 
														"lines": [
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-14", 
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
																		"obj-33", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-14", 
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
																		"obj-7", 
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
																		"obj-35", 
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
													"text": "p lookup", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-36", 
													"patching_rect": [
														50.0, 
														139.0, 
														92.0, 
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
																	"text": "/a/1 : 0.", 
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
																	"id": "obj-1", 
																	"patching_rect": [
																		100.0, 
																		337.0, 
																		150.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /pad", 
																	"numinlets": 2, 
																	"numoutlets": 2, 
																	"outlettype": [
																		"", 
																		"FullPacket"
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-53", 
																	"patching_rect": [
																		210.0, 
																		198.5, 
																		119.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /pad", 
																	"numinlets": 2, 
																	"numoutlets": 2, 
																	"outlettype": [
																		"", 
																		"FullPacket"
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-13", 
																	"patching_rect": [
																		50.0, 
																		198.5, 
																		119.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /greenness /redness", 
																	"numinlets": 3, 
																	"numoutlets": 3, 
																	"outlettype": [
																		"", 
																		"", 
																		"FullPacket"
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-10", 
																	"patching_rect": [
																		50.0, 
																		131.0, 
																		171.0, 
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
																	"id": "obj-29", 
																	"patching_rect": [
																		50.0, 
																		40.0, 
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
																	"id": "obj-30", 
																	"patching_rect": [
																		50.0, 
																		240.5, 
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
																		210.0, 
																		233.5, 
																		25.0, 
																		25.0
																	]
																}
															}
														], 
														"default_fontface": 0, 
														"gridonopen": 0, 
														"rect": [
															800.0, 
															95.0, 
															640.0, 
															480.0
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
																		"obj-13", 
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
																		"obj-53", 
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
																		"obj-1", 
																		1
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
																		"obj-30", 
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
																		"obj-10", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-53", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-31", 
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
													"text": "p take & split", 
													"numinlets": 1, 
													"numoutlets": 2, 
													"outlettype": [
														"", 
														""
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-32", 
													"patching_rect": [
														50.0, 
														100.0, 
														92.0, 
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
													"id": "obj-72", 
													"patching_rect": [
														50.0, 
														40.0, 
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
													"id": "obj-73", 
													"patching_rect": [
														50.0, 
														219.0, 
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
											640.0, 
											480.0
										], 
										"lines": [
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-32", 
														1
													], 
													"hidden": 0, 
													"destination": [
														"obj-36", 
														1
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
														"obj-36", 
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
														"obj-73", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-72", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-32", 
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
									"text": "p pads", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-75", 
									"patching_rect": [
										157.125, 
										333.0, 
										46.0, 
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
													"text": "o.pack /note", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-38", 
													"patching_rect": [
														50.0, 
														235.0, 
														100.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.expr /piece = value(/pieces[[0]])", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-89", 
													"patching_rect": [
														50.0, 
														123.0, 
														202.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.expr apply(lambda(a){/velocity = round(a * 127.)\\,}\\, /piece)\\, delete(/piece)\\, delete(/pieces)\\,", 
													"numinlets": 1, 
													"linecount": 2, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-90", 
													"patching_rect": [
														50.0, 
														148.5, 
														429.0, 
														33.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.expr /pieces = getaddresses()", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-92", 
													"patching_rect": [
														50.0, 
														100.0, 
														289.0, 
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
														"FullPacket"
													], 
													"maxclass": "inlet", 
													"id": "obj-53", 
													"patching_rect": [
														50.0, 
														40.0, 
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
													"id": "obj-54", 
													"patching_rect": [
														50.0, 
														358.0, 
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
											640.0, 
											480.0
										], 
										"lines": [
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-38", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-54", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-53", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-92", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-89", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-90", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-90", 
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
														"obj-92", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-89", 
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
									"text": "p calibrate note", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-55", 
									"patching_rect": [
										157.125, 
										368.0, 
										117.0, 
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
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"bang"
													], 
													"maxclass": "button", 
													"id": "obj-43", 
													"patching_rect": [
														130.0, 
														104.169922, 
														20.0, 
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
													"id": "obj-44", 
													"patching_rect": [
														50.0, 
														104.169922, 
														100.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "/channel : 2", 
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
													"id": "obj-45", 
													"patching_rect": [
														50.0, 
														124.169922, 
														73.0, 
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
													"id": "obj-49", 
													"patching_rect": [
														50.0, 
														204.169922, 
														25.0, 
														25.0
													]
												}
											}
										], 
										"default_fontface": 0, 
										"gridonopen": 0, 
										"rect": [
											50.0, 
											94.0, 
											640.0, 
											480.0
										], 
										"lines": [
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-43", 
														0
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
														"obj-44", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-45", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-45", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-49", 
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
									"text": "p inject", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-50", 
									"patching_rect": [
										408.125, 
										429.0, 
										55.0, 
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
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"bang"
													], 
													"maxclass": "button", 
													"id": "obj-42", 
													"patching_rect": [
														130.0, 
														104.169922, 
														20.0, 
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
													"id": "obj-37", 
													"patching_rect": [
														50.0, 
														104.169922, 
														100.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "/channel : 1", 
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
													"id": "obj-40", 
													"patching_rect": [
														50.0, 
														124.169922, 
														71.0, 
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
													"id": "obj-47", 
													"patching_rect": [
														50.0, 
														204.169922, 
														25.0, 
														25.0
													]
												}
											}
										], 
										"default_fontface": 0, 
										"gridonopen": 0, 
										"rect": [
											50.0, 
											94.0, 
											640.0, 
											480.0
										], 
										"lines": [
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-37", 
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
														"obj-40", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-47", 
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
														"obj-37", 
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
									"text": "p inject", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-48", 
									"patching_rect": [
										174.5, 
										434.830078, 
										62.0, 
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
									"id": "obj-46", 
									"patching_rect": [
										327.125, 
										462.0, 
										100.0, 
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
									"id": "obj-39", 
									"patching_rect": [
										93.5, 
										462.0, 
										100.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.select /led", 
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
										131.0, 
										100.0, 
										100.0, 
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
													"text": "o.route /greenness/pad /redness/pad", 
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
														86.0, 
														216.0, 
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
																	"text": "LED Location within PAD", 
																	"numinlets": 1, 
																	"numoutlets": 0, 
																	"maxclass": "comment", 
																	"frgb": 0.0, 
																	"fontsize": 12.0, 
																	"id": "obj-4", 
																	"patching_rect": [
																		1155.0, 
																		236.0, 
																		150.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "PAD location", 
																	"numinlets": 1, 
																	"numoutlets": 0, 
																	"maxclass": "comment", 
																	"frgb": 0.0, 
																	"fontsize": 12.0, 
																	"id": "obj-2", 
																	"patching_rect": [
																		1073.0, 
																		139.0, 
																		150.0, 
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
																	"id": "obj-59", 
																	"patching_rect": [
																		196.375, 
																		632.0, 
																		25.0, 
																		25.0
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
																	"id": "obj-58", 
																	"patching_rect": [
																		620.75, 
																		91.0, 
																		25.0, 
																		25.0
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
																	"id": "obj-53", 
																	"patching_rect": [
																		47.75, 
																		91.0, 
																		25.0, 
																		25.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-33", 
																	"patching_rect": [
																		1005.375, 
																		205.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-34", 
																	"patching_rect": [
																		877.375, 
																		205.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-35", 
																	"patching_rect": [
																		748.75, 
																		205.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-36", 
																	"patching_rect": [
																		620.75, 
																		205.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-37", 
																	"patching_rect": [
																		1005.375, 
																		236.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-38", 
																	"patching_rect": [
																		877.375, 
																		236.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-39", 
																	"patching_rect": [
																		748.75, 
																		236.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-40", 
																	"patching_rect": [
																		620.75, 
																		236.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-41", 
																	"patching_rect": [
																		1005.375, 
																		266.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-42", 
																	"patching_rect": [
																		877.375, 
																		266.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-44", 
																	"patching_rect": [
																		748.75, 
																		266.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-45", 
																	"patching_rect": [
																		620.75, 
																		266.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-46", 
																	"patching_rect": [
																		1005.375, 
																		296.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-47", 
																	"patching_rect": [
																		877.375, 
																		296.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-48", 
																	"patching_rect": [
																		748.75, 
																		296.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-49", 
																	"patching_rect": [
																		620.75, 
																		296.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /a/1 /b/1 /c/1 /d/1 /a/2 /b/2 /c/2 /d/2 /a/3 /b/3 /c/3 /d/3 /a/4 /b/4 /c/4 /d/4", 
																	"numinlets": 17, 
																	"numoutlets": 17, 
																	"outlettype": [
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"FullPacket"
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-50", 
																	"patching_rect": [
																		620.75, 
																		137.0, 
																		419.0, 
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
																					"text": "2b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-36", 
																					"patching_rect": [
																						717.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-35", 
																					"patching_rect": [
																						620.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-34", 
																					"patching_rect": [
																						521.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-33", 
																					"patching_rect": [
																						424.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-32", 
																					"patching_rect": [
																						327.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-31", 
																					"patching_rect": [
																						230.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-21", 
																					"patching_rect": [
																						133.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-2", 
																					"patching_rect": [
																						47.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-15", 
																					"patching_rect": [
																						731.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-16", 
																					"patching_rect": [
																						731.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 23", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-17", 
																					"patching_rect": [
																						731.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-18", 
																					"patching_rect": [
																						634.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-19", 
																					"patching_rect": [
																						634.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 22", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-20", 
																					"patching_rect": [
																						634.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-12", 
																					"patching_rect": [
																						535.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-13", 
																					"patching_rect": [
																						535.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 21", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-14", 
																					"patching_rect": [
																						535.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-9", 
																					"patching_rect": [
																						438.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-10", 
																					"patching_rect": [
																						438.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 20", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-11", 
																					"patching_rect": [
																						438.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-6", 
																					"patching_rect": [
																						341.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-7", 
																					"patching_rect": [
																						341.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 7", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-8", 
																					"patching_rect": [
																						341.0, 
																						147.0, 
																						65.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-3", 
																					"patching_rect": [
																						244.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-4", 
																					"patching_rect": [
																						244.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 6", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-5", 
																					"patching_rect": [
																						244.0, 
																						147.0, 
																						65.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-66", 
																					"patching_rect": [
																						147.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-65", 
																					"patching_rect": [
																						50.0, 
																						126.5, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-64", 
																					"patching_rect": [
																						50.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-60", 
																					"patching_rect": [
																						147.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 5", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-41", 
																					"patching_rect": [
																						147.0, 
																						147.0, 
																						65.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 4", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-90", 
																					"patching_rect": [
																						50.0, 
																						152.5, 
																						65.0, 
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
																					"id": "obj-22", 
																					"patching_rect": [
																						50.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																						147.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-24", 
																					"patching_rect": [
																						244.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-25", 
																					"patching_rect": [
																						341.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-26", 
																					"patching_rect": [
																						438.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-27", 
																					"patching_rect": [
																						535.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-28", 
																					"patching_rect": [
																						634.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-29", 
																					"patching_rect": [
																						731.0, 
																						40.0, 
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
																					"id": "obj-30", 
																					"patching_rect": [
																						385.0, 
																						232.5, 
																						25.0, 
																						25.0
																					]
																				}
																			}
																		], 
																		"default_fontface": 0, 
																		"gridonopen": 0, 
																		"rect": [
																			0.0, 
																			44.0, 
																			855.0, 
																			291.0
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
																						"obj-9", 
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
																						"obj-30", 
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
																						"obj-14", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-14", 
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
																						"obj-15", 
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
																						"obj-16", 
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
																						"obj-17", 
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
																						"obj-18", 
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
																						"obj-19", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-20", 
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
																						"obj-22", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-64", 
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
																						"obj-60", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-24", 
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
																						"obj-25", 
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
																						"obj-26", 
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
																						"obj-27", 
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
																						"obj-28", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-19", 
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
																						"obj-16", 
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
																						"obj-5", 
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
																						"obj-3", 
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
																						"obj-30", 
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
																						"obj-30", 
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
																						"obj-8", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-60", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-66", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-64", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-65", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-65", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-90", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-66", 
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
																						"obj-7", 
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
																						"obj-30", 
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
																						"obj-90", 
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
																	"text": "p midi map Pad1B", 
																	"numinlets": 8, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-104", 
																	"patching_rect": [
																		403.5, 
																		568.5, 
																		113.5, 
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
																					"text": "2b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-36", 
																					"patching_rect": [
																						717.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-35", 
																					"patching_rect": [
																						620.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-34", 
																					"patching_rect": [
																						521.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-33", 
																					"patching_rect": [
																						424.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-32", 
																					"patching_rect": [
																						327.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-31", 
																					"patching_rect": [
																						230.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-21", 
																					"patching_rect": [
																						133.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-2", 
																					"patching_rect": [
																						47.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-15", 
																					"patching_rect": [
																						731.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-16", 
																					"patching_rect": [
																						731.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 19", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-17", 
																					"patching_rect": [
																						731.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-18", 
																					"patching_rect": [
																						634.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-19", 
																					"patching_rect": [
																						634.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 18", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-20", 
																					"patching_rect": [
																						634.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-12", 
																					"patching_rect": [
																						535.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-13", 
																					"patching_rect": [
																						535.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 17", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-14", 
																					"patching_rect": [
																						535.0, 
																						152.5, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-9", 
																					"patching_rect": [
																						438.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-10", 
																					"patching_rect": [
																						438.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 16", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-11", 
																					"patching_rect": [
																						438.0, 
																						152.5, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-6", 
																					"patching_rect": [
																						341.0, 
																						135.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-7", 
																					"patching_rect": [
																						341.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 3", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-8", 
																					"patching_rect": [
																						341.0, 
																						161.0, 
																						65.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-3", 
																					"patching_rect": [
																						244.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-4", 
																					"patching_rect": [
																						244.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 2", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-5", 
																					"patching_rect": [
																						244.0, 
																						147.0, 
																						65.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-66", 
																					"patching_rect": [
																						147.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-65", 
																					"patching_rect": [
																						50.0, 
																						126.5, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-64", 
																					"patching_rect": [
																						50.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-60", 
																					"patching_rect": [
																						147.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 1", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-41", 
																					"patching_rect": [
																						147.0, 
																						147.0, 
																						65.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 0", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-90", 
																					"patching_rect": [
																						50.0, 
																						152.5, 
																						65.0, 
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
																					"id": "obj-22", 
																					"patching_rect": [
																						50.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																						147.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-24", 
																					"patching_rect": [
																						244.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-25", 
																					"patching_rect": [
																						341.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-26", 
																					"patching_rect": [
																						438.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-27", 
																					"patching_rect": [
																						535.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-28", 
																					"patching_rect": [
																						634.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-29", 
																					"patching_rect": [
																						731.0, 
																						40.0, 
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
																					"id": "obj-30", 
																					"patching_rect": [
																						385.0, 
																						232.5, 
																						25.0, 
																						25.0
																					]
																				}
																			}
																		], 
																		"default_fontface": 0, 
																		"gridonopen": 0, 
																		"rect": [
																			326.0, 
																			287.0, 
																			855.0, 
																			291.0
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
																						"obj-9", 
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
																						"obj-30", 
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
																						"obj-14", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-14", 
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
																						"obj-15", 
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
																						"obj-16", 
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
																						"obj-17", 
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
																						"obj-18", 
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
																						"obj-19", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-20", 
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
																						"obj-22", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-64", 
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
																						"obj-60", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-24", 
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
																						"obj-25", 
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
																						"obj-26", 
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
																						"obj-27", 
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
																						"obj-28", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-19", 
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
																						"obj-16", 
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
																						"obj-5", 
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
																						"obj-3", 
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
																						"obj-30", 
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
																						"obj-30", 
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
																						"obj-8", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-60", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-66", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-64", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-65", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-65", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-90", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-66", 
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
																						"obj-7", 
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
																						"obj-30", 
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
																						"obj-90", 
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
																	"text": "p midi map Pad1A", 
																	"numinlets": 8, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-137", 
																	"patching_rect": [
																		289.5, 
																		568.5, 
																		113.5, 
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
																					"text": "2b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-36", 
																					"patching_rect": [
																						717.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-35", 
																					"patching_rect": [
																						620.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-34", 
																					"patching_rect": [
																						521.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-33", 
																					"patching_rect": [
																						424.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-32", 
																					"patching_rect": [
																						327.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-31", 
																					"patching_rect": [
																						230.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-21", 
																					"patching_rect": [
																						133.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-2", 
																					"patching_rect": [
																						47.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-15", 
																					"patching_rect": [
																						731.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-16", 
																					"patching_rect": [
																						731.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 127", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-17", 
																					"patching_rect": [
																						731.0, 
																						147.0, 
																						78.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-18", 
																					"patching_rect": [
																						634.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-19", 
																					"patching_rect": [
																						634.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 126", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-20", 
																					"patching_rect": [
																						634.0, 
																						147.0, 
																						78.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-12", 
																					"patching_rect": [
																						535.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-13", 
																					"patching_rect": [
																						535.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 125", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-14", 
																					"patching_rect": [
																						535.0, 
																						147.0, 
																						78.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-9", 
																					"patching_rect": [
																						438.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-10", 
																					"patching_rect": [
																						438.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 124", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-11", 
																					"patching_rect": [
																						438.0, 
																						147.0, 
																						78.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-6", 
																					"patching_rect": [
																						341.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-7", 
																					"patching_rect": [
																						341.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 111", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-8", 
																					"patching_rect": [
																						341.0, 
																						147.0, 
																						76.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-3", 
																					"patching_rect": [
																						244.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-4", 
																					"patching_rect": [
																						244.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 110", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-5", 
																					"patching_rect": [
																						244.0, 
																						147.0, 
																						77.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-66", 
																					"patching_rect": [
																						147.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-65", 
																					"patching_rect": [
																						50.0, 
																						126.5, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-64", 
																					"patching_rect": [
																						50.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-60", 
																					"patching_rect": [
																						147.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 109", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-41", 
																					"patching_rect": [
																						147.0, 
																						147.0, 
																						78.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 108", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-90", 
																					"patching_rect": [
																						50.0, 
																						152.5, 
																						78.0, 
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
																					"id": "obj-22", 
																					"patching_rect": [
																						50.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																						147.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-24", 
																					"patching_rect": [
																						244.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-25", 
																					"patching_rect": [
																						341.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-26", 
																					"patching_rect": [
																						438.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-27", 
																					"patching_rect": [
																						535.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-28", 
																					"patching_rect": [
																						634.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-29", 
																					"patching_rect": [
																						731.0, 
																						40.0, 
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
																					"id": "obj-30", 
																					"patching_rect": [
																						385.0, 
																						232.5, 
																						25.0, 
																						25.0
																					]
																				}
																			}
																		], 
																		"default_fontface": 0, 
																		"gridonopen": 0, 
																		"rect": [
																			378.0, 
																			526.0, 
																			855.0, 
																			291.0
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
																						"obj-9", 
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
																						"obj-30", 
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
																						"obj-14", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-14", 
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
																						"obj-15", 
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
																						"obj-16", 
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
																						"obj-17", 
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
																						"obj-18", 
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
																						"obj-19", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-20", 
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
																						"obj-22", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-64", 
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
																						"obj-60", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-24", 
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
																						"obj-25", 
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
																						"obj-26", 
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
																						"obj-27", 
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
																						"obj-28", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-19", 
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
																						"obj-16", 
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
																						"obj-5", 
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
																						"obj-3", 
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
																						"obj-30", 
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
																						"obj-30", 
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
																						"obj-8", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-60", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-66", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-64", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-65", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-65", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-90", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-66", 
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
																						"obj-7", 
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
																						"obj-30", 
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
																						"obj-90", 
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
																	"text": "p midi map Pad4D", 
																	"numinlets": 8, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-106", 
																	"patching_rect": [
																		628.25, 
																		476.0, 
																		113.5, 
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
																					"text": "2b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-36", 
																					"patching_rect": [
																						717.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-35", 
																					"patching_rect": [
																						620.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-34", 
																					"patching_rect": [
																						521.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-33", 
																					"patching_rect": [
																						424.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-32", 
																					"patching_rect": [
																						327.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-31", 
																					"patching_rect": [
																						230.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-21", 
																					"patching_rect": [
																						133.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-2", 
																					"patching_rect": [
																						47.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-15", 
																					"patching_rect": [
																						731.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-16", 
																					"patching_rect": [
																						731.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 123", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-17", 
																					"patching_rect": [
																						731.0, 
																						147.0, 
																						78.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-18", 
																					"patching_rect": [
																						634.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-19", 
																					"patching_rect": [
																						634.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 122", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-20", 
																					"patching_rect": [
																						634.0, 
																						147.0, 
																						78.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-12", 
																					"patching_rect": [
																						535.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-13", 
																					"patching_rect": [
																						535.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 121", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-14", 
																					"patching_rect": [
																						535.0, 
																						147.0, 
																						78.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-9", 
																					"patching_rect": [
																						438.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-10", 
																					"patching_rect": [
																						438.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 120", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-11", 
																					"patching_rect": [
																						438.0, 
																						147.0, 
																						78.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-6", 
																					"patching_rect": [
																						341.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-7", 
																					"patching_rect": [
																						341.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 107", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-8", 
																					"patching_rect": [
																						341.0, 
																						147.0, 
																						78.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-3", 
																					"patching_rect": [
																						244.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-4", 
																					"patching_rect": [
																						244.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 106", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-5", 
																					"patching_rect": [
																						244.0, 
																						147.0, 
																						78.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-66", 
																					"patching_rect": [
																						147.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-65", 
																					"patching_rect": [
																						50.0, 
																						126.5, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-64", 
																					"patching_rect": [
																						50.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-60", 
																					"patching_rect": [
																						147.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 105", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-41", 
																					"patching_rect": [
																						147.0, 
																						147.0, 
																						78.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 104", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-90", 
																					"patching_rect": [
																						50.0, 
																						152.5, 
																						78.0, 
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
																					"id": "obj-22", 
																					"patching_rect": [
																						50.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																						147.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-24", 
																					"patching_rect": [
																						244.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-25", 
																					"patching_rect": [
																						341.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-26", 
																					"patching_rect": [
																						438.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-27", 
																					"patching_rect": [
																						535.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-28", 
																					"patching_rect": [
																						634.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-29", 
																					"patching_rect": [
																						731.0, 
																						40.0, 
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
																					"id": "obj-30", 
																					"patching_rect": [
																						385.0, 
																						232.5, 
																						25.0, 
																						25.0
																					]
																				}
																			}
																		], 
																		"default_fontface": 0, 
																		"gridonopen": 0, 
																		"rect": [
																			378.0, 
																			526.0, 
																			855.0, 
																			291.0
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
																						"obj-9", 
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
																						"obj-30", 
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
																						"obj-14", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-14", 
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
																						"obj-15", 
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
																						"obj-16", 
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
																						"obj-17", 
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
																						"obj-18", 
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
																						"obj-19", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-20", 
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
																						"obj-22", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-64", 
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
																						"obj-60", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-24", 
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
																						"obj-25", 
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
																						"obj-26", 
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
																						"obj-27", 
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
																						"obj-28", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-19", 
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
																						"obj-16", 
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
																						"obj-5", 
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
																						"obj-3", 
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
																						"obj-30", 
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
																						"obj-30", 
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
																						"obj-8", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-60", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-66", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-64", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-65", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-65", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-90", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-66", 
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
																						"obj-7", 
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
																						"obj-30", 
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
																						"obj-90", 
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
																	"text": "p midi map Pad4C", 
																	"numinlets": 8, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-108", 
																	"patching_rect": [
																		516.75, 
																		476.0, 
																		113.5, 
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
																					"text": "2b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-36", 
																					"patching_rect": [
																						717.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-35", 
																					"patching_rect": [
																						620.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-34", 
																					"patching_rect": [
																						521.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-33", 
																					"patching_rect": [
																						424.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-32", 
																					"patching_rect": [
																						327.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-31", 
																					"patching_rect": [
																						230.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-21", 
																					"patching_rect": [
																						133.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-2", 
																					"patching_rect": [
																						47.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-15", 
																					"patching_rect": [
																						731.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-16", 
																					"patching_rect": [
																						731.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 119", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-17", 
																					"patching_rect": [
																						731.0, 
																						147.0, 
																						77.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-18", 
																					"patching_rect": [
																						634.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-19", 
																					"patching_rect": [
																						634.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 118", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-20", 
																					"patching_rect": [
																						634.0, 
																						147.0, 
																						77.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-12", 
																					"patching_rect": [
																						535.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-13", 
																					"patching_rect": [
																						535.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 117", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-14", 
																					"patching_rect": [
																						535.0, 
																						147.0, 
																						77.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-9", 
																					"patching_rect": [
																						438.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-10", 
																					"patching_rect": [
																						438.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 116", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-11", 
																					"patching_rect": [
																						438.0, 
																						147.0, 
																						77.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-6", 
																					"patching_rect": [
																						341.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-7", 
																					"patching_rect": [
																						341.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 103", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-8", 
																					"patching_rect": [
																						341.0, 
																						147.0, 
																						78.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-3", 
																					"patching_rect": [
																						244.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-4", 
																					"patching_rect": [
																						244.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 102", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-5", 
																					"patching_rect": [
																						244.0, 
																						147.0, 
																						78.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-66", 
																					"patching_rect": [
																						147.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-65", 
																					"patching_rect": [
																						50.0, 
																						126.5, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-64", 
																					"patching_rect": [
																						50.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-60", 
																					"patching_rect": [
																						147.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 101", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-41", 
																					"patching_rect": [
																						147.0, 
																						147.0, 
																						78.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 100", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-90", 
																					"patching_rect": [
																						50.0, 
																						152.5, 
																						78.0, 
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
																					"id": "obj-22", 
																					"patching_rect": [
																						50.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																						147.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-24", 
																					"patching_rect": [
																						244.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-25", 
																					"patching_rect": [
																						341.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-26", 
																					"patching_rect": [
																						438.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-27", 
																					"patching_rect": [
																						535.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-28", 
																					"patching_rect": [
																						634.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-29", 
																					"patching_rect": [
																						731.0, 
																						40.0, 
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
																					"id": "obj-30", 
																					"patching_rect": [
																						385.0, 
																						232.5, 
																						25.0, 
																						25.0
																					]
																				}
																			}
																		], 
																		"default_fontface": 0, 
																		"gridonopen": 0, 
																		"rect": [
																			378.0, 
																			526.0, 
																			855.0, 
																			291.0
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
																						"obj-9", 
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
																						"obj-30", 
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
																						"obj-14", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-14", 
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
																						"obj-15", 
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
																						"obj-16", 
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
																						"obj-17", 
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
																						"obj-18", 
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
																						"obj-19", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-20", 
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
																						"obj-22", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-64", 
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
																						"obj-60", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-24", 
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
																						"obj-25", 
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
																						"obj-26", 
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
																						"obj-27", 
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
																						"obj-28", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-19", 
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
																						"obj-16", 
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
																						"obj-5", 
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
																						"obj-3", 
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
																						"obj-30", 
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
																						"obj-30", 
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
																						"obj-8", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-60", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-66", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-64", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-65", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-65", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-90", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-66", 
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
																						"obj-7", 
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
																						"obj-30", 
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
																						"obj-90", 
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
																	"text": "p midi map Pad4B", 
																	"numinlets": 8, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-109", 
																	"patching_rect": [
																		403.25, 
																		476.0, 
																		113.5, 
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
																					"text": "2b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-36", 
																					"patching_rect": [
																						717.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-35", 
																					"patching_rect": [
																						620.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-34", 
																					"patching_rect": [
																						521.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-33", 
																					"patching_rect": [
																						424.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-32", 
																					"patching_rect": [
																						327.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-31", 
																					"patching_rect": [
																						230.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-21", 
																					"patching_rect": [
																						133.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-2", 
																					"patching_rect": [
																						47.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-15", 
																					"patching_rect": [
																						731.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-16", 
																					"patching_rect": [
																						731.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 115", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-17", 
																					"patching_rect": [
																						731.0, 
																						147.0, 
																						77.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-18", 
																					"patching_rect": [
																						634.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-19", 
																					"patching_rect": [
																						634.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 114", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-20", 
																					"patching_rect": [
																						634.0, 
																						147.0, 
																						77.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-12", 
																					"patching_rect": [
																						535.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-13", 
																					"patching_rect": [
																						535.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 113", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-14", 
																					"patching_rect": [
																						535.0, 
																						147.0, 
																						77.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-9", 
																					"patching_rect": [
																						438.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-10", 
																					"patching_rect": [
																						438.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 112", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-11", 
																					"patching_rect": [
																						438.0, 
																						147.0, 
																						77.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-6", 
																					"patching_rect": [
																						341.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-7", 
																					"patching_rect": [
																						341.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 99", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-8", 
																					"patching_rect": [
																						341.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-3", 
																					"patching_rect": [
																						244.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-4", 
																					"patching_rect": [
																						244.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 98", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-5", 
																					"patching_rect": [
																						244.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-66", 
																					"patching_rect": [
																						147.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-65", 
																					"patching_rect": [
																						50.0, 
																						126.5, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-64", 
																					"patching_rect": [
																						50.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-60", 
																					"patching_rect": [
																						147.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 97", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-41", 
																					"patching_rect": [
																						147.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 96", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-90", 
																					"patching_rect": [
																						50.0, 
																						152.5, 
																						71.0, 
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
																					"id": "obj-22", 
																					"patching_rect": [
																						50.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																						147.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-24", 
																					"patching_rect": [
																						244.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-25", 
																					"patching_rect": [
																						341.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-26", 
																					"patching_rect": [
																						438.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-27", 
																					"patching_rect": [
																						535.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-28", 
																					"patching_rect": [
																						634.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-29", 
																					"patching_rect": [
																						731.0, 
																						40.0, 
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
																					"id": "obj-30", 
																					"patching_rect": [
																						385.0, 
																						232.5, 
																						25.0, 
																						25.0
																					]
																				}
																			}
																		], 
																		"default_fontface": 0, 
																		"gridonopen": 0, 
																		"rect": [
																			378.0, 
																			526.0, 
																			855.0, 
																			291.0
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
																						"obj-9", 
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
																						"obj-30", 
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
																						"obj-14", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-14", 
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
																						"obj-15", 
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
																						"obj-16", 
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
																						"obj-17", 
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
																						"obj-18", 
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
																						"obj-19", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-20", 
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
																						"obj-22", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-64", 
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
																						"obj-60", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-24", 
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
																						"obj-25", 
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
																						"obj-26", 
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
																						"obj-27", 
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
																						"obj-28", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-19", 
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
																						"obj-16", 
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
																						"obj-5", 
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
																						"obj-3", 
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
																						"obj-30", 
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
																						"obj-30", 
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
																						"obj-8", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-60", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-66", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-64", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-65", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-65", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-90", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-66", 
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
																						"obj-7", 
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
																						"obj-30", 
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
																						"obj-90", 
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
																	"text": "p midi map Pad4A", 
																	"numinlets": 8, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-110", 
																	"patching_rect": [
																		289.75, 
																		476.0, 
																		113.5, 
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
																					"text": "2b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-36", 
																					"patching_rect": [
																						717.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-35", 
																					"patching_rect": [
																						620.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-34", 
																					"patching_rect": [
																						521.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-33", 
																					"patching_rect": [
																						424.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-32", 
																					"patching_rect": [
																						327.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-31", 
																					"patching_rect": [
																						230.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-21", 
																					"patching_rect": [
																						133.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-2", 
																					"patching_rect": [
																						47.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-15", 
																					"patching_rect": [
																						731.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-16", 
																					"patching_rect": [
																						731.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 95", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-17", 
																					"patching_rect": [
																						731.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-18", 
																					"patching_rect": [
																						634.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-19", 
																					"patching_rect": [
																						634.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 94", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-20", 
																					"patching_rect": [
																						634.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-12", 
																					"patching_rect": [
																						535.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-13", 
																					"patching_rect": [
																						535.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 93", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-14", 
																					"patching_rect": [
																						535.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-9", 
																					"patching_rect": [
																						438.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-10", 
																					"patching_rect": [
																						438.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 92", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-11", 
																					"patching_rect": [
																						438.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-6", 
																					"patching_rect": [
																						341.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-7", 
																					"patching_rect": [
																						341.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 79", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-8", 
																					"patching_rect": [
																						341.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-3", 
																					"patching_rect": [
																						244.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-4", 
																					"patching_rect": [
																						244.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 78", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-5", 
																					"patching_rect": [
																						244.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-66", 
																					"patching_rect": [
																						147.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-65", 
																					"patching_rect": [
																						50.0, 
																						126.5, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-64", 
																					"patching_rect": [
																						50.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-60", 
																					"patching_rect": [
																						147.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 77", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-41", 
																					"patching_rect": [
																						147.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 76", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-90", 
																					"patching_rect": [
																						50.0, 
																						152.5, 
																						71.0, 
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
																					"id": "obj-22", 
																					"patching_rect": [
																						50.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																						147.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-24", 
																					"patching_rect": [
																						244.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-25", 
																					"patching_rect": [
																						341.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-26", 
																					"patching_rect": [
																						438.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-27", 
																					"patching_rect": [
																						535.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-28", 
																					"patching_rect": [
																						634.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-29", 
																					"patching_rect": [
																						731.0, 
																						40.0, 
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
																					"id": "obj-30", 
																					"patching_rect": [
																						385.0, 
																						232.5, 
																						25.0, 
																						25.0
																					]
																				}
																			}
																		], 
																		"default_fontface": 0, 
																		"gridonopen": 0, 
																		"rect": [
																			378.0, 
																			526.0, 
																			855.0, 
																			291.0
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
																						"obj-9", 
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
																						"obj-30", 
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
																						"obj-14", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-14", 
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
																						"obj-15", 
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
																						"obj-16", 
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
																						"obj-17", 
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
																						"obj-18", 
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
																						"obj-19", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-20", 
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
																						"obj-22", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-64", 
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
																						"obj-60", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-24", 
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
																						"obj-25", 
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
																						"obj-26", 
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
																						"obj-27", 
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
																						"obj-28", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-19", 
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
																						"obj-16", 
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
																						"obj-5", 
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
																						"obj-3", 
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
																						"obj-30", 
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
																						"obj-30", 
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
																						"obj-8", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-60", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-66", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-64", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-65", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-65", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-90", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-66", 
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
																						"obj-7", 
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
																						"obj-30", 
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
																						"obj-90", 
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
																	"text": "p midi map Pad3D", 
																	"numinlets": 8, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-111", 
																	"patching_rect": [
																		628.25, 
																		507.0, 
																		113.5, 
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
																					"text": "2b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-36", 
																					"patching_rect": [
																						717.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-35", 
																					"patching_rect": [
																						620.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-34", 
																					"patching_rect": [
																						521.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-33", 
																					"patching_rect": [
																						424.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-32", 
																					"patching_rect": [
																						327.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-31", 
																					"patching_rect": [
																						230.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-21", 
																					"patching_rect": [
																						133.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-2", 
																					"patching_rect": [
																						47.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-15", 
																					"patching_rect": [
																						731.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-16", 
																					"patching_rect": [
																						731.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 91", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-17", 
																					"patching_rect": [
																						731.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-18", 
																					"patching_rect": [
																						634.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-19", 
																					"patching_rect": [
																						634.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 90", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-20", 
																					"patching_rect": [
																						634.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-12", 
																					"patching_rect": [
																						535.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-13", 
																					"patching_rect": [
																						535.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 89", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-14", 
																					"patching_rect": [
																						535.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-9", 
																					"patching_rect": [
																						438.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-10", 
																					"patching_rect": [
																						438.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 88", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-11", 
																					"patching_rect": [
																						438.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-6", 
																					"patching_rect": [
																						341.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-7", 
																					"patching_rect": [
																						341.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 75", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-8", 
																					"patching_rect": [
																						341.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-3", 
																					"patching_rect": [
																						244.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-4", 
																					"patching_rect": [
																						244.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 74", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-5", 
																					"patching_rect": [
																						244.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-66", 
																					"patching_rect": [
																						147.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-65", 
																					"patching_rect": [
																						50.0, 
																						126.5, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-64", 
																					"patching_rect": [
																						50.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-60", 
																					"patching_rect": [
																						147.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 73", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-41", 
																					"patching_rect": [
																						147.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 72", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-90", 
																					"patching_rect": [
																						50.0, 
																						152.5, 
																						71.0, 
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
																					"id": "obj-22", 
																					"patching_rect": [
																						50.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																						147.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-24", 
																					"patching_rect": [
																						244.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-25", 
																					"patching_rect": [
																						341.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-26", 
																					"patching_rect": [
																						438.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-27", 
																					"patching_rect": [
																						535.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-28", 
																					"patching_rect": [
																						634.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-29", 
																					"patching_rect": [
																						731.0, 
																						40.0, 
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
																					"id": "obj-30", 
																					"patching_rect": [
																						385.0, 
																						232.5, 
																						25.0, 
																						25.0
																					]
																				}
																			}
																		], 
																		"default_fontface": 0, 
																		"gridonopen": 0, 
																		"rect": [
																			378.0, 
																			526.0, 
																			855.0, 
																			291.0
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
																						"obj-9", 
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
																						"obj-30", 
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
																						"obj-14", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-14", 
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
																						"obj-15", 
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
																						"obj-16", 
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
																						"obj-17", 
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
																						"obj-18", 
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
																						"obj-19", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-20", 
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
																						"obj-22", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-64", 
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
																						"obj-60", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-24", 
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
																						"obj-25", 
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
																						"obj-26", 
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
																						"obj-27", 
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
																						"obj-28", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-19", 
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
																						"obj-16", 
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
																						"obj-5", 
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
																						"obj-3", 
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
																						"obj-30", 
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
																						"obj-30", 
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
																						"obj-8", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-60", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-66", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-64", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-65", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-65", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-90", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-66", 
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
																						"obj-7", 
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
																						"obj-30", 
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
																						"obj-90", 
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
																	"text": "p midi map Pad3C", 
																	"numinlets": 8, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-13", 
																	"patching_rect": [
																		514.75, 
																		507.0, 
																		113.5, 
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
																					"text": "2b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-36", 
																					"patching_rect": [
																						717.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-35", 
																					"patching_rect": [
																						620.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-34", 
																					"patching_rect": [
																						521.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-33", 
																					"patching_rect": [
																						424.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-32", 
																					"patching_rect": [
																						327.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-31", 
																					"patching_rect": [
																						230.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-21", 
																					"patching_rect": [
																						133.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-2", 
																					"patching_rect": [
																						47.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-15", 
																					"patching_rect": [
																						731.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-16", 
																					"patching_rect": [
																						731.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 87", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-17", 
																					"patching_rect": [
																						731.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-18", 
																					"patching_rect": [
																						634.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-19", 
																					"patching_rect": [
																						634.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 86", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-20", 
																					"patching_rect": [
																						634.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-12", 
																					"patching_rect": [
																						535.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-13", 
																					"patching_rect": [
																						535.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 85", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-14", 
																					"patching_rect": [
																						535.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-9", 
																					"patching_rect": [
																						438.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-10", 
																					"patching_rect": [
																						438.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 84", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-11", 
																					"patching_rect": [
																						438.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-6", 
																					"patching_rect": [
																						341.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-7", 
																					"patching_rect": [
																						341.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 71", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-8", 
																					"patching_rect": [
																						341.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-3", 
																					"patching_rect": [
																						244.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-4", 
																					"patching_rect": [
																						244.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 70", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-5", 
																					"patching_rect": [
																						244.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-66", 
																					"patching_rect": [
																						147.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-65", 
																					"patching_rect": [
																						50.0, 
																						126.5, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-64", 
																					"patching_rect": [
																						50.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-60", 
																					"patching_rect": [
																						147.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 69", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-41", 
																					"patching_rect": [
																						147.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 68", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-90", 
																					"patching_rect": [
																						50.0, 
																						152.5, 
																						71.0, 
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
																					"id": "obj-22", 
																					"patching_rect": [
																						50.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																						147.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-24", 
																					"patching_rect": [
																						244.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-25", 
																					"patching_rect": [
																						341.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-26", 
																					"patching_rect": [
																						438.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-27", 
																					"patching_rect": [
																						535.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-28", 
																					"patching_rect": [
																						634.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-29", 
																					"patching_rect": [
																						731.0, 
																						40.0, 
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
																					"id": "obj-30", 
																					"patching_rect": [
																						385.0, 
																						232.5, 
																						25.0, 
																						25.0
																					]
																				}
																			}
																		], 
																		"default_fontface": 0, 
																		"gridonopen": 0, 
																		"rect": [
																			378.0, 
																			526.0, 
																			855.0, 
																			291.0
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
																						"obj-9", 
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
																						"obj-30", 
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
																						"obj-14", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-14", 
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
																						"obj-15", 
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
																						"obj-16", 
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
																						"obj-17", 
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
																						"obj-18", 
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
																						"obj-19", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-20", 
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
																						"obj-22", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-64", 
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
																						"obj-60", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-24", 
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
																						"obj-25", 
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
																						"obj-26", 
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
																						"obj-27", 
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
																						"obj-28", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-19", 
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
																						"obj-16", 
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
																						"obj-5", 
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
																						"obj-3", 
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
																						"obj-30", 
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
																						"obj-30", 
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
																						"obj-8", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-60", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-66", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-64", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-65", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-65", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-90", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-66", 
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
																						"obj-7", 
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
																						"obj-30", 
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
																						"obj-90", 
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
																	"text": "p midi map Pad3B", 
																	"numinlets": 8, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-14", 
																	"patching_rect": [
																		401.25, 
																		507.0, 
																		113.5, 
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
																					"text": "2b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-36", 
																					"patching_rect": [
																						717.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-35", 
																					"patching_rect": [
																						620.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-34", 
																					"patching_rect": [
																						521.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-33", 
																					"patching_rect": [
																						424.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-32", 
																					"patching_rect": [
																						327.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-31", 
																					"patching_rect": [
																						230.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-21", 
																					"patching_rect": [
																						133.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-2", 
																					"patching_rect": [
																						47.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-15", 
																					"patching_rect": [
																						731.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-16", 
																					"patching_rect": [
																						731.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 83", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-17", 
																					"patching_rect": [
																						731.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-18", 
																					"patching_rect": [
																						634.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-19", 
																					"patching_rect": [
																						634.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 82", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-20", 
																					"patching_rect": [
																						634.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-12", 
																					"patching_rect": [
																						535.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-13", 
																					"patching_rect": [
																						535.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 81", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-14", 
																					"patching_rect": [
																						535.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-9", 
																					"patching_rect": [
																						438.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-10", 
																					"patching_rect": [
																						438.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 80", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-11", 
																					"patching_rect": [
																						438.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-6", 
																					"patching_rect": [
																						341.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-7", 
																					"patching_rect": [
																						341.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 67", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-8", 
																					"patching_rect": [
																						341.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-3", 
																					"patching_rect": [
																						244.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-4", 
																					"patching_rect": [
																						244.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 66", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-5", 
																					"patching_rect": [
																						244.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-66", 
																					"patching_rect": [
																						147.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-65", 
																					"patching_rect": [
																						50.0, 
																						126.5, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-64", 
																					"patching_rect": [
																						50.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-60", 
																					"patching_rect": [
																						147.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 65", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-41", 
																					"patching_rect": [
																						147.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 64", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-90", 
																					"patching_rect": [
																						50.0, 
																						152.5, 
																						71.0, 
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
																					"id": "obj-22", 
																					"patching_rect": [
																						50.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																						147.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-24", 
																					"patching_rect": [
																						244.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-25", 
																					"patching_rect": [
																						341.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-26", 
																					"patching_rect": [
																						438.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-27", 
																					"patching_rect": [
																						535.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-28", 
																					"patching_rect": [
																						634.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-29", 
																					"patching_rect": [
																						731.0, 
																						40.0, 
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
																					"id": "obj-30", 
																					"patching_rect": [
																						385.0, 
																						232.5, 
																						25.0, 
																						25.0
																					]
																				}
																			}
																		], 
																		"default_fontface": 0, 
																		"gridonopen": 0, 
																		"rect": [
																			378.0, 
																			526.0, 
																			855.0, 
																			291.0
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
																						"obj-9", 
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
																						"obj-30", 
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
																						"obj-14", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-14", 
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
																						"obj-15", 
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
																						"obj-16", 
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
																						"obj-17", 
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
																						"obj-18", 
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
																						"obj-19", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-20", 
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
																						"obj-22", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-64", 
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
																						"obj-60", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-24", 
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
																						"obj-25", 
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
																						"obj-26", 
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
																						"obj-27", 
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
																						"obj-28", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-19", 
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
																						"obj-16", 
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
																						"obj-5", 
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
																						"obj-3", 
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
																						"obj-30", 
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
																						"obj-30", 
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
																						"obj-8", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-60", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-66", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-64", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-65", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-65", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-90", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-66", 
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
																						"obj-7", 
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
																						"obj-30", 
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
																						"obj-90", 
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
																	"text": "p midi map Pad3A", 
																	"numinlets": 8, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-112", 
																	"patching_rect": [
																		287.25, 
																		507.0, 
																		113.5, 
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
																					"text": "2b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-36", 
																					"patching_rect": [
																						717.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-35", 
																					"patching_rect": [
																						620.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-34", 
																					"patching_rect": [
																						521.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-33", 
																					"patching_rect": [
																						424.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-32", 
																					"patching_rect": [
																						327.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-31", 
																					"patching_rect": [
																						230.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-21", 
																					"patching_rect": [
																						133.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-2", 
																					"patching_rect": [
																						47.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-15", 
																					"patching_rect": [
																						731.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-16", 
																					"patching_rect": [
																						731.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 63", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-17", 
																					"patching_rect": [
																						731.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-18", 
																					"patching_rect": [
																						634.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-19", 
																					"patching_rect": [
																						634.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 62", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-20", 
																					"patching_rect": [
																						634.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-12", 
																					"patching_rect": [
																						535.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-13", 
																					"patching_rect": [
																						535.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 61", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-14", 
																					"patching_rect": [
																						535.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-9", 
																					"patching_rect": [
																						438.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-10", 
																					"patching_rect": [
																						438.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 60", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-11", 
																					"patching_rect": [
																						438.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-6", 
																					"patching_rect": [
																						341.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-7", 
																					"patching_rect": [
																						341.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 47", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-8", 
																					"patching_rect": [
																						341.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-3", 
																					"patching_rect": [
																						244.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-4", 
																					"patching_rect": [
																						244.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 46", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-5", 
																					"patching_rect": [
																						244.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-66", 
																					"patching_rect": [
																						147.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-65", 
																					"patching_rect": [
																						50.0, 
																						126.5, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-64", 
																					"patching_rect": [
																						50.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-60", 
																					"patching_rect": [
																						147.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 45", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-41", 
																					"patching_rect": [
																						147.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 44", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-90", 
																					"patching_rect": [
																						50.0, 
																						152.5, 
																						71.0, 
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
																					"id": "obj-22", 
																					"patching_rect": [
																						50.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																						147.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-24", 
																					"patching_rect": [
																						244.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-25", 
																					"patching_rect": [
																						341.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-26", 
																					"patching_rect": [
																						438.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-27", 
																					"patching_rect": [
																						535.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-28", 
																					"patching_rect": [
																						634.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-29", 
																					"patching_rect": [
																						731.0, 
																						40.0, 
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
																					"id": "obj-30", 
																					"patching_rect": [
																						385.0, 
																						232.5, 
																						25.0, 
																						25.0
																					]
																				}
																			}
																		], 
																		"default_fontface": 0, 
																		"gridonopen": 0, 
																		"rect": [
																			378.0, 
																			526.0, 
																			855.0, 
																			291.0
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
																						"obj-9", 
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
																						"obj-30", 
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
																						"obj-14", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-14", 
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
																						"obj-15", 
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
																						"obj-16", 
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
																						"obj-17", 
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
																						"obj-18", 
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
																						"obj-19", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-20", 
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
																						"obj-22", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-64", 
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
																						"obj-60", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-24", 
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
																						"obj-25", 
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
																						"obj-26", 
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
																						"obj-27", 
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
																						"obj-28", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-19", 
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
																						"obj-16", 
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
																						"obj-5", 
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
																						"obj-3", 
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
																						"obj-30", 
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
																						"obj-30", 
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
																						"obj-8", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-60", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-66", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-64", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-65", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-65", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-90", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-66", 
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
																						"obj-7", 
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
																						"obj-30", 
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
																						"obj-90", 
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
																	"text": "p midi map Pad2D", 
																	"numinlets": 8, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-113", 
																	"patching_rect": [
																		628.25, 
																		540.0, 
																		113.5, 
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
																					"text": "2b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-36", 
																					"patching_rect": [
																						717.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-35", 
																					"patching_rect": [
																						620.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-34", 
																					"patching_rect": [
																						521.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-33", 
																					"patching_rect": [
																						424.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-32", 
																					"patching_rect": [
																						327.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-31", 
																					"patching_rect": [
																						230.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-21", 
																					"patching_rect": [
																						133.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-2", 
																					"patching_rect": [
																						47.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-15", 
																					"patching_rect": [
																						731.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-16", 
																					"patching_rect": [
																						731.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 59", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-17", 
																					"patching_rect": [
																						731.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-18", 
																					"patching_rect": [
																						634.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-19", 
																					"patching_rect": [
																						634.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 58", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-20", 
																					"patching_rect": [
																						634.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-12", 
																					"patching_rect": [
																						535.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-13", 
																					"patching_rect": [
																						535.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 57", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-14", 
																					"patching_rect": [
																						535.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-9", 
																					"patching_rect": [
																						438.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-10", 
																					"patching_rect": [
																						438.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 56", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-11", 
																					"patching_rect": [
																						438.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-6", 
																					"patching_rect": [
																						341.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-7", 
																					"patching_rect": [
																						341.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 43", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-8", 
																					"patching_rect": [
																						341.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-3", 
																					"patching_rect": [
																						244.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-4", 
																					"patching_rect": [
																						244.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 42", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-5", 
																					"patching_rect": [
																						244.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-66", 
																					"patching_rect": [
																						147.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-65", 
																					"patching_rect": [
																						50.0, 
																						126.5, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-64", 
																					"patching_rect": [
																						50.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-60", 
																					"patching_rect": [
																						147.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 41", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-41", 
																					"patching_rect": [
																						147.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 40", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-90", 
																					"patching_rect": [
																						50.0, 
																						152.5, 
																						71.0, 
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
																					"id": "obj-22", 
																					"patching_rect": [
																						50.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																						147.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-24", 
																					"patching_rect": [
																						244.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-25", 
																					"patching_rect": [
																						341.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-26", 
																					"patching_rect": [
																						438.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-27", 
																					"patching_rect": [
																						535.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-28", 
																					"patching_rect": [
																						634.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-29", 
																					"patching_rect": [
																						731.0, 
																						40.0, 
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
																					"id": "obj-30", 
																					"patching_rect": [
																						385.0, 
																						232.5, 
																						25.0, 
																						25.0
																					]
																				}
																			}
																		], 
																		"default_fontface": 0, 
																		"gridonopen": 0, 
																		"rect": [
																			378.0, 
																			526.0, 
																			855.0, 
																			291.0
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
																						"obj-9", 
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
																						"obj-30", 
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
																						"obj-14", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-14", 
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
																						"obj-15", 
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
																						"obj-16", 
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
																						"obj-17", 
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
																						"obj-18", 
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
																						"obj-19", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-20", 
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
																						"obj-22", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-64", 
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
																						"obj-60", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-24", 
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
																						"obj-25", 
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
																						"obj-26", 
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
																						"obj-27", 
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
																						"obj-28", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-19", 
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
																						"obj-16", 
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
																						"obj-5", 
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
																						"obj-3", 
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
																						"obj-30", 
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
																						"obj-30", 
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
																						"obj-8", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-60", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-66", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-64", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-65", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-65", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-90", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-66", 
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
																						"obj-7", 
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
																						"obj-30", 
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
																						"obj-90", 
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
																	"text": "p midi map Pad2C", 
																	"numinlets": 8, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-10", 
																	"patching_rect": [
																		515.5, 
																		540.0, 
																		113.5, 
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
																					"text": "2b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-36", 
																					"patching_rect": [
																						717.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-35", 
																					"patching_rect": [
																						620.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-34", 
																					"patching_rect": [
																						521.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-33", 
																					"patching_rect": [
																						424.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-32", 
																					"patching_rect": [
																						327.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-31", 
																					"patching_rect": [
																						230.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-21", 
																					"patching_rect": [
																						133.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-2", 
																					"patching_rect": [
																						47.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-15", 
																					"patching_rect": [
																						731.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-16", 
																					"patching_rect": [
																						731.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 55", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-17", 
																					"patching_rect": [
																						731.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-18", 
																					"patching_rect": [
																						634.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-19", 
																					"patching_rect": [
																						634.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 54", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-20", 
																					"patching_rect": [
																						634.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-12", 
																					"patching_rect": [
																						535.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-13", 
																					"patching_rect": [
																						535.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 53", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-14", 
																					"patching_rect": [
																						535.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-9", 
																					"patching_rect": [
																						438.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-10", 
																					"patching_rect": [
																						438.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 52", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-11", 
																					"patching_rect": [
																						438.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-6", 
																					"patching_rect": [
																						341.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-7", 
																					"patching_rect": [
																						341.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 39", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-8", 
																					"patching_rect": [
																						341.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-3", 
																					"patching_rect": [
																						244.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-4", 
																					"patching_rect": [
																						244.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 38", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-5", 
																					"patching_rect": [
																						244.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-66", 
																					"patching_rect": [
																						147.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-65", 
																					"patching_rect": [
																						50.0, 
																						126.5, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-64", 
																					"patching_rect": [
																						50.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-60", 
																					"patching_rect": [
																						147.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 37", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-41", 
																					"patching_rect": [
																						147.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 36", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-90", 
																					"patching_rect": [
																						50.0, 
																						152.5, 
																						71.0, 
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
																					"id": "obj-22", 
																					"patching_rect": [
																						50.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																						147.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-24", 
																					"patching_rect": [
																						244.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-25", 
																					"patching_rect": [
																						341.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-26", 
																					"patching_rect": [
																						438.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-27", 
																					"patching_rect": [
																						535.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-28", 
																					"patching_rect": [
																						634.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-29", 
																					"patching_rect": [
																						731.0, 
																						40.0, 
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
																					"id": "obj-30", 
																					"patching_rect": [
																						385.0, 
																						232.5, 
																						25.0, 
																						25.0
																					]
																				}
																			}
																		], 
																		"default_fontface": 0, 
																		"gridonopen": 0, 
																		"rect": [
																			378.0, 
																			526.0, 
																			855.0, 
																			291.0
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
																						"obj-9", 
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
																						"obj-30", 
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
																						"obj-14", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-14", 
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
																						"obj-15", 
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
																						"obj-16", 
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
																						"obj-17", 
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
																						"obj-18", 
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
																						"obj-19", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-20", 
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
																						"obj-22", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-64", 
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
																						"obj-60", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-24", 
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
																						"obj-25", 
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
																						"obj-26", 
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
																						"obj-27", 
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
																						"obj-28", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-19", 
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
																						"obj-16", 
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
																						"obj-5", 
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
																						"obj-3", 
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
																						"obj-30", 
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
																						"obj-30", 
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
																						"obj-8", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-60", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-66", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-64", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-65", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-65", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-90", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-66", 
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
																						"obj-7", 
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
																						"obj-30", 
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
																						"obj-90", 
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
																	"text": "p midi map Pad2B", 
																	"numinlets": 8, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-9", 
																	"patching_rect": [
																		403.5, 
																		540.0, 
																		113.5, 
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
																					"text": "2b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-36", 
																					"patching_rect": [
																						717.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-35", 
																					"patching_rect": [
																						620.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-34", 
																					"patching_rect": [
																						521.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-33", 
																					"patching_rect": [
																						424.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-32", 
																					"patching_rect": [
																						327.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-31", 
																					"patching_rect": [
																						230.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-21", 
																					"patching_rect": [
																						133.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-2", 
																					"patching_rect": [
																						47.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-15", 
																					"patching_rect": [
																						731.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-16", 
																					"patching_rect": [
																						731.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 51", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-17", 
																					"patching_rect": [
																						731.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-18", 
																					"patching_rect": [
																						634.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-19", 
																					"patching_rect": [
																						634.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 50", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-20", 
																					"patching_rect": [
																						634.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-12", 
																					"patching_rect": [
																						535.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-13", 
																					"patching_rect": [
																						535.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 49", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-14", 
																					"patching_rect": [
																						535.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-9", 
																					"patching_rect": [
																						438.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-10", 
																					"patching_rect": [
																						438.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 48", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-11", 
																					"patching_rect": [
																						438.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-6", 
																					"patching_rect": [
																						341.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-7", 
																					"patching_rect": [
																						341.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 35", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-8", 
																					"patching_rect": [
																						341.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-3", 
																					"patching_rect": [
																						244.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-4", 
																					"patching_rect": [
																						244.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 34", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-5", 
																					"patching_rect": [
																						244.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-66", 
																					"patching_rect": [
																						147.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-65", 
																					"patching_rect": [
																						50.0, 
																						126.5, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-64", 
																					"patching_rect": [
																						50.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-60", 
																					"patching_rect": [
																						147.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 33", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-41", 
																					"patching_rect": [
																						147.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 32", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-90", 
																					"patching_rect": [
																						50.0, 
																						152.5, 
																						71.0, 
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
																					"id": "obj-22", 
																					"patching_rect": [
																						50.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																						147.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-24", 
																					"patching_rect": [
																						244.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-25", 
																					"patching_rect": [
																						341.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-26", 
																					"patching_rect": [
																						438.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-27", 
																					"patching_rect": [
																						535.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-28", 
																					"patching_rect": [
																						634.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-29", 
																					"patching_rect": [
																						731.0, 
																						40.0, 
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
																					"id": "obj-30", 
																					"patching_rect": [
																						385.0, 
																						232.5, 
																						25.0, 
																						25.0
																					]
																				}
																			}
																		], 
																		"default_fontface": 0, 
																		"gridonopen": 0, 
																		"rect": [
																			378.0, 
																			526.0, 
																			855.0, 
																			291.0
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
																						"obj-9", 
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
																						"obj-30", 
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
																						"obj-14", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-14", 
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
																						"obj-15", 
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
																						"obj-16", 
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
																						"obj-17", 
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
																						"obj-18", 
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
																						"obj-19", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-20", 
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
																						"obj-22", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-64", 
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
																						"obj-60", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-24", 
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
																						"obj-25", 
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
																						"obj-26", 
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
																						"obj-27", 
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
																						"obj-28", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-19", 
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
																						"obj-16", 
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
																						"obj-5", 
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
																						"obj-3", 
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
																						"obj-30", 
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
																						"obj-30", 
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
																						"obj-8", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-60", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-66", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-64", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-65", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-65", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-90", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-66", 
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
																						"obj-7", 
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
																						"obj-30", 
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
																						"obj-90", 
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
																	"text": "p midi map Pad2A", 
																	"numinlets": 8, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-116", 
																	"patching_rect": [
																		289.5, 
																		540.0, 
																		113.5, 
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
																					"text": "2b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-36", 
																					"patching_rect": [
																						717.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-35", 
																					"patching_rect": [
																						620.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-34", 
																					"patching_rect": [
																						521.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-33", 
																					"patching_rect": [
																						424.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-32", 
																					"patching_rect": [
																						327.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-31", 
																					"patching_rect": [
																						230.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-21", 
																					"patching_rect": [
																						133.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-2", 
																					"patching_rect": [
																						47.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-15", 
																					"patching_rect": [
																						731.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-16", 
																					"patching_rect": [
																						731.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 31", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-17", 
																					"patching_rect": [
																						731.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-18", 
																					"patching_rect": [
																						634.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-19", 
																					"patching_rect": [
																						634.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 30", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-20", 
																					"patching_rect": [
																						634.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-12", 
																					"patching_rect": [
																						535.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-13", 
																					"patching_rect": [
																						535.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 29", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-14", 
																					"patching_rect": [
																						535.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-9", 
																					"patching_rect": [
																						438.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-10", 
																					"patching_rect": [
																						438.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 28", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-11", 
																					"patching_rect": [
																						438.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-6", 
																					"patching_rect": [
																						341.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-7", 
																					"patching_rect": [
																						341.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 15", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-8", 
																					"patching_rect": [
																						341.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-3", 
																					"patching_rect": [
																						244.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-4", 
																					"patching_rect": [
																						244.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 14", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-5", 
																					"patching_rect": [
																						244.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-66", 
																					"patching_rect": [
																						147.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-65", 
																					"patching_rect": [
																						50.0, 
																						126.5, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-64", 
																					"patching_rect": [
																						50.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-60", 
																					"patching_rect": [
																						147.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 13", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-41", 
																					"patching_rect": [
																						147.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 12", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-90", 
																					"patching_rect": [
																						50.0, 
																						152.5, 
																						71.0, 
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
																					"id": "obj-22", 
																					"patching_rect": [
																						50.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																						147.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-24", 
																					"patching_rect": [
																						244.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-25", 
																					"patching_rect": [
																						341.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-26", 
																					"patching_rect": [
																						438.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-27", 
																					"patching_rect": [
																						535.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-28", 
																					"patching_rect": [
																						634.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-29", 
																					"patching_rect": [
																						731.0, 
																						40.0, 
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
																					"id": "obj-30", 
																					"patching_rect": [
																						385.0, 
																						232.5, 
																						25.0, 
																						25.0
																					]
																				}
																			}
																		], 
																		"default_fontface": 0, 
																		"gridonopen": 0, 
																		"rect": [
																			378.0, 
																			526.0, 
																			855.0, 
																			291.0
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
																						"obj-9", 
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
																						"obj-30", 
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
																						"obj-14", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-14", 
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
																						"obj-15", 
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
																						"obj-16", 
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
																						"obj-17", 
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
																						"obj-18", 
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
																						"obj-19", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-20", 
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
																						"obj-22", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-64", 
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
																						"obj-60", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-24", 
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
																						"obj-25", 
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
																						"obj-26", 
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
																						"obj-27", 
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
																						"obj-28", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-19", 
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
																						"obj-16", 
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
																						"obj-5", 
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
																						"obj-3", 
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
																						"obj-30", 
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
																						"obj-30", 
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
																						"obj-8", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-60", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-66", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-64", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-65", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-65", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-90", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-66", 
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
																						"obj-7", 
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
																						"obj-30", 
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
																						"obj-90", 
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
																	"text": "p midi map Pad1D", 
																	"numinlets": 8, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-117", 
																	"patching_rect": [
																		628.25, 
																		568.5, 
																		113.5, 
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
																					"text": "2b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-36", 
																					"patching_rect": [
																						717.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-35", 
																					"patching_rect": [
																						620.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-34", 
																					"patching_rect": [
																						521.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "2a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-33", 
																					"patching_rect": [
																						424.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-32", 
																					"patching_rect": [
																						327.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1b green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-31", 
																					"patching_rect": [
																						230.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a red", 
																					"numinlets": 1, 
																					"numoutlets": 0, 
																					"maxclass": "comment", 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-21", 
																					"patching_rect": [
																						133.0, 
																						20.0, 
																						53.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "1a green", 
																					"numinlets": 1, 
																					"maxclass": "comment", 
																					"numoutlets": 0, 
																					"linecount": 2, 
																					"frgb": 0.0, 
																					"fontsize": 12.0, 
																					"id": "obj-2", 
																					"patching_rect": [
																						47.0, 
																						7.0, 
																						53.0, 
																						33.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-15", 
																					"patching_rect": [
																						731.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-16", 
																					"patching_rect": [
																						731.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 27", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-17", 
																					"patching_rect": [
																						731.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-18", 
																					"patching_rect": [
																						634.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-19", 
																					"patching_rect": [
																						634.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 26", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-20", 
																					"patching_rect": [
																						634.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-12", 
																					"patching_rect": [
																						535.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-13", 
																					"patching_rect": [
																						535.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 25", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-14", 
																					"patching_rect": [
																						535.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-9", 
																					"patching_rect": [
																						438.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-10", 
																					"patching_rect": [
																						438.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 24", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-11", 
																					"patching_rect": [
																						438.0, 
																						147.0, 
																						71.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-6", 
																					"patching_rect": [
																						341.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-7", 
																					"patching_rect": [
																						341.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 7", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-8", 
																					"patching_rect": [
																						341.0, 
																						147.0, 
																						65.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-3", 
																					"patching_rect": [
																						244.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-4", 
																					"patching_rect": [
																						244.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 6", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-5", 
																					"patching_rect": [
																						244.0, 
																						147.0, 
																						65.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-66", 
																					"patching_rect": [
																						147.0, 
																						121.0, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "change", 
																					"numinlets": 1, 
																					"numoutlets": 3, 
																					"outlettype": [
																						"", 
																						"int", 
																						"int"
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-65", 
																					"patching_rect": [
																						50.0, 
																						126.5, 
																						50.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-64", 
																					"patching_rect": [
																						50.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "zmap 0. 1 0 127", 
																					"numinlets": 5, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-60", 
																					"patching_rect": [
																						147.0, 
																						100.0, 
																						97.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 5", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-41", 
																					"patching_rect": [
																						147.0, 
																						147.0, 
																						65.0, 
																						20.0
																					]
																				}
																			}, 
																			{
																				"box": {
																					"fontname": "Arial", 
																					"text": "prepend 4", 
																					"numinlets": 1, 
																					"numoutlets": 1, 
																					"outlettype": [
																						""
																					], 
																					"maxclass": "newobj", 
																					"fontsize": 12.0, 
																					"id": "obj-90", 
																					"patching_rect": [
																						50.0, 
																						152.5, 
																						65.0, 
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
																					"id": "obj-22", 
																					"patching_rect": [
																						50.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																						147.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-24", 
																					"patching_rect": [
																						244.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-25", 
																					"patching_rect": [
																						341.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-26", 
																					"patching_rect": [
																						438.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-27", 
																					"patching_rect": [
																						535.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-28", 
																					"patching_rect": [
																						634.0, 
																						40.0, 
																						25.0, 
																						25.0
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
																					"id": "obj-29", 
																					"patching_rect": [
																						731.0, 
																						40.0, 
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
																					"id": "obj-30", 
																					"patching_rect": [
																						385.0, 
																						232.5, 
																						25.0, 
																						25.0
																					]
																				}
																			}
																		], 
																		"default_fontface": 0, 
																		"gridonopen": 0, 
																		"rect": [
																			378.0, 
																			526.0, 
																			855.0, 
																			291.0
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
																						"obj-9", 
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
																						"obj-30", 
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
																						"obj-14", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-14", 
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
																						"obj-15", 
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
																						"obj-16", 
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
																						"obj-17", 
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
																						"obj-18", 
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
																						"obj-19", 
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
																					"disabled": 0, 
																					"source": [
																						"obj-20", 
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
																						"obj-22", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-64", 
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
																						"obj-60", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-24", 
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
																						"obj-25", 
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
																						"obj-26", 
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
																						"obj-27", 
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
																						"obj-28", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-19", 
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
																						"obj-16", 
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
																						"obj-5", 
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
																						"obj-3", 
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
																						"obj-30", 
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
																						"obj-30", 
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
																						"obj-8", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-60", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-66", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-64", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-65", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-65", 
																						0
																					], 
																					"hidden": 0, 
																					"destination": [
																						"obj-90", 
																						0
																					]
																				}
																			}, 
																			{
																				"patchline": {
																					"disabled": 0, 
																					"source": [
																						"obj-66", 
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
																						"obj-7", 
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
																						"obj-30", 
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
																						"obj-90", 
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
																	"text": "p midi map Pad1C", 
																	"numinlets": 8, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-118", 
																	"patching_rect": [
																		515.5, 
																		568.5, 
																		113.5, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-25", 
																	"patching_rect": [
																		432.375, 
																		205.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-26", 
																	"patching_rect": [
																		304.375, 
																		205.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-27", 
																	"patching_rect": [
																		175.75, 
																		205.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-28", 
																	"patching_rect": [
																		47.75, 
																		205.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-29", 
																	"patching_rect": [
																		432.375, 
																		236.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-30", 
																	"patching_rect": [
																		304.375, 
																		236.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-31", 
																	"patching_rect": [
																		175.75, 
																		236.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-32", 
																	"patching_rect": [
																		47.75, 
																		236.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-21", 
																	"patching_rect": [
																		432.375, 
																		266.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-22", 
																	"patching_rect": [
																		304.375, 
																		266.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-23", 
																	"patching_rect": [
																		175.75, 
																		266.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-24", 
																	"patching_rect": [
																		47.75, 
																		266.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-19", 
																	"patching_rect": [
																		432.375, 
																		296.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-20", 
																	"patching_rect": [
																		304.375, 
																		296.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-18", 
																	"patching_rect": [
																		175.75, 
																		296.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /sw /se /nw /ne", 
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
																	"fontsize": 12.0, 
																	"id": "obj-17", 
																	"patching_rect": [
																		47.75, 
																		296.0, 
																		131.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "o.route /a/1 /b/1 /c/1 /d/1 /a/2 /b/2 /c/2 /d/2 /a/3 /b/3 /c/3 /d/3 /a/4 /b/4 /c/4 /d/4", 
																	"numinlets": 17, 
																	"numoutlets": 17, 
																	"outlettype": [
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"", 
																		"FullPacket"
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-70", 
																	"patching_rect": [
																		47.75, 
																		137.0, 
																		419.0, 
																		20.0
																	]
																}
															}
														], 
														"default_fontface": 0, 
														"gridonopen": 0, 
														"rect": [
															122.0, 
															202.0, 
															1318.0, 
															662.0
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
																		"obj-59", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-104", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-59", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-106", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-59", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-108", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-59", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-109", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-59", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-110", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-59", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-111", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-59", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-112", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-59", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-113", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-59", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-116", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-59", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-117", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-59", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-118", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-59", 
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
																		"obj-59", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-137", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-59", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-14", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-59", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-17", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-137", 
																		6
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-17", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-137", 
																		4
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
																		"obj-137", 
																		2
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-17", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-137", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-18", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-104", 
																		6
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-18", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-104", 
																		4
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-18", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-104", 
																		2
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-18", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-104", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-19", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-117", 
																		6
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-19", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-117", 
																		4
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
																		"obj-117", 
																		2
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
																		"obj-117", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-20", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-118", 
																		6
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-20", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-118", 
																		4
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-20", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-118", 
																		2
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
																		"obj-118", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-21", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-113", 
																		6
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-21", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-113", 
																		4
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-21", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-113", 
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
																		"obj-113", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-22", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-10", 
																		6
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-22", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-10", 
																		4
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-22", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-10", 
																		2
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
																		"obj-10", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-23", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-9", 
																		6
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-23", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-9", 
																		4
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-23", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-9", 
																		2
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
																		"obj-9", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-24", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-116", 
																		6
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-24", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-116", 
																		4
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
																		"obj-116", 
																		2
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-24", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-116", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-25", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-106", 
																		6
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-25", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-106", 
																		4
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-25", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-106", 
																		2
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
																		"obj-106", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-26", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-108", 
																		6
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-26", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-108", 
																		4
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-26", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-108", 
																		2
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-26", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-108", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-27", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-109", 
																		6
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-27", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-109", 
																		4
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-27", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-109", 
																		2
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
																		"obj-109", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-28", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-110", 
																		6
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-28", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-110", 
																		4
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-28", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-110", 
																		2
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
																		"obj-110", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-29", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-111", 
																		6
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-29", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-111", 
																		4
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-29", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-111", 
																		2
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
																		"obj-111", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-30", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-13", 
																		6
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-30", 
																		2
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
																	"disabled": 0, 
																	"source": [
																		"obj-30", 
																		1
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
																		"obj-30", 
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
																		"obj-31", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-14", 
																		6
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-31", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-14", 
																		4
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-31", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-14", 
																		2
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
																		"obj-14", 
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
																	"hidden": 0, 
																	"destination": [
																		"obj-112", 
																		6
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
																		"obj-112", 
																		4
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
																		"obj-112", 
																		2
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
																		"obj-112", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-33", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-106", 
																		7
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-33", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-106", 
																		5
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-33", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-106", 
																		3
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
																		"obj-106", 
																		1
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-34", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-108", 
																		7
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-34", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-108", 
																		5
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-34", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-108", 
																		3
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
																		"obj-108", 
																		1
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-35", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-109", 
																		7
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-35", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-109", 
																		5
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-35", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-109", 
																		3
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
																		"obj-109", 
																		1
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-36", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-110", 
																		7
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-36", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-110", 
																		5
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-36", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-110", 
																		3
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
																		"obj-110", 
																		1
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-37", 
																		4
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-111", 
																		7
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-37", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-111", 
																		5
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-37", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-111", 
																		3
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
																		"obj-111", 
																		1
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-38", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-13", 
																		7
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-38", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-13", 
																		5
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-38", 
																		1
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
																		"obj-38", 
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
																	"disabled": 0, 
																	"source": [
																		"obj-39", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-14", 
																		7
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-39", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-14", 
																		5
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-39", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-14", 
																		3
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
																		"obj-14", 
																		1
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-40", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-112", 
																		7
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-40", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-112", 
																		5
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-40", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-112", 
																		3
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
																		"obj-112", 
																		1
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-41", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-113", 
																		7
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-41", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-113", 
																		5
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-41", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-113", 
																		3
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
																		"obj-113", 
																		1
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-42", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-10", 
																		7
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-42", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-10", 
																		5
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-42", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-10", 
																		3
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
																		"obj-10", 
																		1
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-44", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-9", 
																		7
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-44", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-9", 
																		5
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-44", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-9", 
																		3
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
																		"obj-9", 
																		1
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-45", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-116", 
																		7
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-45", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-116", 
																		5
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-45", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-116", 
																		3
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-45", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-116", 
																		1
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-46", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-117", 
																		7
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-46", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-117", 
																		5
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-46", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-117", 
																		3
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-46", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-117", 
																		1
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-47", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-118", 
																		7
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-47", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-118", 
																		5
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-47", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-118", 
																		3
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-47", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-118", 
																		1
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-48", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-104", 
																		7
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-48", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-104", 
																		5
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-48", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-104", 
																		3
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-48", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-104", 
																		1
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-49", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-137", 
																		7
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-49", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-137", 
																		5
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-49", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-137", 
																		3
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-49", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-137", 
																		1
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-50", 
																		15
																	], 
																	"hidden": 0, 
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
																		"obj-50", 
																		14
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
																		"obj-50", 
																		13
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
																		"obj-50", 
																		12
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
																		"obj-50", 
																		11
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
																		"obj-50", 
																		10
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
																		"obj-50", 
																		9
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
																		"obj-50", 
																		8
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
																		"obj-50", 
																		7
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
																		"obj-50", 
																		6
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
																		"obj-50", 
																		5
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
																		"obj-50", 
																		4
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-45", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-50", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-46", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-50", 
																		2
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-47", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-50", 
																		1
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-48", 
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
																		"obj-49", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-53", 
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
																		"obj-58", 
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
																		"obj-70", 
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
																		"obj-70", 
																		1
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
																	"disabled": 0, 
																	"source": [
																		"obj-70", 
																		3
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-19", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-70", 
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
																		"obj-70", 
																		7
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
																		"obj-70", 
																		6
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
																		"obj-70", 
																		5
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
																		"obj-70", 
																		4
																	], 
																	"hidden": 0, 
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
																		"obj-70", 
																		15
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
																	"disabled": 0, 
																	"source": [
																		"obj-70", 
																		14
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-26", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-70", 
																		13
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
																		"obj-70", 
																		12
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
																		"obj-70", 
																		11
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
																		"obj-70", 
																		10
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
																		"obj-70", 
																		9
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
																	"disabled": 0, 
																	"source": [
																		"obj-70", 
																		8
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
																		"obj-9", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-59", 
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
													"text": "p o.route_cont.", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-29", 
													"patching_rect": [
														50.0, 
														129.483093, 
														91.0, 
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
													"id": "obj-78", 
													"patching_rect": [
														50.0, 
														40.0, 
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
													"id": "obj-79", 
													"patching_rect": [
														50.0, 
														265.483093, 
														25.0, 
														25.0
													]
												}
											}
										], 
										"default_fontface": 0, 
										"gridonopen": 0, 
										"rect": [
											153.0, 
											216.0, 
											640.0, 
											480.0
										], 
										"lines": [
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-29", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-79", 
														0
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
														"obj-29", 
														1
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
														"obj-29", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-78", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-62", 
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
									"text": "p pad corners", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-81", 
									"patching_rect": [
										327.125, 
										436.0, 
										85.0, 
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
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "slider", 
													"parameter_enable": 0, 
													"id": "obj-8", 
													"patching_rect": [
														259.0, 
														40.0, 
														20.0, 
														140.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "/ 127.", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														"float"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-18", 
													"patching_rect": [
														338.0, 
														100.0, 
														40.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "/slider/a : 0.559055,\n/controller : 1", 
													"numinlets": 2, 
													"linecount": 2, 
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
														65.0, 
														401.0, 
														150.0, 
														33.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"numinlets": 1, 
													"numoutlets": 2, 
													"outlettype": [
														"float", 
														"bang"
													], 
													"maxclass": "flonum", 
													"fontsize": 12.0, 
													"parameter_enable": 0, 
													"id": "obj-6", 
													"patching_rect": [
														479.0, 
														63.0, 
														50.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "if(bound(/slider/a), /controller = 1),\nif(bound(/slider/b), /controller = 2),\nif(bound(/slider/c), /controller = 3),\nif(bound(/slider/c), /controller = 4),\nif(bound(/slider/1), /controller = 8),\nif(bound(/slider/2), /controller = 9),\nif(bound(/slider/3), /controller = 10),\nif(bound(/slider/4), /controller = 11),", 
													"numinlets": 1, 
													"linecount": 8, 
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
													"id": "obj-4", 
													"patching_rect": [
														338.0, 
														193.0, 
														211.0, 
														128.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.route /fill", 
													"numinlets": 2, 
													"numoutlets": 2, 
													"outlettype": [
														"", 
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-3", 
													"patching_rect": [
														338.0, 
														160.0, 
														100.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.pack /fill/slider/a", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-1", 
													"patching_rect": [
														338.0, 
														132.0, 
														137.0, 
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
																	"text": "D", 
																	"numinlets": 1, 
																	"numoutlets": 0, 
																	"maxclass": "comment", 
																	"frgb": 0.0, 
																	"fontsize": 12.0, 
																	"id": "obj-21", 
																	"patching_rect": [
																		800.371887, 
																		100.0, 
																		28.085388, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "B", 
																	"numinlets": 1, 
																	"numoutlets": 0, 
																	"maxclass": "comment", 
																	"frgb": 0.0, 
																	"fontsize": 12.0, 
																	"id": "obj-20", 
																	"patching_rect": [
																		572.871887, 
																		100.0, 
																		28.085388, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "C", 
																	"numinlets": 1, 
																	"numoutlets": 0, 
																	"maxclass": "comment", 
																	"frgb": 0.0, 
																	"fontsize": 12.0, 
																	"id": "obj-18", 
																	"patching_rect": [
																		683.121887, 
																		100.0, 
																		28.085388, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "A", 
																	"numinlets": 1, 
																	"numoutlets": 0, 
																	"maxclass": "comment", 
																	"frgb": 0.0, 
																	"fontsize": 12.0, 
																	"id": "obj-17", 
																	"patching_rect": [
																		477.829224, 
																		100.0, 
																		28.085388, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "4", 
																	"numinlets": 1, 
																	"numoutlets": 0, 
																	"maxclass": "comment", 
																	"frgb": 0.0, 
																	"fontsize": 12.0, 
																	"id": "obj-13", 
																	"patching_rect": [
																		380.871887, 
																		100.0, 
																		28.085388, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "3", 
																	"numinlets": 1, 
																	"numoutlets": 0, 
																	"maxclass": "comment", 
																	"frgb": 0.0, 
																	"fontsize": 12.0, 
																	"id": "obj-12", 
																	"patching_rect": [
																		274.871918, 
																		100.0, 
																		28.085388, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "2", 
																	"numinlets": 1, 
																	"numoutlets": 0, 
																	"maxclass": "comment", 
																	"frgb": 0.0, 
																	"fontsize": 12.0, 
																	"id": "obj-9", 
																	"patching_rect": [
																		177.914612, 
																		100.0, 
																		28.085388, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "1", 
																	"numinlets": 1, 
																	"numoutlets": 0, 
																	"maxclass": "comment", 
																	"frgb": 0.0, 
																	"fontsize": 12.0, 
																	"id": "obj-7", 
																	"patching_rect": [
																		71.914612, 
																		100.0, 
																		28.085388, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "change", 
																	"numinlets": 1, 
																	"numoutlets": 3, 
																	"outlettype": [
																		"", 
																		"int", 
																		"int"
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-61", 
																	"patching_rect": [
																		789.414612, 
																		176.0, 
																		50.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "zmap 0. 1 0 127", 
																	"numinlets": 5, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-62", 
																	"patching_rect": [
																		789.414612, 
																		148.0, 
																		97.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "change", 
																	"numinlets": 1, 
																	"numoutlets": 3, 
																	"outlettype": [
																		"", 
																		"int", 
																		"int"
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-57", 
																	"patching_rect": [
																		664.664612, 
																		176.0, 
																		50.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "zmap 0. 1 0 127", 
																	"numinlets": 5, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-58", 
																	"patching_rect": [
																		664.664612, 
																		148.0, 
																		97.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "change", 
																	"numinlets": 1, 
																	"numoutlets": 3, 
																	"outlettype": [
																		"", 
																		"int", 
																		"int"
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-53", 
																	"patching_rect": [
																		561.914612, 
																		176.0, 
																		50.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "zmap 0. 1 0 127", 
																	"numinlets": 5, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-54", 
																	"patching_rect": [
																		561.914612, 
																		148.0, 
																		97.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "change", 
																	"numinlets": 1, 
																	"numoutlets": 3, 
																	"outlettype": [
																		"", 
																		"int", 
																		"int"
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-47", 
																	"patching_rect": [
																		455.914612, 
																		176.0, 
																		50.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "zmap 0. 1 0 127", 
																	"numinlets": 5, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-48", 
																	"patching_rect": [
																		455.914612, 
																		148.0, 
																		97.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "change", 
																	"numinlets": 1, 
																	"numoutlets": 3, 
																	"outlettype": [
																		"", 
																		"int", 
																		"int"
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-44", 
																	"patching_rect": [
																		359.914612, 
																		176.0, 
																		50.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "zmap 0. 1 0 127", 
																	"numinlets": 5, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-45", 
																	"patching_rect": [
																		359.914612, 
																		148.0, 
																		97.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "change", 
																	"numinlets": 1, 
																	"numoutlets": 3, 
																	"outlettype": [
																		"", 
																		"int", 
																		"int"
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-40", 
																	"patching_rect": [
																		263.914612, 
																		176.0, 
																		50.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "zmap 0. 1 0 127", 
																	"numinlets": 5, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-41", 
																	"patching_rect": [
																		263.914612, 
																		148.0, 
																		97.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "change", 
																	"numinlets": 1, 
																	"numoutlets": 3, 
																	"outlettype": [
																		"", 
																		"int", 
																		"int"
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-35", 
																	"patching_rect": [
																		150.414612, 
																		176.0, 
																		50.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "zmap 0. 1 0 127", 
																	"numinlets": 5, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-37", 
																	"patching_rect": [
																		150.414612, 
																		148.0, 
																		97.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "change", 
																	"numinlets": 1, 
																	"numoutlets": 3, 
																	"outlettype": [
																		"", 
																		"int", 
																		"int"
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-33", 
																	"patching_rect": [
																		50.0, 
																		176.0, 
																		50.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "zmap 0. 1 0 127", 
																	"numinlets": 5, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-32", 
																	"patching_rect": [
																		50.0, 
																		148.0, 
																		97.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "prepend 9", 
																	"numinlets": 1, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-36", 
																	"patching_rect": [
																		150.414612, 
																		207.0, 
																		65.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "prepend 10", 
																	"numinlets": 1, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-43", 
																	"patching_rect": [
																		263.914612, 
																		207.0, 
																		71.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "prepend 11", 
																	"numinlets": 1, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-50", 
																	"patching_rect": [
																		359.914612, 
																		207.0, 
																		70.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "prepend 1", 
																	"numinlets": 1, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-22", 
																	"patching_rect": [
																		455.914612, 
																		208.0, 
																		65.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "prepend 2", 
																	"numinlets": 1, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-15", 
																	"patching_rect": [
																		561.914612, 
																		210.0, 
																		65.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "prepend 3", 
																	"numinlets": 1, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-8", 
																	"patching_rect": [
																		664.664612, 
																		210.0, 
																		65.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "prepend 4", 
																	"numinlets": 1, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-1", 
																	"patching_rect": [
																		789.414612, 
																		210.0, 
																		65.0, 
																		20.0
																	]
																}
															}, 
															{
																"box": {
																	"fontname": "Arial", 
																	"text": "prepend 8", 
																	"numinlets": 1, 
																	"numoutlets": 1, 
																	"outlettype": [
																		""
																	], 
																	"maxclass": "newobj", 
																	"fontsize": 12.0, 
																	"id": "obj-29", 
																	"patching_rect": [
																		50.0, 
																		207.0, 
																		65.0, 
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
																		50.0, 
																		40.0, 
																		25.0, 
																		25.0
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
																	"id": "obj-25", 
																	"patching_rect": [
																		150.414612, 
																		40.0, 
																		25.0, 
																		25.0
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
																	"id": "obj-27", 
																	"patching_rect": [
																		263.914612, 
																		40.0, 
																		25.0, 
																		25.0
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
																		359.914612, 
																		40.0, 
																		25.0, 
																		25.0
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
																	"id": "obj-31", 
																	"patching_rect": [
																		455.914612, 
																		40.0, 
																		25.0, 
																		25.0
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
																	"id": "obj-63", 
																	"patching_rect": [
																		561.914612, 
																		40.0, 
																		25.0, 
																		25.0
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
																	"id": "obj-64", 
																	"patching_rect": [
																		664.664612, 
																		40.0, 
																		25.0, 
																		25.0
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
																	"id": "obj-65", 
																	"patching_rect": [
																		789.414612, 
																		40.0, 
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
																	"id": "obj-66", 
																	"patching_rect": [
																		407.019043, 
																		290.0, 
																		25.0, 
																		25.0
																	]
																}
															}
														], 
														"default_fontface": 0, 
														"gridonopen": 0, 
														"rect": [
															188.0, 
															150.0, 
															907.0, 
															339.0
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
																		"obj-66", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-15", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-66", 
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
																		"obj-66", 
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
																		"obj-25", 
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
																		"obj-27", 
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
																		"obj-29", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-66", 
																		0
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
																		"obj-45", 
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
																		"obj-48", 
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
																		"obj-33", 
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
																		"obj-29", 
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
																		"obj-36", 
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
																		"obj-66", 
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
																		"obj-35", 
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
																		"obj-43", 
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
																		"obj-40", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-43", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-66", 
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
																		"obj-50", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-45", 
																		0
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
																		"obj-47", 
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
																		"obj-48", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-47", 
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
																		"obj-66", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-53", 
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
																		"obj-54", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-53", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-57", 
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
																		"obj-58", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-57", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-61", 
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
																		"obj-62", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-61", 
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
																		"obj-54", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-64", 
																		0
																	], 
																	"hidden": 0, 
																	"destination": [
																		"obj-58", 
																		0
																	]
																}
															}, 
															{
																"patchline": {
																	"disabled": 0, 
																	"source": [
																		"obj-65", 
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
																		"obj-66", 
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
													"text": "p midi_map_slider", 
													"numinlets": 8, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-67", 
													"patching_rect": [
														6.0, 
														145.0, 
														113.5, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.route /1 /2 /3 /4 /a /b /c /d", 
													"numinlets": 9, 
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
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-26", 
													"patching_rect": [
														6.0, 
														106.248413, 
														154.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.route /slider/linear/amount", 
													"numinlets": 2, 
													"numoutlets": 2, 
													"outlettype": [
														"", 
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-27", 
													"patching_rect": [
														6.0, 
														81.76532, 
														159.0, 
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
													"id": "obj-75", 
													"patching_rect": [
														6.0, 
														21.76532, 
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
													"id": "obj-76", 
													"patching_rect": [
														338.0, 
														368.0, 
														25.0, 
														25.0
													]
												}
											}
										], 
										"default_fontface": 0, 
										"gridonopen": 0, 
										"rect": [
											446.0, 
											83.0, 
											840.0, 
											611.0
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
														"obj-3", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-18", 
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
														"obj-26", 
														7
													], 
													"hidden": 0, 
													"destination": [
														"obj-67", 
														7
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-26", 
														6
													], 
													"hidden": 0, 
													"destination": [
														"obj-67", 
														6
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-26", 
														5
													], 
													"hidden": 0, 
													"destination": [
														"obj-67", 
														5
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-26", 
														4
													], 
													"hidden": 0, 
													"destination": [
														"obj-67", 
														4
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-26", 
														3
													], 
													"hidden": 0, 
													"destination": [
														"obj-67", 
														3
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-26", 
														2
													], 
													"hidden": 0, 
													"destination": [
														"obj-67", 
														2
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-26", 
														1
													], 
													"hidden": 0, 
													"destination": [
														"obj-67", 
														1
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-26", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-67", 
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
														"obj-26", 
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
														"obj-4", 
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
														"obj-7", 
														1
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
														"obj-76", 
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
														"obj-1", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-75", 
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
														"obj-8", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-18", 
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
									"text": "p slider", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-77", 
									"patching_rect": [
										92.5, 
										333.0, 
										49.0, 
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
													"comment": "", 
													"numinlets": 0, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "inlet", 
													"id": "obj-6", 
													"patching_rect": [
														138.0, 
														26.0, 
														25.0, 
														25.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.route /direction", 
													"numinlets": 2, 
													"numoutlets": 2, 
													"outlettype": [
														"", 
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-8", 
													"patching_rect": [
														43.0, 
														159.0, 
														100.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "if(bound(/disc/a), /controller = 6),\nif(bound(/disc/b), /controller= 7),", 
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
														43.0, 
														190.0, 
														265.0, 
														43.0
													]
												}
											}, 
											{
												"box": {
													"comment": "", 
													"numinlets": 1, 
													"numoutlets": 0, 
													"maxclass": "outlet", 
													"id": "obj-73", 
													"patching_rect": [
														43.0, 
														252.699463, 
														25.0, 
														25.0
													]
												}
											}
										], 
										"default_fontface": 0, 
										"gridonopen": 0, 
										"rect": [
											145.0, 
											70.0, 
											640.0, 
											480.0
										], 
										"lines": [
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-5", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-73", 
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
														"obj-8", 
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
									"text": "p disc", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-74", 
									"patching_rect": [
										50.0, 
										333.0, 
										42.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /led", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-11", 
									"patching_rect": [
										131.0, 
										129.0, 
										71.0, 
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
													"comment": "", 
													"numinlets": 0, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "inlet", 
													"id": "obj-2", 
													"patching_rect": [
														230.0, 
														48.0, 
														25.0, 
														25.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "if(bound(/brightness/large/arrowbutton/a/1), /key = 47),\nif(bound(/brightness/large/arrowbutton/a/2), /key = 46),\nif(bound(/brightness/large/arrowbutton/b/1), /key = 49),\nif(bound(/brightness/large/arrowbutton/b/2), /key = 48),", 
													"numinlets": 1, 
													"linecount": 4, 
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
													"id": "obj-6", 
													"patching_rect": [
														230.0, 
														97.740845, 
														323.0, 
														70.0
													]
												}
											}, 
											{
												"box": {
													"comment": "", 
													"numinlets": 1, 
													"numoutlets": 0, 
													"maxclass": "outlet", 
													"id": "obj-93", 
													"patching_rect": [
														206.0, 
														295.740845, 
														25.0, 
														25.0
													]
												}
											}
										], 
										"default_fontface": 0, 
										"gridonopen": 0, 
										"rect": [
											344.0, 
											46.0, 
											943.0, 
											613.0
										], 
										"lines": [
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-2", 
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
														"obj-6", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-93", 
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
									"text": "p /large/arrowbuttons", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-96", 
									"patching_rect": [
										368.125, 
										333.0, 
										126.0, 
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
													"comment": "", 
													"numinlets": 0, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "inlet", 
													"id": "obj-2", 
													"patching_rect": [
														47.5, 
														18.0, 
														25.0, 
														25.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "if(bound(/brightness/arrowbutton/a/1), /key = 42),\nif(bound(/brightness/arrowbutton/a/2), /key = 40),\nif(bound(/brightness/arrowbutton/a/3), /key = 38),\nif(bound(/brightness/arrowbutton/a/4), /key = 36),\nif(bound(/brightness/arrowbutton/b/1), /key = 43),\nif(bound(/brightness/arrowbutton/b/2), /key = 41),\nif(bound(/brightness/arrowbutton/b/3), /key = 39),\nif(bound(/brightness/arrowbutton/b/4), /key = 37),", 
													"numinlets": 1, 
													"linecount": 8, 
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
													"id": "obj-6", 
													"patching_rect": [
														47.5, 
														103.010803, 
														290.5, 
														138.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.route /led", 
													"numinlets": 2, 
													"numoutlets": 2, 
													"outlettype": [
														"", 
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-4", 
													"patching_rect": [
														47.5, 
														74.759216, 
														100.0, 
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
													"id": "obj-83", 
													"patching_rect": [
														47.5, 
														431.510803, 
														25.0, 
														25.0
													]
												}
											}
										], 
										"default_fontface": 0, 
										"gridonopen": 0, 
										"rect": [
											64.0, 
											44.0, 
											983.0, 
											666.0
										], 
										"lines": [
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-2", 
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
														"obj-6", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-83", 
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
									"text": "p arrowbutton", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-87", 
									"patching_rect": [
										284.125, 
										333.0, 
										84.0, 
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
										"FullPacket"
									], 
									"maxclass": "inlet", 
									"id": "obj-1", 
									"patching_rect": [
										131.0, 
										40.0, 
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
									"id": "obj-3", 
									"patching_rect": [
										205.3125, 
										542.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							0.0, 
							0.0, 
							640.0, 
							480.0
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
										"obj-2", 
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
										"obj-74", 
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
										"obj-75", 
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
										"obj-77", 
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
										"obj-79", 
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
										"obj-81", 
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
										"obj-87", 
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
										"obj-96", 
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
										"obj-11", 
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
										"obj-3", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-46", 
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
										"obj-48", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-39", 
										1
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
										"obj-46", 
										1
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
										"obj-39", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-74", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-85", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-75", 
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
										"obj-77", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-85", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-79", 
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
										"obj-81", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-46", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-85", 
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
										"obj-87", 
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
										"obj-96", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-55", 
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
					"text": "p leds", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-4", 
					"patching_rect": [
						92.0, 
						74.0, 
						71.125, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"numoutlets": 0, 
					"maxclass": "ezdac~", 
					"id": "obj-65", 
					"numinlets": 2, 
					"patching_rect": [
						992.0, 
						672.0, 
						45.0, 
						45.0
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
						92.0, 
						16.0, 
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
					"id": "obj-12", 
					"patching_rect": [
						92.0, 
						235.0, 
						25.0, 
						25.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			316.0, 
			57.0, 
			975.0, 
			806.0
		], 
		"lines": [
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
						"obj-8", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-4", 
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