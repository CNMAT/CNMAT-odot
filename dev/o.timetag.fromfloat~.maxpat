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
		"rect" : [ 84.0, 129.0, 636.0, 443.0 ],
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
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 6,
					"outlettype" : [ "signal", "bang", "int", "float", "", "list" ],
					"patching_rect" : [ 46.0, 44.0, 71.5, 20.0 ],
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
					"patching_rect" : [ 229.0, 395.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"linecount" : 21,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 229.0, 114.0, 345.0, 262.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 100, 111, 99, 47, 110, 97, 109, 101, 0, 0, 0, 44, 115, 0, 0, 111, 46, 116, 105, 109, 101, 116, 97, 103, 46, 102, 114, 111, 109, 102, 108, 111, 97, 116, 126, 0, 0, 0, 0, 0, 0, 0, -100, 47, 100, 111, 99, 47, 100, 101, 115, 99, 47, 115, 104, 111, 114, 116, 0, 44, 115, 0, 0, 67, 111, 110, 118, 101, 114, 116, 115, 32, 97, 32, 100, 111, 117, 98, 108, 101, 32, 112, 114, 101, 99, 105, 115, 105, 111, 110, 32, 102, 108, 111, 97, 116, 105, 110, 103, 32, 112, 111, 105, 110, 116, 32, 97, 117, 100, 105, 111, 32, 115, 105, 103, 110, 97, 108, 32, 105, 110, 116, 111, 32, 116, 104, 101, 32, 115, 101, 99, 111, 110, 100, 115, 32, 97, 110, 100, 32, 102, 114, 97, 99, 116, 105, 111, 110, 115, 32, 111, 102, 32, 97, 32, 115, 101, 99, 111, 110, 100, 32, 112, 111, 114, 116, 105, 111, 110, 115, 32, 111, 102, 32, 97, 110, 32, 79, 83, 67, 32, 40, 78, 84, 80, 41, 32, 116, 105, 109, 101, 116, 97, 103, 46, 0, 0, 0, 0, 0, 0, 1, 12, 47, 100, 111, 99, 47, 100, 101, 115, 99, 47, 108, 111, 110, 103, 0, 0, 44, 115, 0, 0, 111, 46, 116, 105, 109, 101, 116, 97, 103, 46, 102, 114, 111, 109, 102, 108, 111, 97, 116, 126, 32, 116, 97, 107, 101, 115, 32, 97, 32, 115, 105, 110, 103, 108, 101, 32, 97, 117, 100, 105, 111, 32, 115, 116, 114, 101, 97, 109, 44, 32, 97, 32, 100, 111, 117, 98, 108, 101, 32, 112, 114, 101, 99, 105, 115, 105, 111, 110, 32, 102, 108, 111, 97, 116, 105, 110, 103, 32, 112, 111, 105, 110, 116, 32, 114, 101, 112, 114, 101, 115, 101, 110, 116, 97, 116, 105, 111, 110, 32, 111, 102, 32, 97, 110, 32, 79, 83, 67, 32, 116, 105, 109, 101, 116, 97, 103, 44, 32, 97, 110, 100, 32, 99, 111, 110, 118, 101, 114, 116, 115, 32, 105, 116, 32, 116, 111, 32, 116, 104, 101, 32, 115, 101, 99, 111, 110, 100, 115, 32, 97, 110, 100, 32, 102, 114, 97, 99, 116, 105, 111, 110, 115, 32, 111, 102, 32, 97, 32, 115, 101, 99, 111, 110, 100, 32, 112, 111, 114, 116, 105, 111, 110, 115, 32, 111, 102, 32, 97, 110, 32, 79, 83, 67, 32, 116, 105, 109, 101, 116, 97, 103, 32, 116, 104, 97, 116, 32, 99, 97, 110, 32, 98, 101, 32, 114, 101, 99, 111, 109, 98, 105, 110, 101, 100, 32, 117, 115, 105, 110, 103, 32, 111, 46, 116, 105, 109, 101, 116, 97, 103, 46, 106, 111, 105, 110, 126, 46, 0, 0, 0, 0, 24, 47, 100, 111, 99, 47, 110, 105, 110, 108, 101, 116, 115, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 24, 47, 100, 111, 99, 47, 110, 111, 117, 116, 108, 101, 116, 115, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 3, 0, 0, 0, 104, 47, 100, 111, 99, 47, 100, 101, 115, 99, 47, 105, 110, 108, 101, 116, 47, 49, 0, 0, 0, 44, 115, 0, 0, 83, 105, 103, 110, 97, 108, 32, 40, 100, 111, 117, 98, 108, 101, 32, 112, 114, 101, 99, 105, 115, 105, 111, 110, 32, 102, 108, 111, 97, 116, 105, 110, 103, 32, 112, 111, 105, 110, 116, 32, 114, 101, 112, 114, 101, 115, 101, 110, 116, 97, 116, 105, 111, 110, 32, 111, 102, 32, 97, 110, 32, 79, 83, 67, 32, 40, 78, 84, 80, 41, 32, 116, 105, 109, 101, 116, 97, 103, 41, 0, 0, 0, 0, 80, 47, 100, 111, 99, 47, 100, 101, 115, 99, 47, 111, 117, 116, 108, 101, 116, 47, 49, 0, 0, 44, 115, 0, 0, 83, 105, 103, 110, 97, 108, 32, 40, 83, 101, 99, 111, 110, 100, 115, 32, 112, 111, 114, 116, 105, 111, 110, 32, 111, 102, 32, 97, 110, 32, 79, 83, 67, 32, 116, 105, 109, 101, 116, 97, 103, 32, 97, 117, 100, 105, 111, 32, 115, 116, 114, 101, 97, 109, 41, 0, 0, 0, 0, 96, 47, 100, 111, 99, 47, 100, 101, 115, 99, 47, 111, 117, 116, 108, 101, 116, 47, 50, 0, 0, 44, 115, 0, 0, 83, 105, 103, 110, 97, 108, 32, 40, 102, 114, 97, 99, 116, 105, 111, 110, 115, 32, 111, 102, 32, 97, 32, 115, 101, 99, 111, 110, 100, 32, 112, 111, 114, 116, 105, 111, 110, 32, 111, 102, 32, 97, 110, 32, 79, 83, 67, 32, 116, 105, 109, 101, 116, 97, 103, 32, 97, 117, 100, 105, 111, 32, 115, 116, 114, 101, 97, 109, 41, 0, 0, 0, 0, 0, 0, 44, 47, 100, 111, 99, 47, 100, 101, 115, 99, 47, 111, 117, 116, 108, 101, 116, 47, 51, 0, 0, 44, 115, 0, 0, 79, 83, 67, 32, 112, 97, 99, 107, 101, 116, 32, 40, 100, 111, 99, 41, 0, 0, 0, 0, 0, 0, 0, -124, 47, 100, 111, 99, 47, 115, 101, 101, 97, 108, 115, 111, 0, 0, 0, 0, 44, 115, 115, 115, 115, 115, 115, 115, 0, 0, 0, 0, 111, 46, 116, 105, 109, 101, 116, 97, 103, 126, 0, 0, 111, 46, 115, 110, 97, 112, 115, 104, 111, 116, 126, 0, 111, 46, 115, 99, 104, 101, 100, 117, 108, 101, 126, 0, 111, 46, 116, 105, 109, 101, 116, 97, 103, 46, 116, 111, 102, 108, 111, 97, 116, 126, 0, 0, 111, 46, 116, 105, 109, 101, 116, 97, 103, 46, 115, 112, 108, 105, 116, 126, 0, 0, 0, 0, 111, 46, 116, 105, 109, 101, 116, 97, 103, 46, 106, 111, 105, 110, 126, 0, 111, 46, 116, 105, 109, 101, 116, 97, 103, 0, 0, 0 ],
					"saved_bundle_length" : 1024,
					"text" : "/doc/name : \"o.timetag.fromfloat~\",\n/doc/desc/short : \"Converts a double precision floating point audio signal into the seconds and fractions of a second portions of an OSC (NTP) timetag.\",\n/doc/desc/long : \"o.timetag.fromfloat~ takes a single audio stream, a double precision floating point representation of an OSC timetag, and converts it to the seconds and fractions of a second portions of an OSC timetag that can be recombined using o.timetag.join~.\",\n/doc/ninlets : 1,\n/doc/noutlets : 3,\n/doc/desc/inlet/1 : \"Signal (double precision floating point representation of an OSC (NTP) timetag)\",\n/doc/desc/outlet/1 : \"Signal (Seconds portion of an OSC timetag audio stream)\",\n/doc/desc/outlet/2 : \"Signal (fractions of a second portion of an OSC timetag audio stream)\",\n/doc/desc/outlet/3 : \"OSC packet (doc)\",\n/doc/seealso : [\"o.timetag~\", \"o.snapshot~\", \"o.schedule~\", \"o.timetag.tofloat~\", \"o.timetag.split~\", \"o.timetag.join~\", \"o.timetag\"]",
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
					"id" : "obj-132",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 116.0, 113.0, 96.0, 20.0 ],
					"text" : "*~ 4294967295."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-131",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 46.0, 113.0, 29.5, 20.0 ],
					"text" : "-~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-130",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 116.0, 82.0, 38.0, 20.0 ],
					"text" : "%~ 1"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-30",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 46.0, 10.0, 30.0, 30.0 ],
					"varname" : "u741000797"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-31",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 46.0, 193.0, 30.0, 30.0 ],
					"varname" : "u952000799"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-32",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 116.0, 193.0, 30.0, 30.0 ],
					"varname" : "u463000801"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-1", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 1 ],
					"order" : 1,
					"source" : [ "obj-130", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"order" : 0,
					"source" : [ "obj-130", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-132", 0 ]
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
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-30", 0 ]
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
