{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 59.0, 104.0, 576.0, 427.0 ],
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
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 6,
					"outlettype" : [ "signal", "bang", "int", "float", "", "list" ],
					"patching_rect" : [ 43.0, 50.0, 71.5, 20.0 ],
					"text" : "typeroute~"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-6",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 229.0, 388.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"linecount" : 22,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 229.0, 114.0, 345.0, 274.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 100, 111, 99, 47, 110, 97, 109, 101, 0, 0, 0, 44, 115, 0, 0, 111, 46, 116, 105, 109, 101, 116, 97, 103, 46, 116, 111, 102, 108, 111, 97, 116, 126, 0, 0, 0, 0, 0, -128, 47, 100, 111, 99, 47, 100, 101, 115, 99, 47, 115, 104, 111, 114, 116, 0, 44, 115, 0, 0, 67, 111, 109, 98, 105, 110, 101, 115, 32, 116, 104, 101, 32, 115, 101, 99, 111, 110, 100, 115, 32, 97, 110, 100, 32, 102, 114, 97, 99, 116, 105, 111, 110, 115, 32, 111, 102, 32, 97, 32, 115, 101, 99, 111, 110, 100, 32, 112, 97, 114, 116, 115, 32, 111, 102, 32, 97, 110, 32, 79, 83, 67, 32, 40, 78, 84, 80, 41, 32, 116, 105, 109, 101, 116, 97, 103, 32, 105, 110, 116, 111, 32, 97, 32, 115, 105, 110, 103, 108, 101, 32, 97, 117, 100, 105, 111, 32, 115, 105, 103, 110, 97, 108, 46, 0, 0, 0, 0, 0, 0, 1, 24, 47, 100, 111, 99, 47, 100, 101, 115, 99, 47, 108, 111, 110, 103, 0, 0, 44, 115, 0, 0, 111, 46, 116, 105, 109, 101, 116, 97, 103, 46, 116, 111, 102, 108, 111, 97, 116, 126, 32, 116, 97, 107, 101, 115, 32, 116, 119, 111, 32, 97, 117, 100, 105, 111, 32, 115, 105, 103, 110, 97, 108, 115, 32, 97, 115, 32, 105, 110, 112, 117, 116, 44, 32, 116, 104, 101, 32, 115, 101, 99, 111, 110, 100, 115, 32, 97, 110, 100, 32, 102, 114, 97, 99, 116, 105, 111, 110, 115, 32, 111, 102, 32, 97, 32, 115, 101, 99, 111, 110, 100, 32, 112, 111, 114, 116, 105, 111, 110, 115, 32, 111, 102, 32, 79, 83, 67, 32, 116, 105, 109, 101, 116, 97, 103, 115, 32, 101, 110, 99, 111, 100, 101, 100, 32, 105, 110, 32, 97, 117, 100, 105, 111, 32, 115, 116, 114, 101, 97, 109, 115, 44, 32, 97, 110, 100, 32, 115, 99, 97, 108, 101, 115, 32, 116, 104, 101, 109, 32, 115, 111, 32, 116, 104, 97, 116, 32, 116, 104, 101, 121, 32, 109, 97, 121, 32, 98, 101, 32, 114, 101, 112, 114, 101, 115, 101, 110, 116, 101, 100, 32, 97, 115, 32, 100, 111, 117, 98, 108, 101, 32, 112, 114, 101, 99, 105, 115, 105, 111, 110, 32, 102, 108, 111, 97, 116, 105, 110, 103, 32, 112, 111, 105, 110, 116, 32, 118, 97, 108, 117, 101, 115, 32, 105, 110, 32, 97, 32, 115, 105, 110, 103, 108, 101, 32, 97, 117, 100, 105, 111, 32, 115, 116, 114, 101, 97, 109, 46, 0, 0, 0, 0, 0, 0, 24, 47, 100, 111, 99, 47, 110, 105, 110, 108, 101, 116, 115, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2, 0, 0, 0, 24, 47, 100, 111, 99, 47, 110, 111, 117, 116, 108, 101, 116, 115, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2, 0, 0, 0, 80, 47, 100, 111, 99, 47, 100, 101, 115, 99, 47, 105, 110, 108, 101, 116, 47, 49, 0, 0, 0, 44, 115, 0, 0, 83, 105, 103, 110, 97, 108, 32, 40, 115, 101, 99, 111, 110, 100, 115, 32, 112, 111, 114, 116, 105, 111, 110, 32, 111, 102, 32, 97, 110, 32, 79, 83, 67, 32, 116, 105, 109, 101, 116, 97, 103, 32, 97, 117, 100, 105, 111, 32, 115, 116, 114, 101, 97, 109, 41, 0, 0, 0, 0, 96, 47, 100, 111, 99, 47, 100, 101, 115, 99, 47, 105, 110, 108, 101, 116, 47, 50, 0, 0, 0, 44, 115, 0, 0, 83, 105, 103, 110, 97, 108, 32, 40, 102, 114, 97, 99, 116, 105, 111, 110, 115, 32, 111, 102, 32, 97, 32, 115, 101, 99, 111, 110, 100, 32, 112, 111, 114, 116, 105, 111, 110, 32, 111, 102, 32, 97, 110, 32, 79, 83, 67, 32, 116, 105, 109, 101, 116, 97, 103, 32, 97, 117, 100, 105, 111, 32, 115, 116, 114, 101, 97, 109, 41, 0, 0, 0, 0, 0, 0, 84, 47, 100, 111, 99, 47, 100, 101, 115, 99, 47, 111, 117, 116, 108, 101, 116, 47, 49, 0, 0, 44, 115, 0, 0, 83, 105, 103, 110, 97, 108, 32, 40, 100, 111, 117, 98, 108, 101, 32, 112, 114, 101, 99, 105, 115, 105, 111, 110, 32, 114, 101, 112, 114, 101, 115, 101, 110, 116, 97, 116, 105, 111, 110, 32, 111, 102, 32, 79, 83, 67, 32, 40, 78, 84, 80, 41, 32, 116, 105, 109, 101, 41, 0, 0, 0, 0, 0, 72, 47, 100, 111, 99, 47, 100, 101, 115, 99, 47, 111, 117, 116, 108, 101, 116, 47, 50, 0, 0, 44, 115, 0, 0, 68, 111, 99, 117, 109, 101, 110, 116, 97, 116, 105, 111, 110, 32, 105, 110, 32, 114, 101, 115, 112, 111, 110, 115, 101, 32, 116, 111, 32, 116, 104, 101, 32, 100, 111, 99, 32, 109, 101, 115, 115, 97, 103, 101, 0, 0, 0, 0, 0, 0, 0, -120, 47, 100, 111, 99, 47, 115, 101, 101, 97, 108, 115, 111, 0, 0, 0, 0, 44, 115, 115, 115, 115, 115, 115, 115, 0, 0, 0, 0, 111, 46, 116, 105, 109, 101, 116, 97, 103, 126, 0, 0, 111, 46, 115, 110, 97, 112, 115, 104, 111, 116, 126, 0, 111, 46, 115, 99, 104, 101, 100, 117, 108, 101, 126, 0, 111, 46, 116, 105, 109, 101, 116, 97, 103, 46, 102, 114, 111, 109, 102, 108, 111, 97, 116, 126, 0, 0, 0, 0, 111, 46, 116, 105, 109, 101, 116, 97, 103, 46, 115, 112, 108, 105, 116, 126, 0, 0, 0, 0, 111, 46, 116, 105, 109, 101, 116, 97, 103, 46, 106, 111, 105, 110, 126, 0, 111, 46, 116, 105, 109, 101, 116, 97, 103, 0, 0, 0 ],
					"saved_bundle_length" : 1016,
					"text" : "/doc/name : \"o.timetag.tofloat~\",\n/doc/desc/short : \"Combines the seconds and fractions of a second parts of an OSC (NTP) timetag into a single audio signal.\",\n/doc/desc/long : \"o.timetag.tofloat~ takes two audio signals as input, the seconds and fractions of a second portions of OSC timetags encoded in audio streams, and scales them so that they may be represented as double precision floating point values in a single audio stream.\",\n/doc/ninlets : 2,\n/doc/noutlets : 2,\n/doc/desc/inlet/1 : \"Signal (seconds portion of an OSC timetag audio stream)\",\n/doc/desc/inlet/2 : \"Signal (fractions of a second portion of an OSC timetag audio stream)\",\n/doc/desc/outlet/1 : \"Signal (double precision representation of OSC (NTP) time)\",\n/doc/desc/outlet/2 : \"Documentation in response to the doc message\",\n/doc/seealso : [\"o.timetag~\", \"o.snapshot~\", \"o.schedule~\", \"o.timetag.fromfloat~\", \"o.timetag.split~\", \"o.timetag.join~\", \"o.timetag\"]",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 229.0, 74.0, 59.0, 20.0 ],
					"text" : "route doc"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-1",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 43.0, 140.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-136",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 129.0, 74.0, 94.0, 20.0 ],
					"text" : "/~ 4294967295."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-127",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 43.0, 108.0, 35.0, 20.0 ],
					"text" : "+~ 0"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-23",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 43.0, 14.0, 30.0, 30.0 ],
					"varname" : "u174000759"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-24",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 129.0, 14.0, 30.0, 30.0 ],
					"varname" : "u921000761"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-127", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 1 ],
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-2", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.compose.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
