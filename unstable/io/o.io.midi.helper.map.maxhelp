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
					"text": "o.pack /rawMIDI", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-6", 
					"patching_rect": [
						417.0, 
						395.0, 
						90.0, 
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
					"id": "obj-57", 
					"patching_rect": [
						942.0, 
						450.0, 
						20.0, 
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
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"bang"
									], 
									"maxclass": "button", 
									"id": "obj-4", 
									"patching_rect": [
										50.0, 
										57.0, 
										20.0, 
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
									"id": "obj-2", 
									"patching_rect": [
										50.0, 
										18.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr map( lambda(n\\, p){ assign( quote(/note/) + n\\, p)\\, }\\, /noteNumbers\\, /pitch)", 
									"numinlets": 1, 
									"linecount": 2, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-48", 
									"patching_rect": [
										50.0, 
										271.0, 
										227.0, 
										31.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /pitch = quote(/) + /notes[[/intervals]] + quote(/) + /octave", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-47", 
									"patching_rect": [
										50.0, 
										236.0, 
										322.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /octave = ((/noteNumbers - 24) / 12) + 2", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-46", 
									"patching_rect": [
										50.0, 
										203.0, 
										238.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "/notes : [\"c\", \"c#\", \"d\", \"d#\", \"e\", \"f\", \"f#\", \"g\", \"g#\", \"a\", \"a#\", \"b\"]", 
									"numinlets": 2, 
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
									"id": "obj-45", 
									"patching_rect": [
										50.0, 
										100.0, 
										265.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /intervals = (/noteNumbers - 24) % 12", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-31", 
									"patching_rect": [
										50.0, 
										172.0, 
										227.0, 
										19.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "o.expr /noteNumbers = aseq(24\\, 108)", 
									"numinlets": 1, 
									"numoutlets": 1, 
									"outlettype": [
										"FullPacket"
									], 
									"maxclass": "newobj", 
									"fontsize": 11.0, 
									"id": "obj-27", 
									"patching_rect": [
										50.0, 
										145.0, 
										194.0, 
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
									"id": "obj-54", 
									"patching_rect": [
										15.0, 
										352.0, 
										25.0, 
										25.0
									]
								}
							}, 
							{
								"box": {
									"fontname": "Arial", 
									"text": "/channel : \"/channel\",\n/note/24 : \"/c/2\",\n/note/25 : \"/c#/2\",\n/note/26 : \"/d/2\",\n/note/27 : \"/d#/2\",\n/note/28 : \"/e/2\",\n/note/29 : \"/f/2\",\n/note/30 : \"/f#/2\",\n/note/31 : \"/g/2\",\n/note/32 : \"/g#/2\",\n/note/33 : \"/a/2\",\n/note/34 : \"/a#/2\",\n/note/35 : \"/b/2\",\n/note/36 : \"/c/3\",\n/note/37 : \"/c#/3\",\n/note/38 : \"/d/3\",\n/note/39 : \"/d#/3\",\n/note/40 : \"/e/3\",\n/note/41 : \"/f/3\",\n/note/42 : \"/f#/3\",\n/note/43 : \"/g/3\",\n/note/44 : \"/g#/3\",\n/note/45 : \"/a/3\",\n/note/46 : \"/a#/3\",\n/note/47 : \"/b/3\",\n/note/48 : \"/c/4\",\n/note/49 : \"/c#/4\",\n/note/50 : \"/d/4\",\n/note/51 : \"/d#/4\",\n/note/52 : \"/e/4\",\n/note/53 : \"/f/4\",\n/note/54 : \"/f#/4\",\n/note/55 : \"/g/4\",\n/note/56 : \"/g#/4\",\n/note/57 : \"/a/4\",\n/note/58 : \"/a#/4\",\n/note/59 : \"/b/4\",\n/note/60 : \"/c/5\",\n/note/61 : \"/c#/5\",\n/note/62 : \"/d/5\",\n/note/63 : \"/d#/5\",\n/note/64 : \"/e/5\",\n/note/65 : \"/f/5\",\n/note/66 : \"/f#/5\",\n/note/67 : \"/g/5\",\n/note/68 : \"/g#/5\",\n/note/69 : \"/a/5\",\n/note/70 : \"/a#/5\",\n/note/71 : \"/b/5\",\n/note/72 : \"/c/6\",\n/note/73 : \"/c#/6\",\n/note/74 : \"/d/6\",\n/note/75 : \"/d#/6\",\n/note/76 : \"/e/6\",\n/note/77 : \"/f/6\",\n/note/78 : \"/f#/6\",\n/note/79 : \"/g/6\",\n/note/80 : \"/g#/6\",\n/note/81 : \"/a/6\",\n/note/82 : \"/a#/6\",\n/note/83 : \"/b/6\",\n/note/84 : \"/c/7\",\n/note/85 : \"/c#/7\",\n/note/86 : \"/d/7\",\n/note/87 : \"/d#/7\",\n/note/88 : \"/e/7\",\n/note/89 : \"/f/7\",\n/note/90 : \"/f#/7\",\n/note/91 : \"/g/7\",\n/note/92 : \"/g#/7\",\n/note/93 : \"/a/7\",\n/note/94 : \"/a#/7\",\n/note/95 : \"/b/7\",\n/note/96 : \"/c/8\",\n/note/97 : \"/c#/8\",\n/note/98 : \"/d/8\",\n/note/99 : \"/d#/8\",\n/note/100 : \"/e/8\",\n/note/101 : \"/f/8\",\n/note/102 : \"/f#/8\",\n/note/103 : \"/g/8\",\n/note/104 : \"/g#/8\",\n/note/105 : \"/a/8\",\n/note/106 : \"/a#/8\",\n/note/107 : \"/b/8\",\n/note/108 : \"/c/9\"", 
									"numinlets": 2, 
									"linecount": 86, 
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
									"id": "obj-1", 
									"patching_rect": [
										50.0, 
										334.0, 
										156.0, 
										1064.0
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
										"obj-1", 
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
										"obj-27", 
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
										"obj-31", 
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
										"obj-45", 
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
										"obj-46", 
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
										"obj-47", 
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
										"obj-48", 
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
						"fontsize": 11.0, 
						"globalpatchername": "", 
						"fontface": 0, 
						"default_fontface": 0, 
						"default_fontname": "Arial", 
						"default_fontsize": 11.0, 
						"digest": ""
					}, 
					"text": "p example-wrapper-scripting for QuNexus", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-55", 
					"patching_rect": [
						942.0, 
						475.0, 
						218.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "<< o.io.midiin", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 11.0, 
					"id": "obj-44", 
					"patching_rect": [
						947.0, 
						157.793289, 
						150.0, 
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
					"fontsize": 11.0, 
					"id": "obj-42", 
					"patching_rect": [
						583.0, 
						114.829605, 
						56.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/midi/device/0 : \"IAC Driver IAC Bus 1\",\n/midi/device/1 : \"to Max 1\",\n/midi/device/2 : \"to Max 2\"", 
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
					"id": "obj-39", 
					"patching_rect": [
						742.0, 
						202.829605, 
						193.0, 
						44.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/rawMIDI : 57", 
					"numinlets": 2, 
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
					"id": "obj-23", 
					"patching_rect": [
						574.0, 
						214.829605, 
						150.0, 
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
						"int", 
						"bang"
					], 
					"maxclass": "number", 
					"fontsize": 11.0, 
					"parameter_enable": 0, 
					"id": "obj-7", 
					"patching_rect": [
						574.0, 
						23.293289, 
						50.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "noteout \"IAC Driver IAC Bus 1\"", 
					"numinlets": 3, 
					"numoutlets": 0, 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-4", 
					"patching_rect": [
						583.0, 
						78.293289, 
						161.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"name": "o.io.midiin.maxpat", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						""
					], 
					"maxclass": "bpatcher", 
					"border": 1, 
					"id": "obj-3", 
					"patching_rect": [
						583.0, 
						142.829605, 
						352.0, 
						52.268158
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "takes /rawMIDI messages from o.io.midiin\n\nwrapped midi values come out left outlet\n\neverything else comes out right outlet -- latest input is prepended with /input", 
					"numinlets": 1, 
					"maxclass": "comment", 
					"numoutlets": 0, 
					"linecount": 6, 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-26", 
					"patching_rect": [
						1147.0, 
						90.0, 
						265.0, 
						88.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.io.midi.helper.map", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 18.0, 
					"id": "obj-25", 
					"patching_rect": [
						1147.0, 
						57.0, 
						172.0, 
						27.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "<<< ", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 14.0, 
					"id": "obj-24", 
					"patching_rect": [
						606.666687, 
						588.0, 
						44.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "your namespace is here", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 14.0, 
					"id": "obj-22", 
					"patching_rect": [
						1279.0, 
						586.5, 
						160.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "<< a list of all the inputs o.broadcast.api has seen so far", 
					"numinlets": 1, 
					"maxclass": "comment", 
					"numoutlets": 0, 
					"linecount": 3, 
					"frgb": 0.0, 
					"fontsize": 11.0, 
					"id": "obj-10", 
					"patching_rect": [
						1273.0, 
						708.0, 
						143.0, 
						43.0
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
					"id": "obj-12", 
					"patching_rect": [
						1373.0, 
						632.0, 
						50.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.route /input", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-30", 
					"patching_rect": [
						1245.0, 
						622.0, 
						100.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/channel,\n/note/0,\n/note/1,\n/note/10,\n/note/11,\n/note/13,\n/note/14,\n/note/15,\n/note/16,\n/note/17,\n/note/18,\n/note/2,\n/note/20,\n/note/22,\n/note/26,\n/note/27,\n/note/28,\n/note/29,\n/note/3,\n/note/30,\n/note/31,\n/note/32,\n/note/33,\n/note/34,\n/note/35,\n/note/36,\n/note/37,\n/note/38,\n/note/39,\n/note/4,\n/note/40,\n/note/41,\n/note/42,\n/note/43,\n/note/44,\n/note/45,\n/note/46,\n/note/47,\n/note/48,\n/note/49,\n/note/5,\n/note/50,\n/note/51,\n/note/52,\n/note/53,\n/note/54,\n/note/55,\n/note/56,\n/note/57,\n/note/58,\n/note/59,\n/note/6,\n/note/60,\n/note/61,\n/note/62,\n/note/63,\n/note/64,\n/note/66,\n/note/67,\n/note/68,\n/note/69,\n/note/7,\n/note/70,\n/note/71,\n/note/72,\n/note/73,\n/note/74,\n/note/75,\n/note/76,\n/note/77,\n/note/8,\n/note/9", 
					"numinlets": 2, 
					"linecount": 72, 
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
					"id": "obj-29", 
					"patching_rect": [
						1147.0, 
						695.0, 
						117.0, 
						892.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.broadcast.api", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-28", 
					"patching_rect": [
						1245.0, 
						660.0, 
						100.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "slider", 
					"parameter_enable": 0, 
					"id": "obj-14", 
					"patching_rect": [
						443.0, 
						131.463684, 
						20.0, 
						140.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "144, 63, $1", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 13.0, 
					"id": "obj-21", 
					"patching_rect": [
						443.0, 
						291.463684, 
						76.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "this keeps track of the state of everything, if needed", 
					"numinlets": 1, 
					"maxclass": "comment", 
					"numoutlets": 0, 
					"linecount": 2, 
					"frgb": 0.0, 
					"fontsize": 11.0, 
					"id": "obj-13", 
					"patching_rect": [
						24.666626, 
						587.5, 
						161.0, 
						31.0
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
					"id": "obj-11", 
					"patching_rect": [
						154.333313, 
						541.5, 
						50.0, 
						17.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/page : 1,\n/slider/red : 28,\n/slider/green : 83,\n/C/3 : 48", 
					"numinlets": 2, 
					"linecount": 4, 
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
					"id": "obj-9", 
					"patching_rect": [
						113.333313, 
						645.963684, 
						109.0, 
						56.0
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
					"id": "obj-8", 
					"patching_rect": [
						203.333313, 
						599.5, 
						47.0, 
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
					"id": "obj-2", 
					"patching_rect": [
						203.333313, 
						574.5, 
						47.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "<< loadbang the wrapper namespace", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 18.0, 
					"id": "obj-91", 
					"patching_rect": [
						863.0, 
						404.0, 
						334.0, 
						27.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "if no wrapped value is found in the lookup table, output is sent out the right outlet", 
					"numinlets": 1, 
					"maxclass": "comment", 
					"numoutlets": 0, 
					"linecount": 2, 
					"frgb": 0.0, 
					"fontsize": 18.0, 
					"id": "obj-90", 
					"patching_rect": [
						328.0, 
						645.963684, 
						354.0, 
						47.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/channel : 1,\n/midiinName : \"/note\",\n/wrapName/note/48 : \"/C/3\",\n/wrapName/channel : \"/page\",\n/wrapName/note/62 : \"/slider/green\",\n/wrapName/note/63 : \"/slider/red\",\n/wrapName/cc/55 : \"/knob/1\",\n/wrapName/cc/23 : \"/knob/2\",\n/wrapName/program : \"/button/val\",\n/wrapperLabel : \"/wrapName/note/48\",\n/note : [48, 0]", 
					"numinlets": 2, 
					"linecount": 11, 
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
					"id": "obj-89", 
					"patching_rect": [
						893.0, 
						645.963684, 
						192.0, 
						142.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "<< use the /input address to see what is coming in for wrapping", 
					"numinlets": 1, 
					"maxclass": "comment", 
					"numoutlets": 0, 
					"linecount": 2, 
					"frgb": 0.0, 
					"fontsize": 11.0, 
					"id": "obj-88", 
					"patching_rect": [
						893.0, 
						805.963684, 
						258.0, 
						31.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "wrapped midi values come out left outlet", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 18.0, 
					"id": "obj-86", 
					"patching_rect": [
						220.833313, 
						488.0, 
						334.0, 
						27.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "176, 57, 65", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 13.0, 
					"id": "obj-84", 
					"patching_rect": [
						153.333313, 
						191.963684, 
						76.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "slider", 
					"parameter_enable": 0, 
					"id": "obj-83", 
					"patching_rect": [
						417.0, 
						131.463684, 
						20.0, 
						140.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "144, 62, $1", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 13.0, 
					"id": "obj-82", 
					"patching_rect": [
						417.0, 
						321.0, 
						76.0, 
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
					"fontsize": 11.0, 
					"id": "obj-81", 
					"patching_rect": [
						702.0, 
						340.0, 
						56.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.select /input", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 11.0, 
					"id": "obj-80", 
					"patching_rect": [
						859.0, 
						586.5, 
						100.0, 
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
					"id": "obj-79", 
					"patching_rect": [
						563.0, 
						534.0, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "o.io.midi.helper.map", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 14.0, 
					"id": "obj-76", 
					"patching_rect": [
						583.0, 
						493.0, 
						138.0, 
						22.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "examples of input from midiin", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 18.0, 
					"id": "obj-64", 
					"patching_rect": [
						46.833313, 
						35.0, 
						247.0, 
						27.0
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
					"id": "obj-62", 
					"patching_rect": [
						90.0, 
						321.0, 
						19.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/input : {\n\t/channel : 1,\n\t/note/63 : 28\n}", 
					"numinlets": 2, 
					"linecount": 4, 
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
					"id": "obj-61", 
					"patching_rect": [
						696.0, 
						805.963684, 
						182.0, 
						56.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/page : 1,\n/slider/red : 28", 
					"numinlets": 2, 
					"linecount": 2, 
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
					"id": "obj-60", 
					"patching_rect": [
						469.0, 
						588.0, 
						133.0, 
						48.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "pitch bend", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 13.0, 
					"bubble": 1, 
					"id": "obj-15", 
					"patching_rect": [
						288.5, 
						279.0, 
						89.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "after touch", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 13.0, 
					"bubble": 1, 
					"id": "obj-16", 
					"patching_rect": [
						261.333313, 
						249.0, 
						89.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "program change", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 13.0, 
					"bubble": 1, 
					"id": "obj-17", 
					"patching_rect": [
						233.0, 
						219.0, 
						133.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "control change", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 13.0, 
					"bubble": 1, 
					"id": "obj-5", 
					"patching_rect": [
						214.833313, 
						156.463684, 
						133.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "poly key pressure", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 13.0, 
					"bubble": 1, 
					"id": "obj-18", 
					"patching_rect": [
						198.833313, 
						131.463684, 
						133.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "note on channel 2", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 13.0, 
					"bubble": 1, 
					"id": "obj-19", 
					"patching_rect": [
						178.166656, 
						106.463684, 
						133.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "note on", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 13.0, 
					"bubble": 1, 
					"id": "obj-20", 
					"patching_rect": [
						158.333313, 
						81.0, 
						73.0, 
						25.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "160, 60, 50", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 13.0, 
					"id": "obj-32", 
					"patching_rect": [
						114.0, 
						134.463684, 
						76.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "224, 95, 95", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 13.0, 
					"id": "obj-33", 
					"patching_rect": [
						206.333313, 
						282.0, 
						76.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "176, 55, 65", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 13.0, 
					"id": "obj-34", 
					"patching_rect": [
						132.166656, 
						159.463684, 
						76.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "192, 75", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 13.0, 
					"id": "obj-35", 
					"patching_rect": [
						158.333313, 
						223.0, 
						71.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "208, 85", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 13.0, 
					"id": "obj-36", 
					"patching_rect": [
						178.166656, 
						252.0, 
						71.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "145, 80, 90", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 13.0, 
					"id": "obj-37", 
					"patching_rect": [
						94.0, 
						109.463684, 
						76.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "144, 60, 70", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 13.0, 
					"id": "obj-38", 
					"patching_rect": [
						77.0, 
						83.9785, 
						76.0, 
						19.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "/note/48 : \"/C/3\",\n/channel : \"/page\",\n/note/62 : \"/slider/green\",\n/note/63 : \"/slider/red\",\n/cc/55 : \"/knob/1\",\n/cc/23 : \"/knob/2\",\n/program : \"/button/val\"", 
					"numinlets": 2, 
					"linecount": 7, 
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
					"id": "obj-1", 
					"patching_rect": [
						702.0, 
						377.0, 
						150.0, 
						93.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Arial", 
					"text": "version", 
					"numinlets": 2, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "message", 
					"fontsize": 11.0, 
					"id": "obj-27", 
					"patching_rect": [
						859.0, 
						556.5, 
						50.0, 
						17.0
					]
				}
			}
		], 
		"default_fontface": 0, 
		"gridonopen": 0, 
		"rect": [
			100.0, 
			100.0, 
			1533.0, 
			920.0
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
						"obj-76", 
						1
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
						"obj-2", 
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
						"obj-28", 
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
						"obj-21", 
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
						"obj-27", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-80", 
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
						"obj-29", 
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
						"obj-23", 
						1
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
						"obj-39", 
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
						"obj-76", 
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
						"obj-28", 
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
						"obj-62", 
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
						"obj-62", 
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
						"obj-62", 
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
						"obj-62", 
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
						"obj-62", 
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
						"obj-62", 
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
						"obj-62", 
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
						"obj-3", 
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
						"obj-76", 
						1
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
						"obj-55", 
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
						"obj-76", 
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
						"obj-6", 
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
						"obj-4", 
						1
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
						"obj-4", 
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
						"obj-2", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-76", 
						1
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
						"obj-76", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-60", 
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
						"obj-79", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-76", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-80", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-8", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-2", 
						1
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
						"obj-9", 
						1
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-80", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-61", 
						1
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-80", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-89", 
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
						"obj-1", 
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
						"obj-6", 
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
						"obj-82", 
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
						"obj-62", 
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
				"name": "o.io.midi.helper.map.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/rama/Documents/Max/Packages/CNMAT-MMJSS-2013/patchers", 
				"type": "JSON", 
				"patcherrelativepath": "../../../../../Max/Packages/CNMAT-MMJSS-2013/patchers", 
				"name": "o.broadcast.api.maxpat", 
				"implicit": 1
			}, 
			{
				"bootpath": "/Users/rama/Documents/__CNMAT/cnmat-git/CNMAT-odot/testing/io", 
				"type": "JSON", 
				"patcherrelativepath": ".", 
				"name": "o.io.midiin.maxpat", 
				"implicit": 1
			}, 
			{
				"type": "iLaX", 
				"name": "o.message.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.pack.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.union.mxo"
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
				"name": "o.prepend.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.route.mxo"
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
				"name": "o.mappatch.mxo"
			}, 
			{
				"type": "iLaX", 
				"name": "o.var.mxo"
			}
		]
	}
}