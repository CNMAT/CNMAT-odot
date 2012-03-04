{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 135.0, 91.0, 815.0, 497.0 ],
		"bglocked" : 0,
		"defrect" : [ 135.0, 91.0, 815.0, 497.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 20.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.expr /dx = /horizontal - /was/horizontal \\; /dy = /vertical - /was/vertical",
					"numoutlets" : 1,
					"patching_rect" : [ 80.0, 154.0, 664.0, 29.0 ],
					"id" : "obj-6",
					"outlettype" : [ "FullPacket" ],
					"fontsize" : 20.0,
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "o.message",
					"text" : "/was/horizontal 463 \n/was/vertical 413 \n/horizontal 467 \n/vertical 411 \n/shift up \n/capslock up \n/option up \n/control up \n/command down \n/button/is up \n/dx 4 \n",
					"linecount" : 11,
					"numoutlets" : 1,
					"patching_rect" : [ 85.0, 212.0, 286.0, 259.0 ],
					"id" : "obj-5",
					"outlettype" : [ "" ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 20.0,
					"numinlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.remember /horizontal /vertical",
					"numoutlets" : 1,
					"patching_rect" : [ 78.0, 107.0, 291.0, 29.0 ],
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"fontsize" : 20.0,
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.io.mouse",
					"numoutlets" : 1,
					"patching_rect" : [ 78.0, 68.0, 108.0, 29.0 ],
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"fontsize" : 20.0,
					"numinlets" : 0,
					"fontname" : "Arial"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
