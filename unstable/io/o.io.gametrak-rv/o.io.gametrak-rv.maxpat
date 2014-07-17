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
			8.0, 
			8.0
		], 
		"openinpresentation": 0, 
		"enablehscroll": 1, 
		"description": "", 
		"tags": "", 
		"enablevscroll": 1, 
		"appversion": {
			"major": 6, 
			"minor": 0, 
			"revision": 5
		}, 
		"boxes": [
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
					"id": "obj-15", 
					"patching_rect": [
						594.0, 
						372.0, 
						50.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "measurement unit in seconds\nfor speed and velocitities", 
					"numinlets": 1, 
					"maxclass": "comment", 
					"numoutlets": 0, 
					"linecount": 2, 
					"fontsize": 12.0, 
					"id": "obj-12", 
					"patching_rect": [
						594.0, 
						401.0, 
						172.0, 
						35.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.pak /left /right", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-28", 
					"patching_rect": [
						375.0, 
						455.0, 
						109.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /left /right", 
					"numinlets": 3, 
					"numoutlets": 3, 
					"outlettype": [
						"", 
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-25", 
					"patching_rect": [
						375.0, 
						372.0, 
						199.0, 
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
							12.0, 
							12.0
						], 
						"openinpresentation": 0, 
						"enablehscroll": 1, 
						"description": "", 
						"tags": "", 
						"enablevscroll": 1, 
						"appversion": {
							"major": 6, 
							"minor": 0, 
							"revision": 5
						}, 
						"boxes": [
							{
								"box": {
									"comment": "", 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										"float"
									], 
									"maxclass": "inlet", 
									"id": "obj-1", 
									"patching_rect": [
										127.333328, 
										16.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "Zenith angle in radians", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"fontsize": 12.0, 
									"id": "obj-14", 
									"patching_rect": [
										177.333328, 
										287.0, 
										143.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "Azimuth angle in radians", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"fontsize": 12.0, 
									"id": "obj-13", 
									"patching_rect": [
										306.333313, 
										259.0, 
										143.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "Radial distance in radians", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"fontsize": 12.0, 
									"id": "obj-10", 
									"patching_rect": [
										245.333328, 
										231.0, 
										148.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "Speed", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"fontsize": 12.0, 
									"id": "obj-9", 
									"patching_rect": [
										408.333313, 
										200.0, 
										45.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "Velocities", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"fontsize": 12.0, 
									"id": "obj-7", 
									"patching_rect": [
										249.333328, 
										141.0, 
										66.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.flatten", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-28", 
									"patching_rect": [
										52.5, 
										85.0, 
										113.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /speed = (abs(/velocity_x)+abs(/velocity_y)+abs(/velocity_z)) / 3", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-32", 
									"patching_rect": [
										22.333328, 
										200.0, 
										386.0, 
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
									"id": "obj-8", 
									"patching_rect": [
										22.333328, 
										115.0, 
										50.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /velocity_x = /x - /delayed_data/x\\, /velocity_y = /y - /delayed_data/y\\, /velocity_z = /z - /delayed_data/z", 
									"numinlets": 1, 
									"maxclass": "newobj", 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"linecount": 3, 
									"fontsize": 12.0, 
									"id": "obj-16", 
									"patching_rect": [
										22.333328, 
										141.0, 
										227.0, 
										48.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.delay-rv 0.5", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-17", 
									"patching_rect": [
										52.5, 
										57.0, 
										93.0, 
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
									"id": "obj-39", 
									"patching_rect": [
										22.333328, 
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
									"id": "obj-40", 
									"patching_rect": [
										22.333328, 
										319.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /zenith = atan2(/y\\,/x)", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-5", 
									"patching_rect": [
										22.333328, 
										287.0, 
										155.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /azimuth = acos(/z / sqrt(/x*/x + /y*/y + /z*/z))", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-4", 
									"patching_rect": [
										22.333328, 
										259.0, 
										284.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /radial = sqrt(/x*/x + /y*/y + /z*/z)", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-3", 
									"patching_rect": [
										22.333328, 
										231.0, 
										219.0, 
										20.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							743.0, 
							145.0, 
							484.0, 
							362.0
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
										"obj-17", 
										1
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
										"obj-32", 
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
										"obj-28", 
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
										"obj-8", 
										1
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
										"obj-32", 
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
										"obj-39", 
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
										"obj-39", 
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
										"obj-40", 
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
										"obj-16", 
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
								"implicit": 1, 
								"type": "JSON", 
								"name": "o.delay-rv.maxpat", 
								"bootpath": "/Volumes/Rafael Valle/DESKTOP/odot-things.dot/o.io.gametrak"
							}, 
							{
								"type": "iLaX", 
								"name": "o.expr.mxo"
							}, 
							{
								"type": "iLaX", 
								"name": "o.pack.mxo"
							}, 
							{
								"type": "iLaX", 
								"name": "o.timetag.mxo"
							}, 
							{
								"type": "iLaX", 
								"name": "o.schedule.mxo"
							}, 
							{
								"type": "iLaX", 
								"name": "o.union.mxo"
							}, 
							{
								"type": "iLaX", 
								"name": "o.flatten.mxo"
							}
						]
					}, 
					"saved_object_attributes": {
						"fontname": "Arial", 
						"description": "", 
						"tags": "", 
						"fontface": 0, 
						"globalpatchername": "", 
						"fontsize": 12.0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p sensorcalcs", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-22", 
					"patching_rect": [
						465.0, 
						424.0, 
						84.0, 
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
							12.0, 
							12.0
						], 
						"openinpresentation": 0, 
						"enablehscroll": 1, 
						"description": "", 
						"tags": "", 
						"enablevscroll": 1, 
						"appversion": {
							"major": 6, 
							"minor": 0, 
							"revision": 5
						}, 
						"boxes": [
							{
								"box": {
									"comment": "", 
									"presentation_rect": [
										126.333328, 
										13.0, 
										0.0, 
										0.0
									], 
									"numinlets": 0, 
									"numoutlets": 1, 
									"outlettype": [
										"float"
									], 
									"maxclass": "inlet", 
									"id": "obj-1", 
									"patching_rect": [
										127.333328, 
										16.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "Zenith angle in radians", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"fontsize": 12.0, 
									"id": "obj-14", 
									"patching_rect": [
										177.333328, 
										287.0, 
										143.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "Azimuth angle in radians", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"fontsize": 12.0, 
									"id": "obj-13", 
									"patching_rect": [
										306.333313, 
										259.0, 
										143.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "Radial Angle in radians", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"fontsize": 12.0, 
									"id": "obj-10", 
									"patching_rect": [
										245.333328, 
										231.0, 
										133.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "Speed", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"fontsize": 12.0, 
									"id": "obj-9", 
									"patching_rect": [
										408.333313, 
										200.0, 
										45.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "Velocities", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "comment", 
									"fontsize": 12.0, 
									"id": "obj-7", 
									"patching_rect": [
										249.333328, 
										141.0, 
										66.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.flatten", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-28", 
									"patching_rect": [
										52.5, 
										85.0, 
										113.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /speed = (abs(/velocity_x)+abs(/velocity_y)+abs(/velocity_z)) / 3", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-32", 
									"patching_rect": [
										22.333328, 
										200.0, 
										386.0, 
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
									"id": "obj-8", 
									"patching_rect": [
										22.333328, 
										115.0, 
										50.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /velocity_x = /x - /delayed_data/x\\, /velocity_y = /y - /delayed_data/y\\, /velocity_z = /z - /delayed_data/z", 
									"numinlets": 1, 
									"maxclass": "newobj", 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"linecount": 3, 
									"fontsize": 12.0, 
									"id": "obj-16", 
									"patching_rect": [
										22.333328, 
										141.0, 
										227.0, 
										48.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.delay-rv 0.5", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-17", 
									"patching_rect": [
										52.5, 
										57.0, 
										93.0, 
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
									"id": "obj-39", 
									"patching_rect": [
										22.333328, 
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
									"id": "obj-40", 
									"patching_rect": [
										22.333328, 
										319.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /zenith = atan2(/y\\,/x)", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-5", 
									"patching_rect": [
										22.333328, 
										287.0, 
										155.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /azimuth = acos(/z / sqrt(/x*/x + /y*/y + /z*/z))", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-4", 
									"patching_rect": [
										22.333328, 
										259.0, 
										284.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /radial = sqrt(/x*/x + /y*/y + /z*/z)", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-3", 
									"patching_rect": [
										22.333328, 
										231.0, 
										219.0, 
										20.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							743.0, 
							145.0, 
							484.0, 
							362.0
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
										"obj-17", 
										1
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
										"obj-32", 
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
										"obj-28", 
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
										"obj-8", 
										1
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
										"obj-32", 
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
										"obj-39", 
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
										"obj-39", 
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
										"obj-40", 
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
										"obj-16", 
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
								"implicit": 1, 
								"type": "JSON", 
								"name": "o.delay-rv.maxpat", 
								"bootpath": "/Volumes/Rafael Valle/DESKTOP/odot-things.dot/o.io.gametrak"
							}, 
							{
								"type": "iLaX", 
								"name": "o.expr.mxo"
							}, 
							{
								"type": "iLaX", 
								"name": "o.pack.mxo"
							}, 
							{
								"type": "iLaX", 
								"name": "o.timetag.mxo"
							}, 
							{
								"type": "iLaX", 
								"name": "o.schedule.mxo"
							}, 
							{
								"type": "iLaX", 
								"name": "o.union.mxo"
							}, 
							{
								"type": "iLaX", 
								"name": "o.flatten.mxo"
							}
						]
					}, 
					"saved_object_attributes": {
						"fontname": "Arial", 
						"description": "", 
						"tags": "", 
						"fontface": 0, 
						"globalpatchername": "", 
						"fontsize": 12.0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p sensorcalcs", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-18", 
					"patching_rect": [
						375.0, 
						424.0, 
						84.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"name": "o.io.gametrak.display.maxpat", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "bpatcher", 
					"id": "obj-16", 
					"patching_rect": [
						709.0, 
						-2.0, 
						407.0, 
						334.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "route poll_ms", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-7", 
					"patching_rect": [
						254.0, 
						67.0, 
						83.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "patcherargs", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-6", 
					"patching_rect": [
						199.0, 
						38.0, 
						74.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.prepend /gametrak", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.102951, 
					"id": "obj-2", 
					"patching_rect": [
						375.0, 
						487.0, 
						122.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "select macintosh windows", 
					"numinlets": 3, 
					"numoutlets": 3, 
					"outlettype": [
						"bang", 
						"bang", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-4", 
					"patching_rect": [
						375.0, 
						87.0, 
						149.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /system", 
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
						375.0, 
						63.0, 
						93.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.maxplatform", 
					"numinlets": 0, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-1", 
					"patching_rect": [
						375.0, 
						38.0, 
						87.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "2", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 12.0, 
					"id": "obj-46", 
					"patching_rect": [
						440.0, 
						135.0, 
						32.5, 
						18.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "1", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 12.0, 
					"id": "obj-45", 
					"patching_rect": [
						375.0, 
						135.0, 
						32.5, 
						18.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "gate 2", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 11.595187, 
					"id": "obj-43", 
					"patching_rect": [
						375.0, 
						300.0, 
						69.0, 
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
							"minor": 0, 
							"revision": 5
						}, 
						"boxes": [
							{
								"box": {
									"fontname": "Arial", 
									"text": "0", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										"int"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.595187, 
									"id": "obj-24", 
									"patching_rect": [
										754.0, 
										167.0, 
										32.5, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /footswitch", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.102951, 
									"id": "obj-36", 
									"patching_rect": [
										754.0, 
										206.0, 
										107.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /right/x = scale(/right/x\\, 0\\, 65000\\, -1.\\, 1.)\\, /right/y = scale(/right/y\\, 0\\, 65000\\, -1.\\, 1.)\\, /right/z = scale(/right/z\\, 0\\, 65000\\, 0.\\, 1.)", 
									"numinlets": 1, 
									"maxclass": "newobj", 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"linecount": 2, 
									"fontsize": 12.102951, 
									"id": "obj-4", 
									"patching_rect": [
										29.0, 
										206.0, 
										496.0, 
										34.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /left/x = scale(/left/x\\, 0\\, 65000\\, -1.\\, 1.)\\, /left/y = scale(/left/y\\, 0\\, 65000\\, -1.\\, 1.)\\, /left/z = scale(/left/z\\, 0.\\, 65000\\, 0\\, 1.)", 
									"numinlets": 1, 
									"maxclass": "newobj", 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"linecount": 2, 
									"fontsize": 12.102951, 
									"id": "obj-10", 
									"patching_rect": [
										29.0, 
										167.0, 
										469.0, 
										34.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /left/x /left/y /left/z /right/x /right/y /right/z", 
									"numinlets": 6, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.595187, 
									"id": "obj-16", 
									"patching_rect": [
										29.0, 
										131.0, 
										252.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "route 0 4 8 12 16 20 48", 
									"numinlets": 8, 
									"numoutlets": 8, 
									"outlettype": [
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
									"fontsize": 12.0, 
									"id": "obj-5", 
									"patching_rect": [
										29.0, 
										75.0, 
										730.0, 
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
									"id": "obj-52", 
									"patching_rect": [
										29.0, 
										19.0, 
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
									"id": "obj-53", 
									"patching_rect": [
										29.0, 
										266.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							246.0, 
							78.0, 
							942.0, 
							367.0
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
										"obj-4", 
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
										"obj-10", 
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
										"obj-53", 
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
										"obj-53", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-5", 
										5
									], 
									"hidden": 0, 
									"destination": [
										"obj-16", 
										5
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-5", 
										4
									], 
									"hidden": 0, 
									"destination": [
										"obj-16", 
										4
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-5", 
										3
									], 
									"hidden": 0, 
									"destination": [
										"obj-16", 
										3
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-5", 
										2
									], 
									"hidden": 0, 
									"destination": [
										"obj-16", 
										2
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-5", 
										1
									], 
									"hidden": 0, 
									"destination": [
										"obj-16", 
										1
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
										"obj-16", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-5", 
										6
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
										"obj-52", 
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
								"type": "iLaX", 
								"name": "o.pack.mxo"
							}, 
							{
								"type": "iLaX", 
								"name": "o.expr.mxo"
							}
						]
					}, 
					"saved_object_attributes": {
						"fontname": "Arial", 
						"description": "", 
						"tags": "", 
						"fontface": 0, 
						"globalpatchername": "", 
						"fontsize": 12.0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p windows", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-54", 
					"patching_rect": [
						425.0, 
						339.0, 
						67.0, 
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
							"minor": 0, 
							"revision": 5
						}, 
						"boxes": [
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.timetag /now", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-1", 
									"patching_rect": [
										58.0, 
										288.0, 
										100.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /right/x = scale(/right/x\\, 0\\, 4095\\, -1.\\, 1.)\\, /right/y = scale(/right/y\\, 0\\, 4095\\, -1.\\, 1.)\\, /right/z = scale(/right/z\\, 0\\, 4095\\, 0.\\, 1.)", 
									"numinlets": 1, 
									"maxclass": "newobj", 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"linecount": 2, 
									"fontsize": 12.102951, 
									"id": "obj-25", 
									"patching_rect": [
										105.0, 
										240.0, 
										480.0, 
										34.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /left/x = scale(/left/x\\, 0\\, 4095\\, -1.\\, 1.)\\, /left/y = scale(/left/y\\, 0\\, 4095\\, -1.\\, 1.)\\, /left/z = scale(/left/z\\, 0\\, 4095\\, 0.\\, 1.)", 
									"numinlets": 1, 
									"maxclass": "newobj", 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"linecount": 2, 
									"fontsize": 12.102951, 
									"id": "obj-10", 
									"patching_rect": [
										105.0, 
										201.0, 
										450.0, 
										34.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "route bang", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.595187, 
									"id": "obj-2", 
									"patching_rect": [
										58.0, 
										48.0, 
										66.0, 
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
										"int"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.595187, 
									"id": "obj-24", 
									"patching_rect": [
										872.0, 
										201.0, 
										32.5, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /footswitch", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.102951, 
									"id": "obj-36", 
									"patching_rect": [
										872.0, 
										240.0, 
										107.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /left/x /left/y /left/z /right/x /right/y /right/z", 
									"numinlets": 6, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.595187, 
									"id": "obj-16", 
									"patching_rect": [
										105.0, 
										165.0, 
										252.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "route 15 16 17 18 19 20 3", 
									"numinlets": 8, 
									"numoutlets": 8, 
									"outlettype": [
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
									"fontsize": 11.595187, 
									"id": "obj-15", 
									"patching_rect": [
										105.0, 
										105.0, 
										636.0, 
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
									"id": "obj-38", 
									"patching_rect": [
										58.0, 
										15.0, 
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
									"id": "obj-40", 
									"patching_rect": [
										382.857117, 
										343.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							185.0, 
							44.0, 
							1037.0, 
							383.0
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
										"obj-40", 
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
										"obj-25", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-15", 
										5
									], 
									"hidden": 0, 
									"destination": [
										"obj-16", 
										5
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-15", 
										4
									], 
									"hidden": 0, 
									"destination": [
										"obj-16", 
										4
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-15", 
										3
									], 
									"hidden": 0, 
									"destination": [
										"obj-16", 
										3
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-15", 
										2
									], 
									"hidden": 0, 
									"destination": [
										"obj-16", 
										2
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-15", 
										1
									], 
									"hidden": 0, 
									"destination": [
										"obj-16", 
										1
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
										"obj-16", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-15", 
										6
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
										"obj-16", 
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
									"disabled": 0, 
									"source": [
										"obj-2", 
										1
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
										"obj-24", 
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
										"obj-25", 
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
										"obj-36", 
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
										"obj-38", 
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
						"bglocked": 0, 
						"dependency_cache": [
							{
								"type": "iLaX", 
								"name": "o.pack.mxo"
							}, 
							{
								"type": "iLaX", 
								"name": "o.expr.mxo"
							}, 
							{
								"type": "iLaX", 
								"name": "o.timetag.mxo"
							}
						]
					}, 
					"saved_object_attributes": {
						"fontname": "Arial", 
						"description": "", 
						"tags": "", 
						"fontface": 0, 
						"globalpatchername": "", 
						"fontsize": 12.0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 12.0, 
						"digest": ""
					}, 
					"text": "p osx", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-41", 
					"patching_rect": [
						375.0, 
						339.0, 
						43.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "loadmess 1", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 11.595187, 
					"id": "obj-32", 
					"patching_rect": [
						119.0, 
						38.0, 
						70.0, 
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
					"id": "obj-29", 
					"patching_rect": [
						375.0, 
						524.0, 
						25.0, 
						25.0
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
					"id": "obj-13", 
					"patching_rect": [
						119.0, 
						63.0, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "metro 10", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"bang"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-11", 
					"patching_rect": [
						119.0, 
						119.0, 
						58.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "hi \"Game-Trak V1.3\"", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"list", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 11.595187, 
					"id": "obj-30", 
					"patching_rect": [
						425.0, 
						255.0, 
						116.0, 
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
			1280.0, 
			706.0
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
						"obj-13", 
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
						"obj-15", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-18", 
						1
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
						"obj-22", 
						1
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
						"obj-25", 
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
						"obj-28", 
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
						"obj-29", 
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
						"obj-28", 
						1
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
						"obj-18", 
						0
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
						"obj-2", 
						0
					], 
					"midpoints": [
						564.5, 
						481.0, 
						384.5, 
						481.0
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
						"obj-22", 
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
						"obj-4", 
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
						"obj-43", 
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
						"obj-13", 
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
						"obj-45", 
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
						"obj-41", 
						0
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
						"obj-43", 
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
						"obj-43", 
						1
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
						"obj-45", 
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
						"obj-46", 
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
						"obj-54", 
						0
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
						"obj-6", 
						1
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
						"obj-11", 
						1
					]
				}
			}
		], 
		"statusbarvisible": 2, 
		"gridsnaponopen": 0, 
		"bglocked": 0, 
		"dependency_cache": [
			{
				"patcherrelativepath": "../../../../../Applications/Max6/Cycling '74/externals/odot-MacOSX/abstractions", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.maxplatform.maxpat", 
				"bootpath": "/Applications/Max6/Cycling '74/externals/odot-MacOSX/abstractions"
			}, 
			{
				"patcherrelativepath": "", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.io.gametrak.display.maxpat", 
				"bootpath": "/Volumes/Rafael Valle/DESKTOP/odot-things.dot/o.io.gametrak"
			}, 
			{
				"patcherrelativepath": "", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.delay-rv.maxpat", 
				"bootpath": "/Volumes/Rafael Valle/DESKTOP/odot-things.dot/o.io.gametrak"
			}, 
			{
				"type": "iLaX", 
				"name": "o.pack.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.expr.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.timetag.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.route.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.prepend.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.var.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.collect.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.message.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.schedule.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.union.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.flatten.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.pak.mxo"
			}
		]
	}
}