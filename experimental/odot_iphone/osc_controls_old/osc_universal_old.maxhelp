{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 5
		}
,
		"rect" : [ 251.0, 101.0, 690.0, 538.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"showrootpatcherontab" : 0,
		"showontab" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 0,
							"revision" : 5
						}
,
						"rect" : [ 0.0, 26.0, 690.0, 512.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-25",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 256.0, 176.0, 20.0 ],
									"text" : "Using oscemote accelerometer"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 44.0, 161.0, 20.0 ],
									"text" : "Using mrmr maxMSP_demo"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 13.0, 313.0, 145.0, 139.0 ],
									"setstyle" : 2,
									"size" : 3
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 486.0, 109.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "pictslider",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 321.0, 109.0, 100.0, 100.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 153.0, 102.0, 20.0, 140.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 13.0, 102.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 13.0, 283.0, 163.0, 20.0 ],
									"text" : "osc_universal accelerometer"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 486.0, 71.0, 120.0, 20.0 ],
									"text" : "osc_universal toggle"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 321.0, 71.0, 151.0, 20.0 ],
									"text" : "osc_universal pictslider 32"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 153.0, 71.0, 158.0, 20.0 ],
									"text" : "osc_universal multislider 24"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 13.0, 71.0, 131.0, 20.0 ],
									"text" : "osc_universal button 1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
 ],
						"dependency_cache" : [ 							{
								"name" : "osc_universal.maxpat",
								"bootpath" : "/Users/samgmansfield/Documents/CNMAT/cnmat/trunk/max/externals/odot/trunk/testing/odot_iphone/osc_controls_recieve",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "osc_button.maxpat",
								"bootpath" : "/Users/samgmansfield/Documents/CNMAT/cnmat/trunk/max/externals/odot/trunk/testing/odot_iphone/osc_controls_recieve",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "osc_multislider.maxpat",
								"bootpath" : "/Users/samgmansfield/Documents/CNMAT/cnmat/trunk/max/externals/odot/trunk/testing/odot_iphone/osc_controls_recieve",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "osc_pictslider.maxpat",
								"bootpath" : "/Users/samgmansfield/Documents/CNMAT/cnmat/trunk/max/externals/odot/trunk/testing/odot_iphone/osc_controls_recieve",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "osc_toggle.maxpat",
								"bootpath" : "/Users/samgmansfield/Documents/CNMAT/cnmat/trunk/max/externals/odot/trunk/testing/odot_iphone/osc_controls_recieve",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "osc_accelerometer.maxpat",
								"bootpath" : "/Users/samgmansfield/Documents/CNMAT/cnmat/trunk/max/externals/odot/trunk/testing/odot_iphone/osc_controls_recieve",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "o.route.mxo",
								"type" : "iLaX"
							}
, 							{
								"name" : "o.message.mxo",
								"type" : "iLaX"
							}
, 							{
								"name" : "o.atomize.mxo",
								"type" : "iLaX"
							}
 ]
					}
,
					"patching_rect" : [ 77.0, 18.0, 72.0, 20.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"tags" : "",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"digest" : "",
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"description" : ""
					}
,
					"text" : "p examples"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 0,
							"revision" : 5
						}
,
						"rect" : [ 251.0, 127.0, 690.0, 512.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-4",
									"items" : [ "osc_accelerometer", ",", "osc_button", ",", "osc_multislider", ",", "osc_pictslider", ",", "osc_toggle" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 394.5, 449.0, 100.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 1,
									"id" : "obj-22",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 305.0, 546.0, 333.0, 18.0 ],
									"text" : "load osc_toggle.maxhelp"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 1,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 435.0, 506.0, 53.0, 20.0 ],
									"text" : "pcontrol"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 1,
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 435.0, 477.0, 138.0, 20.0 ],
									"text" : "sprintf load %s.maxhelp"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-27",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 393.0, 429.0, 93.5, 20.0 ],
									"text" : "see also:"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.19,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 6.0, 221.0, 38.0, 39.0 ],
									"text" : "port#"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 87.0, 296.0, 87.0, 24.0 ],
									"text" : "objet# tab#"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.18,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 98.0, 328.0, 105.0, 39.0 ],
									"text" : "error message"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-18",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 98.0, 367.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 37.0, 296.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 7.0, 296.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-19",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 327.0, 176.5, 190.0, 75.0 ],
									"text" : "If a number appears before the name of the object (#/object#) that number is the tab number. The number follwing the name of the object is the object number."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 6.0, 148.5, 292.0, 48.0 ],
									"text" : "osc_universal takes three arguments: control, object number and tab number. Tab number is exclusively for touchosc. "
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 148.0, 260.0, 150.0, 24.0 ],
									"text" : "tab# (touchosc only)"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.08,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 118.0, 221.0, 79.0, 39.0 ],
									"text" : "object#"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 7.0, 260.0, 141.0, 20.0 ],
									"text" : "osc_universal button 1 1"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 1.0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-17",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 485.0, 296.0, 140.0, 66.0 ],
									"text" : "If you see data here then osc messages are being sent over port 10000."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-15",
									"maxclass" : "o.message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 327.0, 347.0, 153.0, 20.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 327.0, 306.0, 106.0, 20.0 ],
									"text" : "udpreceive 10000"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : [ 0.485712, 0.485712, 0.485712, 1.0 ],
									"id" : "obj-5",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 6.0, 88.0, 599.0, 48.0 ],
									"text" : "osc_universal interprets osc messages from the iphone using  touchosc, oscemote, iosc, mrmr, as well as a particular processing sketch, provided in the odot_iphone folder. It can be used as a button, multislider, pictslider, toggle, and accelerometer. By default the port is set to 10000.",
									"textcolor" : [ 0.485712, 0.485712, 0.485712, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 6.0, 68.0, 551.0, 20.0 ],
									"text" : "A universal osc control for mobile device."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 48.0,
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 6.0, 6.0, 551.0, 62.0 ],
									"text" : "osc_universal"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bubble" : 1,
									"bubblepoint" : 0.87,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 53.5, 221.0, 64.0, 39.0 ],
									"text" : "control"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 1 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
 ],
						"dependency_cache" : [ 							{
								"name" : "osc_universal.maxpat",
								"bootpath" : "/Users/samgmansfield/Documents/CNMAT/cnmat/trunk/max/externals/odot/trunk/testing/odot_iphone/osc_controls_recieve",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "osc_button.maxpat",
								"bootpath" : "/Users/samgmansfield/Documents/CNMAT/cnmat/trunk/max/externals/odot/trunk/testing/odot_iphone/osc_controls_recieve",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "osc_multislider.maxpat",
								"bootpath" : "/Users/samgmansfield/Documents/CNMAT/cnmat/trunk/max/externals/odot/trunk/testing/odot_iphone/osc_controls_recieve",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "osc_pictslider.maxpat",
								"bootpath" : "/Users/samgmansfield/Documents/CNMAT/cnmat/trunk/max/externals/odot/trunk/testing/odot_iphone/osc_controls_recieve",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "osc_toggle.maxpat",
								"bootpath" : "/Users/samgmansfield/Documents/CNMAT/cnmat/trunk/max/externals/odot/trunk/testing/odot_iphone/osc_controls_recieve",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "osc_accelerometer.maxpat",
								"bootpath" : "/Users/samgmansfield/Documents/CNMAT/cnmat/trunk/max/externals/odot/trunk/testing/odot_iphone/osc_controls_recieve",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "o.message.mxo",
								"type" : "iLaX"
							}
, 							{
								"name" : "o.route.mxo",
								"type" : "iLaX"
							}
, 							{
								"name" : "o.atomize.mxo",
								"type" : "iLaX"
							}
 ]
					}
,
					"patching_rect" : [ 16.0, 18.0, 49.0, 20.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"tags" : "",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"digest" : "",
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"description" : ""
					}
,
					"text" : "p basic"
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [ 			{
				"name" : "osc_universal.maxpat",
				"bootpath" : "/Users/samgmansfield/Documents/CNMAT/cnmat/trunk/max/externals/odot/trunk/testing/odot_iphone/osc_controls_recieve",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "osc_button.maxpat",
				"bootpath" : "/Users/samgmansfield/Documents/CNMAT/cnmat/trunk/max/externals/odot/trunk/testing/odot_iphone/osc_controls_recieve",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "osc_multislider.maxpat",
				"bootpath" : "/Users/samgmansfield/Documents/CNMAT/cnmat/trunk/max/externals/odot/trunk/testing/odot_iphone/osc_controls_recieve",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "osc_pictslider.maxpat",
				"bootpath" : "/Users/samgmansfield/Documents/CNMAT/cnmat/trunk/max/externals/odot/trunk/testing/odot_iphone/osc_controls_recieve",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "osc_toggle.maxpat",
				"bootpath" : "/Users/samgmansfield/Documents/CNMAT/cnmat/trunk/max/externals/odot/trunk/testing/odot_iphone/osc_controls_recieve",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "osc_accelerometer.maxpat",
				"bootpath" : "/Users/samgmansfield/Documents/CNMAT/cnmat/trunk/max/externals/odot/trunk/testing/odot_iphone/osc_controls_recieve",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.message.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.atomize.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
