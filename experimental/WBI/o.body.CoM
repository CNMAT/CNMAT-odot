{
  "boxes" : [ 		{
			"box" : 			{
				"maxclass" : "newobj",
				"varname" : "u646000400",
				"text" : "autopattr",
				"numoutlets" : 4,
				"id" : "obj-13",
				"outlettype" : [ "", "", "", "" ],
				"patching_rect" : [ 924.0, 16.0, 59.5, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 1,
				"fontname" : "Arial",
				"restore" : 				{
					"Body_Weight" : [ 140 ],
					"Gender" : [ 0 ],
					"Skeleton_ID" : [ 0 ]
				}

			}

		}
, 		{
			"box" : 			{
				"maxclass" : "comment",
				"text" : "Skeleton ID:",
				"numoutlets" : 0,
				"presentation_rect" : [ 2.0, 1.0, 79.0, 20.0 ],
				"id" : "obj-9",
				"patching_rect" : [ 790.0, 16.0, 79.0, 20.0 ],
				"fontsize" : 12.0,
				"presentation" : 1,
				"numinlets" : 1,
				"frgb" : 0.0,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "umenu",
				"varname" : "Skeleton_ID",
				"numoutlets" : 3,
				"presentation_rect" : [ 81.0, 1.0, 41.5, 20.0 ],
				"id" : "obj-23",
				"outlettype" : [ "int", "", "" ],
				"patching_rect" : [ 869.0, 16.0, 41.5, 20.0 ],
				"fontsize" : 12.0,
				"presentation" : 1,
				"parameter_enable" : 0,
				"items" : [ 0, ",", 1, ",", 2, ",", 3, ",", 4, ",", 5, ",", 6, ",", 7, ",", 8 ],
				"numinlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s/skeleton",
				"numoutlets" : 1,
				"id" : "obj-11",
				"outlettype" : [ "" ],
				"patching_rect" : [ 760.5, 64.5, 111.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "r",
				"numoutlets" : 1,
				"id" : "obj-19",
				"outlettype" : [ "" ],
				"patching_rect" : [ 760.5, 115.0, 79.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"varname" : "mp.rec",
				"text" : "prepend set",
				"numoutlets" : 1,
				"id" : "obj-12",
				"outlettype" : [ "" ],
				"patching_rect" : [ 760.5, 92.0, 62.0, 17.0 ],
				"fontsize" : 9.0,
				"numinlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "route text",
				"numoutlets" : 2,
				"id" : "obj-10",
				"outlettype" : [ "", "" ],
				"patching_rect" : [ 615.0, 47.0, 61.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 2,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "comment",
				"text" : "Weight:",
				"numoutlets" : 0,
				"presentation_rect" : [ 229.5, 1.0, 98.0, 20.0 ],
				"id" : "obj-27",
				"patching_rect" : [ 647.5, 16.0, 55.0, 20.0 ],
				"fontsize" : 12.0,
				"presentation" : 1,
				"numinlets" : 1,
				"frgb" : 0.0,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "textedit",
				"varname" : "Body_Weight",
				"text" : "140",
				"numoutlets" : 4,
				"presentation_rect" : [ 279.5, 1.0, 48.0, 20.0 ],
				"id" : "obj-14",
				"outlettype" : [ "", "int", "", "" ],
				"patching_rect" : [ 709.5, 16.0, 76.0, 20.0 ],
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
				"maxclass" : "comment",
				"text" : "CoM",
				"numoutlets" : 0,
				"presentation_rect" : [ 122.5, 1.0, 37.0, 20.0 ],
				"id" : "obj-8",
				"patching_rect" : [ 495.5, 16.0, 37.0, 20.0 ],
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
				"text" : "+ 0.",
				"numoutlets" : 1,
				"id" : "obj-46",
				"outlettype" : [ "float" ],
				"patching_rect" : [ 332.5, 722.0, 32.5, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 2,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "expr $f1 + $f2 + $f3 + $f4 + $f5",
				"numoutlets" : 1,
				"id" : "obj-47",
				"outlettype" : [ "" ],
				"patching_rect" : [ 629.5, 689.0, 175.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 5,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "expr $f1 + $f2 + $f3 + $f4 + $f5 + $f6 + $f7 + $f8 + $f9",
				"numoutlets" : 1,
				"id" : "obj-48",
				"outlettype" : [ "" ],
				"patching_rect" : [ 332.5, 689.0, 297.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 9,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "+ 0.",
				"numoutlets" : 1,
				"id" : "obj-42",
				"outlettype" : [ "float" ],
				"patching_rect" : [ 272.0, 681.0, 32.5, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 2,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "expr $f1 + $f2 + $f3 + $f4 + $f5",
				"numoutlets" : 1,
				"id" : "obj-43",
				"outlettype" : [ "" ],
				"patching_rect" : [ 569.0, 648.0, 175.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 5,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "expr $f1 + $f2 + $f3 + $f4 + $f5 + $f6 + $f7 + $f8 + $f9",
				"numoutlets" : 1,
				"id" : "obj-44",
				"outlettype" : [ "" ],
				"patching_rect" : [ 272.0, 648.0, 297.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 9,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "+ 0.",
				"numoutlets" : 1,
				"id" : "obj-39",
				"outlettype" : [ "float" ],
				"patching_rect" : [ 204.0, 641.0, 32.5, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 2,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "expr $f1 + $f2 + $f3 + $f4 + $f5",
				"numoutlets" : 1,
				"id" : "obj-38",
				"outlettype" : [ "" ],
				"patching_rect" : [ 501.0, 608.0, 175.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 5,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "expr $f1 + $f2 + $f3 + $f4 + $f5 + $f6 + $f7 + $f8 + $f9",
				"numoutlets" : 1,
				"id" : "obj-37",
				"outlettype" : [ "" ],
				"patching_rect" : [ 204.0, 608.0, 297.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 9,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "loadbang",
				"numoutlets" : 1,
				"id" : "obj-35",
				"outlettype" : [ "bang" ],
				"patching_rect" : [ 25.5, 36.0, 60.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "button",
				"numoutlets" : 1,
				"id" : "obj-34",
				"outlettype" : [ "bang" ],
				"patching_rect" : [ 85.5, 36.0, 20.0, 20.0 ],
				"numinlets" : 1
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "t 0 1 2 3 4 5 6 7 8 9 10 11 12 13",
				"numoutlets" : 14,
				"id" : "obj-32",
				"outlettype" : [ "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int" ],
				"patching_rect" : [ 25.5, 63.0, 194.5, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "bpatcher",
				"varname" : "o.body.part.CoM[1]",
				"numoutlets" : 6,
				"id" : "obj-21",
				"outlettype" : [ "", "", "", "", "", "" ],
				"patching_rect" : [ 220.0, 557.0, 392.0, 29.0 ],
				"name" : "o.body.part.CoM.maxpat",
				"numinlets" : 4
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "bpatcher",
				"varname" : "o.body.part.CoM[2]",
				"numoutlets" : 6,
				"id" : "obj-22",
				"outlettype" : [ "", "", "", "", "", "" ],
				"patching_rect" : [ 220.0, 518.0, 392.0, 29.0 ],
				"name" : "o.body.part.CoM.maxpat",
				"numinlets" : 4
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "bpatcher",
				"varname" : "o.body.part.CoM[3]",
				"numoutlets" : 6,
				"id" : "obj-24",
				"outlettype" : [ "", "", "", "", "", "" ],
				"patching_rect" : [ 220.0, 479.0, 392.0, 29.0 ],
				"name" : "o.body.part.CoM.maxpat",
				"numinlets" : 4
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "bpatcher",
				"varname" : "o.body.part.CoM[4]",
				"numoutlets" : 6,
				"id" : "obj-25",
				"outlettype" : [ "", "", "", "", "", "" ],
				"patching_rect" : [ 220.0, 440.0, 392.0, 29.0 ],
				"name" : "o.body.part.CoM.maxpat",
				"numinlets" : 4
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "bpatcher",
				"varname" : "o.body.part.CoM[5]",
				"numoutlets" : 6,
				"id" : "obj-26",
				"outlettype" : [ "", "", "", "", "", "" ],
				"patching_rect" : [ 220.0, 402.0, 392.0, 29.0 ],
				"name" : "o.body.part.CoM.maxpat",
				"numinlets" : 4
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "bpatcher",
				"varname" : "o.body.part.CoM[6]",
				"numoutlets" : 6,
				"id" : "obj-28",
				"outlettype" : [ "", "", "", "", "", "" ],
				"patching_rect" : [ 220.0, 363.0, 392.0, 29.0 ],
				"name" : "o.body.part.CoM.maxpat",
				"numinlets" : 4
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "bpatcher",
				"varname" : "o.body.part.CoM[7]",
				"numoutlets" : 6,
				"id" : "obj-15",
				"outlettype" : [ "", "", "", "", "", "" ],
				"patching_rect" : [ 220.0, 325.0, 392.0, 29.0 ],
				"name" : "o.body.part.CoM.maxpat",
				"numinlets" : 4
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "bpatcher",
				"varname" : "o.body.part.CoM[8]",
				"numoutlets" : 6,
				"id" : "obj-16",
				"outlettype" : [ "", "", "", "", "", "" ],
				"patching_rect" : [ 220.0, 286.0, 392.0, 29.0 ],
				"name" : "o.body.part.CoM.maxpat",
				"numinlets" : 4
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "bpatcher",
				"varname" : "o.body.part.CoM[9]",
				"numoutlets" : 6,
				"id" : "obj-17",
				"outlettype" : [ "", "", "", "", "", "" ],
				"patching_rect" : [ 220.0, 248.0, 392.0, 29.0 ],
				"name" : "o.body.part.CoM.maxpat",
				"numinlets" : 4
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "bpatcher",
				"varname" : "o.body.part.CoM[10]",
				"numoutlets" : 6,
				"id" : "obj-18",
				"outlettype" : [ "", "", "", "", "", "" ],
				"patching_rect" : [ 220.0, 209.0, 392.0, 29.0 ],
				"name" : "o.body.part.CoM.maxpat",
				"numinlets" : 4
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "bpatcher",
				"varname" : "o.body.part.CoM[11]",
				"numoutlets" : 6,
				"id" : "obj-6",
				"outlettype" : [ "", "", "", "", "", "" ],
				"patching_rect" : [ 220.0, 170.0, 392.0, 29.0 ],
				"name" : "o.body.part.CoM.maxpat",
				"numinlets" : 4
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "bpatcher",
				"varname" : "o.body.part.CoM[12]",
				"numoutlets" : 6,
				"id" : "obj-7",
				"outlettype" : [ "", "", "", "", "", "" ],
				"patching_rect" : [ 220.0, 131.0, 392.0, 29.0 ],
				"name" : "o.body.part.CoM.maxpat",
				"numinlets" : 4
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "bpatcher",
				"varname" : "o.body.part.CoM[13]",
				"numoutlets" : 6,
				"id" : "obj-1",
				"outlettype" : [ "", "", "", "", "", "" ],
				"patching_rect" : [ 218.0, 93.0, 392.0, 29.0 ],
				"name" : "o.body.part.CoM.maxpat",
				"numinlets" : 4
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "bpatcher",
				"varname" : "o.body.part.CoM",
				"numoutlets" : 6,
				"id" : "obj-85",
				"outlettype" : [ "", "", "", "", "", "" ],
				"patching_rect" : [ 218.0, 55.5, 392.0, 29.0 ],
				"name" : "o.body.part.CoM.maxpat",
				"numinlets" : 4
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "comment",
				"text" : "XYZ of the CoM",
				"numoutlets" : 0,
				"id" : "obj-31",
				"patching_rect" : [ 204.0, 803.0, 103.0, 20.0 ],
				"fontsize" : 12.0,
				"numinlets" : 1,
				"frgb" : 0.0,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "outlet",
				"numoutlets" : 0,
				"id" : "obj-5",
				"patching_rect" : [ 260.0, 778.0, 25.0, 25.0 ],
				"numinlets" : 1,
				"comment" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "outlet",
				"numoutlets" : 0,
				"id" : "obj-4",
				"patching_rect" : [ 232.0, 778.0, 25.0, 25.0 ],
				"numinlets" : 1,
				"comment" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "outlet",
				"numoutlets" : 0,
				"id" : "obj-3",
				"patching_rect" : [ 204.0, 778.0, 25.0, 25.0 ],
				"numinlets" : 1,
				"comment" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "umenu",
				"varname" : "Gender",
				"numoutlets" : 3,
				"presentation_rect" : [ 159.5, 1.0, 70.0, 20.0 ],
				"id" : "obj-66",
				"outlettype" : [ "int", "", "" ],
				"patching_rect" : [ 538.5, 16.0, 100.0, 20.0 ],
				"fontsize" : 12.0,
				"presentation" : 1,
				"parameter_enable" : 0,
				"items" : [ "Man", ",", "Woman" ],
				"numinlets" : 1,
				"fontname" : "Arial"
			}

		}
 ],
	"lines" : [ 		{
			"patchline" : 			{
				"source" : [ "obj-10", 0 ],
				"destination" : [ "obj-85", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-19", 0 ],
				"destination" : [ "obj-85", 3 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-32", 0 ],
				"destination" : [ "obj-85", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-66", 0 ],
				"destination" : [ "obj-85", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-85", 3 ],
				"destination" : [ "obj-37", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-85", 4 ],
				"destination" : [ "obj-44", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-85", 5 ],
				"destination" : [ "obj-48", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-1", 3 ],
				"destination" : [ "obj-37", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-1", 4 ],
				"destination" : [ "obj-44", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-1", 5 ],
				"destination" : [ "obj-48", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-10", 0 ],
				"destination" : [ "obj-1", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-19", 0 ],
				"destination" : [ "obj-1", 3 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-32", 1 ],
				"destination" : [ "obj-1", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-66", 0 ],
				"destination" : [ "obj-1", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-10", 0 ],
				"destination" : [ "obj-7", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-19", 0 ],
				"destination" : [ "obj-7", 3 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-32", 2 ],
				"destination" : [ "obj-7", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-66", 0 ],
				"destination" : [ "obj-7", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-7", 3 ],
				"destination" : [ "obj-37", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-7", 4 ],
				"destination" : [ "obj-44", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-7", 5 ],
				"destination" : [ "obj-48", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-10", 0 ],
				"destination" : [ "obj-6", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-19", 0 ],
				"destination" : [ "obj-6", 3 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-32", 3 ],
				"destination" : [ "obj-6", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-6", 3 ],
				"destination" : [ "obj-37", 3 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-6", 4 ],
				"destination" : [ "obj-44", 3 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-6", 5 ],
				"destination" : [ "obj-48", 3 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-66", 0 ],
				"destination" : [ "obj-6", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-10", 0 ],
				"destination" : [ "obj-18", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-18", 3 ],
				"destination" : [ "obj-37", 4 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-18", 4 ],
				"destination" : [ "obj-44", 4 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-18", 5 ],
				"destination" : [ "obj-48", 4 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-19", 0 ],
				"destination" : [ "obj-18", 3 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-32", 4 ],
				"destination" : [ "obj-18", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-66", 0 ],
				"destination" : [ "obj-18", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-10", 0 ],
				"destination" : [ "obj-17", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-17", 3 ],
				"destination" : [ "obj-37", 5 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-17", 4 ],
				"destination" : [ "obj-44", 5 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-17", 5 ],
				"destination" : [ "obj-48", 5 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-19", 0 ],
				"destination" : [ "obj-17", 3 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-32", 5 ],
				"destination" : [ "obj-17", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-66", 0 ],
				"destination" : [ "obj-17", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-10", 0 ],
				"destination" : [ "obj-16", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-16", 3 ],
				"destination" : [ "obj-37", 6 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-16", 4 ],
				"destination" : [ "obj-44", 6 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-16", 5 ],
				"destination" : [ "obj-48", 6 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-19", 0 ],
				"destination" : [ "obj-16", 3 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-32", 6 ],
				"destination" : [ "obj-16", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-66", 0 ],
				"destination" : [ "obj-16", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-10", 0 ],
				"destination" : [ "obj-15", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-15", 3 ],
				"destination" : [ "obj-37", 7 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-15", 4 ],
				"destination" : [ "obj-44", 7 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-15", 5 ],
				"destination" : [ "obj-48", 7 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-19", 0 ],
				"destination" : [ "obj-15", 3 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-32", 7 ],
				"destination" : [ "obj-15", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-66", 0 ],
				"destination" : [ "obj-15", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-10", 0 ],
				"destination" : [ "obj-28", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-19", 0 ],
				"destination" : [ "obj-28", 3 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-28", 3 ],
				"destination" : [ "obj-37", 8 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-28", 4 ],
				"destination" : [ "obj-44", 8 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-28", 5 ],
				"destination" : [ "obj-48", 8 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-32", 8 ],
				"destination" : [ "obj-28", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-66", 0 ],
				"destination" : [ "obj-28", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-10", 0 ],
				"destination" : [ "obj-26", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-19", 0 ],
				"destination" : [ "obj-26", 3 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-26", 3 ],
				"destination" : [ "obj-38", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-26", 4 ],
				"destination" : [ "obj-43", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-26", 5 ],
				"destination" : [ "obj-47", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-32", 9 ],
				"destination" : [ "obj-26", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-66", 0 ],
				"destination" : [ "obj-26", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-10", 0 ],
				"destination" : [ "obj-25", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-19", 0 ],
				"destination" : [ "obj-25", 3 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-25", 3 ],
				"destination" : [ "obj-38", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-25", 4 ],
				"destination" : [ "obj-43", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-25", 5 ],
				"destination" : [ "obj-47", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-32", 10 ],
				"destination" : [ "obj-25", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-66", 0 ],
				"destination" : [ "obj-25", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-10", 0 ],
				"destination" : [ "obj-24", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-19", 0 ],
				"destination" : [ "obj-24", 3 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-24", 3 ],
				"destination" : [ "obj-38", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-24", 4 ],
				"destination" : [ "obj-43", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-24", 5 ],
				"destination" : [ "obj-47", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-32", 11 ],
				"destination" : [ "obj-24", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-66", 0 ],
				"destination" : [ "obj-24", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-10", 0 ],
				"destination" : [ "obj-22", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-19", 0 ],
				"destination" : [ "obj-22", 3 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-22", 3 ],
				"destination" : [ "obj-38", 3 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-22", 4 ],
				"destination" : [ "obj-43", 3 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-22", 5 ],
				"destination" : [ "obj-47", 3 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-32", 12 ],
				"destination" : [ "obj-22", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-66", 0 ],
				"destination" : [ "obj-22", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-10", 0 ],
				"destination" : [ "obj-21", 2 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-19", 0 ],
				"destination" : [ "obj-21", 3 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-21", 3 ],
				"destination" : [ "obj-38", 4 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-21", 4 ],
				"destination" : [ "obj-43", 4 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-21", 5 ],
				"destination" : [ "obj-47", 4 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-32", 13 ],
				"destination" : [ "obj-21", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-66", 0 ],
				"destination" : [ "obj-21", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-48", 0 ],
				"destination" : [ "obj-46", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-47", 0 ],
				"destination" : [ "obj-46", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-46", 0 ],
				"destination" : [ "obj-5", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-44", 0 ],
				"destination" : [ "obj-42", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-43", 0 ],
				"destination" : [ "obj-42", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-42", 0 ],
				"destination" : [ "obj-4", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-39", 0 ],
				"destination" : [ "obj-3", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-38", 0 ],
				"destination" : [ "obj-39", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-37", 0 ],
				"destination" : [ "obj-39", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-32", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-34", 0 ],
				"destination" : [ "obj-32", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-23", 0 ],
				"destination" : [ "obj-11", 0 ],
				"hidden" : 0,
				"midpoints" : [ 878.5, 52.25, 770.0, 52.25 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-14", 0 ],
				"destination" : [ "obj-10", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-12", 0 ],
				"destination" : [ "obj-19", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-11", 0 ],
				"destination" : [ "obj-12", 0 ],
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
