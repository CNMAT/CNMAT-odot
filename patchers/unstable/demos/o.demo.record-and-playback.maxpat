{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 7,
			"architecture" : "x86"
		}
,
		"rect" : [ 128.0, 44.0, 1135.0, 630.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 11.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 586.5, 151.0, 50.0, 17.0 ],
					"presentation_rect" : [ 578.0, 118.0, 0.0, 0.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-13",
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 696.0, 329.0, 76.0, 19.0 ],
					"presentation_rect" : [ 685.0, 218.0, 0.0, 0.0 ],
					"text" : "/oscrec \"stop\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-9",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 125.0, 204.0, 375.0, 68.0 ],
					"presentation_rect" : [ 107.0, 161.0, 0.0, 0.0 ],
					"text" : "1) send the [ /oscrec \"start\"] message to the record subpatch\n2) move the slider to send some test data (in a real patch this would be something more interesting!)\n3) send the [ /oscrec \"stop\" ] message to the record subpatch\n4) click to send the saved sequence to the playback subpatch"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"frgb" : 0.0,
					"id" : "obj-8",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 612.0, 32.0, 411.0, 65.0 ],
					"text" : "an example odot recorder which records and plays back an abitrary sequence of bundles and stores them in an o.message object. the contents of o.message are saved with the patcher, so this sequence, and sequences of sequences can be saved, and recalled later."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 353.0, 540.0, 81.0, 19.0 ],
					"text" : "o.print too-late"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-34",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 528.0, 151.0, 50.0, 17.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "FullPacket" ],
					"patching_rect" : [ 528.0, 121.0, 198.0, 19.0 ],
					"text" : "o.route /data /oscrec"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 7,
							"architecture" : "x86"
						}
,
						"rect" : [ 162.0, 44.0, 1099.0, 803.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 151.0, 694.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 151.0, 718.0, 32.5, 19.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 151.0, 744.0, 113.0, 19.0 ],
									"text" : "o.print late_but_used"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 579.0, 617.0, 143.0, 19.0 ],
									"text" : "check how late the event is"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-12",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 451.333344, 673.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 495.0, 679.0, 275.0, 19.0 ],
									"text" : "if events are more than 5 ms late what should you do?"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 339.333344, 637.0, 131.0, 19.0 ],
									"text" : "o.if /missamount < 0.005"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 339.333344, 581.0, 105.0, 19.0 ],
									"text" : "o.timetag /latetime"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 339.333344, 609.0, 212.0, 19.0 ],
									"text" : "o.expr /missamount = /latetime - /timeOut"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-10",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 39.0, 528.0, 239.0, 31.0 ],
									"text" : "output scheduled events, and also if there are missed deadlines (if they are not too far off)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 412.0, 534.0, 98.0, 19.0 ],
									"text" : "o.print queue_full!"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 303.0, 771.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 78.0, 389.0, 218.0, 19.0 ],
									"text" : "offset event time to be relative to start time"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 55.0, 254.0, 241.0, 19.0 ],
									"text" : "safety check to make sure there is a /deltaTime"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-3",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 636.0, 211.0, 437.0, 31.0 ],
									"text" : "add a little buffer time to allow for the entire bundle to iterate and avoid missing early deadlines (this may need to be adjusted depending on your bundle size and length)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 636.0, 159.0, 128.0, 19.0 ],
									"text" : "get start time as timetag"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 303.0, 101.0, 211.0, 19.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 495.0, 217.0, 136.0, 19.0 ],
									"text" : "o.expr /starttime += 0.001"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-30",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 419.0, 282.0, 68.0, 31.0 ],
									"text" : "o.print non-event?"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-9",
									"linecount" : 4,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "FullPacket", "FullPacket", "FullPacket", "FullPacket" ],
									"patching_rect" : [ 303.0, 461.5, 128.0, 56.0 ],
									"text" : "o.schedule /timeOut @precision 0.001 @packetsize 65536 @queuesize 1000000"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 495.0, 159.0, 104.0, 19.0 ],
									"text" : "o.timetag /starttime"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 303.0, 336.0, 211.0, 19.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 303.0, 254.0, 135.0, 19.0 ],
									"text" : "o.cond bound(/deltaTime)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 303.0, 389.0, 210.0, 19.0 ],
									"text" : "o.expr /timeOut = /starttime + /deltaTime"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-21",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 105.0, 159.0, 191.0, 31.0 ],
									"text" : "iterate subbundles which we know are separate timetaged events"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 303.0, 159.0, 55.0, 19.0 ],
									"text" : "o.route /*"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-27",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 303.0, 44.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-19", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-46", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 3 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 293.0, 503.0, 79.0, 22.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 11.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 11.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p playback"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 313.0, 427.0, 289.0, 19.0 ],
					"text" : "<< click to recall and playback sequency from o.message"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 528.0, 329.0, 70.0, 19.0 ],
					"text" : "o.pack /data"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 528.0, 176.0, 20.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-2",
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 612.0, 329.0, 76.0, 19.0 ],
					"text" : "/oscrec \"start\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 293.0, 427.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 7,
							"architecture" : "x86"
						}
,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 148.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-8",
									"linecount" : 880,
									"maxclass" : "o.message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 105.0, 86.0, 463.0, 10821.0 ],
									"text" : "/2014-07-10T21:52:26.577708Z [\n\t/oscrec [\n\t\t/start \"bang\"\n]\n\t/timetag 2014-07-10T21:52:26.577708Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.40001e-05\n]\n/2014-07-10T21:52:27.336128Z [\n\t/data 51\n\t/timetag 2014-07-10T21:52:27.336128Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 0.758433\n]\n/2014-07-10T21:52:27.391643Z [\n\t/data 50\n\t/timetag 2014-07-10T21:52:27.391643Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 0.813949\n]\n/2014-07-10T21:52:27.409214Z [\n\t/data 43\n\t/timetag 2014-07-10T21:52:27.409214Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 0.83152\n]\n/2014-07-10T21:52:27.426312Z [\n\t/data 29\n\t/timetag 2014-07-10T21:52:27.426312Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 0.848618\n]\n/2014-07-10T21:52:27.443439Z [\n\t/data 18\n\t/timetag 2014-07-10T21:52:27.443439Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 0.865744\n]\n/2014-07-10T21:52:27.460535Z [\n\t/data 12\n\t/timetag 2014-07-10T21:52:27.460535Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 0.88284\n]\n/2014-07-10T21:52:27.477274Z [\n\t/data 7\n\t/timetag 2014-07-10T21:52:27.477274Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 0.89958\n]\n/2014-07-10T21:52:27.495012Z [\n\t/data 5\n\t/timetag 2014-07-10T21:52:27.495012Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 0.917317\n]\n/2014-07-10T21:52:27.511630Z [\n\t/data 12\n\t/timetag 2014-07-10T21:52:27.511630Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 0.933935\n]\n/2014-07-10T21:52:27.528284Z [\n\t/data 29\n\t/timetag 2014-07-10T21:52:27.528284Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 0.95059\n]\n/2014-07-10T21:52:27.545146Z [\n\t/data 60\n\t/timetag 2014-07-10T21:52:27.545146Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 0.967452\n]\n/2014-07-10T21:52:27.563103Z [\n\t/data 79\n\t/timetag 2014-07-10T21:52:27.563103Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 0.985409\n]\n/2014-07-10T21:52:27.579282Z [\n\t/data 87\n\t/timetag 2014-07-10T21:52:27.579282Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.00159\n]\n/2014-07-10T21:52:27.596728Z [\n\t/data 96\n\t/timetag 2014-07-10T21:52:27.596728Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.01903\n]\n/2014-07-10T21:52:27.613431Z [\n\t/data 98\n\t/timetag 2014-07-10T21:52:27.613431Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.03574\n]\n/2014-07-10T21:52:27.630509Z [\n\t/data 99\n\t/timetag 2014-07-10T21:52:27.630509Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.05281\n]\n/2014-07-10T21:52:27.663496Z [\n\t/data 95\n\t/timetag 2014-07-10T21:52:27.663496Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.0858\n]\n/2014-07-10T21:52:27.688645Z [\n\t/data 80\n\t/timetag 2014-07-10T21:52:27.688645Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.11095\n]\n/2014-07-10T21:52:27.697212Z [\n\t/data 68\n\t/timetag 2014-07-10T21:52:27.697212Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.11952\n]\n/2014-07-10T21:52:27.714044Z [\n\t/data 56\n\t/timetag 2014-07-10T21:52:27.714044Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.13635\n]\n/2014-07-10T21:52:27.731184Z [\n\t/data 48\n\t/timetag 2014-07-10T21:52:27.731184Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.15349\n]\n/2014-07-10T21:52:27.748212Z [\n\t/data 46\n\t/timetag 2014-07-10T21:52:27.748212Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.17052\n]\n/2014-07-10T21:52:27.765945Z [\n\t/data 45\n\t/timetag 2014-07-10T21:52:27.765945Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.18825\n]\n/2014-07-10T21:52:27.783179Z [\n\t/data 53\n\t/timetag 2014-07-10T21:52:27.783179Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.20548\n]\n/2014-07-10T21:52:27.800285Z [\n\t/data 72\n\t/timetag 2014-07-10T21:52:27.800285Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.22259\n]\n/2014-07-10T21:52:27.817017Z [\n\t/data 83\n\t/timetag 2014-07-10T21:52:27.817017Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.23932\n]\n/2014-07-10T21:52:27.834010Z [\n\t/data 97\n\t/timetag 2014-07-10T21:52:27.834010Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.25632\n]\n/2014-07-10T21:52:27.850729Z [\n\t/data 104\n\t/timetag 2014-07-10T21:52:27.850729Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.27303\n]\n/2014-07-10T21:52:27.867754Z [\n\t/data 107\n\t/timetag 2014-07-10T21:52:27.867754Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.29006\n]\n/2014-07-10T21:52:27.903209Z [\n\t/data 103\n\t/timetag 2014-07-10T21:52:27.903209Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.32551\n]\n/2014-07-10T21:52:27.920886Z [\n\t/data 78\n\t/timetag 2014-07-10T21:52:27.920886Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.34319\n]\n/2014-07-10T21:52:27.937818Z [\n\t/data 47\n\t/timetag 2014-07-10T21:52:27.937818Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.36012\n]\n/2014-07-10T21:52:27.954984Z [\n\t/data 36\n\t/timetag 2014-07-10T21:52:27.954984Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.37729\n]\n/2014-07-10T21:52:27.972272Z [\n\t/data 24\n\t/timetag 2014-07-10T21:52:27.972272Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.39458\n]\n/2014-07-10T21:52:27.989446Z [\n\t/data 19\n\t/timetag 2014-07-10T21:52:27.989446Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.41175\n]\n/2014-07-10T21:52:28.006801Z [\n\t/data 19\n\t/timetag 2014-07-10T21:52:28.006801Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.42911\n]\n/2014-07-10T21:52:28.023554Z [\n\t/data 36\n\t/timetag 2014-07-10T21:52:28.023554Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.44586\n]\n/2014-07-10T21:52:28.089581Z [\n\t/data 38\n\t/timetag 2014-07-10T21:52:28.089581Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.51189\n]\n/2014-07-10T21:52:28.107457Z [\n\t/data 40\n\t/timetag 2014-07-10T21:52:28.107457Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.52976\n]\n/2014-07-10T21:52:28.129703Z [\n\t/data 35\n\t/timetag 2014-07-10T21:52:28.129703Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.55201\n]\n/2014-07-10T21:52:28.146768Z [\n\t/data 0\n\t/timetag 2014-07-10T21:52:28.146768Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.56907\n]\n/2014-07-10T21:52:28.163847Z [\n\t/data 0\n\t/timetag 2014-07-10T21:52:28.163847Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.58615\n]\n/2014-07-10T21:52:28.181010Z [\n\t/data 0\n\t/timetag 2014-07-10T21:52:28.181010Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.60332\n]\n/2014-07-10T21:52:28.198162Z [\n\t/data 0\n\t/timetag 2014-07-10T21:52:28.198162Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.62047\n]\n/2014-07-10T21:52:28.215400Z [\n\t/data 0\n\t/timetag 2014-07-10T21:52:28.215400Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.63771\n]\n/2014-07-10T21:52:28.232939Z [\n\t/data 0\n\t/timetag 2014-07-10T21:52:28.232939Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.65524\n]\n/2014-07-10T21:52:28.250430Z [\n\t/data 15\n\t/timetag 2014-07-10T21:52:28.250430Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.67274\n]\n/2014-07-10T21:52:28.267647Z [\n\t/data 32\n\t/timetag 2014-07-10T21:52:28.267647Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.68995\n]\n/2014-07-10T21:52:28.284326Z [\n\t/data 54\n\t/timetag 2014-07-10T21:52:28.284326Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.70663\n]\n/2014-07-10T21:52:28.301114Z [\n\t/data 64\n\t/timetag 2014-07-10T21:52:28.301114Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.72342\n]\n/2014-07-10T21:52:28.318501Z [\n\t/data 74\n\t/timetag 2014-07-10T21:52:28.318501Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.74081\n]\n/2014-07-10T21:52:28.335299Z [\n\t/data 78\n\t/timetag 2014-07-10T21:52:28.335299Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.7576\n]\n/2014-07-10T21:52:28.352901Z [\n\t/data 79\n\t/timetag 2014-07-10T21:52:28.352901Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.77521\n]\n/2014-07-10T21:52:28.393639Z [\n\t/data 74\n\t/timetag 2014-07-10T21:52:28.393639Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.81594\n]\n/2014-07-10T21:52:28.410326Z [\n\t/data 29\n\t/timetag 2014-07-10T21:52:28.410326Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.83263\n]\n/2014-07-10T21:52:28.428183Z [\n\t/data 4\n\t/timetag 2014-07-10T21:52:28.428183Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.85049\n]\n/2014-07-10T21:52:28.444401Z [\n\t/data 0\n\t/timetag 2014-07-10T21:52:28.444401Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.86671\n]\n/2014-07-10T21:52:28.461450Z [\n\t/data 0\n\t/timetag 2014-07-10T21:52:28.461450Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.88376\n]\n/2014-07-10T21:52:28.478823Z [\n\t/data 0\n\t/timetag 2014-07-10T21:52:28.478823Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.90113\n]\n/2014-07-10T21:52:28.496582Z [\n\t/data 0\n\t/timetag 2014-07-10T21:52:28.496582Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.91889\n]\n/2014-07-10T21:52:28.514113Z [\n\t/data 18\n\t/timetag 2014-07-10T21:52:28.514113Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.93642\n]\n/2014-07-10T21:52:28.531156Z [\n\t/data 42\n\t/timetag 2014-07-10T21:52:28.531156Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.95346\n]\n/2014-07-10T21:52:28.548167Z [\n\t/data 65\n\t/timetag 2014-07-10T21:52:28.548167Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.97047\n]\n/2014-07-10T21:52:28.565382Z [\n\t/data 89\n\t/timetag 2014-07-10T21:52:28.565382Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 1.98769\n]\n/2014-07-10T21:52:28.582847Z [\n\t/data 99\n\t/timetag 2014-07-10T21:52:28.582847Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.00515\n]\n/2014-07-10T21:52:28.599494Z [\n\t/data 109\n\t/timetag 2014-07-10T21:52:28.599494Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.0218\n]\n/2014-07-10T21:52:28.617290Z [\n\t/data 114\n\t/timetag 2014-07-10T21:52:28.617290Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.0396\n]\n/2014-07-10T21:52:28.633885Z [\n\t/data 115\n\t/timetag 2014-07-10T21:52:28.633885Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.05619\n]\n/2014-07-10T21:52:28.651550Z [\n\t/data 116\n\t/timetag 2014-07-10T21:52:28.651550Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.07386\n]\n/2014-07-10T21:52:28.674717Z [\n\t/data 116\n\t/timetag 2014-07-10T21:52:28.674717Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.09702\n]\n/2014-07-10T21:52:28.690332Z [\n\t/data 101\n\t/timetag 2014-07-10T21:52:28.690332Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.11264\n]\n/2014-07-10T21:52:28.707309Z [\n\t/data 40\n\t/timetag 2014-07-10T21:52:28.707309Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.12961\n]\n/2014-07-10T21:52:28.724359Z [\n\t/data 0\n\t/timetag 2014-07-10T21:52:28.724359Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.14666\n]\n/2014-07-10T21:52:28.741179Z [\n\t/data 0\n\t/timetag 2014-07-10T21:52:28.741179Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.16349\n]\n/2014-07-10T21:52:28.758618Z [\n\t/data 0\n\t/timetag 2014-07-10T21:52:28.758618Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.18092\n]\n/2014-07-10T21:52:28.776071Z [\n\t/data 0\n\t/timetag 2014-07-10T21:52:28.776071Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.19838\n]\n/2014-07-10T21:52:28.793351Z [\n\t/data 0\n\t/timetag 2014-07-10T21:52:28.793351Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.21566\n]\n/2014-07-10T21:52:28.810155Z [\n\t/data 4\n\t/timetag 2014-07-10T21:52:28.810155Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.23246\n]\n/2014-07-10T21:52:28.827008Z [\n\t/data 12\n\t/timetag 2014-07-10T21:52:28.827008Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.24931\n]\n/2014-07-10T21:52:28.844084Z [\n\t/data 28\n\t/timetag 2014-07-10T21:52:28.844084Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.26639\n]\n/2014-07-10T21:52:28.861171Z [\n\t/data 39\n\t/timetag 2014-07-10T21:52:28.861171Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.28348\n]\n/2014-07-10T21:52:28.878008Z [\n\t/data 57\n\t/timetag 2014-07-10T21:52:28.878008Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.30031\n]\n/2014-07-10T21:52:28.894894Z [\n\t/data 73\n\t/timetag 2014-07-10T21:52:28.894894Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.3172\n]\n/2014-07-10T21:52:28.911967Z [\n\t/data 96\n\t/timetag 2014-07-10T21:52:28.911967Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.33427\n]\n/2014-07-10T21:52:28.929449Z [\n\t/data 117\n\t/timetag 2014-07-10T21:52:28.929449Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.35175\n]\n/2014-07-10T21:52:28.946519Z [\n\t/data 127\n\t/timetag 2014-07-10T21:52:28.946519Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.36882\n]\n/2014-07-10T21:52:28.963403Z [\n\t/data 127\n\t/timetag 2014-07-10T21:52:28.963403Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.38571\n]\n/2014-07-10T21:52:28.980471Z [\n\t/data 127\n\t/timetag 2014-07-10T21:52:28.980471Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.40278\n]\n/2014-07-10T21:52:28.997380Z [\n\t/data 127\n\t/timetag 2014-07-10T21:52:28.997380Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.41969\n]\n/2014-07-10T21:52:29.015121Z [\n\t/data 127\n\t/timetag 2014-07-10T21:52:29.015121Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.43743\n]\n/2014-07-10T21:52:29.032931Z [\n\t/data 127\n\t/timetag 2014-07-10T21:52:29.032931Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.45524\n]\n/2014-07-10T21:52:29.049392Z [\n\t/data 120\n\t/timetag 2014-07-10T21:52:29.049392Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.4717\n]\n/2014-07-10T21:52:29.066727Z [\n\t/data 87\n\t/timetag 2014-07-10T21:52:29.066727Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.48903\n]\n/2014-07-10T21:52:29.083410Z [\n\t/data 58\n\t/timetag 2014-07-10T21:52:29.083410Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.50572\n]\n/2014-07-10T21:52:29.100402Z [\n\t/data 45\n\t/timetag 2014-07-10T21:52:29.100402Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.52271\n]\n/2014-07-10T21:52:29.117354Z [\n\t/data 34\n\t/timetag 2014-07-10T21:52:29.117354Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.53966\n]\n/2014-07-10T21:52:29.134377Z [\n\t/data 31\n\t/timetag 2014-07-10T21:52:29.134377Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.55668\n]\n/2014-07-10T21:52:29.151317Z [\n\t/data 30\n\t/timetag 2014-07-10T21:52:29.151317Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.57362\n]\n/2014-07-10T21:52:29.168491Z [\n\t/data 30\n\t/timetag 2014-07-10T21:52:29.168491Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.5908\n]\n/2014-07-10T21:52:29.203465Z [\n\t/data 30\n\t/timetag 2014-07-10T21:52:29.203465Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.62577\n]\n/2014-07-10T21:52:29.243629Z [\n\t/data 31\n\t/timetag 2014-07-10T21:52:29.243629Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.66593\n]\n/2014-07-10T21:52:29.260876Z [\n\t/data 46\n\t/timetag 2014-07-10T21:52:29.260876Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.68318\n]\n/2014-07-10T21:52:29.277586Z [\n\t/data 63\n\t/timetag 2014-07-10T21:52:29.277586Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.69989\n]\n/2014-07-10T21:52:29.294391Z [\n\t/data 84\n\t/timetag 2014-07-10T21:52:29.294391Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.7167\n]\n/2014-07-10T21:52:29.311475Z [\n\t/data 98\n\t/timetag 2014-07-10T21:52:29.311475Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.73378\n]\n/2014-07-10T21:52:29.328846Z [\n\t/data 108\n\t/timetag 2014-07-10T21:52:29.328846Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.75115\n]\n/2014-07-10T21:52:29.345593Z [\n\t/data 114\n\t/timetag 2014-07-10T21:52:29.345593Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.7679\n]\n/2014-07-10T21:52:29.363265Z [\n\t/data 115\n\t/timetag 2014-07-10T21:52:29.363265Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.78557\n]\n/2014-07-10T21:52:29.419605Z [\n\t/data 110\n\t/timetag 2014-07-10T21:52:29.419605Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.84191\n]\n/2014-07-10T21:52:29.436534Z [\n\t/data 83\n\t/timetag 2014-07-10T21:52:29.436534Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.85884\n]\n/2014-07-10T21:52:29.453384Z [\n\t/data 54\n\t/timetag 2014-07-10T21:52:29.453384Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.87569\n]\n/2014-07-10T21:52:29.470037Z [\n\t/data 43\n\t/timetag 2014-07-10T21:52:29.470037Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.89234\n]\n/2014-07-10T21:52:29.487323Z [\n\t/data 29\n\t/timetag 2014-07-10T21:52:29.487323Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.90963\n]\n/2014-07-10T21:52:29.504537Z [\n\t/data 24\n\t/timetag 2014-07-10T21:52:29.504537Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.92684\n]\n/2014-07-10T21:52:29.522230Z [\n\t/data 23\n\t/timetag 2014-07-10T21:52:29.522230Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.94454\n]\n/2014-07-10T21:52:29.539534Z [\n\t/data 23\n\t/timetag 2014-07-10T21:52:29.539534Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.96184\n]\n/2014-07-10T21:52:29.556511Z [\n\t/data 31\n\t/timetag 2014-07-10T21:52:29.556511Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.97882\n]\n/2014-07-10T21:52:29.573197Z [\n\t/data 51\n\t/timetag 2014-07-10T21:52:29.573197Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 2.9955\n]\n/2014-07-10T21:52:29.590407Z [\n\t/data 71\n\t/timetag 2014-07-10T21:52:29.590407Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.01271\n]\n/2014-07-10T21:52:29.607403Z [\n\t/data 84\n\t/timetag 2014-07-10T21:52:29.607403Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.02971\n]\n/2014-07-10T21:52:29.624741Z [\n\t/data 95\n\t/timetag 2014-07-10T21:52:29.624741Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.04705\n]\n/2014-07-10T21:52:29.642198Z [\n\t/data 99\n\t/timetag 2014-07-10T21:52:29.642198Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.0645\n]\n/2014-07-10T21:52:29.659518Z [\n\t/data 101\n\t/timetag 2014-07-10T21:52:29.659518Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.08182\n]\n/2014-07-10T21:52:29.701658Z [\n\t/data 97\n\t/timetag 2014-07-10T21:52:29.701658Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.12396\n]\n/2014-07-10T21:52:29.719192Z [\n\t/data 82\n\t/timetag 2014-07-10T21:52:29.719192Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.1415\n]\n/2014-07-10T21:52:29.736290Z [\n\t/data 63\n\t/timetag 2014-07-10T21:52:29.736290Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.1586\n]\n/2014-07-10T21:52:29.753491Z [\n\t/data 50\n\t/timetag 2014-07-10T21:52:29.753491Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.1758\n]\n/2014-07-10T21:52:29.770169Z [\n\t/data 40\n\t/timetag 2014-07-10T21:52:29.770169Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.19247\n]\n/2014-07-10T21:52:29.787519Z [\n\t/data 34\n\t/timetag 2014-07-10T21:52:29.787519Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.20982\n]\n/2014-07-10T21:52:29.804916Z [\n\t/data 32\n\t/timetag 2014-07-10T21:52:29.804916Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.22722\n]\n/2014-07-10T21:52:29.837620Z [\n\t/data 35\n\t/timetag 2014-07-10T21:52:29.837620Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.25993\n]\n/2014-07-10T21:52:29.854558Z [\n\t/data 53\n\t/timetag 2014-07-10T21:52:29.854558Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.27686\n]\n/2014-07-10T21:52:29.871481Z [\n\t/data 71\n\t/timetag 2014-07-10T21:52:29.871481Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.29379\n]\n/2014-07-10T21:52:29.888339Z [\n\t/data 82\n\t/timetag 2014-07-10T21:52:29.888339Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.31064\n]\n/2014-07-10T21:52:29.905309Z [\n\t/data 91\n\t/timetag 2014-07-10T21:52:29.905309Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.32761\n]\n/2014-07-10T21:52:29.922475Z [\n\t/data 95\n\t/timetag 2014-07-10T21:52:29.922475Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.34478\n]\n/2014-07-10T21:52:29.939440Z [\n\t/data 95\n\t/timetag 2014-07-10T21:52:29.939440Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.36175\n]\n/2014-07-10T21:52:29.997578Z [\n\t/data 94\n\t/timetag 2014-07-10T21:52:29.997578Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.41988\n]\n/2014-07-10T21:52:30.014407Z [\n\t/data 84\n\t/timetag 2014-07-10T21:52:30.014407Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.43671\n]\n/2014-07-10T21:52:30.032397Z [\n\t/data 75\n\t/timetag 2014-07-10T21:52:30.032397Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.4547\n]\n/2014-07-10T21:52:30.048492Z [\n\t/data 69\n\t/timetag 2014-07-10T21:52:30.048492Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.4708\n]\n/2014-07-10T21:52:30.065499Z [\n\t/data 63\n\t/timetag 2014-07-10T21:52:30.065499Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.48781\n]\n/2014-07-10T21:52:30.082412Z [\n\t/data 60\n\t/timetag 2014-07-10T21:52:30.082412Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.50472\n]\n/2014-07-10T21:52:30.099976Z [\n\t/data 59\n\t/timetag 2014-07-10T21:52:30.099976Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 3.52228\n]\n/2014-07-10T21:52:31.771871Z [\n\t/oscrec [\n\t\t/stop \"bang\"\n]\n\t/timetag 2014-07-10T21:52:31.771871Z\n\t/startrec 2014-07-10T21:52:26.577694Z\n\t/deltaTime 5.19418\n]\n",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-9",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 549.0, 40.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 293.0, 457.0, 338.0, 22.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 11.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 11.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p timetaged events saved with patcher in o.message"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 7,
							"architecture" : "x86"
						}
,
						"rect" : [ 67.0, 44.0, 1069.0, 787.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "FullPacket", "FullPacket", "FullPacket" ],
									"patching_rect" : [ 377.25, 113.0, 211.0, 19.0 ],
									"text" : "o.cond /oscrec == start\\; /oscrec == stop"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-38",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 531.75, 664.0, 263.0, 31.0 ],
									"text" : "explode creates subbundle hierarchy, which we will use later to iterate the events for o.schedule"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-37",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 531.75, 631.0, 197.0, 19.0 ],
									"text" : "collect all events into one large bundle"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-36",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 810.0, 368.0, 146.0, 19.0 ],
									"text" : "track delta between events"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 606.25, 487.0, 225.0, 19.0 ],
									"text" : "o.expr /set = [set\\, quote(/) + string(/timetag)]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-30",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 749.0, 309.0, 127.0, 19.0 ],
									"text" : "remember the start time"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-28",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 639.0, 460.0, 308.0, 19.0 ],
									"text" : "we can convienently use the timetag as a unique event name"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-26",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 720.0, 243.0, 146.0, 19.0 ],
									"text" : "time of each bundle arriving"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 473.25, 664.0, 58.0, 19.0 ],
									"text" : "o.explode"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 81.0, 224.0, 127.0, 19.0 ],
									"text" : "if /oscrec/stop is bound:"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-15",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 81.0, 243.0, 260.0, 43.0 ],
									"text" : "1) send /oscrec/stop into o.collect as the last event\n2) close gate\n3) output full recording as one bundle"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 81.0, 131.0, 127.0, 19.0 ],
									"text" : "if /oscrec/start is bound:"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-8",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 81.0, 150.0, 254.0, 43.0 ],
									"text" : "1) get starting time of recording\n2) open gate to o.collect\n3) send /oscrec/start message to be the first event"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 473.25, 631.0, 51.0, 19.0 ],
									"text" : "o.collect"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "bang" ],
									"patching_rect" : [ 377.25, 159.0, 46.0, 19.0 ],
									"text" : "t l 1 b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "int", "" ],
									"patching_rect" : [ 473.25, 159.0, 46.0, 19.0 ],
									"text" : "t b 0 l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 377.25, 79.0, 248.0, 19.0 ],
									"text" : "o.cond bound(/oscrec)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 634.25, 282.0, 56.0, 19.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 606.25, 368.0, 196.0, 19.0 ],
									"text" : "o.expr /deltaTime = /timetag - /startrec"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 606.25, 333.0, 47.0, 19.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 634.25, 309.0, 104.0, 19.0 ],
									"text" : "o.timetag /startrec"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 390.75, 255.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 592.75, 410.0, 32.5, 19.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 606.25, 243.0, 98.0, 19.0 ],
									"text" : "o.timetag /timetag"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 377.25, 46.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 473.25, 710.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 592.75, 561.0, 60.0, 19.0 ],
									"text" : "o.prepend"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 606.25, 524.0, 66.0, 19.0 ],
									"text" : "o.route /set"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 592.75, 447.0, 32.5, 19.0 ],
									"text" : "t l l"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-22", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-27", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-27", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-39", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-39", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-48", 0 ]
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
 ]
					}
,
					"patching_rect" : [ 612.0, 368.0, 64.0, 22.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 11.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 11.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p record"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 302.5, 564.0, 92.0, 564.0, 92.0, 69.0, 537.5, 69.0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.prepend.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.timetag.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.union.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.cond.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.collect.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.explode.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.message.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pack.mxo",
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
				"name" : "o.if.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
