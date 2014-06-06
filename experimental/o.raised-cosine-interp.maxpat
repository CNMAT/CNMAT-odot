{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 90.0, 74.0, 791.0, 421.0 ],
		"bglocked" : 0,
		"defrect" : [ 90.0, 74.0, 791.0, 421.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 8.0, 8.0 ],
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
					"text" : "o.expr sum((/yy*(0.5*cos((3.1415926535897932385*(/x-/xx))/ /w)+.5)) * (/x >= (/xx - /w) && /x <= (/xx + /w))) @as /y",
					"linecount" : 2,
					"patching_rect" : [ 120.0, 120.0, 584.0, 34.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-1",
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 264.0, 224.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 200.0, 224.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"id" : "obj-6",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 120.0, 224.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"id" : "obj-5",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 120.0, 80.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"id" : "obj-4",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
