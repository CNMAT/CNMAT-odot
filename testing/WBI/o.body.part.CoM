{
  "boxes" : [ 		{
			"box" : 			{
				"maxclass" : "newobj",
				"varname" : "u697000634",
				"text" : "autopattr",
				"numoutlets" : 4,
				"id" : "obj-25",
				"outlettype" : [ "", "", "", "" ],
				"patching_rect" : [ 577.083374, 36.0, 59.5, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 1,
				"fontname" : "Arial",
				"restore" : 				{
					"Body_Segment" : [ 0 ],
					"Body_Weight" : [ 120 ],
					"Gender" : [ 0 ]
				}

			}

		}
, 		{
			"box" : 			{
				"maxclass" : "outlet",
				"numoutlets" : 0,
				"id" : "obj-12",
				"patching_rect" : [ 412.118103, 506.0, 25.0, 25.0 ],
				"numinlets" : 1,
				"comment" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "outlet",
				"numoutlets" : 0,
				"id" : "obj-13",
				"patching_rect" : [ 383.118103, 506.0, 25.0, 25.0 ],
				"numinlets" : 1,
				"comment" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "outlet",
				"numoutlets" : 0,
				"id" : "obj-24",
				"patching_rect" : [ 355.118103, 506.0, 25.0, 25.0 ],
				"numinlets" : 1,
				"comment" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "outlet",
				"numoutlets" : 0,
				"id" : "obj-11",
				"patching_rect" : [ 166.583328, 506.0, 25.0, 25.0 ],
				"numinlets" : 1,
				"comment" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "outlet",
				"numoutlets" : 0,
				"id" : "obj-5",
				"patching_rect" : [ 137.583328, 506.0, 25.0, 25.0 ],
				"numinlets" : 1,
				"comment" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "inlet",
				"numoutlets" : 1,
				"id" : "obj-4",
				"outlettype" : [ "" ],
				"patching_rect" : [ 577.083374, 182.5, 25.0, 25.0 ],
				"numinlets" : 0,
				"comment" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "bpatcher",
				"varname" : "o.body.Position[1]",
				"numoutlets" : 3,
				"id" : "obj-22",
				"outlettype" : [ "", "", "" ],
				"patching_rect" : [ 127.833328, 271.5, 226.5, 22.0 ],
				"name" : "o.body.part.self.position.maxpat",
				"numinlets" : 4
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "r /#1/skeleton",
				"numoutlets" : 1,
				"id" : "obj-21",
				"outlettype" : [ "" ],
				"patching_rect" : [ 143.583328, 194.0, 83.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 0,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "+ 1",
				"numoutlets" : 1,
				"id" : "obj-20",
				"outlettype" : [ "int" ],
				"patching_rect" : [ 306.083313, 230.5, 32.5, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 2,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "+ 1",
				"numoutlets" : 1,
				"id" : "obj-6",
				"outlettype" : [ "int" ],
				"patching_rect" : [ 75.0, 194.0, 32.5, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 2,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "t b f",
				"numoutlets" : 2,
				"id" : "obj-17",
				"outlettype" : [ "bang", "float" ],
				"patching_rect" : [ 537.583374, 36.0, 32.5, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "t b i",
				"numoutlets" : 2,
				"id" : "obj-34",
				"outlettype" : [ "bang", "int" ],
				"patching_rect" : [ 311.583344, 70.0, 32.5, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "inlet",
				"numoutlets" : 1,
				"id" : "obj-16",
				"outlettype" : [ "" ],
				"patching_rect" : [ 461.583344, -1.0, 25.0, 25.0 ],
				"numinlets" : 0,
				"comment" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "inlet",
				"numoutlets" : 1,
				"id" : "obj-15",
				"outlettype" : [ "" ],
				"patching_rect" : [ 311.583344, -1.0, 25.0, 25.0 ],
				"numinlets" : 0,
				"comment" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "inlet",
				"numoutlets" : 1,
				"id" : "obj-7",
				"outlettype" : [ "" ],
				"patching_rect" : [ 191.583344, -1.0, 25.0, 25.0 ],
				"numinlets" : 0,
				"comment" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "comment",
				"text" : "XYZ of the CoM of the Segment",
				"numoutlets" : 0,
				"id" : "obj-31",
				"patching_rect" : [ 109.583328, 531.0, 180.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 1,
				"frgb" : 0.0,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "comment",
				"text" : "Body Segment;",
				"numoutlets" : 0,
				"presentation_rect" : [ 5.0, 3.0, 126.0, 20.0 ],
				"id" : "obj-28",
				"patching_rect" : [ 103.083344, 36.0, 126.0, 20.0 ],
				"fontsize" : 12.0,
				"presentation" : 1,
				"numinlets" : 1,
				"frgb" : 0.0,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "comment",
				"text" : "Weight:",
				"numoutlets" : 0,
				"presentation_rect" : [ 290.5, 3.0, 98.0, 20.0 ],
				"id" : "obj-27",
				"patching_rect" : [ 411.583344, 36.0, 55.0, 20.0 ],
				"fontsize" : 12.0,
				"presentation" : 1,
				"numinlets" : 1,
				"frgb" : 0.0,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "route text",
				"numoutlets" : 2,
				"id" : "obj-23",
				"outlettype" : [ "", "" ],
				"patching_rect" : [ 551.083374, 371.5, 61.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 2,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "textedit",
				"varname" : "Body_Weight",
				"text" : "120",
				"numoutlets" : 4,
				"presentation_rect" : [ 340.5, 3.0, 48.0, 20.0 ],
				"id" : "obj-14",
				"outlettype" : [ "", "int", "", "" ],
				"patching_rect" : [ 461.583344, 36.0, 76.0, 20.0 ],
				"fontsize" : 12.0,
				"presentation" : 1,
				"parameter_enable" : 0,
				"numinlets" : 1,
				"frgb" : 0.0,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "expr ($f1*$f2*$f3)",
				"numoutlets" : 1,
				"id" : "obj-10",
				"outlettype" : [ "" ],
				"patching_rect" : [ 411.583344, 474.5, 105.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 3,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "expr ($f1*$f2*$f3)",
				"numoutlets" : 1,
				"id" : "obj-9",
				"outlettype" : [ "" ],
				"patching_rect" : [ 382.583344, 442.0, 105.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 3,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "expr ($f1*$f2*$f3)",
				"numoutlets" : 1,
				"id" : "obj-8",
				"outlettype" : [ "" ],
				"patching_rect" : [ 354.583344, 412.5, 105.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 3,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "switch",
				"numoutlets" : 1,
				"id" : "obj-2",
				"outlettype" : [ "" ],
				"patching_rect" : [ 397.31665, 336.5, 69.919525, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 3,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "umenu",
				"varname" : "Body_Segment",
				"numoutlets" : 3,
				"presentation_rect" : [ 97.5, 3.0, 119.0, 20.0 ],
				"id" : "obj-1",
				"outlettype" : [ "int", "", "" ],
				"patching_rect" : [ 191.583344, 36.0, 120.0, 20.0 ],
				"fontsize" : 12.0,
				"presentation" : 1,
				"parameter_enable" : 0,
				"items" : [ "Head", ",", "Trunk", ",", "Left", "Upper", "Arm", ",", "Left", "Forearm", ",", "Left", "Hand", ",", "Right", "Upper", "Arm", ",", "Right", "Forearm", ",", "Right", "Hand", ",", "Left", "Thigh", ",", "Left", "Shank", ",", "Left", "Foot", ",", "Right", "Thigh", ",", "Right", "Shank", ",", "Right", "Foot" ],
				"numinlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "outlet",
				"numoutlets" : 0,
				"id" : "obj-3",
				"patching_rect" : [ 109.583328, 506.0, 25.0, 25.0 ],
				"numinlets" : 1,
				"comment" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "+ 1",
				"numoutlets" : 1,
				"id" : "obj-71",
				"outlettype" : [ "int" ],
				"patching_rect" : [ 461.5, 230.5, 32.5, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 2,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "umenu",
				"varname" : "Gender",
				"numoutlets" : 3,
				"presentation_rect" : [ 216.5, 3.0, 70.0, 20.0 ],
				"id" : "obj-66",
				"outlettype" : [ "int", "", "" ],
				"patching_rect" : [ 311.583344, 36.0, 100.0, 20.0 ],
				"fontsize" : 12.0,
				"presentation" : 1,
				"parameter_enable" : 0,
				"items" : [ "Man", ",", "Woman" ],
				"numinlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "switch",
				"numoutlets" : 1,
				"id" : "obj-62",
				"outlettype" : [ "" ],
				"patching_rect" : [ 338.225006, 336.5, 57.716698, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 3,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "zl ecils 6",
				"numoutlets" : 2,
				"id" : "obj-61",
				"outlettype" : [ "", "" ],
				"patching_rect" : [ 232.0, 126.5, 57.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 2,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "unpack 0 0 0. 0. 0. 0.",
				"numoutlets" : 6,
				"id" : "obj-44",
				"outlettype" : [ "int", "int", "float", "float", "float", "float" ],
				"patching_rect" : [ 270.0, 155.5, 197.236176, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "umenu",
				"numoutlets" : 3,
				"id" : "obj-39",
				"outlettype" : [ "int", "", "" ],
				"patching_rect" : [ 191.5, 102.0, 100.0, 20.0 ],
				"fontsize" : 12.0,
				"parameter_enable" : 0,
				"items" : [ "Head", 3, 2, 0.5002, 0.4841, 0.0694, 0.0668, ",", "Trunk", 2, 0, 0.5138, 0.4964, 0.4346, 0.4257, ",", "Left", "Upper", "Arm", 4, 5, 0.5772, 0.5754, 0.0271, 0.0255, ",", "Left", "Forearm", 5, 6, 0.4608, 0.4592, 0.0162, 0.0138, ",", "Left", "Hand", 6, 7, 0.3691, 0.3502, 0.0061, 0.0056, ",", "Right", "Upper", "Arm", 8, 9, 0.5722, 0.5754, 0.0271, 0.0255, ",", "Right", "Forearm", 9, 10, 0.4608, 0.4592, 0.0162, 0.0138, ",", "Right", "Hand", 10, 11, 0.3691, 0.3502, 0.0061, 0.0056, ",", "Left", "Thigh", 12, 13, 0.4095, 0.3612, 0.1416, 0.1478, ",", "Left", "Shank", 13, 14, 0.4459, 0.4416, 0.0433, 0.0481, ",", "Left", "Foot", 14, 15, 0.4415, 0.4014, 0.0137, 0.0129, ",", "Right", "Thigh", 16, 17, 0.4095, 0.3612, 0.1416, 0.1478, ",", "Right", "Shank", 17, 18, 0.4459, 0.4416, 0.0433, 0.0481, ",", "Right", "Foot", 18, 19, 0.4415, 0.4014, 0.0137, 0.0129 ],
				"numinlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "expr ($f1 - (($f1 -$f2)*$f3))",
				"numoutlets" : 1,
				"id" : "obj-37",
				"outlettype" : [ "" ],
				"patching_rect" : [ 166.583328, 443.0, 151.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 3,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "expr ($f1 - (($f1 -$f2)*$f3))",
				"numoutlets" : 1,
				"id" : "obj-36",
				"outlettype" : [ "" ],
				"patching_rect" : [ 137.583328, 412.5, 151.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 3,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "expr ($f1 - (($f1 -$f2)*$f3))",
				"numoutlets" : 1,
				"id" : "obj-35",
				"outlettype" : [ "" ],
				"patching_rect" : [ 109.583328, 382.5, 151.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 3,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "unpack 0. 0. 0. 0.",
				"numoutlets" : 4,
				"id" : "obj-29",
				"outlettype" : [ "float", "float", "float", "float" ],
				"patching_rect" : [ 231.583328, 336.5, 103.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "unpack 0. 0. 0. 0.",
				"numoutlets" : 4,
				"id" : "obj-19",
				"outlettype" : [ "float", "float", "float", "float" ],
				"patching_rect" : [ 109.583328, 336.5, 103.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "bpatcher",
				"varname" : "o.body.Position",
				"numoutlets" : 3,
				"id" : "obj-18",
				"outlettype" : [ "", "", "" ],
				"patching_rect" : [ 5.833333, 230.5, 226.5, 22.0 ],
				"name" : "o.body.part.self.position.maxpat",
				"numinlets" : 4
			}

		}
 ],
	"lines" : [ 		{
			"patchline" : 			{
				"source" : [ "obj-20", 0 ],
				"destination" : [ "obj-22", 1 ],
				"hidden" : 0,
				"midpoints" : [ 315.583313, 262.5, 206.5, 262.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-21", 0 ],
				"destination" : [ "obj-22", 2 ],
				"hidden" : 0,
				"midpoints" : [ 153.083328, 219.25, 275.666656, 219.25 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-22", 1 ],
				"destination" : [ "obj-29", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-4", 0 ],
				"destination" : [ "obj-22", 2 ],
				"hidden" : 0,
				"midpoints" : [ 586.583374, 218.0, 275.666656, 218.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-18", 1 ],
				"destination" : [ "obj-19", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-21", 0 ],
				"destination" : [ "obj-18", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-4", 0 ],
				"destination" : [ "obj-18", 2 ],
				"hidden" : 0,
				"midpoints" : [ 586.583374, 219.5, 153.666672, 219.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-6", 0 ],
				"destination" : [ "obj-18", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-9", 0 ],
				"destination" : [ "obj-13", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-8", 0 ],
				"destination" : [ "obj-24", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-71", 0 ],
				"destination" : [ "obj-62", 0 ],
				"hidden" : 0,
				"midpoints" : [ 471.0, 296.0, 347.725006, 296.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-71", 0 ],
				"destination" : [ "obj-2", 0 ],
				"hidden" : 0,
				"midpoints" : [ 471.0, 296.0, 406.81665, 296.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-7", 0 ],
				"destination" : [ "obj-1", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-66", 0 ],
				"destination" : [ "obj-34", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-62", 0 ],
				"destination" : [ "obj-37", 2 ],
				"hidden" : 0,
				"midpoints" : [ 347.725006, 369.75, 308.083313, 369.75 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-62", 0 ],
				"destination" : [ "obj-36", 2 ],
				"hidden" : 0,
				"midpoints" : [ 347.725006, 369.0, 279.083313, 369.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-62", 0 ],
				"destination" : [ "obj-35", 2 ],
				"hidden" : 0,
				"midpoints" : [ 347.725006, 369.0, 251.083328, 369.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-61", 1 ],
				"destination" : [ "obj-44", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-44", 2 ],
				"destination" : [ "obj-62", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-44", 3 ],
				"destination" : [ "obj-62", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-44", 0 ],
				"destination" : [ "obj-6", 0 ],
				"hidden" : 0,
				"midpoints" : [ 279.5, 183.25, 84.5, 183.25 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-44", 1 ],
				"destination" : [ "obj-20", 0 ],
				"hidden" : 0,
				"midpoints" : [ 315.147247, 200.0, 315.583313, 200.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-44", 4 ],
				"destination" : [ "obj-2", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-44", 5 ],
				"destination" : [ "obj-2", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-39", 1 ],
				"destination" : [ "obj-61", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-37", 0 ],
				"destination" : [ "obj-11", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-37", 0 ],
				"destination" : [ "obj-10", 0 ],
				"hidden" : 0,
				"midpoints" : [ 176.083328, 469.25, 421.083344, 469.25 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-36", 0 ],
				"destination" : [ "obj-9", 0 ],
				"hidden" : 0,
				"midpoints" : [ 147.083328, 439.0, 392.083344, 439.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-36", 0 ],
				"destination" : [ "obj-5", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-8", 0 ],
				"hidden" : 0,
				"midpoints" : [ 119.083328, 407.0, 364.083344, 407.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-3", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-34", 1 ],
				"destination" : [ "obj-71", 0 ],
				"hidden" : 0,
				"midpoints" : [ 334.583344, 118.75, 471.0, 118.75 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-34", 0 ],
				"destination" : [ "obj-39", 0 ],
				"hidden" : 0,
				"midpoints" : [ 321.083344, 95.5, 201.0, 95.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-29", 2 ],
				"destination" : [ "obj-37", 1 ],
				"hidden" : 0,
				"midpoints" : [ 297.083313, 369.75, 242.083328, 369.75 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-29", 1 ],
				"destination" : [ "obj-36", 1 ],
				"hidden" : 0,
				"midpoints" : [ 269.083313, 368.0, 213.083328, 368.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-29", 0 ],
				"destination" : [ "obj-35", 1 ],
				"hidden" : 0,
				"midpoints" : [ 241.083328, 369.0, 185.083328, 369.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-23", 0 ],
				"destination" : [ "obj-9", 2 ],
				"hidden" : 0,
				"midpoints" : [ 560.583374, 410.0, 478.083344, 410.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-23", 0 ],
				"destination" : [ "obj-8", 2 ],
				"hidden" : 0,
				"midpoints" : [ 560.583374, 410.5, 450.083344, 410.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-23", 0 ],
				"destination" : [ "obj-10", 2 ],
				"hidden" : 0,
				"midpoints" : [ 560.583374, 411.5, 507.083344, 411.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-2", 0 ],
				"destination" : [ "obj-9", 1 ],
				"hidden" : 0,
				"midpoints" : [ 406.81665, 389.0, 435.083344, 389.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-2", 0 ],
				"destination" : [ "obj-8", 1 ],
				"hidden" : 0,
				"midpoints" : [ 406.81665, 387.5, 407.083344, 387.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-2", 0 ],
				"destination" : [ "obj-10", 1 ],
				"hidden" : 0,
				"midpoints" : [ 406.81665, 388.5, 464.083344, 388.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-19", 2 ],
				"destination" : [ "obj-37", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-19", 1 ],
				"destination" : [ "obj-36", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-19", 0 ],
				"destination" : [ "obj-35", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-17", 1 ],
				"destination" : [ "obj-9", 2 ],
				"hidden" : 0,
				"midpoints" : [ 560.583374, 362.75, 478.083344, 362.75 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-17", 1 ],
				"destination" : [ "obj-8", 2 ],
				"hidden" : 0,
				"midpoints" : [ 560.583374, 361.25, 450.083344, 361.25 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-17", 0 ],
				"destination" : [ "obj-14", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-17", 1 ],
				"destination" : [ "obj-14", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-17", 1 ],
				"destination" : [ "obj-10", 2 ],
				"hidden" : 0,
				"midpoints" : [ 560.583374, 362.25, 507.083344, 362.25 ],
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
				"destination" : [ "obj-66", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-14", 0 ],
				"destination" : [ "obj-23", 0 ],
				"hidden" : 0,
				"midpoints" : [ 471.083344, 218.75, 560.583374, 218.75 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-10", 0 ],
				"destination" : [ "obj-12", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-1", 0 ],
				"destination" : [ "obj-39", 0 ],
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
