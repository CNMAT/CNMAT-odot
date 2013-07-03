{
	"boxes" : [ 		{
			"box" : 			{
				"maxclass" : "comment",
				"text" : "\"\"Ooops I am getting a bit lost here regarding the namespace... what is center and what is middle? \"\"",
				"linecount" : 3,
				"patching_rect" : [ 710.5, 193.0, 202.0, 48.0 ],
				"id" : "obj-9",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 0,
				"frgb" : 0.0,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "comment",
				"text" : "Use fanin to stream the rest of the OSC bundle",
				"patching_rect" : [ 88.0, 281.0, 271.0, 20.0 ],
				"id" : "obj-4",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 0,
				"frgb" : 0.0,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "comment",
				"text" : "Create a derived point at the center of the two hips in order to translate to a self-referenced coordinate system",
				"linecount" : 2,
				"patching_rect" : [ 623.0, 66.0, 315.0, 34.0 ],
				"id" : "obj-3",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 0,
				"frgb" : 0.0,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "o.io.skeleton.middle /middle/hip/position/value /lower/limb/left/hip/position/value /lower/limb/right/hip/position",
				"patching_rect" : [ 41.0, 73.0, 582.0, 20.0 ],
				"outlettype" : [ "FullPacket" ],
				"id" : "obj-6",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "comment",
				"text" : "Touch yourself",
				"patching_rect" : [ 276.0, 321.0, 150.0, 20.0 ],
				"id" : "obj-8",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 0,
				"frgb" : 0.0,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "o.io.skeleton.headshoulderskneesandtoes",
				"patching_rect" : [ 41.0, 321.0, 235.0, 20.0 ],
				"outlettype" : [ "FullPacket" ],
				"id" : "obj-5",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "comment",
				"text" : "Compute the height from the floor",
				"patching_rect" : [ 447.0, 193.0, 196.0, 20.0 ],
				"id" : "obj-22",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 0,
				"frgb" : 0.0,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "o.if bound(/end/center/head/value)",
				"patching_rect" : [ 41.0, 169.0, 193.0, 20.0 ],
				"outlettype" : [ "FullPacket", "FullPacket" ],
				"id" : "obj-19",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 2,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "o.expr /end/center/head/elevation/value = (dot(/end/center/head/value\\,/floor/normal/value) - dot(/floor/position/value\\,/floor/normal/value)) / l2norm(/floor/position/value)\\; /end/center/head/elevation/quality = /end/center/head/quality",
				"linecount" : 3,
				"patching_rect" : [ 41.0, 211.0, 602.0, 48.0 ],
				"outlettype" : [ "FullPacket" ],
				"id" : "obj-18",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "p fanin",
				"patching_rect" : [ 41.0, 281.0, 47.0, 20.0 ],
				"outlettype" : [ "FullPacket" ],
				"id" : "obj-17",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial",
				"patcher" : 				{
					"fileversion" : 1,
					"appversion" : 					{
						"major" : 6,
						"minor" : 0,
						"revision" : 8
					}
,
					"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
					"boxes" : [ 						{
							"box" : 							{
								"maxclass" : "outlet",
								"patching_rect" : [ 271.0, 336.0, 25.0, 25.0 ],
								"id" : "obj-2",
								"numinlets" : 1,
								"numoutlets" : 0,
								"comment" : ""
							}

						}
, 						{
							"box" : 							{
								"maxclass" : "inlet",
								"patching_rect" : [ 277.0, 282.0, 25.0, 25.0 ],
								"outlettype" : [ "FullPacket" ],
								"id" : "obj-1",
								"numinlets" : 0,
								"numoutlets" : 1,
								"comment" : ""
							}

						}
 ],
					"lines" : [ 						{
							"patchline" : 							{
								"source" : [ "obj-1", 0 ],
								"destination" : [ "obj-2", 0 ],
								"hidden" : 0,
								"disabled" : 0
							}

						}
 ]
				}
,
				"saved_object_attributes" : 				{
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

			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "o.if bound(/floor/position/value) && bound(/floor/normal/value)",
				"patching_rect" : [ 41.0, 121.0, 337.0, 20.0 ],
				"outlettype" : [ "FullPacket", "FullPacket" ],
				"id" : "obj-16",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 2,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "outlet",
				"patching_rect" : [ 41.0, 360.0, 25.0, 25.0 ],
				"id" : "obj-2",
				"numinlets" : 1,
				"numoutlets" : 0,
				"comment" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "inlet",
				"patching_rect" : [ 41.0, 23.0, 25.0, 25.0 ],
				"outlettype" : [ "" ],
				"id" : "obj-1",
				"numinlets" : 0,
				"numoutlets" : 1,
				"comment" : ""
			}

		}
 ],
	"lines" : [ 		{
			"patchline" : 			{
				"source" : [ "obj-17", 0 ],
				"destination" : [ "obj-5", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-5", 0 ],
				"destination" : [ "obj-2", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-6", 0 ],
				"destination" : [ "obj-16", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-19", 0 ],
				"destination" : [ "obj-18", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-19", 1 ],
				"destination" : [ "obj-17", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-18", 0 ],
				"destination" : [ "obj-17", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-16", 0 ],
				"destination" : [ "obj-19", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-16", 1 ],
				"destination" : [ "obj-17", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-1", 0 ],
				"destination" : [ "obj-6", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
 ],
	"appversion" : 	{
		"major" : 6,
		"minor" : 0,
		"revision" : 8
	}

}
