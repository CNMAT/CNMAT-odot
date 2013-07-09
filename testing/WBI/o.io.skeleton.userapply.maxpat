{
	"boxes" : [ 		{
			"box" : 			{
				"maxclass" : "comment",
				"text" : "Rebind theuser ID",
				"patching_rect" : [ 1385.0, 256.0, 107.0, 20.0 ],
				"id" : "obj-37",
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
				"text" : "p everywhere",
				"patching_rect" : [ 1302.0, 256.0, 83.0, 20.0 ],
				"outlettype" : [ "" ],
				"id" : "obj-33",
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
								"patching_rect" : [ 189.0, 185.0, 25.0, 25.0 ],
								"id" : "obj-2",
								"numinlets" : 1,
								"numoutlets" : 0,
								"comment" : ""
							}

						}
, 						{
							"box" : 							{
								"maxclass" : "inlet",
								"patching_rect" : [ 187.0, 121.0, 25.0, 25.0 ],
								"outlettype" : [ "" ],
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
				"maxclass" : "comment",
				"text" : "peel off the user id so that the transformations can occur independently",
				"patching_rect" : [ 573.0, 142.0, 395.0, 20.0 ],
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
				"text" : "t b",
				"patching_rect" : [ 43.0, 142.0, 24.0, 20.0 ],
				"outlettype" : [ "bang" ],
				"id" : "obj-32",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "#1",
				"patching_rect" : [ 1267.0, 215.0, 24.0, 20.0 ],
				"outlettype" : [ "" ],
				"id" : "obj-24",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "o.prepend /10",
				"patching_rect" : [ 1267.0, 305.0, 85.0, 20.0 ],
				"outlettype" : [ "FullPacket" ],
				"id" : "obj-25",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "#1",
				"patching_rect" : [ 1138.0, 215.0, 24.0, 20.0 ],
				"outlettype" : [ "" ],
				"id" : "obj-26",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "o.prepend /9",
				"patching_rect" : [ 1139.0, 305.0, 78.0, 20.0 ],
				"outlettype" : [ "FullPacket" ],
				"id" : "obj-27",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "#1",
				"patching_rect" : [ 1022.0, 215.0, 24.0, 20.0 ],
				"outlettype" : [ "" ],
				"id" : "obj-28",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "o.prepend /8",
				"patching_rect" : [ 1022.0, 305.0, 78.0, 20.0 ],
				"outlettype" : [ "FullPacket" ],
				"id" : "obj-29",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "#1",
				"patching_rect" : [ 901.0, 215.0, 24.0, 20.0 ],
				"outlettype" : [ "" ],
				"id" : "obj-22",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "o.prepend /7",
				"patching_rect" : [ 901.0, 305.0, 78.0, 20.0 ],
				"outlettype" : [ "FullPacket" ],
				"id" : "obj-23",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "#1",
				"patching_rect" : [ 772.0, 215.0, 24.0, 20.0 ],
				"outlettype" : [ "" ],
				"id" : "obj-20",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "o.prepend /6",
				"patching_rect" : [ 772.0, 305.0, 78.0, 20.0 ],
				"outlettype" : [ "FullPacket" ],
				"id" : "obj-21",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "#1",
				"patching_rect" : [ 656.0, 215.0, 24.0, 20.0 ],
				"outlettype" : [ "" ],
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
				"text" : "o.prepend /5",
				"patching_rect" : [ 656.0, 305.0, 78.0, 20.0 ],
				"outlettype" : [ "FullPacket" ],
				"id" : "obj-19",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "#1",
				"patching_rect" : [ 533.0, 215.0, 24.0, 20.0 ],
				"outlettype" : [ "" ],
				"id" : "obj-16",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "o.prepend /4",
				"patching_rect" : [ 533.0, 305.0, 78.0, 20.0 ],
				"outlettype" : [ "FullPacket" ],
				"id" : "obj-17",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "#1",
				"patching_rect" : [ 417.0, 215.0, 24.0, 20.0 ],
				"outlettype" : [ "" ],
				"id" : "obj-14",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "o.prepend /3",
				"patching_rect" : [ 417.0, 305.0, 78.0, 20.0 ],
				"outlettype" : [ "FullPacket" ],
				"id" : "obj-15",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "#1",
				"patching_rect" : [ 307.0, 215.0, 24.0, 20.0 ],
				"outlettype" : [ "" ],
				"id" : "obj-12",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "o.prepend /2",
				"patching_rect" : [ 307.0, 305.0, 78.0, 20.0 ],
				"outlettype" : [ "FullPacket" ],
				"id" : "obj-13",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "#1",
				"patching_rect" : [ 192.0, 215.0, 24.0, 20.0 ],
				"outlettype" : [ "" ],
				"id" : "obj-10",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "o.prepend /1",
				"patching_rect" : [ 192.0, 305.0, 78.0, 20.0 ],
				"outlettype" : [ "FullPacket" ],
				"id" : "obj-11",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "outlet",
				"patching_rect" : [ 43.0, 421.0, 25.0, 25.0 ],
				"id" : "obj-9",
				"numinlets" : 1,
				"numoutlets" : 0,
				"comment" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "inlet",
				"patching_rect" : [ 77.0, 109.0, 25.0, 25.0 ],
				"outlettype" : [ "" ],
				"id" : "obj-8",
				"numinlets" : 0,
				"numoutlets" : 1,
				"comment" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "#1",
				"patching_rect" : [ 77.0, 215.0, 24.0, 20.0 ],
				"outlettype" : [ "" ],
				"id" : "obj-7",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "o.collect",
				"patching_rect" : [ 43.0, 387.0, 55.0, 20.0 ],
				"outlettype" : [ "" ],
				"id" : "obj-6",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "o.prepend /0",
				"patching_rect" : [ 77.0, 305.0, 78.0, 20.0 ],
				"outlettype" : [ "FullPacket" ],
				"id" : "obj-4",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "o.route /0 /1 /2 /3 /4 /5 /6 /7 /8 /9 /10 /11 /12 /13 /14 /15 /16 /17 /18 /19 /20",
				"patching_rect" : [ 77.0, 142.0, 496.0, 20.0 ],
				"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "FullPacket" ],
				"id" : "obj-2",
				"fontsize" : 12.0,
				"numinlets" : 22,
				"numoutlets" : 22,
				"fontname" : "Arial"
			}

		}
 ],
	"lines" : [ 		{
			"patchline" : 			{
				"source" : [ "obj-8", 0 ],
				"destination" : [ "obj-32", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-8", 0 ],
				"destination" : [ "obj-2", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-7", 0 ],
				"destination" : [ "obj-4", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-6", 0 ],
				"destination" : [ "obj-9", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-4", 0 ],
				"destination" : [ "obj-6", 0 ],
				"hidden" : 0,
				"midpoints" : [ 86.5, 339.0, 52.5, 339.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-33", 0 ],
				"destination" : [ "obj-4", 0 ],
				"hidden" : 0,
				"midpoints" : [ 1311.5, 290.0, 86.5, 290.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-33", 0 ],
				"destination" : [ "obj-29", 0 ],
				"hidden" : 0,
				"midpoints" : [ 1311.5, 290.0, 1031.5, 290.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-33", 0 ],
				"destination" : [ "obj-27", 0 ],
				"hidden" : 0,
				"midpoints" : [ 1311.5, 290.0, 1148.5, 290.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-33", 0 ],
				"destination" : [ "obj-25", 0 ],
				"hidden" : 0,
				"midpoints" : [ 1311.5, 290.0, 1276.5, 290.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-33", 0 ],
				"destination" : [ "obj-23", 0 ],
				"hidden" : 0,
				"midpoints" : [ 1311.5, 290.0, 910.5, 290.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-33", 0 ],
				"destination" : [ "obj-21", 0 ],
				"hidden" : 0,
				"midpoints" : [ 1311.5, 290.0, 781.5, 290.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-33", 0 ],
				"destination" : [ "obj-19", 0 ],
				"hidden" : 0,
				"midpoints" : [ 1311.5, 290.0, 665.5, 290.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-33", 0 ],
				"destination" : [ "obj-17", 0 ],
				"hidden" : 0,
				"midpoints" : [ 1311.5, 290.0, 542.5, 290.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-33", 0 ],
				"destination" : [ "obj-15", 0 ],
				"hidden" : 0,
				"midpoints" : [ 1311.5, 290.0, 426.5, 290.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-33", 0 ],
				"destination" : [ "obj-13", 0 ],
				"hidden" : 0,
				"midpoints" : [ 1311.5, 290.0, 316.5, 290.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-33", 0 ],
				"destination" : [ "obj-11", 0 ],
				"hidden" : 0,
				"midpoints" : [ 1311.5, 290.0, 201.5, 290.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-32", 0 ],
				"destination" : [ "obj-6", 0 ],
				"hidden" : 0,
				"midpoints" : [ 52.5, 260.5, 52.5, 260.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-29", 0 ],
				"destination" : [ "obj-6", 0 ],
				"hidden" : 0,
				"midpoints" : [ 1031.5, 339.0, 52.5, 339.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-28", 0 ],
				"destination" : [ "obj-29", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-27", 0 ],
				"destination" : [ "obj-6", 0 ],
				"hidden" : 0,
				"midpoints" : [ 1148.5, 339.0, 52.5, 339.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-26", 0 ],
				"destination" : [ "obj-27", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-25", 0 ],
				"destination" : [ "obj-6", 0 ],
				"hidden" : 0,
				"midpoints" : [ 1276.5, 339.0, 52.5, 339.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-24", 0 ],
				"destination" : [ "obj-25", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-23", 0 ],
				"destination" : [ "obj-6", 0 ],
				"hidden" : 0,
				"midpoints" : [ 910.5, 339.0, 52.5, 339.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-22", 0 ],
				"destination" : [ "obj-23", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-21", 0 ],
				"destination" : [ "obj-6", 0 ],
				"hidden" : 0,
				"midpoints" : [ 781.5, 339.0, 52.5, 339.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-20", 0 ],
				"destination" : [ "obj-21", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-2", 0 ],
				"destination" : [ "obj-7", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-2", 8 ],
				"destination" : [ "obj-28", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-2", 9 ],
				"destination" : [ "obj-26", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-2", 10 ],
				"destination" : [ "obj-24", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-2", 7 ],
				"destination" : [ "obj-22", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-2", 6 ],
				"destination" : [ "obj-20", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-2", 5 ],
				"destination" : [ "obj-18", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-2", 4 ],
				"destination" : [ "obj-16", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-2", 3 ],
				"destination" : [ "obj-14", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-2", 2 ],
				"destination" : [ "obj-12", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-2", 1 ],
				"destination" : [ "obj-10", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-19", 0 ],
				"destination" : [ "obj-6", 0 ],
				"hidden" : 0,
				"midpoints" : [ 665.5, 339.0, 52.5, 339.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-18", 0 ],
				"destination" : [ "obj-19", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-17", 0 ],
				"destination" : [ "obj-6", 0 ],
				"hidden" : 0,
				"midpoints" : [ 542.5, 339.0, 52.5, 339.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-16", 0 ],
				"destination" : [ "obj-17", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-15", 0 ],
				"destination" : [ "obj-6", 0 ],
				"hidden" : 0,
				"midpoints" : [ 426.5, 339.0, 52.5, 339.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-14", 0 ],
				"destination" : [ "obj-15", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-13", 0 ],
				"destination" : [ "obj-6", 0 ],
				"hidden" : 0,
				"midpoints" : [ 316.5, 339.0, 52.5, 339.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-12", 0 ],
				"destination" : [ "obj-13", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-11", 0 ],
				"destination" : [ "obj-6", 0 ],
				"hidden" : 0,
				"midpoints" : [ 201.5, 339.0, 52.5, 339.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-10", 0 ],
				"destination" : [ "obj-11", 0 ],
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
