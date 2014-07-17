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
					"comment": "", 
					"numinlets": 0, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "inlet", 
					"id": "obj-4", 
					"patching_rect": [
						121.0, 
						74.0, 
						25.0, 
						25.0
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
									"text": "/position : [0, 0, -1.],\n/orientation : [\"$4\", \"$5\", -1.],\n/radius : \"$3\",\n/red,\n/radius/bis : 0.03,\n/length : 0.5,\n/shape : \"cylinder\"", 
									"numinlets": 2, 
									"linecount": 7, 
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
										134.0, 
										341.0, 
										253.0, 
										100.0
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
													"text": "o.expr /tilt =[ scale(/tilt[[0]]\\, -1.\\, 1\\, -90\\, 90) \\, scale(/tilt[[1]]\\, -1.\\, 1\\, 90\\, -90)]\\,", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-6", 
													"patching_rect": [
														50.0, 
														134.0, 
														395.0, 
														20.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.expr /pressure = scale(/pressure\\, 0.\\, 1\\, 0.05\\, 0.2)", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 12.0, 
													"id": "obj-5", 
													"patching_rect": [
														50.0, 
														100.0, 
														381.0, 
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
													"id": "obj-12", 
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
													"id": "obj-13", 
													"patching_rect": [
														50.0, 
														214.0, 
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
														"obj-12", 
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
														"obj-6", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-13", 
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
									"id": "obj-14", 
									"patching_rect": [
										20.5, 
										84.0, 
										66.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /pen/3D", 
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
										20.5, 
										234.0, 
										93.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /pen/3D = list(0\\, 0\\, /pressure\\,/tilt[[1]]\\, /tilt[[0]])", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-3", 
									"patching_rect": [
										20.5, 
										201.0, 
										354.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "speedlim 30", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-20", 
									"patching_rect": [
										33.5, 
										303.0, 
										75.0, 
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
										26.5, 
										20.0, 
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
										61.5, 
										449.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							336.0, 
							69.0, 
							779.0, 
							533.0
						], 
						"lines": [
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-11", 
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
										"obj-14", 
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
										"obj-15", 
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
										"obj-20", 
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
										"obj-29", 
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
										"obj-3", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-11", 
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
					"text": "p situate", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-64", 
					"patching_rect": [
						121.0, 
						172.0, 
						56.0, 
						20.0
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
					"id": "obj-69", 
					"patching_rect": [
						198.0, 
						276.5, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/reset", 
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
					"id": "obj-70", 
					"patching_rect": [
						152.0, 
						213.5, 
						150.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /pen", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-74", 
					"patching_rect": [
						121.0, 
						139.0, 
						75.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.io.gl tilt.disp", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-77", 
					"patching_rect": [
						121.0, 
						249.5, 
						83.0, 
						20.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			595.0, 
			54.0, 
			640.0, 
			480.0
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
						"obj-74", 
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
						"obj-77", 
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
						"obj-70", 
						0
					], 
					"midpoints": [
						207.5, 
						308.5, 
						314.666626, 
						308.5, 
						314.666626, 
						201.5, 
						161.5, 
						201.5
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
						"obj-77", 
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
						"obj-64", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-77", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-69", 
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