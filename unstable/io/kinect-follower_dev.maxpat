{
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
			"revision": 4
		}, 
		"boxes": [
			{
				"box": {
					"fontname": "Arial", 
					"text": "print", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-37", 
					"patching_rect": [
						358.0, 
						613.0, 
						32.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "print", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-35", 
					"patching_rect": [
						447.0, 
						613.0, 
						32.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "devices", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 11.0, 
					"id": "obj-34", 
					"patching_rect": [
						358.0, 
						541.0, 
						50.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "serial a 115200", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 11.0, 
					"id": "obj-28", 
					"patching_rect": [
						563.0, 
						592.0, 
						150.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/margin : 10,\n/slope : 64,\n/id : 7", 
					"numinlets": 2, 
					"linecount": 3, 
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
					"id": "obj-33", 
					"patching_rect": [
						630.0, 
						472.0, 
						109.0, 
						44.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.io.ax12.set-compliance", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-32", 
					"patching_rect": [
						548.0, 
						541.0, 
						132.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "255 255 7 7 3 30 105 1 30 0 72", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 11.0, 
					"id": "obj-26", 
					"patching_rect": [
						193.0, 
						569.0, 
						163.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "<< just for testing, usually I wouldn't load bang this since it has a motor attached to it", 
					"numinlets": 1, 
					"maxclass": "comment", 
					"numoutlets": 0, 
					"linecount": 3, 
					"frgb": 0.0, 
					"fontsize": 11.0, 
					"id": "obj-22", 
					"patching_rect": [
						959.0, 
						257.0, 
						168.0, 
						43.0
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
					"fontsize": 11.0, 
					"id": "obj-4", 
					"patching_rect": [
						853.0, 
						257.0, 
						56.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.change", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-52", 
					"patching_rect": [
						409.25, 
						441.0, 
						56.0, 
						19.0
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
					"id": "obj-49", 
					"patching_rect": [
						4.0, 
						541.0, 
						172.0, 
						172.0
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
							"revision": 4
						}, 
						"boxes": [
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /startScan = /update + 5", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-5", 
									"patching_rect": [
										452.0, 
										154.0, 
										162.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "t b", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"bang"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-11", 
									"patching_rect": [
										121.0, 
										165.0, 
										23.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "del 5000", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										"bang"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-9", 
									"patching_rect": [
										121.0, 
										196.0, 
										53.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "t l reset", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"reset"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-7", 
									"patching_rect": [
										452.0, 
										184.0, 
										47.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.schedule /startScan", 
									"numinlets": 1, 
									"numoutlets": 3, 
									"outlettype": [
										"FullPacket", 
										"FullPacket", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-8", 
									"patching_rect": [
										452.0, 
										215.0, 
										122.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "t l", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-13", 
									"patching_rect": [
										998.0, 
										662.0, 
										19.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /init", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-10", 
									"patching_rect": [
										1006.0, 
										42.0, 
										65.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.timetag /update", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-33", 
									"patching_rect": [
										78.75, 
										79.5, 
										100.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /skel_found = false", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-3", 
									"patching_rect": [
										121.0, 
										248.0, 
										136.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /skel_found = true", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-2", 
									"patching_rect": [
										78.75, 
										108.0, 
										132.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.cond /skel_found == true", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"FullPacket", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-1", 
									"patching_rect": [
										78.75, 
										306.0, 
										458.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.cond bound(/prev/update)", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"FullPacket", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-22", 
									"patching_rect": [
										78.75, 
										532.0, 
										170.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /elapsedTime = /now - /prev/update", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-4", 
									"patching_rect": [
										78.75, 
										562.5, 
										216.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.timetag /prev/update", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-45", 
									"patching_rect": [
										78.75, 
										724.5, 
										120.0, 
										19.0
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
									"id": "obj-42", 
									"patching_rect": [
										229.75, 
										646.0, 
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
										"bang"
									], 
									"maxclass": "button", 
									"id": "obj-37", 
									"patching_rect": [
										67.75, 
										646.0, 
										20.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.timetag /prev/update", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-35", 
									"patching_rect": [
										178.75, 
										401.5, 
										120.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.cond /elapsedTime > 0.1", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"FullPacket", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-34", 
									"patching_rect": [
										78.75, 
										608.5, 
										170.0, 
										19.0
									]
								}
							}, 
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
									"fontsize": 11.0, 
									"id": "obj-32", 
									"patching_rect": [
										78.75, 
										497.5, 
										100.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.cond abs(/base/target/x) > 4.", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"FullPacket", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-28", 
									"patching_rect": [
										78.75, 
										363.0, 
										236.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /angle += /base/target/x * 0.75", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-26", 
									"patching_rect": [
										78.75, 
										688.5, 
										192.0, 
										19.0
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
									"fontsize": 11.0, 
									"id": "obj-23", 
									"patching_rect": [
										78.75, 
										471.5, 
										119.0, 
										19.0
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
									"id": "obj-40", 
									"patching_rect": [
										1006.0, 
										6.0, 
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
									"id": "obj-46", 
									"patching_rect": [
										78.75, 
										825.5, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							469.0, 
							44.0, 
							1141.0, 
							921.0
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
										"obj-28", 
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
										"obj-11", 
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
										"obj-33", 
										0
									], 
									"midpoints": [
										1061.5, 
										69.75, 
										88.25, 
										69.75
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
										"obj-9", 
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
										"obj-35", 
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
										"obj-46", 
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
										"obj-22", 
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
										"obj-26", 
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
										"obj-28", 
										0
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
										"obj-3", 
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
										"obj-32", 
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
										"obj-33", 
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
										"obj-34", 
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
										"obj-34", 
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
										"obj-34", 
										1
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
										"obj-23", 
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
										"obj-34", 
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
										"obj-10", 
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
										"obj-23", 
										1
									], 
									"midpoints": [
										88.25, 
										763.5, 
										338.25, 
										763.5, 
										338.25, 
										461.5, 
										188.25, 
										461.5
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
										"obj-46", 
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
										"obj-7", 
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
										"obj-9", 
										0
									], 
									"hidden": 0, 
									"destination": [
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
					"text": "p motor-processes", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-47", 
					"patching_rect": [
						409.25, 
						503.0, 
						105.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.prepend /init", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-36", 
					"patching_rect": [
						473.25, 
						472.0, 
						80.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "130", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 11.0, 
					"id": "obj-30", 
					"patching_rect": [
						853.0, 
						292.0, 
						50.0, 
						17.0
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
					"fontsize": 11.0, 
					"id": "obj-24", 
					"patching_rect": [
						1279.0, 
						418.0, 
						100.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "x screen dim == 20 deg", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 11.0, 
					"id": "obj-18", 
					"patching_rect": [
						996.0, 
						147.0, 
						168.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "calibrate x/y pixel to motor angle", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 11.0, 
					"id": "obj-17", 
					"patching_rect": [
						996.0, 
						88.0, 
						168.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /base/target/x = scale( /x\\, -1\\, 1\\, -10\\, 10) * -1", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-2", 
					"patching_rect": [
						409.25, 
						379.0, 
						257.0, 
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
							"revision": 4
						}, 
						"boxes": [
							{
								"box": {
									"fontname": "Arial", 
									"presentation_rect": [
										598.0, 
										580.0, 
										0.0, 
										0.0
									], 
									"text": "/1 : 12,\n/2 : 22,\n/3 : 33", 
									"numinlets": 2, 
									"linecount": 3, 
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
									"id": "obj-25", 
									"patching_rect": [
										602.25, 
										580.0, 
										150.0, 
										44.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.select /usehead", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-21", 
									"patching_rect": [
										782.0, 
										538.0, 
										100.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /usehead", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-20", 
									"patching_rect": [
										863.0, 
										501.0, 
										100.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "t l l", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-19", 
									"patching_rect": [
										782.0, 
										355.0, 
										100.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "/1 : 12,\n/2 : 22,\n/3 : 33", 
									"numinlets": 2, 
									"linecount": 3, 
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
									"id": "obj-15", 
									"patching_rect": [
										764.0, 
										77.0, 
										150.0, 
										44.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-9", 
									"patching_rect": [
										884.0, 
										290.0, 
										100.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr map( lambda(i){ if(value(/allheads[[i]]) == /maxval\\, /usehead = /allheads[[i]])\\, }\\, aseq(0\\, length(/allheads) - 1 ) )", 
									"numinlets": 1, 
									"linecount": 2, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-13", 
									"patching_rect": [
										863.0, 
										451.0, 
										308.5, 
										31.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /distance", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-12", 
									"patching_rect": [
										863.0, 
										386.0, 
										100.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /allheads = getaddresses()\\, /maxval = max(map(value\\, /allheads))\\, /usehead = /nil", 
									"numinlets": 1, 
									"linecount": 2, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-11", 
									"patching_rect": [
										863.0, 
										414.0, 
										364.0, 
										31.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /_new", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-10", 
									"patching_rect": [
										173.75, 
										378.0, 
										77.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.collect", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-8", 
									"patching_rect": [
										173.75, 
										349.0, 
										51.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.iterate", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-7", 
									"patching_rect": [
										173.75, 
										242.5, 
										50.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "t b l", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"bang", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-2", 
									"patching_rect": [
										92.75, 
										205.0, 
										100.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /head", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-6", 
									"patching_rect": [
										92.75, 
										177.5, 
										75.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /skel", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-5", 
									"patching_rect": [
										92.75, 
										106.5, 
										80.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "/xy/1 : [1049.45, 157.182],\n/distance/1 : 2084.49,\n/certainty/1 : 0.", 
									"numinlets": 2, 
									"linecount": 3, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "o.message", 
									"fontsize": 48.0, 
									"textcolor": [
										0.0, 
										0.0, 
										0.0, 
										1.0
									], 
									"id": "obj-4", 
									"patching_rect": [
										40.25, 
										656.0, 
										1274.0, 
										170.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.address.reorder 1 0", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-3", 
									"patching_rect": [
										92.75, 
										138.0, 
										125.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"comment": "", 
									"numinlets": 1, 
									"numoutlets": 0, 
									"maxclass": "outlet", 
									"id": "obj-1", 
									"patching_rect": [
										272.0, 
										40.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "t 1 l", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"int", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-111", 
									"patching_rect": [
										560.0, 
										401.0, 
										32.5, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "gate", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-110", 
									"patching_rect": [
										160.25, 
										538.0, 
										32.5, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "route dim", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-77", 
									"patching_rect": [
										562.0, 
										196.0, 
										56.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "jit.matrixinfo", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-76", 
									"patching_rect": [
										562.0, 
										165.0, 
										69.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /screenDim /pointsize 20", 
									"numinlets": 2, 
									"linecount": 2, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-75", 
									"patching_rect": [
										562.0, 
										242.5, 
										106.0, 
										31.0
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
									"fontsize": 11.0, 
									"id": "obj-108", 
									"patching_rect": [
										160.25, 
										564.0, 
										47.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /address = getaddresses()\\, assign( quote(/_new/xy) + /address\\, value(/address)[[0\\,1]])\\, assign(quote(/_new/distance) + /address\\, value(/address)[[2]])\\, assign( quote(/_new/certainty) + /address\\, value(/address)[[3]])", 
									"numinlets": 1, 
									"linecount": 3, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-106", 
									"patching_rect": [
										173.75, 
										271.5, 
										451.0, 
										43.0
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
									"id": "obj-97", 
									"patching_rect": [
										50.0, 
										223.5, 
										20.0, 
										20.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.collect", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-17", 
									"patching_rect": [
										92.75, 
										80.0, 
										55.0, 
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
										"bang"
									], 
									"maxclass": "inlet", 
									"id": "obj-28", 
									"patching_rect": [
										92.75, 
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
										"jit_matrix"
									], 
									"maxclass": "inlet", 
									"id": "obj-29", 
									"patching_rect": [
										562.0, 
										65.0, 
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
										160.25, 
										625.0, 
										25.0, 
										25.0
									]
								}
							}
						], 
						"default_fontface": 0, 
						"gridonopen": 0, 
						"rect": [
							385.0, 
							70.0, 
							1254.0, 
							929.0
						], 
						"visible": 1, 
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
										"obj-19", 
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
										"obj-8", 
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
										"obj-30", 
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
										"obj-13", 
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
										"obj-108", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-111", 
										1
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
										"obj-111", 
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
										"obj-13", 
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
										"obj-17", 
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
										"obj-17", 
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
										"obj-19", 
										1
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
										"obj-19", 
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
									"disabled": 0, 
									"source": [
										"obj-2", 
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
										"obj-2", 
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
										"obj-20", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-21", 
										1
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
										"obj-4", 
										1
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
										"obj-17", 
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
										"obj-76", 
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
										"obj-2", 
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
										"obj-106", 
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
										"obj-111", 
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
										"obj-77", 
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
										"obj-75", 
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
										"obj-10", 
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
					"text": "p to_odot", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-31", 
					"patching_rect": [
						409.25, 
						242.0, 
						56.0, 
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
							"revision": 4
						}, 
						"boxes": [
							{
								"box": {
									"fontname": "Arial", 
									"text": "jit.op @op !- @val 255", 
									"numinlets": 2, 
									"linecount": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"jit_matrix", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-119", 
									"patching_rect": [
										152.5, 
										383.0, 
										100.0, 
										31.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "jit.matrix 4 char 640 480", 
									"numinlets": 1, 
									"linecount": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"jit_matrix", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-116", 
									"patching_rect": [
										50.0, 
										341.0, 
										115.0, 
										31.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "t b l clear", 
									"numinlets": 1, 
									"numoutlets": 3, 
									"outlettype": [
										"bang", 
										"", 
										"clear"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-114", 
									"patching_rect": [
										129.166626, 
										235.0, 
										100.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /lcd/draw/*", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-113", 
									"patching_rect": [
										152.5, 
										273.0, 
										100.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /y = int32( (/screenDim[[1]] / 2) - /xy[[1]] )", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-112", 
									"patching_rect": [
										199.166626, 
										130.0, 
										241.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /lcd/draw/1 = [frameoval\\, /x - /pointsize\\, /y - /pointsize\\, /x + /pointsize\\, /y + /pointsize\\, 0\\, 255\\, 255]", 
									"numinlets": 1, 
									"linecount": 2, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-104", 
									"patching_rect": [
										199.166626, 
										164.0, 
										341.0, 
										31.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "jit.op @op +", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"jit_matrix", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-101", 
									"patching_rect": [
										50.0, 
										444.0, 
										100.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "jit.lcd 4 char 640 480", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"jit_matrix", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-99", 
									"patching_rect": [
										152.5, 
										341.0, 
										115.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /x = int32(/xy[[0]] + (/screenDim[[0]] / 2))", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-93", 
									"patching_rect": [
										199.166626, 
										100.0, 
										238.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "jit.op @op * @val 25", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"jit_matrix", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 12.0, 
									"id": "obj-22", 
									"patching_rect": [
										50.0, 
										191.0, 
										127.0, 
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
										"jit_matrix"
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
									"id": "obj-24", 
									"patching_rect": [
										199.166626, 
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
									"id": "obj-26", 
									"patching_rect": [
										50.0, 
										523.0, 
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
										"obj-101", 
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
										"obj-104", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-114", 
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
										"obj-104", 
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
										"obj-99", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-114", 
										1
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
										"obj-114", 
										2
									], 
									"hidden": 0, 
									"destination": [
										"obj-99", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-114", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-99", 
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
										"obj-101", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-119", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-101", 
										1
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
										"obj-116", 
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
										"obj-22", 
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
										"obj-93", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-93", 
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
										"obj-99", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-119", 
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
					"text": "p draw_circle", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"jit_matrix"
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-27", 
					"patching_rect": [
						44.5, 
						258.0, 
						75.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "229 - 71", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 11.0, 
					"id": "obj-20", 
					"patching_rect": [
						833.0, 
						192.0, 
						51.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.gather /x /y", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-10", 
					"patching_rect": [
						409.25, 
						347.0, 
						100.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /y = ( /xy[[1]] / /screenDim[[1]] )", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-7", 
					"patching_rect": [
						409.25, 
						311.5, 
						241.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.expr /x = (/xy[[0]] / /screenDim[[0]] )", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-9", 
					"patching_rect": [
						409.25, 
						281.5, 
						238.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/angle : 130,\n/speed : 30,\n/id : 7", 
					"numinlets": 2, 
					"linecount": 3, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "o.message", 
					"fontsize": 36.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-118", 
					"patching_rect": [
						165.75, 
						633.5, 
						728.0, 
						129.0
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
							"revision": 4
						}, 
						"boxes": [
							{
								"box": {
									"fontname": "Arial", 
									"text": "jit.op @op !- @val 255", 
									"numinlets": 2, 
									"linecount": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"jit_matrix", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-83", 
									"patching_rect": [
										367.0, 
										155.0, 
										100.0, 
										31.0
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
									"fontsize": 10.0, 
									"parameter_enable": 0, 
									"id": "obj-81", 
									"patching_rect": [
										600.5, 
										100.0, 
										48.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "radius $1", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "message", 
									"fontsize": 10.0, 
									"id": "obj-82", 
									"patching_rect": [
										600.5, 
										122.0, 
										64.0, 
										16.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "/xy : [0., 0.],\n/area : 0.,\n/screenDim : [320, 240],\n/x : -0.25", 
									"numinlets": 2, 
									"linecount": 4, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "o.message", 
									"fontsize": 18.0, 
									"textcolor": [
										0.0, 
										0.0, 
										0.0, 
										1.0
									], 
									"id": "obj-80", 
									"patching_rect": [
										625.0, 
										529.5, 
										239.0, 
										88.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /x = (/xy[[0]] - (/screenDim[[0]] / 2 )) / /screenDim[[0]] / 2", 
									"numinlets": 1, 
									"linecount": 2, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-79", 
									"patching_rect": [
										696.0, 
										450.0, 
										305.0, 
										31.0
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
									"fontsize": 11.0, 
									"id": "obj-78", 
									"patching_rect": [
										405.5, 
										410.0, 
										100.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "route dim", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-77", 
									"patching_rect": [
										692.0, 
										224.0, 
										100.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "jit.matrixinfo", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-76", 
									"patching_rect": [
										692.0, 
										193.0, 
										100.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.pack /screenDim", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-75", 
									"patching_rect": [
										692.0, 
										270.5, 
										106.0, 
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
											"revision": 4
										}, 
										"boxes": [
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.expr assign(quote(/centroid/) + /id + quote(/area)\\, /value[[ 2 ]] )", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 11.0, 
													"id": "obj-51", 
													"patching_rect": [
														63.5, 
														228.0, 
														335.0, 
														19.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.select /centroid", 
													"numinlets": 2, 
													"numoutlets": 2, 
													"outlettype": [
														"", 
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 11.0, 
													"id": "obj-50", 
													"patching_rect": [
														63.5, 
														259.0, 
														100.0, 
														19.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.collect", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														""
													], 
													"maxclass": "newobj", 
													"fontsize": 11.0, 
													"id": "obj-48", 
													"patching_rect": [
														50.0, 
														302.0, 
														51.0, 
														19.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.expr assign(quote(/centroid/) + /id + quote(/xy)\\, /value[[ 0\\, 1 ]] )", 
													"numinlets": 1, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 11.0, 
													"id": "obj-46", 
													"patching_rect": [
														63.5, 
														193.0, 
														324.0, 
														19.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "o.pack /value /id", 
													"numinlets": 2, 
													"numoutlets": 1, 
													"outlettype": [
														"FullPacket"
													], 
													"maxclass": "newobj", 
													"fontsize": 11.0, 
													"id": "obj-44", 
													"patching_rect": [
														63.5, 
														161.0, 
														100.0, 
														19.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "t b l", 
													"numinlets": 1, 
													"numoutlets": 2, 
													"outlettype": [
														"bang", 
														""
													], 
													"maxclass": "newobj", 
													"fontsize": 11.0, 
													"id": "obj-42", 
													"patching_rect": [
														50.0, 
														100.0, 
														46.0, 
														19.0
													]
												}
											}, 
											{
												"box": {
													"fontname": "Arial", 
													"text": "jit.iter", 
													"numinlets": 1, 
													"numoutlets": 3, 
													"outlettype": [
														"", 
														"", 
														""
													], 
													"maxclass": "newobj", 
													"fontsize": 11.0, 
													"id": "obj-35", 
													"patching_rect": [
														63.5, 
														136.0, 
														46.0, 
														19.0
													]
												}
											}, 
											{
												"box": {
													"comment": "", 
													"numinlets": 0, 
													"numoutlets": 1, 
													"outlettype": [
														"jit_matrix"
													], 
													"maxclass": "inlet", 
													"id": "obj-66", 
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
													"id": "obj-68", 
													"patching_rect": [
														50.0, 
														381.0, 
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
														"obj-35", 
														1
													], 
													"hidden": 0, 
													"destination": [
														"obj-44", 
														1
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
														"obj-44", 
														0
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
														"obj-35", 
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
														"obj-48", 
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
														"obj-46", 
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
														"obj-51", 
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
														"obj-68", 
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
														"obj-48", 
														0
													]
												}
											}, 
											{
												"patchline": {
													"disabled": 0, 
													"source": [
														"obj-51", 
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
														"obj-66", 
														0
													], 
													"hidden": 0, 
													"destination": [
														"obj-42", 
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
									"text": "p o.cv.jit.centroids", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-69", 
									"patching_rect": [
										405.5, 
										307.0, 
										98.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										""
									], 
									"maxclass": "jit.fpsgui", 
									"fontsize": 12.0, 
									"mode": 3, 
									"id": "obj-65", 
									"patching_rect": [
										211.333374, 
										137.0, 
										80.0, 
										35.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "cv.jit.blobs.centroids.draw", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										"jit_matrix"
									], 
									"maxclass": "newobj", 
									"fontsize": 10.0, 
									"id": "obj-54", 
									"patching_rect": [
										50.0, 
										221.0, 
										205.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "/xy : [0., 0.],\n/area : 0.,\n/screenDim : [320, 240]", 
									"numinlets": 2, 
									"linecount": 3, 
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
									"id": "obj-53", 
									"patching_rect": [
										414.0, 
										579.5, 
										150.0, 
										44.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.route /centroid/0", 
									"numinlets": 2, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-52", 
									"patching_rect": [
										405.5, 
										359.0, 
										100.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "jit.matrix 1 char 320 240", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"jit_matrix", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-32", 
									"patching_rect": [
										405.5, 
										118.0, 
										128.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "cv.jit.blobs.centroids", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"jit_matrix", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 10.0, 
									"id": "obj-30", 
									"patching_rect": [
										405.5, 
										260.0, 
										101.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "cv.jit.label @charmode 1 @threshold 20", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"jit_matrix", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 10.0, 
									"id": "obj-31", 
									"patching_rect": [
										405.5, 
										222.0, 
										188.0, 
										18.0
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
									"fontsize": 10.0, 
									"parameter_enable": 0, 
									"id": "obj-74", 
									"patching_rect": [
										491.5, 
										148.0, 
										48.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "cv.jit.threshold @mode 1 @radius 20 @threshold 20", 
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"jit_matrix", 
										""
									], 
									"maxclass": "newobj", 
									"fontsize": 10.0, 
									"id": "obj-71", 
									"patching_rect": [
										405.5, 
										193.0, 
										243.0, 
										18.0
									]
								}
							}, 
							{
								"box": {
									"numinlets": 1, 
									"numoutlets": 2, 
									"outlettype": [
										"", 
										""
									], 
									"maxclass": "jit.pwindow", 
									"id": "obj-67", 
									"patching_rect": [
										50.0, 
										254.0, 
										320.0, 
										240.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "threshold $1", 
									"numinlets": 2, 
									"numoutlets": 1, 
									"outlettype": [
										""
									], 
									"maxclass": "message", 
									"fontsize": 10.0, 
									"id": "obj-72", 
									"patching_rect": [
										491.5, 
										170.0, 
										64.0, 
										16.0
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
									"id": "obj-102", 
									"patching_rect": [
										405.5, 
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
							25.0, 
							69.0, 
							1268.0, 
							642.0
						], 
						"lines": [
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-102", 
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
										"obj-30", 
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
										"obj-30", 
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
										"obj-31", 
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
										"obj-32", 
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
										"obj-32", 
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
										"obj-32", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-83", 
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
										"obj-78", 
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
										"obj-67", 
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
										"obj-52", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-71", 
										0
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
										"obj-71", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-54", 
										1
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
										"obj-71", 
										0
									], 
									"midpoints": [
										501.0, 
										189.0, 
										415.0, 
										189.0
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
										"obj-72", 
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
										"obj-78", 
										1
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
										"obj-77", 
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
										"obj-75", 
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
										"obj-53", 
										1
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
										"obj-79", 
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
										"obj-80", 
										1
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
										"obj-82", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-82", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-71", 
										0
									]
								}
							}, 
							{
								"patchline": {
									"disabled": 0, 
									"source": [
										"obj-83", 
										0
									], 
									"hidden": 0, 
									"destination": [
										"obj-71", 
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
					"text": "p cv stuff", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-103", 
					"patching_rect": [
						777.0, 
						147.0, 
						54.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "jit.pwindow", 
					"id": "obj-84", 
					"patching_rect": [
						44.5, 
						293.5, 
						320.0, 
						240.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "print", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-21", 
					"patching_rect": [
						473.25, 
						242.0, 
						32.0, 
						19.0
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
					"fontsize": 12.0, 
					"id": "obj-43", 
					"patching_rect": [
						133.0, 
						121.0, 
						34.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "read jit.openni_debugrec.xml", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 12.0, 
					"id": "obj-3", 
					"patching_rect": [
						432.0, 
						63.0, 
						165.0, 
						18.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "read", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 12.0, 
					"id": "obj-41", 
					"patching_rect": [
						397.0, 
						45.0, 
						35.0, 
						18.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"int", 
						"bang"
					], 
					"maxclass": "number", 
					"fontsize": 12.0, 
					"parameter_enable": 0, 
					"id": "obj-19", 
					"patching_rect": [
						193.0, 
						35.0, 
						50.0, 
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
					"id": "obj-14", 
					"patching_rect": [
						133.0, 
						35.0, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "qmetro 34", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						"bang"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-8", 
					"patching_rect": [
						133.0, 
						80.0, 
						65.0, 
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
					"id": "obj-5", 
					"patching_rect": [
						358.0, 
						80.0, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "read jit.openni_config.xml", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 12.0, 
					"id": "obj-6", 
					"patching_rect": [
						432.0, 
						9.0, 
						165.0, 
						18.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "jit.openni @output_scene_floor 1 @output_skeleton_orientation 0 @skeleton_smooth_factor 0.3 @output_imagemap 1 @output_irmap 1 @output_usermap 1 @output_depthmap 1", 
					"numinlets": 1, 
					"linecount": 5, 
					"numoutlets": 6, 
					"outlettype": [
						"jit_matrix", 
						"jit_matrix", 
						"jit_matrix", 
						"jit_matrix", 
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-1", 
					"patching_rect": [
						244.0, 
						147.0, 
						241.5, 
						74.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "clear", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 11.0, 
					"id": "obj-15", 
					"patching_rect": [
						452.25, 
						98.0, 
						50.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"int", 
						"bang"
					], 
					"maxclass": "number", 
					"fontsize": 11.0, 
					"parameter_enable": 0, 
					"id": "obj-11", 
					"patching_rect": [
						1209.0, 
						265.0, 
						50.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/angle : \"$1\",\n/speed : 64,\n/id : 5", 
					"numinlets": 2, 
					"linecount": 3, 
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
					"id": "obj-12", 
					"patching_rect": [
						1209.0, 
						301.0, 
						109.0, 
						44.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"int", 
						"bang"
					], 
					"maxclass": "number", 
					"fontsize": 11.0, 
					"parameter_enable": 0, 
					"id": "obj-13", 
					"patching_rect": [
						853.0, 
						325.0, 
						50.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/angle : \"$1\",\n/speed : 30,\n/id : 7", 
					"numinlets": 2, 
					"linecount": 3, 
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
					"id": "obj-16", 
					"patching_rect": [
						853.0, 
						361.0, 
						109.0, 
						44.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "comport 1 115200", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-39", 
					"patching_rect": [
						409.25, 
						569.0, 
						100.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.io.ax12.set-position", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-38", 
					"patching_rect": [
						409.25, 
						541.0, 
						116.0, 
						19.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			95.0, 
			44.0, 
			1585.0, 
			807.0
		], 
		"lines": [
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-1", 
						5
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
						"obj-1", 
						3
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
						"obj-1", 
						4
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
						"obj-1", 
						3
					], 
					"hidden": 0, 
					"destination": [
						"obj-31", 
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
						"obj-12", 
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
						"obj-16", 
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
						"obj-8", 
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
						"obj-19", 
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
						"obj-2", 
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
						"obj-27", 
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
						"obj-3", 
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
						"obj-32", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-26", 
						1
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
						"obj-32", 
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
						"obj-39", 
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
						"obj-47", 
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
						"obj-26", 
						1
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
						"obj-35", 
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
						"obj-37", 
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
						"obj-30", 
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
						"obj-43", 
						1
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
						"obj-43", 
						0
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
						"obj-47", 
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
						"obj-52", 
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
						"obj-7", 
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
						"obj-8", 
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
						"obj-9", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-7", 
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
				"bootpath": "/Users/rama/Documents/__CNMAT/cnmat-git/CNMAT-odot/testing/io", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "o.io.ax12.set-position.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/rama/Documents/_max5_library/3rd party (active)/cv.jit_OSX_v1.7.2/cv.jit-support/Abstractions", 
				"type": "JSON", 
				"patcherrelativepath": "../../../../../_max5_library/3rd party (active)/cv.jit_OSX_v1.7.2/cv.jit-support/Abstractions", 
				"name": "cv.jit.blobs.centroids.draw.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/rama/Documents/_max5_library/3rd party (active)/CNMAT_Externals/odot/abstractions", 
				"type": "JSON", 
				"patcherrelativepath": "../../../../../_max5_library/3rd party (active)/CNMAT_Externals/odot/abstractions", 
				"name": "o.gather.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/rama/Documents/__CNMAT/cnmat-git/CNMAT-odot/testing/abstractions", 
				"type": "JSON", 
				"patcherrelativepath": "../abstractions", 
				"name": "o.address.reorder.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/rama/Documents/__CNMAT/cnmat-git/CNMAT-odot/testing/io", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "o.io.ax12.set-compliance.maxpat", 
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
				"name": "o.cond.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "comport.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.message.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "jit.openni.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "cv.jit.threshold.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "cv.jit.label.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "cv.jit.blobs.centroids.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.pack.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.collect.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.select.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.union.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.intersection.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.difference.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.iterate.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.prepend.mxo"
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
				"name": "o.change.mxo"
			}
		]
	}
}