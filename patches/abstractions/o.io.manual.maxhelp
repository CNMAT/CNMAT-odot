{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 661.0, 278.0, 600.0, 426.0 ],
		"bglocked" : 0,
		"defrect" : [ 661.0, 278.0, 600.0, 426.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
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
					"maxclass" : "o.message",
					"text" : "/midipitch 53.000000 \n/frequency 174.614120 \n/velocity 0.165354 ",
					"linecount" : 3,
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 118.0, 103.0, 315.0, 48.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "FullPacket" ],
					"id" : "obj-1",
					"args" : [  ],
					"presentation_rect" : [ 19.0, 139.0, 0.0, 0.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 34.0, 179.0, 521.0, 60.0 ],
					"numoutlets" : 1,
					"name" : "o.io.manual.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "FullPacket" ],
					"id" : "obj-3",
					"args" : [  ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 26.0, 12.0, 516.0, 60.0 ],
					"numoutlets" : 1,
					"name" : "o.io.manual.maxpat"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
