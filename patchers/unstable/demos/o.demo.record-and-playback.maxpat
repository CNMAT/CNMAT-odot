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
					"patching_rect" : [ 344.5, 135.0, 50.0, 17.0 ],
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
					"patching_rect" : [ 696.0, 313.0, 76.0, 19.0 ],
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
					"patching_rect" : [ 344.5, 204.0, 375.0, 68.0 ],
					"text" : "1) send the [ /oscrec \"start\"] message to the record subpatch\n2) move the slider to send some test data (in a real patch this would be something more interesting!)\n3) send the [ /oscrec \"stop\" ] message to the record subpatch\n4) click to send the saved sequence to the playback subpatch"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"frgb" : 0.0,
					"id" : "obj-8",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 587.0, 37.0, 473.0, 79.0 ],
					"text" : "an example odot recorder which records and plays back an abitrary sequence of bundles and stores them in an o.message object.\n\nthe contents of o.message are saved with the patcher, so this sequence, and sequences of sequences can be saved, and recalled later."
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
					"patching_rect" : [ 286.0, 135.0, 50.0, 17.0 ],
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
					"patching_rect" : [ 286.0, 105.0, 198.0, 19.0 ],
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
					"patching_rect" : [ 286.0, 313.0, 70.0, 19.0 ],
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
					"patching_rect" : [ 286.0, 160.0, 20.0, 140.0 ]
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
					"patching_rect" : [ 612.0, 313.0, 76.0, 19.0 ],
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
									"linecount" : 582,
									"maxclass" : "o.message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 105.0, 86.0, 463.0, 7159.0 ],
									"text" : "/2014-07-10T22:31:09.403860Z [\n\t/oscrec \"start\"\n\t/timetag 2014-07-10T22:31:09.403860Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.40001e-05\n]\n/2014-07-10T22:31:10.022259Z [\n\t/data 8\n\t/timetag 2014-07-10T22:31:10.022259Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 0.618413\n]\n/2014-07-10T22:31:10.153359Z [\n\t/data 9\n\t/timetag 2014-07-10T22:31:10.153359Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 0.749513\n]\n/2014-07-10T22:31:10.170085Z [\n\t/data 19\n\t/timetag 2014-07-10T22:31:10.170085Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 0.766239\n]\n/2014-07-10T22:31:10.187150Z [\n\t/data 35\n\t/timetag 2014-07-10T22:31:10.187150Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 0.783303\n]\n/2014-07-10T22:31:10.203890Z [\n\t/data 55\n\t/timetag 2014-07-10T22:31:10.203890Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 0.800044\n]\n/2014-07-10T22:31:10.221159Z [\n\t/data 81\n\t/timetag 2014-07-10T22:31:10.221159Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 0.817313\n]\n/2014-07-10T22:31:10.238215Z [\n\t/data 101\n\t/timetag 2014-07-10T22:31:10.238215Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 0.834369\n]\n/2014-07-10T22:31:10.255301Z [\n\t/data 118\n\t/timetag 2014-07-10T22:31:10.255301Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 0.851455\n]\n/2014-07-10T22:31:10.274166Z [\n\t/data 127\n\t/timetag 2014-07-10T22:31:10.274166Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 0.87032\n]\n/2014-07-10T22:31:10.290681Z [\n\t/data 127\n\t/timetag 2014-07-10T22:31:10.290681Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 0.886835\n]\n/2014-07-10T22:31:10.308812Z [\n\t/data 127\n\t/timetag 2014-07-10T22:31:10.308812Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 0.904966\n]\n/2014-07-10T22:31:10.324556Z [\n\t/data 127\n\t/timetag 2014-07-10T22:31:10.324556Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 0.92071\n]\n/2014-07-10T22:31:10.342642Z [\n\t/data 127\n\t/timetag 2014-07-10T22:31:10.342642Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 0.938796\n]\n/2014-07-10T22:31:10.358846Z [\n\t/data 127\n\t/timetag 2014-07-10T22:31:10.358846Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 0.955\n]\n/2014-07-10T22:31:10.377530Z [\n\t/data 127\n\t/timetag 2014-07-10T22:31:10.377530Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 0.973684\n]\n/2014-07-10T22:31:10.394963Z [\n\t/data 120\n\t/timetag 2014-07-10T22:31:10.394963Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 0.991117\n]\n/2014-07-10T22:31:10.412105Z [\n\t/data 103\n\t/timetag 2014-07-10T22:31:10.412105Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.00826\n]\n/2014-07-10T22:31:10.429307Z [\n\t/data 78\n\t/timetag 2014-07-10T22:31:10.429307Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.02546\n]\n/2014-07-10T22:31:10.446530Z [\n\t/data 58\n\t/timetag 2014-07-10T22:31:10.446530Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.04268\n]\n/2014-07-10T22:31:10.464031Z [\n\t/data 46\n\t/timetag 2014-07-10T22:31:10.464031Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.06018\n]\n/2014-07-10T22:31:10.480986Z [\n\t/data 35\n\t/timetag 2014-07-10T22:31:10.480986Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.07714\n]\n/2014-07-10T22:31:10.498074Z [\n\t/data 31\n\t/timetag 2014-07-10T22:31:10.498074Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.09423\n]\n/2014-07-10T22:31:10.515106Z [\n\t/data 29\n\t/timetag 2014-07-10T22:31:10.515106Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.11126\n]\n/2014-07-10T22:31:10.532177Z [\n\t/data 25\n\t/timetag 2014-07-10T22:31:10.532177Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.12833\n]\n/2014-07-10T22:31:10.549487Z [\n\t/data 23\n\t/timetag 2014-07-10T22:31:10.549487Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.14564\n]\n/2014-07-10T22:31:10.566673Z [\n\t/data 21\n\t/timetag 2014-07-10T22:31:10.566673Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.16283\n]\n/2014-07-10T22:31:10.583994Z [\n\t/data 19\n\t/timetag 2014-07-10T22:31:10.583994Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.18015\n]\n/2014-07-10T22:31:10.601161Z [\n\t/data 18\n\t/timetag 2014-07-10T22:31:10.601161Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.19732\n]\n/2014-07-10T22:31:10.618347Z [\n\t/data 18\n\t/timetag 2014-07-10T22:31:10.618347Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.2145\n]\n/2014-07-10T22:31:10.635244Z [\n\t/data 21\n\t/timetag 2014-07-10T22:31:10.635244Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.2314\n]\n/2014-07-10T22:31:10.652129Z [\n\t/data 37\n\t/timetag 2014-07-10T22:31:10.652129Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.24828\n]\n/2014-07-10T22:31:10.669327Z [\n\t/data 64\n\t/timetag 2014-07-10T22:31:10.669327Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.26548\n]\n/2014-07-10T22:31:10.687481Z [\n\t/data 84\n\t/timetag 2014-07-10T22:31:10.687481Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.28364\n]\n/2014-07-10T22:31:10.703271Z [\n\t/data 96\n\t/timetag 2014-07-10T22:31:10.703271Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.29943\n]\n/2014-07-10T22:31:10.720873Z [\n\t/data 108\n\t/timetag 2014-07-10T22:31:10.720873Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.31703\n]\n/2014-07-10T22:31:10.737617Z [\n\t/data 113\n\t/timetag 2014-07-10T22:31:10.737617Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.33377\n]\n/2014-07-10T22:31:10.754449Z [\n\t/data 114\n\t/timetag 2014-07-10T22:31:10.754449Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.3506\n]\n/2014-07-10T22:31:10.772192Z [\n\t/data 114\n\t/timetag 2014-07-10T22:31:10.772192Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.36835\n]\n/2014-07-10T22:31:10.789420Z [\n\t/data 113\n\t/timetag 2014-07-10T22:31:10.789420Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.38557\n]\n/2014-07-10T22:31:10.806777Z [\n\t/data 100\n\t/timetag 2014-07-10T22:31:10.806777Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.40293\n]\n/2014-07-10T22:31:10.824059Z [\n\t/data 80\n\t/timetag 2014-07-10T22:31:10.824059Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.42021\n]\n/2014-07-10T22:31:10.841257Z [\n\t/data 64\n\t/timetag 2014-07-10T22:31:10.841257Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.43741\n]\n/2014-07-10T22:31:10.859046Z [\n\t/data 46\n\t/timetag 2014-07-10T22:31:10.859046Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.4552\n]\n/2014-07-10T22:31:10.876925Z [\n\t/data 33\n\t/timetag 2014-07-10T22:31:10.876925Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.47308\n]\n/2014-07-10T22:31:10.893202Z [\n\t/data 30\n\t/timetag 2014-07-10T22:31:10.893202Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.48936\n]\n/2014-07-10T22:31:10.910839Z [\n\t/data 27\n\t/timetag 2014-07-10T22:31:10.910839Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.50699\n]\n/2014-07-10T22:31:10.927260Z [\n\t/data 25\n\t/timetag 2014-07-10T22:31:10.927260Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.52341\n]\n/2014-07-10T22:31:10.944489Z [\n\t/data 25\n\t/timetag 2014-07-10T22:31:10.944489Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.54064\n]\n/2014-07-10T22:31:10.963656Z [\n\t/data 28\n\t/timetag 2014-07-10T22:31:10.963656Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.55981\n]\n/2014-07-10T22:31:10.980230Z [\n\t/data 42\n\t/timetag 2014-07-10T22:31:10.980230Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.57638\n]\n/2014-07-10T22:31:10.997178Z [\n\t/data 63\n\t/timetag 2014-07-10T22:31:10.997178Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.59333\n]\n/2014-07-10T22:31:11.014281Z [\n\t/data 81\n\t/timetag 2014-07-10T22:31:11.014281Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.61044\n]\n/2014-07-10T22:31:11.031678Z [\n\t/data 94\n\t/timetag 2014-07-10T22:31:11.031678Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.62783\n]\n/2014-07-10T22:31:11.048274Z [\n\t/data 103\n\t/timetag 2014-07-10T22:31:11.048274Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.64443\n]\n/2014-07-10T22:31:11.065174Z [\n\t/data 108\n\t/timetag 2014-07-10T22:31:11.065174Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.66133\n]\n/2014-07-10T22:31:11.081898Z [\n\t/data 110\n\t/timetag 2014-07-10T22:31:11.081898Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.67805\n]\n/2014-07-10T22:31:11.107275Z [\n\t/data 110\n\t/timetag 2014-07-10T22:31:11.107275Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.70343\n]\n/2014-07-10T22:31:11.125170Z [\n\t/data 97\n\t/timetag 2014-07-10T22:31:11.125170Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.72132\n]\n/2014-07-10T22:31:11.142316Z [\n\t/data 76\n\t/timetag 2014-07-10T22:31:11.142316Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.73847\n]\n/2014-07-10T22:31:11.159289Z [\n\t/data 58\n\t/timetag 2014-07-10T22:31:11.159289Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.75544\n]\n/2014-07-10T22:31:11.177078Z [\n\t/data 39\n\t/timetag 2014-07-10T22:31:11.177078Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.77323\n]\n/2014-07-10T22:31:11.193351Z [\n\t/data 28\n\t/timetag 2014-07-10T22:31:11.193351Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.78951\n]\n/2014-07-10T22:31:11.210954Z [\n\t/data 23\n\t/timetag 2014-07-10T22:31:11.210954Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.80711\n]\n/2014-07-10T22:31:11.228405Z [\n\t/data 20\n\t/timetag 2014-07-10T22:31:11.228405Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.82456\n]\n/2014-07-10T22:31:11.245252Z [\n\t/data 19\n\t/timetag 2014-07-10T22:31:11.245252Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.84141\n]\n/2014-07-10T22:31:11.267250Z [\n\t/data 20\n\t/timetag 2014-07-10T22:31:11.267250Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.8634\n]\n/2014-07-10T22:31:11.284419Z [\n\t/data 33\n\t/timetag 2014-07-10T22:31:11.284419Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.88057\n]\n/2014-07-10T22:31:11.301428Z [\n\t/data 54\n\t/timetag 2014-07-10T22:31:11.301428Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.89758\n]\n/2014-07-10T22:31:11.318654Z [\n\t/data 68\n\t/timetag 2014-07-10T22:31:11.318654Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.91481\n]\n/2014-07-10T22:31:11.335788Z [\n\t/data 80\n\t/timetag 2014-07-10T22:31:11.335788Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.93194\n]\n/2014-07-10T22:31:11.353244Z [\n\t/data 89\n\t/timetag 2014-07-10T22:31:11.353244Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.9494\n]\n/2014-07-10T22:31:11.370319Z [\n\t/data 94\n\t/timetag 2014-07-10T22:31:11.370319Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.96647\n]\n/2014-07-10T22:31:11.387155Z [\n\t/data 95\n\t/timetag 2014-07-10T22:31:11.387155Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 1.98331\n]\n/2014-07-10T22:31:11.405101Z [\n\t/data 95\n\t/timetag 2014-07-10T22:31:11.405101Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 2.00126\n]\n/2014-07-10T22:31:11.422123Z [\n\t/data 95\n\t/timetag 2014-07-10T22:31:11.422123Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 2.01828\n]\n/2014-07-10T22:31:11.439271Z [\n\t/data 80\n\t/timetag 2014-07-10T22:31:11.439271Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 2.03543\n]\n/2014-07-10T22:31:11.456388Z [\n\t/data 59\n\t/timetag 2014-07-10T22:31:11.456388Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 2.05254\n]\n/2014-07-10T22:31:11.473942Z [\n\t/data 44\n\t/timetag 2014-07-10T22:31:11.473942Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 2.0701\n]\n/2014-07-10T22:31:11.491362Z [\n\t/data 28\n\t/timetag 2014-07-10T22:31:11.491362Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 2.08752\n]\n/2014-07-10T22:31:11.508953Z [\n\t/data 21\n\t/timetag 2014-07-10T22:31:11.508953Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 2.10511\n]\n/2014-07-10T22:31:11.526210Z [\n\t/data 16\n\t/timetag 2014-07-10T22:31:11.526210Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 2.12236\n]\n/2014-07-10T22:31:11.542815Z [\n\t/data 15\n\t/timetag 2014-07-10T22:31:11.542815Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 2.13897\n]\n/2014-07-10T22:31:11.560308Z [\n\t/data 14\n\t/timetag 2014-07-10T22:31:11.560308Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 2.15646\n]\n/2014-07-10T22:31:11.576470Z [\n\t/data 15\n\t/timetag 2014-07-10T22:31:11.576470Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 2.17262\n]\n/2014-07-10T22:31:11.594260Z [\n\t/data 24\n\t/timetag 2014-07-10T22:31:11.594260Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 2.19041\n]\n/2014-07-10T22:31:11.610960Z [\n\t/data 34\n\t/timetag 2014-07-10T22:31:11.610960Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 2.20711\n]\n/2014-07-10T22:31:11.628258Z [\n\t/data 47\n\t/timetag 2014-07-10T22:31:11.628258Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 2.22441\n]\n/2014-07-10T22:31:11.645360Z [\n\t/data 60\n\t/timetag 2014-07-10T22:31:11.645360Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 2.24151\n]\n/2014-07-10T22:31:11.662416Z [\n\t/data 66\n\t/timetag 2014-07-10T22:31:11.662416Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 2.25857\n]\n/2014-07-10T22:31:11.679356Z [\n\t/data 71\n\t/timetag 2014-07-10T22:31:11.679356Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 2.27551\n]\n/2014-07-10T22:31:11.696316Z [\n\t/data 72\n\t/timetag 2014-07-10T22:31:11.696316Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 2.29247\n]\n/2014-07-10T22:31:11.713496Z [\n\t/data 73\n\t/timetag 2014-07-10T22:31:11.713496Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 2.30965\n]\n/2014-07-10T22:31:11.757346Z [\n\t/data 71\n\t/timetag 2014-07-10T22:31:11.757346Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 2.3535\n]\n/2014-07-10T22:31:11.775207Z [\n\t/data 65\n\t/timetag 2014-07-10T22:31:11.775207Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 2.37136\n]\n/2014-07-10T22:31:11.792924Z [\n\t/data 62\n\t/timetag 2014-07-10T22:31:11.792924Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 2.38908\n]\n/2014-07-10T22:31:12.713746Z [\n\t/oscrec \"stop\"\n\t/timetag 2014-07-10T22:31:12.713746Z\n\t/startrec 2014-07-10T22:31:09.403846Z\n\t/deltaTime 3.3099\n]\n",
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
						"rect" : [ 181.0, 44.0, 1069.0, 787.0 ],
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
									"patching_rect" : [ 81.0, 224.0, 142.0, 19.0 ],
									"text" : "if /oscrec == stop:"
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
									"text" : "1) send /oscrec stop into o.collect as the last event\n2) close gate\n3) output full recording as one bundle"
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
									"text" : "if /oscrec == start:"
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
									"text" : "1) get starting time of recording\n2) open gate to o.collect\n3) send /oscrec start message to be the first event"
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
									"outlettype" : [ "FullPacket" ],
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
					"patching_rect" : [ 612.0, 372.0, 64.0, 22.0 ],
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
					"midpoints" : [ 302.5, 564.0, 92.0, 564.0, 92.0, 69.0, 295.5, 69.0 ],
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
