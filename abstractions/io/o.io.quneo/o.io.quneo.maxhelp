{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 3,
			"architecture" : "x86"
		}
,
		"rect" : [ 51.0, 44.0, 1307.0, 972.0 ],
		"bgcolor" : [ 0.962353, 1.0, 0.998526, 1.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 511.877441, 362.211334, 50.0, 31.0 ],
					"text" : "0.433071"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-63",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 133.158035, 254.523651, 242.0, 47.0 ],
					"text" : "/a/1 is the bottom rightmost pad\n +Note how different QuNeo parts can be selected and routed into max messages."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 3,
							"architecture" : "x86"
						}
,
						"rect" : [ 50.0, 94.0, 911.0, 756.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-4",
									"linecount" : 33,
									"maxclass" : "o.message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 230.0, 449.0 ],
									"text" : "/pad/a/4/velocity 0.\n/pad/a/4/pressure 0.\n/pad/a/4/position 0.496063 0.488189\n/pad/d/4/velocity 0.\n/pad/d/4/pressure 0.\n/pad/d/4/position 0.566929 0.543307\n/pad/a/1/velocity 0.\n/pad/a/1/pressure 0.\n/pad/a/1/position 0.511811 0.433071\n/large.arrowbutton/b/1/velocity 0.\n/large.arrowbutton/b/1/pressure 0.\n/large.arrowbutton/a/1/velocity 0.\n/large.arrowbutton/a/1/pressure 0.\n/large.arrowbutton/b/2/velocity 0.\n/large.arrowbutton/b/2/pressure 0.\n/large.arrowbutton/a/2/velocity 0.\n/large.arrowbutton/a/2/pressure 0.\n/slider/long/velocity\n/slider/long/pressure 0.\n/slider/long/position 0.425197\n/slider/long/2nd/position 0.346457\n/slider/d/velocity 0.\n/slider/d/pressure 0.\n/slider/d/location 0.\n/slider/c/velocity 0.\n/slider/c/pressure 0.\n/slider/c/location 0.\n/slider/b/velocity 0.\n/slider/b/pressure 0.\n/slider/b/location 0.\n/slider/a/velocity 0.\n/slider/a/pressure 0.\n/slider/a/location 0.11811",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-10",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 261.0, 48.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 15.59502, 1018.753296, 84.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p view bundle"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 115.151184, 980.444092, 79.0, 20.0 ],
					"text" : "o.select /pad"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 49.687012, 246.706314, 79.0, 20.0 ],
					"text" : "o.select /pad"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-51",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 318.877441, 1103.937256, 163.134995, 18.0 ],
					"text" : "0.511811"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-52",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 264.88443, 1105.268311, 50.0, 18.0 ],
					"text" : "0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-53",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 214.643097, 1105.268311, 50.0, 18.0 ],
					"text" : "0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "FullPacket" ],
					"patching_rect" : [ 214.643097, 1069.48291, 173.0, 20.0 ],
					"text" : "o.route /velocity /pressure /x /y"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-55",
					"linecount" : 4,
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 43.665028, 1096.510498, 150.0, 60.0 ],
					"text" : "/velocity 0.\n/pressure 0.\n/x 0.511811\n/y 0.433071",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 115.151184, 1035.72522, 71.0, 20.0 ],
					"text" : "o.route /a/1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 115.151184, 1006.541992, 75.0, 20.0 ],
					"text" : "o.route /pad"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-50",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 901.086914, 420.595947, 150.0, 33.0 ],
					"text" : "<< demonstrates functionality (in and out)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-48",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1123.155273, 647.217285, 150.0, 20.0 ],
					"text" : "<< toggle storage type"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-44",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 414.111786, 355.562958, 91.765656, 18.0 ],
					"text" : "0.519685"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-43",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 369.118774, 355.562958, 50.0, 18.0 ],
					"text" : "0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-42",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 318.877441, 355.562958, 50.0, 18.0 ],
					"text" : "0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "FullPacket" ],
					"patching_rect" : [ 340.056763, 310.460602, 173.0, 20.0 ],
					"text" : "o.route /velocity /pressure /x /y"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-37",
					"linecount" : 4,
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 133.158035, 330.414978, 162.644501, 60.0 ],
					"text" : "/pressure 0.\n/x 0.519685\n/y 0.433071\n/velocity 0.",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 49.687012, 300.805969, 71.0, 20.0 ],
					"text" : "o.route /a/1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 49.687012, 274.523651, 75.0, 20.0 ],
					"text" : "o.route /pad"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-32",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.187012, 138.241302, 162.0, 33.0 ],
					"text" : "Click the o.message below to initialize",
					"textcolor" : [ 0.796693, 0.129639, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 3,
							"architecture" : "x86"
						}
,
						"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-3",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 161.0, 40.0, 150.0, 47.0 ],
									"text" : "entire state accumulates after all the QuNeo have been touched"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-4",
									"linecount" : 135,
									"maxclass" : "o.message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 690.0, 1816.0 ],
									"text" : "/slider/long/pressure 0.\n/slider/long/velocity 0.\n/slider/long/2nd/position 0.275591\n/slider/long/position 0.590551\n/pad/d/4/pressure 0.\n/pad/b/4/x 0.362205\n/pad/b/4/y 0.480315\n/pad/b/4/pressure 0.\n/pad/c/4/x 0.0393701\n/pad/c/4/pressure 0.\n/pad/d/4/x 0.0393701\n/pad/d/4/y 0.\n/pad/d/4/velocity 0.\n/pad/b/4/velocity 0.\n/pad/c/4/y 1.\n/pad/c/4/velocity 0.\n/slider/d/pressure 0.\n/slider/d/velocity 0.\n/slider/b/velocity 0.\n/slider/d/position 0.661417\n/slider/b/position 0.527559\n/slider/b/pressure 0.\n/pad/b/3/pressure 0.\n/pad/b/3/y 0.92126\n/pad/b/3/velocity 0.\n/pad/b/3/x 1.\n/pad/a/3/x 1.\n/pad/a/3/y 0.889764\n/pad/a/3/velocity 0.\n/pad/a/3/pressure 0.\n/disc/b/pressure 0.\n/disc/b/velocity 0.\n/disc/b/direction 1.\n/pad/c/3/x 1.\n/pad/c/3/y 0.\n/pad/c/3/velocity 0.\n/pad/c/3/pressure 0.\n/pad/a/4/pressure 0.\n/pad/a/4/x 0.88189\n/pad/a/4/y 0.\n/pad/a/4/velocity 0.\n/pad/a/1/pressure 0.\n/pad/a/1/x 0.519685\n/pad/a/1/y 0.433071\n/pad/a/1/velocity 0.\n/disc/a/pressure 0.\n/disc/a/velocity 0.\n/disc/a/direction 0.\n/button/rhombus/pressure 0.\n/button/rhombus/velocity 0.\n/button/c/velocity 0.\n/button/c/pressure 0.\n/button/b/pressure 0.\n/button/b/velocity 0.\n/button/a/velocity 0.\n/button/a/pressure 0.\n/large.arrowbutton/b/1/pressure 0.\n/large.arrowbutton/b/1/velocity 0.\n/large.arrowbutton/b/2/pressure 0.\n/large.arrowbutton/b/2/velocity 0.\n/large.arrowbutton/a/1/pressure 0.\n/large.arrowbutton/a/1/velocity 0.\n/large.arrowbutton/a/2/velocity 0.\n/large.arrowbutton/a/2/pressure 0.\n/arrowbutton/b/1/velocity 0.\n/arrowbutton/b/1/pressure 0.\n/arrowbutton/a/1/velocity 0.\n/arrowbutton/a/1/pressure 0.\n/arrowbutton/b/2/pressure 0.\n/arrowbutton/b/2/velocity 0.\n/arrowbutton/a/2/pressure 0.\n/arrowbutton/a/2/velocity 0.\n/arrowbutton/b/3/velocity 0.\n/arrowbutton/b/3/pressure 0.\n/arrowbutton/a/3/velocity 0.\n/arrowbutton/a/3/pressure 0.\n/arrowbutton/b/4/pressure 0.\n/arrowbutton/b/4/velocity 0.\n/arrowbutton/a/4/pressure 0.\n/arrowbutton/a/4/velocity 0.\n/slider/c/pressure 0.\n/slider/c/position 0.\n/slider/c/velocity 0.\n/slider/a/velocity 0.\n/slider/a/pressure 0.\n/slider/a/position 0.\n/slider/1/velocity 0.\n/slider/1/pressure 0.\n/slider/1/position 0.\n/slider/2/velocity 0.\n/slider/2/pressure 0.\n/slider/2/position 0.\n/slider/3/pressure 0.\n/slider/3/velocity 0.\n/slider/3/position 0.\n/slider/4/pressure 0.\n/slider/4/position 0.\n/slider/4/velocity 0.\n/pad/d/3/pressure 0.\n/pad/d/3/y 0.\n/pad/d/3/velocity 0.\n/pad/d/3/x 0.\n/pad/d/2/pressure 0.\n/pad/d/2/y 0.\n/pad/d/2/velocity 0.\n/pad/d/2/x 0.\n/pad/c/2/pressure 0.\n/pad/c/2/y 0.\n/pad/c/2/velocity 0.\n/pad/c/2/x 0.\n/pad/b/2/pressure 0.\n/pad/b/2/x 0.\n/pad/b/2/y 0.\n/pad/b/2/velocity 0.\n/pad/a/2/pressure 0.\n/pad/a/2/x 0.\n/pad/a/2/y 0.\n/pad/a/2/velocity 0.\n/pad/d/1/velocity 0.\n/pad/d/1/pressure 0.\n/pad/d/1/x 0.\n/pad/d/1/y 0.\n/pad/c/1/x 0.\n/pad/c/1/y 0.\n/pad/c/1/velocity 0.\n/pad/c/1/pressure 0.\n/pad/b/1/pressure 0.\n/pad/b/1/y 0.\n/pad/b/1/velocity 0.\n/pad/b/1/x 0.\n/USB/port \"QUNEO\"\n/instructions \"first tap 'mode' button, then tap 'pad /a/1' to enable preset 1. Ok to change the settings within preset 1, using the QuNeo Editor, as long as the midi mappings are not changed\"\n/manufactuer \"KESUMO, LLC.\" \"Keith McMillen\"\n/product \"Quneo, #K-707\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-10",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 721.0, 40.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 32.539017, 362.211334, 84.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p view bundle"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-31",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1004.559387, 508.914246, 128.905518, 33.0 ],
					"text" : "The gesture trace display helper"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/4" ],
					"id" : "obj-22",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.pad.gesture.trace.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 987.155273, 541.914246, 136.0, 128.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 259.634521, 158.241302, 253.422226, 20.0 ],
					"text" : "<< drag between 0. and 1. Look at Device."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"linecount" : 2,
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 209.643097, 206.241302, 150.0, 33.0 ],
					"text" : "/led/disc/linear.position/red/a 0.",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-21",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 209.643097, 144.741302, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 209.643097, 178.241302, 201.0, 20.0 ],
					"text" : "o.pack /led/disc/linear.position/red/a"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-30",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 892.189087, 310.460602, 166.0, 74.0 ],
					"text" : "Name the sensor domain in the bpatcher inspector, with an argument, such as /pad/a/4/. (The top rightmost pad)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1038.725952, 1340.543213, 202.0, 20.0 ],
					"text" : "configured by Dave DeFilippo 2013"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-17",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 738.155273, 218.375305, 386.0, 74.0 ],
					"text" : "Quneo Parts (or Sensor domains) exist as separate patches (to be opened as bpatchers), for building new relations between existing and non-existing sensor domains.  Compose new assemblages of interactivity, distribute the device across patchers or reconfigure the device completely. "
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"linecount" : 4,
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 758.020569, 560.453491, 150.0, 60.0 ],
					"text" : "/pad/a/4/velocity 0.\n/pad/a/4/pressure 0.\n/pad/a/4/x 0.409449\n/pad/a/4/y 0.858268",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/4" ],
					"id" : "obj-14",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.pad.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 773.852112, 426.664948, 118.336945, 104.867409 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/4" ],
					"id" : "obj-9",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.pad.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 773.852112, 310.460602, 118.336945, 104.867409 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 24.0,
					"frgb" : 0.0,
					"id" : "obj-13",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 738.155273, 627.217285, 249.0, 60.0 ],
					"text" : "* o.io.quneo.display\nWhat Things Mean"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Unicode MS",
					"fontsize" : 18.0,
					"frgb" : 0.0,
					"id" : "obj-93",
					"linecount" : 12,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 738.155273, 687.217285, 541.943115, 296.0 ],
					"text" : "'Redness' represents '/velocity.' \nHowever, the red graphics on the two '/disc'(s) indicate '/direction'\n\n'Blueness' represents '/pressure.'\n\n'Green graphics' respond to touching the actual QuNeo.\n For '/slider/long' green indicates a range between two fingers. For pads and sliders, green indicates '/position' of one finger.\n\n'Yellow graphics' can be clicked and dragged around with a mouse, in order to generate OSC bundles without the actual QuNeo in hand.\n",
					"textcolor" : [ 0.040087, 0.213358, 0.109884, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-7",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 431.744232, 29.306452, 464.0, 74.0 ],
					"text" : "First Inlet: The object recognizes any QuNeo by a locational identity as  assigned (by user or OS) to available usb ports. Takes an osc message to specify which usb port.\n\nSecond Inlet: Takes osc messages to control leds on the physical QuNeo, open object to see mapping."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-25",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.135496, 46.36441, 333.0, 33.0 ],
					"text" : "OSC encoding of Keith McMillen's QuNeo controller  for prototyping and design of related algorithms."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-26",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.135496, 84.695938, 397.0, 33.0 ],
					"text" : "Provides graphical representation of sensor activity, as well as a  namespace encoding for gesture derivation and LED control."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 24.0,
					"frgb" : 0.0,
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.135496, 13.364412, 241.0, 33.0 ],
					"text" : "o.io.quneo",
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.87451, 0.933333, 1.0, 1.0 ],
					"border" : 5,
					"bordercolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"id" : "obj-28",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1.186984, 13.364412, 424.42041, 118.884079 ],
					"rounded" : 70
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.187012, 171.241302, 150.0, 20.0 ],
					"text" : "/USB/port \"QUNEO\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 10.187012, 206.241302, 67.0, 20.0 ],
					"text" : "o.io.quneo"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 2183.121826, 1476.573608, 32.5, 20.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 2183.121826, 1449.573608, 50.0, 20.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1.187012, 391.900238, 736.968262, 581.374939 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 2206.121826, 1509.573608, 2241.871826, 1509.573608, 2241.871826, 1430.573608, 2223.621826, 1430.573608 ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-54", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-54", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.io.quneo.display.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "quneopic.jpg",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JPEG",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.pad.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "green-circle.png",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "PNG ",
				"implicit" : 1
			}
, 			{
				"name" : "yellow-circle.png",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "PNG ",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.slide.A-D.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.slide.1-4.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.longslide.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.arrowbutton.2A-D.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.arrowbutton.1A-D.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.disc.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.large.arrowbutton.2A-B.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.large.arrowbutton.1A-B.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.button.A.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.button.B.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.button.C.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.rhombusbutton.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.collectwithtimeout.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/maxliB/lib",
				"patcherrelativepath" : "../../../../../../maxliB/lib",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.helper.encoder.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/maxliB/o.io.quneo.all",
				"patcherrelativepath" : "../../../../../../maxliB/o.io.quneo.all",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.pad.gesture.trace.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.select.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.collect.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.change.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pak.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.union.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.cond.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.message.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.prepend.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
