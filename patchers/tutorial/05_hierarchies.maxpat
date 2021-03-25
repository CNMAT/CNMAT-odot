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
		"rect" : [ 8.0, 52.0, 972.0, 748.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 14.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 0,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 15,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "Untitled5_template",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 761.0, 639.5, 40.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubbletextmargin" : 15,
					"bubbleusescolors" : 1,
					"fontface" : 2,
					"fontsize" : 12.0,
					"id" : "obj-18",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 576.0, 644.0, 174.0, 33.0 ],
					"style" : "default",
					"text" : "this tutorial page requires audio - please turn on [ezdac]",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 518.5, 1008.5, 44.0, 33.0 ],
					"style" : "default",
					"text" : "audio on/off",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "o.compose", "o.route", "o.union", "o.pack", "o.dict", "o.display" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-14",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "o.t.objects-covered.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -5.5, -1.0 ],
					"patching_rect" : [ 85.0, 2790.25, 834.0, 45.75 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 5 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-25",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "advance.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -1.0, -2.0 ],
					"patching_rect" : [ 766.0, 2838.0, 195.0, 28.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 384.0, 2373.5, 91.0, 22.0 ],
					"text" : "o.route /voice/1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 125.0, 1647.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleusescolors" : 1,
					"fontsize" : 12.0,
					"id" : "obj-57",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 286.0, 1604.5, 102.0, 24.0 ],
					"style" : "default",
					"text" : "name out data"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleusescolors" : 1,
					"fontsize" : 12.0,
					"id" : "obj-56",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 227.0, 1551.0, 148.0, 24.0 ],
					"style" : "default",
					"text" : "aggregate each bundle"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 162.0, 1607.0, 111.0, 22.0 ],
					"text" : "o.pack /synthesizer"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 162.0, 1567.0, 28.0, 22.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 162.0, 1544.0, 48.0, 22.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-49",
					"linecount" : 13,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.5, 1306.0, 166.0, 177.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 24, 47, 118, 111, 105, 99, 101, 47, 49, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, 4, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 102, 114, 101, 113, 0, 0, 0, 44, 100, 0, 0, 64, 111, -64, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 119, 97, 118, 101, 102, 111, 114, 109, 0, 0, 0, 44, 115, 0, 0, 114, 101, 99, 116, 0, 0, 0, 0, 0, 0, 0, 100, 47, 102, 105, 108, 116, 101, 114, 0, 44, 46, 0, 0, 0, 0, 0, 84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 108, 111, 119, 112, 97, 115, 115, 0, 0, 0, 0, 20, 47, 102, 114, 101, 113, 0, 0, 0, 44, 100, 0, 0, 64, -102, -112, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 113, 0, 0, 44, 100, 0, 0, 64, 1, -103, -103, -103, -103, -103, -102, 0, 0, 0, 84, 47, 101, 110, 118, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 68, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -20, -52, -52, -52, -52, -52, -51, 0, 0, 0, 24, 47, 100, 117, 114, 47, 115, 101, 99, 0, 0, 0, 0, 44, 100, 0, 0, 63, -45, 51, 51, 51, 51, 51, 51 ],
					"saved_bundle_length" : 300,
					"text" : "/voice/1 : {\n  /freq : 254.,\n  /waveform : \"rect\",\n  /filter : {\n    /type : \"lowpass\",\n    /freq : 1700.,\n    /q : 2.2\n  },\n  /env : {\n    /amp : 0.9,\n    /dur/sec : 0.3\n  }\n}"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-44",
					"linecount" : 13,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 268.333333333333258, 1306.0, 166.0, 177.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 24, 47, 118, 111, 105, 99, 101, 47, 50, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, 4, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 102, 114, 101, 113, 0, 0, 0, 44, 100, 0, 0, 64, -124, 112, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 119, 97, 118, 101, 102, 111, 114, 109, 0, 0, 0, 44, 115, 0, 0, 115, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 100, 47, 102, 105, 108, 116, 101, 114, 0, 44, 46, 0, 0, 0, 0, 0, 84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 108, 111, 119, 112, 97, 115, 115, 0, 0, 0, 0, 20, 47, 102, 114, 101, 113, 0, 0, 0, 44, 100, 0, 0, 64, 114, -64, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 113, 0, 0, 44, 100, 0, 0, 63, -13, 51, 51, 51, 51, 51, 51, 0, 0, 0, 84, 47, 101, 110, 118, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 68, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -20, -52, -52, -52, -52, -52, -51, 0, 0, 0, 24, 47, 100, 117, 114, 47, 115, 101, 99, 0, 0, 0, 0, 44, 100, 0, 0, 63, -32, 0, 0, 0, 0, 0, 0 ],
					"saved_bundle_length" : 300,
					"text" : "/voice/2 : {\n  /freq : 654.,\n  /waveform : \"sine\",\n  /filter : {\n    /type : \"lowpass\",\n    /freq : 300.,\n    /q : 1.2\n  },\n  /env : {\n    /amp : 0.9,\n    /dur/sec : 0.5\n  }\n}"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbletextmargin" : 15,
					"bubbleusescolors" : 1,
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-20",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 263.0, 2047.5, 322.0, 71.0 ],
					"style" : "default",
					"text" : "Click this button to see what is contained in another dictionary (with a different reference name)\nIt's empty!  Let's try to remedy that..."
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontsize" : 13.0,
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 421.5, 1207.5, 141.0, 21.0 ],
					"text" : "Persistence with file i/o"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 27.333333333333258, 1215.5, 929.333333333333485, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-46",
					"linecount" : 23,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 508.5, 1378.5, 438.0, 341.0 ],
					"style" : "default",
					"text" : "Let's take a look at how we might store a bundle like this outside of Max.\n\nWe could decide to store the same bundle – that we just used to generate sound – on disk, so that we can recall it later, or maybe use it in a different patch in the future.  Click the [o.compose] objects to the left, in sequence, and note that both [button]s illuminate each time an [o.compose] box is clicked.  \n\nWhat's happening here?\n\nFirst, let's review the flow of using [o.union] to store a bundle that just got output with an incoming bundle:  Each time we click on one of the [o.compose] boxes, we fold that result in to the pre-existing bundle.  If there was already data in the right inlet of [o.union], that data is updated with the incoming bundle's contents.  \n\nSo unioning data does two critical things to a previously existing bundle:\n\n1. updates pre-existing addresses, if present\n2. adds new addresses, if present\n\nAfter the data is unioned, we use [o.pack] name it as \"/synthesizer\".  Now the address \"/synthesizer\" contains the entirety of our bundle."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 205.5, 901.0, 83.0, 22.0 ],
					"text" : "loadmess 100"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-43",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 611.0, 1131.5, 314.0, 50.0 ],
					"style" : "default",
					"text" : "With this last example, we leverage [o.route] to distribute the data in a single [o.compose] instance, which generates both notes at the same time."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbletextmargin" : 15,
					"bubbleusescolors" : 1,
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-42",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 787.0, 866.0, 131.0, 84.0 ],
					"style" : "default",
					"text" : "Now, click this [o.compose] box to hear two sounds at once.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-41",
					"linecount" : 25,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 588.0, 775.0, 186.0, 331.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 12, 47, 118, 111, 105, 99, 101, 47, 50, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -8, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 102, 114, 101, 113, 0, 0, 0, 44, 100, 0, 0, 64, -103, -40, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 119, 97, 118, 101, 102, 111, 114, 109, 0, 0, 0, 44, 115, 0, 0, 115, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 80, 47, 102, 105, 108, 116, 101, 114, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 102, 114, 101, 113, 117, 101, 110, 99, 121, 0, 0, 44, 100, 0, 0, 64, -108, 80, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 113, 0, 0, 44, 100, 0, 0, 63, -13, 51, 51, 51, 51, 51, 51, 0, 0, 0, 92, 47, 101, 110, 118, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 76, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 97, 109, 112, 108, 105, 116, 117, 100, 101, 0, 0, 44, 100, 0, 0, 63, -20, -52, -52, -52, -52, -52, -51, 0, 0, 0, 28, 47, 100, 117, 114, 97, 116, 105, 111, 110, 47, 115, 101, 99, 0, 0, 0, 44, 100, 0, 0, 63, -32, 0, 0, 0, 0, 0, 0, 0, 0, 1, 44, 47, 118, 111, 105, 99, 101, 47, 49, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, 24, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 102, 114, 101, 113, 117, 101, 110, 99, 121, 0, 0, 44, 100, 0, 0, 64, -109, -104, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 119, 97, 118, 101, 102, 111, 114, 109, 0, 0, 0, 44, 115, 0, 0, 116, 114, 105, 97, 110, 103, 108, 101, 0, 0, 0, 0, 0, 0, 0, 104, 47, 102, 105, 108, 116, 101, 114, 0, 44, 46, 0, 0, 0, 0, 0, 88, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 108, 111, 119, 112, 97, 115, 115, 0, 0, 0, 0, 24, 47, 102, 114, 101, 113, 117, 101, 110, 99, 121, 0, 0, 44, 100, 0, 0, 64, -102, -112, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 113, 0, 0, 44, 100, 0, 0, 64, 1, -103, -103, -103, -103, -103, -102, 0, 0, 0, 92, 47, 101, 110, 118, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 76, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 97, 109, 112, 108, 105, 116, 117, 100, 101, 0, 0, 44, 100, 0, 0, 63, -20, -52, -52, -52, -52, -52, -51, 0, 0, 0, 28, 47, 100, 117, 114, 97, 116, 105, 111, 110, 47, 115, 101, 99, 0, 0, 0, 44, 100, 0, 0, 63, -45, 51, 51, 51, 51, 51, 51 ],
					"saved_bundle_length" : 592,
					"text" : "/voice/2 : {\n  /freq : 1654.,\n  /waveform : \"sine\",\n  /filter : {\n    /frequency : 1300.,\n    /q : 1.2\n  },\n  /env : {\n    /amplitude : 0.9,\n    /duration/sec : 0.5\n  }\n},\n/voice/1 : {\n  /frequency : 1254.,\n  /waveform : \"triangle\",\n  /filter : {\n    /type : \"lowpass\",\n    /frequency : 1700.,\n    /q : 2.2\n  },\n  /env : {\n    /amplitude : 0.9,\n    /duration/sec : 0.3\n  }\n}"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-40",
					"linecount" : 12,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 523.0, 404.5, 186.0, 164.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 16, 47, 118, 111, 105, 99, 101, 47, 50, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -4, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 102, 114, 101, 113, 0, 0, 0, 44, 100, 0, 0, 64, -118, 16, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 119, 97, 118, 101, 102, 111, 114, 109, 0, 0, 0, 44, 115, 0, 0, 116, 114, 105, 97, 110, 103, 108, 101, 0, 0, 0, 0, 0, 0, 0, 80, 47, 102, 105, 108, 116, 101, 114, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 102, 114, 101, 113, 117, 101, 110, 99, 121, 0, 0, 44, 100, 0, 0, 64, 114, -64, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 113, 0, 0, 44, 100, 0, 0, 63, -13, 51, 51, 51, 51, 51, 51, 0, 0, 0, 92, 47, 101, 110, 118, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 76, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 97, 109, 112, 108, 105, 116, 117, 100, 101, 0, 0, 44, 100, 0, 0, 63, -20, -52, -52, -52, -52, -52, -51, 0, 0, 0, 28, 47, 100, 117, 114, 97, 116, 105, 111, 110, 47, 115, 101, 99, 0, 0, 0, 44, 100, 0, 0, 63, -12, -52, -52, -52, -52, -52, -51 ],
					"saved_bundle_length" : 292,
					"text" : "/voice/2 : {\n  /freq : 834.,\n  /waveform : \"triangle\",\n  /filter : {\n    /frequency : 300.,\n    /q : 1.2\n  },\n  /env : {\n    /amplitude : 0.9,\n    /duration/sec : 1.3\n  }\n}"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 287.0, 846.0, 117.0, 22.0 ],
					"text" : "o.synthesizer.basic~"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "FullPacket" ],
					"patching_rect" : [ 162.0, 802.0, 269.0, 22.0 ],
					"text" : "o.route /voice/1 /voice/2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 162.0, 890.0, 20.0, 85.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 162.0, 846.0, 117.0, 22.0 ],
					"text" : "o.synthesizer.basic~"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 472.5, 916.0, 70.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 472.5, 1005.0, 40.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "spectroscope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 160.0, 1013.0, 300.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubblepoint" : 0.0,
					"bubbletextmargin" : 15,
					"bubbleusescolors" : 1,
					"fontface" : 2,
					"fontsize" : 12.0,
					"id" : "obj-24",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 369.0, 463.0, 121.0, 47.0 ],
					"style" : "default",
					"text" : "click on each [o.compose] box to hear a sound",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 5 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-13",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "o.t.banner.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -4.0, -5.0 ],
					"patching_rect" : [ 11.0, 9.0, 517.0, 111.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 478.0, 2858.5, 184.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontsize" : 13.0,
					"id" : "obj-53",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 447.666666666666629, 159.5, 74.0, 21.0 ],
					"text" : "Hierarchies"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.333333333333258, 167.5, 932.666666666666742, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-12",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 600.0, 2659.0, 319.0, 65.0 ],
					"text" : "note also that we can strip off subbundles by routing them with [o.route].  Here, we isolate the contents of the /env envelope from the rest of the synthesizer's address space."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-17",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 384.0, 2669.0, 123.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 384.0, 2402.0, 72.0, 22.0 ],
					"text" : "o.route /env"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 384.0, 2345.0, 113.0, 22.0 ],
					"text" : "o.route /synthesizer"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-8",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 162.0, 2345.0, 171.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 125.0, 1720.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 227.0, 2071.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-88",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 600.0, 2333.0, 334.0, 65.0 ],
					"text" : "What is interesting here is that the o.display object understands the Max dictionary and knows how read it into its contents.  In fact, nearly all of the odot objects know how to process dictionaries."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-86",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 288.0, 2181.0, 592.0, 65.0 ],
					"style" : "default",
					"text" : "This loads the data file that we just saved onto disk, into a separate dictionary.  Locate the file you just saved and load it in here.  Note that we can route the data back to the synth engine, as it's identical.  Try opening this dictionary up, changing some of the parameters, closing, and then clicking on the button.  Then scroll back up to the original compose box, and click it to hear the difference."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-84",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 245.0, 2150.0, 354.0, 21.0 ],
					"style" : "default",
					"text" : "...now, click to read data back in, and click the button again."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-85",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 162.0, 2150.0, 66.0, 22.0 ],
					"text" : "read, bang"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 162.0, 2201.5, 100.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict anothersynth"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-82",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 208.0, 1891.0, 373.0, 36.0 ],
					"style" : "default",
					"text" : "OK - we've now transcoded our bundle into a dictionary.  \nLet's click the [write] message to save our descriptor to disk."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-81",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 162.0, 1891.0, 34.0, 22.0 ],
					"text" : "write"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 12.0,
					"id" : "obj-79",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 263.0, 1947.0, 297.0, 47.0 ],
					"style" : "default",
					"text" : "because the dictionary \"mysynth\" contains our data in odot, we can use object reference name to allow us to write our bundles to disk, as well as read them in."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 162.0, 1958.0, 75.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict mysynth"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 12.0,
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 884.0, 715.5, 77.0, 20.0 ],
					"text" : "(scroll down)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-7",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 251.0, 1796.0, 523.0, 36.0 ],
					"style" : "default",
					"text" : "...now, double-click the dictionary to open its contents.  o.dict turns an odot bundle into a JSON dictionary, stripping the leading slash off of addresses in the process."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 162.0, 1674.5, 41.0, 22.0 ],
					"text" : "o.dict"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbletextmargin" : 15,
					"bubbleusescolors" : 1,
					"fontsize" : 12.0,
					"id" : "obj-4",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 213.0, 1650.0, 192.0, 71.0 ],
					"style" : "default",
					"text" : "This is the o.dict object.  It transforms the odot bundle into a dictionary. "
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-3",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 37.0, 234.5, 923.0, 108.0 ],
					"style" : "default",
					"text" : "Let's take a look at nesting bundles inside of others to create hierarchies. \nBelow we have described our synth's topology slightly differently than in tutorial 3, by adding some structure to the way that addresses are organized.\n\nSo what did we change?  \nWe've encapsulated /amp and /dur, as well as the filter addresses.  \n\nThis can make the bundle easier to read and access."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-9",
					"linecount" : 12,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 162.0, 404.5, 173.0, 164.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 16, 47, 118, 111, 105, 99, 101, 47, 49, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -4, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 102, 114, 101, 113, 117, 101, 110, 99, 121, 0, 0, 44, 100, 0, 0, 64, 118, 32, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 119, 97, 118, 101, 102, 111, 114, 109, 0, 0, 0, 44, 115, 0, 0, 115, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 80, 47, 102, 105, 108, 116, 101, 114, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 102, 114, 101, 113, 117, 101, 110, 99, 121, 0, 0, 44, 100, 0, 0, 64, -123, -32, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 113, 0, 0, 44, 100, 0, 0, 64, 1, -103, -103, -103, -103, -103, -102, 0, 0, 0, 92, 47, 101, 110, 118, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 76, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 97, 109, 112, 108, 105, 116, 117, 100, 101, 0, 0, 44, 100, 0, 0, 63, -20, -52, -52, -52, -52, -52, -51, 0, 0, 0, 28, 47, 100, 117, 114, 97, 116, 105, 111, 110, 47, 115, 101, 99, 0, 0, 0, 44, 100, 0, 0, 63, -45, 51, 51, 51, 51, 51, 51 ],
					"saved_bundle_length" : 292,
					"text" : "/voice/1 : {\n  /frequency : 354.,\n  /waveform : \"sine\",\n  /filter : {\n    /frequency : 700.,\n    /q : 2.2\n  },\n  /env : {\n    /amplitude : 0.9,\n    /duration/sec : 0.3\n  }\n}"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 162.0, 1803.0, 75.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict mysynth"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 781.0, 42.0, 61.0, 24.0 ],
					"text" : "onecopy"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 5 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-30",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "advance.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -1.0, -2.0 ],
					"patching_rect" : [ 766.0, 12.0, 195.0, 28.0 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"midpoints" : [ 170.0, 993.0, 503.0, 993.0 ],
					"order" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 170.0, 999.0, 482.0, 999.0 ],
					"order" : 1,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"order" : 2,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-36", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"midpoints" : [ 296.5, 878.5, 171.5, 878.5 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"midpoints" : [ 532.5, 677.75, 171.5, 677.75 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"midpoints" : [ 597.5, 1116.0, 575.5, 1116.0, 575.5, 789.0, 171.5, 789.0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 1 ],
					"midpoints" : [ 180.5, 1593.0, 216.5, 1593.0, 216.5, 1539.0, 200.5, 1539.0 ],
					"source" : [ "obj-51", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 0,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"order" : 1,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"order" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 171.5, 2314.25, 393.5, 2314.25 ],
					"order" : 0,
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 1,
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"midpoints" : [ 236.5, 2184.75, 171.5, 2184.75 ],
					"source" : [ "obj-91", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "advance.maxpat",
				"bootpath" : "~/Documents/programming/git_repositories/CNMAT-builds/CNMAT-odot/patchers/tutorial",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "filelist.txt",
				"bootpath" : "~/Documents/programming/git_repositories/CNMAT-builds/CNMAT-odot/patchers/tutorial",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "close_parent.js",
				"bootpath" : "~/Documents/programming/git_repositories/CNMAT-builds/CNMAT-odot/patchers/tutorial",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "o.t.banner.maxpat",
				"bootpath" : "~/Documents/programming/git_repositories/CNMAT-builds/CNMAT-odot/patchers/tutorial",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.synthesizer.basic~.maxpat",
				"bootpath" : "~/Documents/programming/git_repositories/CNMAT-builds/CNMAT-odot/patchers/tutorial",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.t.objects-covered.maxpat",
				"bootpath" : "~/Documents/programming/git_repositories/CNMAT-builds/CNMAT-odot/patchers/tutorial",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.compose.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.dict.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.display.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.union.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
