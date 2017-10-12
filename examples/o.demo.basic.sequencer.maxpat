{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 38.0, 79.0, 1368.0, 787.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "Default Max 7",
		"boxes" : [ 			{
				"box" : 				{
					"fontface" : 3,
					"fontsize" : 14.0,
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 72.0, 105.0, 123.0, 22.0 ],
					"presentation_rect" : [ 59.0, 89.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "Basic Sequencer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 72.0, 139.0, 248.0, 60.0 ],
					"style" : "",
					"text" : "1) press the /record button to start recording\n2) move the slider around\n3) press /record again to stop recording\n4) pres the /playing button to start playback"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 63.0, 104.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "Default Max 7",
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-10",
									"linecount" : 281,
									"maxclass" : "o.display",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 150.0, 3839.0 ],
									"text" : "/recording : 0,\n/rec/time : 2017-10-12T11:20:30.623012Z,\n/rec/end/time : 2017-10-12T11:20:30.623012Z,\n/rec/start/time : 2017-10-12T11:20:28.113768Z,\n/sequence : [{\n\t/event/value : 28,\n\t/event/time : 2017-10-12T11:20:28.743711Z\n}, {\n\t/event/value : 30,\n\t/event/time : 2017-10-12T11:20:28.788187Z\n}, {\n\t/event/value : 32,\n\t/event/time : 2017-10-12T11:20:28.799438Z\n}, {\n\t/event/value : 40,\n\t/event/time : 2017-10-12T11:20:28.822327Z\n}, {\n\t/event/value : 45,\n\t/event/time : 2017-10-12T11:20:28.837149Z\n}, {\n\t/event/value : 52,\n\t/event/time : 2017-10-12T11:20:28.844227Z\n}, {\n\t/event/value : 64,\n\t/event/time : 2017-10-12T11:20:28.868366Z\n}, {\n\t/event/value : 71,\n\t/event/time : 2017-10-12T11:20:28.893340Z\n}, {\n\t/event/value : 68,\n\t/event/time : 2017-10-12T11:20:28.924619Z\n}, {\n\t/event/value : 63,\n\t/event/time : 2017-10-12T11:20:28.934189Z\n}, {\n\t/event/value : 54,\n\t/event/time : 2017-10-12T11:20:28.957592Z\n}, {\n\t/event/value : 49,\n\t/event/time : 2017-10-12T11:20:28.967879Z\n}, {\n\t/event/value : 47,\n\t/event/time : 2017-10-12T11:20:28.991024Z\n}, {\n\t/event/value : 51,\n\t/event/time : 2017-10-12T11:20:29.027556Z\n}, {\n\t/event/value : 56,\n\t/event/time : 2017-10-12T11:20:29.035653Z\n}, {\n\t/event/value : 62,\n\t/event/time : 2017-10-12T11:20:29.057289Z\n}, {\n\t/event/value : 68,\n\t/event/time : 2017-10-12T11:20:29.057705Z\n}, {\n\t/event/value : 74,\n\t/event/time : 2017-10-12T11:20:29.069035Z\n}, {\n\t/event/value : 83,\n\t/event/time : 2017-10-12T11:20:29.093952Z\n}, {\n\t/event/value : 87,\n\t/event/time : 2017-10-12T11:20:29.103223Z\n}, {\n\t/event/value : 92,\n\t/event/time : 2017-10-12T11:20:29.127117Z\n}, {\n\t/event/value : 94,\n\t/event/time : 2017-10-12T11:20:29.136629Z\n}, {\n\t/event/value : 96,\n\t/event/time : 2017-10-12T11:20:29.158641Z\n}, {\n\t/event/value : 96,\n\t/event/time : 2017-10-12T11:20:29.159121Z\n}, {\n\t/event/value : 97,\n\t/event/time : 2017-10-12T11:20:29.170303Z\n}, {\n\t/event/value : 96,\n\t/event/time : 2017-10-12T11:20:29.260336Z\n}, {\n\t/event/value : 94,\n\t/event/time : 2017-10-12T11:20:29.271537Z\n}, {\n\t/event/value : 87,\n\t/event/time : 2017-10-12T11:20:29.294799Z\n}, {\n\t/event/value : 82,\n\t/event/time : 2017-10-12T11:20:29.305482Z\n}, {\n\t/event/value : 68,\n\t/event/time : 2017-10-12T11:20:29.329268Z\n}, {\n\t/event/value : 61,\n\t/event/time : 2017-10-12T11:20:29.339154Z\n}, {\n\t/event/value : 47,\n\t/event/time : 2017-10-12T11:20:29.363359Z\n}, {\n\t/event/value : 40,\n\t/event/time : 2017-10-12T11:20:29.395905Z\n}, {\n\t/event/value : 32,\n\t/event/time : 2017-10-12T11:20:29.396465Z\n}, {\n\t/event/value : 30,\n\t/event/time : 2017-10-12T11:20:29.429479Z\n}, {\n\t/event/value : 30,\n\t/event/time : 2017-10-12T11:20:29.463944Z\n}, {\n\t/event/value : 44,\n\t/event/time : 2017-10-12T11:20:29.497766Z\n}, {\n\t/event/value : 59,\n\t/event/time : 2017-10-12T11:20:29.532310Z\n}, {\n\t/event/value : 65,\n\t/event/time : 2017-10-12T11:20:29.567775Z\n}, {\n\t/event/value : 64,\n\t/event/time : 2017-10-12T11:20:29.597918Z\n}, {\n\t/event/value : 60,\n\t/event/time : 2017-10-12T11:20:29.598518Z\n}, {\n\t/event/value : 41,\n\t/event/time : 2017-10-12T11:20:29.633111Z\n}, {\n\t/event/value : 33,\n\t/event/time : 2017-10-12T11:20:29.665733Z\n}, {\n\t/event/value : 33,\n\t/event/time : 2017-10-12T11:20:29.666426Z\n}, {\n\t/event/value : 34,\n\t/event/time : 2017-10-12T11:20:29.699487Z\n}, {\n\t/event/value : 40,\n\t/event/time : 2017-10-12T11:20:29.732946Z\n}, {\n\t/event/value : 44,\n\t/event/time : 2017-10-12T11:20:29.733646Z\n}, {\n\t/event/value : 52,\n\t/event/time : 2017-10-12T11:20:29.765008Z\n}, {\n\t/event/value : 55,\n\t/event/time : 2017-10-12T11:20:29.766628Z\n}, {\n\t/event/value : 60,\n\t/event/time : 2017-10-12T11:20:29.802141Z\n}, {\n\t/event/value : 60,\n\t/event/time : 2017-10-12T11:20:29.834899Z\n}, {\n\t/event/value : 60,\n\t/event/time : 2017-10-12T11:20:29.870011Z\n}, {\n\t/event/value : 59,\n\t/event/time : 2017-10-12T11:20:29.903967Z\n}, {\n\t/endplayback : 0,\n\t/event/time : 2017-10-12T11:20:30.623853Z\n}]",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-11",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 658.5, 537.0, 166.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p see the recorded sequence"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 892.0, 306.0, 353.0, 39.0 ],
					"style" : "",
					"text" : "when recording stops, clear the sequence memory for next time"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-60",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 991.5, 433.5, 186.0, 66.0 ],
					"style" : "",
					"text" : "Append the new event to the\n existing sequence, and then delete the /event just to keep things clean"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-150",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 528.347656, 668.0, 392.0, 24.0 ],
					"style" : "",
					"text" : "if we want to stop playing, then send a clear message to o.schedule"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-147",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 443.014343, 745.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "o.print late"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-130",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "FullPacket" ],
					"patching_rect" : [ 362.347656, 24.5, 227.0, 22.0 ],
					"style" : "",
					"text" : "o.route /endplayback /event/value"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-144",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 396.347656, 668.0, 119.0, 22.0 ],
					"style" : "",
					"text" : "o.route /sched_clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-129",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "FullPacket", "FullPacket", "FullPacket", "FullPacket" ],
					"patching_rect" : [ 396.347656, 707.5, 159.0, 22.0 ],
					"style" : "",
					"text" : "o.schedule /play/event/time"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-127",
					"linecount" : 3,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 878.0, 337.5, 357.0, 56.0 ],
					"text" : "if( bound(/rec/end/time),\n  progn( delete(/sequence), delete(/rec/end/time) )\n)",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-119",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 780.0, 252.0, 85.0, 22.0 ],
					"style" : "",
					"text" : "o.route /event"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 648.0, 483.0, 29.5, 22.0 ],
					"style" : "",
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 396.347656, 555.0, 83.0, 22.0 ],
					"style" : "",
					"text" : "o.route /value"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-104",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 396.347656, 615.5, 521.0, 43.0 ],
					"text" : "/play/event/time = /play/start/time + (/event/time - /rec/start/time) + 0.1,\nif( /playing == false, /sched_clear = \"clear\" )",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 396.347656, 584.0, 153.0, 22.0 ],
					"style" : "",
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-99",
					"linecount" : 7,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 780.0, 139.0, 217.0, 106.0 ],
					"text" : "if( /recording == true,\n  /rec/start/time = /rec/time,\n  progn(\n    /rec/end/time = /rec/time,\n    /event/endplayback = 0\n  )\n)",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 396.347656, 523.5, 153.0, 22.0 ],
					"style" : "",
					"text" : "o.listenumerate /sequence"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 396.347656, 487.0, 141.0, 22.0 ],
					"style" : "",
					"text" : "o.timetag /play/start/time"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 466.347656, 54.5, 75.0, 22.0 ],
					"style" : "",
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 396.347656, 454.0, 50.0, 22.0 ],
					"style" : "",
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-50",
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"outputmode" : 0,
					"parameter_enable" : 1,
					"patching_rect" : [ 362.347656, 83.0, 83.695312, 21.523438 ],
					"presentation" : 1,
					"presentation_rect" : [ 924.152344, 57.0, 106.695312, 22.523438 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "textbutton[1]",
							"parameter_shortname" : "textbutton",
							"parameter_type" : 3,
							"parameter_invisible" : 1
						}

					}
,
					"style" : "",
					"text" : "/playing 0",
					"texton" : "/playing 1",
					"tosymbol" : 0,
					"usebgoncolor" : 1,
					"usetextovercolor" : 1,
					"varname" : "textbutton[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 780.0, 111.0, 109.0, 22.0 ],
					"style" : "",
					"text" : "o.timetag /rec/time"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 72.0, 227.0, 113.0, 34.0 ],
					"style" : "",
					"text" : "Ilya Adrian 2014\nreivsed, rama 2017"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 648.0, 319.0, 84.0, 22.0 ],
					"style" : "",
					"text" : "o.pack /event"
				}

			}
, 			{
				"box" : 				{
					"fontlink" : 1,
					"fontsize" : 13.0,
					"id" : "obj-38",
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"outputmode" : 0,
					"parameter_enable" : 1,
					"patching_rect" : [ 747.175049, 83.0, 84.649902, 22.523438 ],
					"presentation" : 1,
					"presentation_rect" : [ 186.152344, 20.0, 84.649902, 22.523438 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "textbutton[4]",
							"parameter_shortname" : "textbutton",
							"parameter_type" : 3,
							"parameter_invisible" : 1
						}

					}
,
					"style" : "",
					"text" : "/recording 0",
					"texton" : "/recording 1",
					"tosymbol" : 0,
					"usebgoncolor" : 1,
					"usetextovercolor" : 1,
					"varname" : "textbutton[4]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 648.0, 349.5, 217.0, 22.0 ],
					"style" : "",
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-68",
					"linecount" : 8,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 93.347656, 615.5, 291.0, 122.0 ],
					"style" : "",
					"text" : "The time of the playback event starts from /play/start/time - the difference between /evant/time and /record/start/time tells us how long to wait from /play/ started until the scheduling of the event. A small delay is added to make sure there is time for o.schedule to set up the schedule without missing any early events."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-67",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 95.347656, 584.0, 303.0, 24.0 ],
					"style" : "",
					"text" : "Ensure that /play/started is included in each bundle"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-66",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 180.347656, 510.5, 201.0, 66.0 ],
					"style" : "",
					"text" : "Enumerate all  the sub-bundles of /sequence, i.e. all the recorded events to be scheduled"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-64",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 41.847656, 454.0, 344.0, 38.0 ],
					"style" : "",
					"text" : "Save a copy of the last recorded sequence for future playback"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-15",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 648.0, 431.0, 336.0, 43.0 ],
					"text" : "/sequence ??= [],\n/sequence = [ /sequence, /event ], delete(/event)",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 466.347656, 121.0, 116.0, 22.0 ],
					"style" : "",
					"text" : "o.pack /event/value"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 648.0, 289.0, 125.0, 22.0 ],
					"style" : "",
					"text" : "o.timetag /event/time"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 466.347656, 83.0, 265.652344, 22.523438 ],
					"presentation" : 1,
					"presentation_rect" : [ 25.652344, 74.0, 280.195312, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 648.0, 402.0, 249.0, 22.0 ],
					"style" : "",
					"text" : "o.union"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 1,
					"source" : [ "obj-110", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.061301, 0.514516, 0.998466, 1.0 ],
					"destination" : [ "obj-127", 0 ],
					"midpoints" : [ 668.0, 514.0, 1266.0, 514.0, 1266.0, 293.5, 887.5, 293.5 ],
					"order" : 0,
					"source" : [ "obj-110", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 1 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"source" : [ "obj-119", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"source" : [ "obj-127", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.123519, 0.968266, 0.998992, 0.9 ],
					"destination" : [ "obj-130", 0 ],
					"midpoints" : [ 405.847656, 774.5, 1295.0, 774.5, 1295.0, 12.0, 371.847656, 12.0 ],
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"source" : [ "obj-129", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-130", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-130", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"midpoints" : [ 505.847656, 698.25, 405.847656, 698.25 ],
					"source" : [ "obj-144", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"source" : [ "obj-144", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-50", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 1 ],
					"source" : [ "obj-75", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-38" : [ "textbutton[4]", "textbutton", 0 ],
			"obj-50" : [ "textbutton[1]", "textbutton", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "o.union.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.timetag.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.listenumerate.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.schedule.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.print.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.display.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"bgfillcolor_type" : "gradient",
		"bgfillcolor_color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
		"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
		"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
		"bgfillcolor_angle" : 270.0,
		"bgfillcolor_proportion" : 0.39
	}

}
