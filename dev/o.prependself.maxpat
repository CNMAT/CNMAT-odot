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
		"rect" : [ 803.0, 128.0, 740.0, 494.0 ],
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
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 599.0, 73.0, 72.0, 20.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 504.0, 73.0, 82.0, 20.0 ],
					"text" : "prepend set 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 504.0, 32.0, 72.0, 20.0 ],
					"text" : "patcherargs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 350.0, 73.0, 59.0, 20.0 ],
					"text" : "route doc"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-20",
					"linecount" : 12,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 134.0, 341.0, 154.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 100, 111, 99, 47, 110, 97, 109, 101, 0, 0, 0, 44, 115, 0, 0, 111, 46, 112, 114, 101, 112, 101, 110, 100, 115, 101, 108, 102, 0, 0, 0, 0, 0, 0, 100, 47, 100, 111, 99, 47, 100, 101, 115, 99, 47, 115, 104, 111, 114, 116, 0, 44, 115, 0, 0, 80, 114, 101, 112, 101, 110, 100, 32, 97, 108, 108, 32, 109, 101, 115, 115, 97, 103, 101, 115, 32, 105, 110, 32, 97, 32, 98, 117, 110, 100, 108, 101, 32, 119, 105, 116, 104, 32, 116, 104, 101, 32, 112, 114, 101, 102, 105, 120, 32, 98, 111, 117, 110, 100, 32, 116, 111, 32, 116, 104, 101, 32, 97, 100, 100, 114, 101, 115, 115, 32, 34, 47, 115, 101, 108, 102, 34, 46, 0, 0, 0, 0, 0, -64, 47, 100, 111, 99, 47, 100, 101, 115, 99, 47, 108, 111, 110, 103, 0, 0, 44, 115, 0, 0, 111, 46, 112, 114, 101, 112, 101, 110, 100, 115, 101, 108, 102, 32, 101, 120, 112, 101, 99, 116, 115, 32, 97, 32, 109, 101, 115, 115, 97, 103, 101, 32, 119, 105, 116, 104, 32, 97, 100, 100, 114, 101, 115, 115, 32, 34, 47, 115, 101, 108, 102, 34, 32, 40, 115, 101, 116, 97, 98, 108, 101, 32, 118, 105, 97, 32, 97, 110, 32, 97, 114, 103, 117, 109, 101, 110, 116, 41, 32, 116, 104, 97, 116, 32, 99, 111, 110, 116, 97, 105, 110, 115, 32, 97, 110, 32, 79, 83, 67, 32, 97, 100, 100, 114, 101, 115, 115, 32, 116, 104, 97, 116, 32, 119, 105, 108, 108, 32, 98, 101, 32, 112, 114, 101, 112, 101, 110, 100, 101, 100, 32, 116, 111, 32, 101, 118, 101, 114, 121, 32, 111, 116, 104, 101, 114, 32, 97, 100, 100, 114, 101, 115, 115, 32, 105, 110, 32, 116, 104, 101, 32, 98, 117, 110, 100, 108, 101, 46, 0, 0, 0, 0, 0, 0, 0, 24, 47, 100, 111, 99, 47, 110, 105, 110, 108, 101, 116, 115, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 24, 47, 100, 111, 99, 47, 110, 111, 117, 116, 108, 101, 116, 115, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 36, 47, 100, 111, 99, 47, 100, 101, 115, 99, 47, 105, 110, 108, 101, 116, 47, 49, 0, 0, 0, 44, 115, 0, 0, 79, 83, 67, 32, 112, 97, 99, 107, 101, 116, 0, 0, 0, 0, 0, 36, 47, 100, 111, 99, 47, 100, 101, 115, 99, 47, 111, 117, 116, 108, 101, 116, 47, 49, 0, 0, 44, 115, 0, 0, 79, 83, 67, 32, 112, 97, 99, 107, 101, 116, 0, 0, 0, 0, 0, 68, 47, 100, 111, 99, 47, 115, 101, 101, 97, 108, 115, 111, 0, 0, 0, 0, 44, 115, 115, 115, 115, 0, 0, 0, 111, 46, 114, 111, 117, 116, 101, 115, 101, 108, 102, 0, 111, 46, 114, 111, 117, 116, 101, 0, 111, 46, 115, 101, 108, 101, 99, 116, 0, 0, 0, 0, 111, 46, 103, 97, 116, 104, 101, 114, 0, 0, 0, 0 ],
					"saved_bundle_length" : 560,
					"text" : "/doc/name : \"o.prependself\",\n/doc/desc/short : \"Prepend all messages in a bundle with the prefix bound to the address \\\"/self\\\".\",\n/doc/desc/long : \"o.prependself expects a message with address \\\"/self\\\" (setable via an argument) that contains an OSC address that will be prepended to every other address in the bundle.\",\n/doc/ninlets : 1,\n/doc/noutlets : 1,\n/doc/desc/inlet/1 : \"OSC packet\",\n/doc/desc/outlet/1 : \"OSC packet\",\n/doc/seealso : [\"o.routeself\", \"o.route\", \"o.select\", \"o.gather\"]",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 473.5, 321.0, 71.0, 20.0 ],
					"text" : "o.pack /self"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "", "" ],
					"patching_rect" : [ 390.0, 145.0, 186.0, 20.0 ],
					"text" : "t b l l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 390.0, 258.0, 37.0, 20.0 ],
					"text" : "o.var"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 557.0, 258.0, 74.0, 20.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 390.0, 102.0, 73.0, 20.0 ],
					"text" : "o.route /self"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 390.0, 379.0, 50.0, 20.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-9",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 390.0, 417.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 390.0, 321.0, 65.0, 20.0 ],
					"text" : "o.prepend"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-1",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 350.0, 27.0, 30.0, 30.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-16", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-16", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"order" : 1,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.prepend.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.union.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.var.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.compose.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
