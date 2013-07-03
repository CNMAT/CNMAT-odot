{
	"boxes" : [ 		{
			"box" : 			{
				"maxclass" : "comment",
				"text" : "Inquires:",
				"patching_rect" : [ 754.0, 34.0, 105.0, 25.0 ],
				"id" : "obj-26",
				"fontface" : 1,
				"fontsize" : 16.0,
				"numinlets" : 1,
				"numoutlets" : 0,
				"frgb" : 0.0,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "comment",
				"text" : "Added:",
				"patching_rect" : [ 120.0, 345.0, 60.0, 20.0 ],
				"id" : "obj-24",
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
				"text" : "Distance between feet",
				"patching_rect" : [ 180.0, 345.0, 150.0, 20.0 ],
				"id" : "obj-23",
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
				"text" : "o.io.skeleton.between /distance/feet /end/left/foot /end/right/foot",
				"patching_rect" : [ 330.0, 345.0, 347.0, 20.0 ],
				"outlettype" : [ "FullPacket" ],
				"id" : "obj-22",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "comment",
				"text" : "Distance between head and right foot",
				"linecount" : 2,
				"patching_rect" : [ 180.0, 294.0, 150.0, 34.0 ],
				"id" : "obj-21",
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
				"text" : "Distance between head and left foot",
				"linecount" : 2,
				"patching_rect" : [ 180.0, 248.0, 150.0, 34.0 ],
				"id" : "obj-20",
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
				"text" : "Distance between head and right hand",
				"linecount" : 2,
				"patching_rect" : [ 180.0, 203.0, 150.0, 34.0 ],
				"id" : "obj-19",
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
				"text" : "Distance between head and left hand",
				"linecount" : 2,
				"patching_rect" : [ 180.0, 158.0, 150.0, 34.0 ],
				"id" : "obj-18",
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
				"text" : "Distance between hips (fixed ?)",
				"linecount" : 2,
				"patching_rect" : [ 180.0, 113.0, 150.0, 34.0 ],
				"id" : "obj-17",
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
				"text" : "Distance between hands",
				"patching_rect" : [ 180.0, 79.0, 150.0, 20.0 ],
				"id" : "obj-16",
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
				"text" : "Maybe change the name of all objects from skeleton to body? \nf.i.    o.io.body.distances ?",
				"linecount" : 3,
				"patching_rect" : [ 886.0, 259.0, 217.0, 48.0 ],
				"id" : "obj-14",
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
				"text" : "Maybe change the name of the object to \no.io.skeleton.distances ?",
				"linecount" : 3,
				"patching_rect" : [ 886.0, 211.0, 213.0, 48.0 ],
				"id" : "obj-13",
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
				"text" : "Same for all of these. I might be wrong but maybe there is a mistake in the way the #1 #2 #3 are placed at the between object.",
				"linecount" : 3,
				"patching_rect" : [ 823.0, 120.0, 276.0, 48.0 ],
				"id" : "obj-11",
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
				"text" : "Is this the right seq of the arguments? I have the impression that /distance/fingertips needs to be in the middle",
				"linecount" : 2,
				"patching_rect" : [ 754.0, 79.0, 345.0, 34.0 ],
				"id" : "obj-2",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 0,
				"frgb" : 0.0,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "outlet",
				"patching_rect" : [ 330.0, 390.0, 25.0, 25.0 ],
				"id" : "obj-10",
				"numinlets" : 1,
				"numoutlets" : 0,
				"comment" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "inlet",
				"patching_rect" : [ 330.0, 34.0, 25.0, 25.0 ],
				"outlettype" : [ "" ],
				"id" : "obj-9",
				"numinlets" : 0,
				"numoutlets" : 1,
				"comment" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "o.io.skeleton.between /distance/hips /joint/right/hip /joint/left/hip",
				"patching_rect" : [ 330.0, 120.0, 345.0, 20.0 ],
				"outlettype" : [ "FullPacket" ],
				"id" : "obj-8",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "o.io.skeleton.between /distance/fingertips /end/right/ringertip /end/left/fingertip",
				"patching_rect" : [ 330.0, 79.0, 422.0, 20.0 ],
				"outlettype" : [ "FullPacket" ],
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
				"text" : "o.io.skeleton.between /distance/head/left/fingertip /end/center/head /end/left/fingertip",
				"patching_rect" : [ 330.0, 165.0, 459.0, 20.0 ],
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
				"maxclass" : "newobj",
				"text" : "o.io.skeleton.between /distance/head/right/fingertip /end/center/head /end/right/fingertip",
				"patching_rect" : [ 330.0, 210.0, 473.0, 20.0 ],
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
				"maxclass" : "newobj",
				"text" : "o.io.skeleton.between /distance/head/right/foot /end/center/head /end/right/foot",
				"patching_rect" : [ 330.0, 301.0, 428.0, 20.0 ],
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
				"text" : "o.io.skeleton.between /distance/head/left/foot /end/center/head /end/left/foot",
				"patching_rect" : [ 330.0, 255.0, 413.0, 20.0 ],
				"outlettype" : [ "FullPacket" ],
				"id" : "obj-3",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
 ],
	"lines" : [ 		{
			"patchline" : 			{
				"source" : [ "obj-22", 0 ],
				"destination" : [ "obj-10", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-4", 0 ],
				"destination" : [ "obj-22", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-5", 0 ],
				"destination" : [ "obj-3", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-3", 0 ],
				"destination" : [ "obj-4", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-6", 0 ],
				"destination" : [ "obj-5", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-8", 0 ],
				"destination" : [ "obj-6", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-9", 0 ],
				"destination" : [ "obj-7", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-7", 0 ],
				"destination" : [ "obj-8", 0 ],
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
