{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 0,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 435.0, 83.0, 554.0, 691.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-8",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 73.0, 572.0, 290.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 47, 48, 47, 119, 101, 105, 103, 104, 116, 0, 44, 102, 0, 0, 63, 123, 85, -32, 0, 0, 0, 20, 47, 112, 47, 49, 47, 119, 101, 105, 103, 104, 116, 0, 44, 102, 0, 0, 60, -107, 68, 11 ],
					"saved_bundle_length" : 64,
					"text" : "/p/0/weight : 0.981779,\n/p/1/weight : 0.0182209",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 422.0, 311.0, 50.0, 22.0 ],
					"style" : "",
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 25.0, 262.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "o.flatten"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-2",
					"linecount" : 16,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 133.0, 29.0, 290.0, 228.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -40, 47, 112, 47, 48, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 97, 109, 101, 0, 0, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 28, 47, 99, 111, 111, 114, 100, 115, 0, 44, 100, 100, 0, 63, -32, 0, 0, 0, 0, 0, 0, 63, -29, 51, 51, 51, 51, 51, 51, 0, 0, 0, 44, 47, 99, 111, 108, 111, 114, 47, 114, 103, 98, 0, 0, 44, 100, 100, 100, 0, 0, 0, 0, 63, -20, 0, 0, 0, 0, 0, 0, 63, -40, 0, 0, 0, 0, 0, 0, 63, -24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 114, 97, 100, 105, 117, 115, 47, 105, 110, 110, 101, 114, 0, 0, 0, 44, 100, 0, 0, 63, -61, 51, 51, 51, 51, 51, 51, 0, 0, 0, 28, 47, 114, 97, 100, 105, 117, 115, 47, 111, 117, 116, 101, 114, 0, 0, 0, 44, 100, 0, 0, 63, -32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 108, 111, 99, 107, 101, 100, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, -40, 47, 112, 47, 49, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 97, 109, 101, 0, 0, 0, 44, 115, 0, 0, 98, 97, 114, 0, 0, 0, 0, 28, 47, 99, 111, 111, 114, 100, 115, 0, 44, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, -24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 47, 99, 111, 108, 111, 114, 47, 114, 103, 98, 0, 0, 44, 100, 100, 100, 0, 0, 0, 0, 63, -77, 51, 51, 51, 51, 51, 51, 63, -40, 0, 0, 0, 0, 0, 0, 63, -24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 114, 97, 100, 105, 117, 115, 47, 105, 110, 110, 101, 114, 0, 0, 0, 44, 100, 0, 0, 63, -71, -103, -103, -103, -103, -103, -102, 0, 0, 0, 28, 47, 114, 97, 100, 105, 117, 115, 47, 111, 117, 116, 101, 114, 0, 0, 0, 44, 100, 0, 0, 63, -32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 108, 111, 99, 107, 101, 100, 0, 44, 105, 0, 0, 0, 0, 0, 0 ],
					"saved_bundle_length" : 456,
					"text" : "/p/0 : {\n\t/name : \"foo\",\n\t/coords : [0.5, 0.6],\n\t/color/rgb : [0.875, 0.375, 0.75],\n\t/radius/inner : 0.15,\n\t/radius/outer : 0.5,\n\t/locked : 0\n},\n/p/1 : {\n\t/name : \"bar\",\n\t/coords : [0., 0.75],\n\t/color/rgb : [0.075, 0.375, 0.75],\n\t/radius/inner : 0.1,\n\t/radius/outer : 0.5,\n\t/locked : 0\n}",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "o.rbfi",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 133.0, 318.0, 200.0, 200.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
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
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.rbfi.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.compose.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.flatten.mxo",
				"type" : "iLaX"
			}
 ],
		"embedsnapshot" : 0
	}

}
