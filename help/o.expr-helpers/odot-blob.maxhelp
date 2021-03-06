{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 10,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 65.0, 92.0, 981.0, 571.0 ],
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
		"subpatcher_template" : "Default Max 7",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-11",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 34.0, 113.0, 410.0, 60.0 ],
					"text" : "A blob is typically used to encode binary data that will be used by some system, say the controller for an LED array or a DMX controller, etc. This example encodes an OSC bundle inside a blob---useful for working with custom data types not explicitly supported by odot."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-10",
					"linecount" : 6,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 123.0, 434.0, 531.0, 97.0 ],
					"text" : "/size : 12,\n/address : \"/foo\",\n/typetags : \",i\",\n/val : 7474,\n/bundle : blob(35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 102, 111, 111, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 29, 50)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 34.0, 434.0, 71.0, 22.0 ],
					"text" : "o.printbytes"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-2",
					"linecount" : 13,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 34.0, 201.0, 918.0, 185.0 ],
					"text" : "/size = 12,\n/address = \"/foo\",\n/typetags = \",i\",\n/val = 7474,\n\n/bundle = blob([\n  '#', 'b', 'u', 'n', 'd', 'l', 'e', 0,                                                                                  ### header\n  0, 0, 0, 0, 0, 0, 0, 0,                                                                                                ### timetag\n  bitand(/size, 4278190080) / 16777216, bitand(/size, 16711680) / 65536, bitand(/size, 65280) / 256, bitand(/size, 255), ### message size\n  split(\"\", /address), 0, 0, 0, 0,                                                                                       ### address\n  split(\"\", /typetags), 0, 0,                                                                                            ### typetags\n  bitand(/val, 4278190080) / 16777216, bitand(/val, 16711680) / 65536, bitand(/val, 65280) / 256, bitand(/val, 255)      ### value\n])"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 34.0, 21.0, 57.0, 20.0 ],
					"text" : "blob()"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 34.0, 54.0, 410.0, 47.0 ],
					"text" : "An OSC blob is an array of 8-bit bytes. The blob() function takes a single list that should contain integer values between 0 and 255 (ASCII char values of the form of 'a', 'b', 'c' also work)."
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"order" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"order" : 1,
					"source" : [ "obj-2", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.printbytes.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.display.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
