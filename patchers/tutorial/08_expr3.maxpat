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
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 2,
		"toptoolbarpinned" : 2,
		"righttoolbarpinned" : 2,
		"bottomtoolbarpinned" : 2,
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
					"fontsize" : 13.0,
					"id" : "obj-47",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 172.0, 3508.0, 348.0, 36.0 ],
					"presentation_linecount" : 3,
					"text" : "Instead, we'll check the value and assign it to an address, and then use the address in our expression:"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 149.0, 6715.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 474.5, 406.0, 38.0, 21.0 ],
					"text" : "with:"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 241.5, 406.0, 66.0, 21.0 ],
					"text" : "compare:"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-1",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 293.0, 311.969696969696997, 381.0, 50.0 ],
					"presentation_linecount" : 2,
					"text" : "The arguments to an operator (its operands) go to the left and/or right of it, for example, while those of a function are wrapped in parentheses and written after the name of the function. ",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-112",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 431.0, 8348.0, 330.0, 50.0 ],
					"text" : "Because we declared default values for all the variables we need in the code in o.expr.codebox, we can send bundles in that will override some, or all of them:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-108",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 431.0, 8505.0, 160.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 102, 117, 110, 100, 97, 109, 101, 110, 116, 97, 108, 47, 104, 122, 0, 44, 105, 0, 0, 0, 0, 0, -6 ],
					"saved_bundle_length" : 44,
					"text" : "/fundamental/hz : 250"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-107",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 431.0, 8455.0, 206.0, 36.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 112, 97, 114, 116, 105, 97, 108, 110, 117, 109, 98, 101, 114, 115, 0, 44, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 7, 0, 0, 0, 9, 0, 0, 0, 28, 47, 116, 111, 116, 97, 108, 100, 117, 114, 97, 116, 105, 111, 110, 47, 115, 101, 99, 0, 0, 44, 105, 0, 0, 0, 0, 0, 7 ],
					"saved_bundle_length" : 88,
					"text" : "/partialnumbers : [1, 7, 9],\n/totalduration/sec : 7"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-106",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 431.0, 8417.0, 325.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 47, 112, 97, 114, 116, 105, 97, 108, 110, 117, 109, 98, 101, 114, 115, 0, 44, 105, 100, 100, 100, 100, 100, 0, 0, 0, 0, 7, 64, 28, 102, 102, 102, 102, 102, 102, 64, 28, -52, -52, -52, -52, -52, -51, 64, 29, 51, 51, 51, 51, 51, 51, 64, 29, -103, -103, -103, -103, -103, -102, 64, 30, 0, 0, 0, 0, 0, 0 ],
					"saved_bundle_length" : 88,
					"text" : "/partialnumbers : [7, 7.1, 7.2, 7.3, 7.4, 7.5]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 12.0,
					"id" : "obj-103",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 431.0, 8215.0, 330.0, 100.0 ],
					"text" : "Note the use of the assign function to assign into the working bundle dynamically. The first argument to assign() is an expression that adds a string to an integer to create an address in the format we want. This works because the \"+\" will convert any of its arguments to strings when one of its arguments is a string, and then perform string concatenation."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-101",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 27.0, 7725.0, 917.0, 50.0 ],
					"text" : "Down below, we've made a subpatch that contains 8 copies of o.synthesizer.basic~. The subpatch expects a message with the prefix /basicsynth/<voicenum>, where <voicenum> is an integer between 1-8. So, what we want to do is iterate over the list of bundles currently assigned to /notes, and assign each one to its own address, /basicsynth/1, /basicsynth/2, etc.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-100",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 180.0, 6752.0, 636.0, 21.0 ],
					"text" : "We'll use map() to iterate over each value of each of our three lists, and pack everything into a list of bundles."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-99",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 476.0, 6636.0, 340.0, 94.0 ],
					"text" : "Here, we have all the information we need for each voice: frequencies, amplitudes, durations, and the waveform (that'll be the same for every voice, so we don't need to repeat it). But, it's not in the right form---we need a bundle for each voice that contains one frequency, one amplitude, etc."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleusescolors" : 1,
					"fontsize" : 12.0,
					"id" : "obj-98",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 134.0, 8247.0, 182.0, 24.0 ],
					"text" : "double-click to see [o.display]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
						"subpatcher_template" : "Untitled5_template",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-47",
									"linecount" : 65,
									"maxclass" : "o.display",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 525.0, 853.0 ],
									"text" : "/makefreqs : \"lambda([fundamental, partialnumbers], fundamental * partialnumbers)\",\n/makeamps : \"lambda(partialnumbers, 1. / partialnumbers)\",\n/makedurations : \"lambda([totalduration, partialnumbers], totalduration * (1. / partialnumbers))\",\n/fundamental/hz : 440.,\n/partialnumbers : [1, 3, 6, 7, 8],\n/totalduration/sec : 3.,\n/waveform : \"sine\",\n/notes : [{\n  /frequency : 440.,\n  /env/amplitude : 1.,\n  /env/duration/sec : 3.,\n  /waveform : \"sine\"\n}, {\n  /frequency : 1320.,\n  /env/amplitude : 0.333333,\n  /env/duration/sec : 1.,\n  /waveform : \"sine\"\n}, {\n  /frequency : 2640.,\n  /env/amplitude : 0.166667,\n  /env/duration/sec : 0.5,\n  /waveform : \"sine\"\n}, {\n  /frequency : 3080.,\n  /env/amplitude : 0.142857,\n  /env/duration/sec : 0.428571,\n  /waveform : \"sine\"\n}, {\n  /frequency : 3520.,\n  /env/amplitude : 0.125,\n  /env/duration/sec : 0.375,\n  /waveform : \"sine\"\n}],\n/basicsynth/1 : {\n  /frequency : 440.,\n  /env/amplitude : 1.,\n  /env/duration/sec : 3.,\n  /waveform : \"sine\"\n},\n/basicsynth/2 : {\n  /frequency : 1320.,\n  /env/amplitude : 0.333333,\n  /env/duration/sec : 1.,\n  /waveform : \"sine\"\n},\n/basicsynth/3 : {\n  /frequency : 2640.,\n  /env/amplitude : 0.166667,\n  /env/duration/sec : 0.5,\n  /waveform : \"sine\"\n},\n/basicsynth/4 : {\n  /frequency : 3080.,\n  /env/amplitude : 0.142857,\n  /env/duration/sec : 0.428571,\n  /waveform : \"sine\"\n},\n/basicsynth/5 : {\n  /frequency : 3520.,\n  /env/amplitude : 0.125,\n  /env/duration/sec : 0.375,\n  /waveform : \"sine\"\n}"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-91",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-92",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 1735.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-91", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 66.0, 8248.0, 66.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p o.display"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 64.5, 8481.0, 40.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "spectroscope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 93.0, 8368.0, 312.0, 85.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 66.0, 8368.0, 20.0, 85.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-48",
					"linecount" : 23,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 66.0, 7847.0, 660.0, 313.0 ],
					"text" : "/makefreqs = \"lambda([fundamental, partialnumbers], fundamental * partialnumbers)\",\n/makeamps = \"lambda(partialnumbers, 1. / partialnumbers)\",\n/makedurations = \"lambda([totalduration, partialnumbers], totalduration * (1. / partialnumbers))\",\n\n/fundamental/hz ??= 440.,\n/partialnumbers ??= [1, 3, 6, 7, 8],\n/totalduration/sec ??= 3.,\n/waveform ??= \"sine\",\n\n/notes = map(lambda([freq, amp, dur],\n                    {\n                        /frequency : freq,\n                        /env/amplitude : amp,\n                        /env/duration/sec : dur,\n                        /waveform : /waveform\n                    }\n             ),\n             /makefreqs(/fundamental/hz, /partialnumbers),\n             /makeamps(/partialnumbers),\n             /makedurations(/totalduration/sec, /partialnumbers)\n         ),\n\nmap(lambda([note, voice], assign(\"/basicsynth/\" + voice, note)), /notes, aseq(1, length(/notes)))"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-45",
					"linecount" : 34,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 149.0, 7170.0, 664.0, 456.0 ],
					"text" : "/makefreqs : \"lambda([fundamental, partialnumbers],\n                   fundamental * partialnumbers)\",\n/makeamps : \"lambda(partialnumbers, 1. / partialnumbers)\",\n/makedurations : \"lambda([totalduration, partialnumbers], totalduration * (1. / partialnumbers))\",\n/fundamental/hz : 440.,\n/partialnumbers : [1, 3, 6, 7, 8],\n/totalduration/sec : 3.,\n/waveform : \"sine\",\n/notes : [{\n  /frequency : 440.,\n  /env/amplitude : 1.,\n  /env/duration/sec : 3.,\n  /waveform : \"sine\"\n}, {\n  /frequency : 1320.,\n  /env/amplitude : 0.333333,\n  /env/duration/sec : 1.,\n  /waveform : \"sine\"\n}, {\n  /frequency : 2640.,\n  /env/amplitude : 0.166667,\n  /env/duration/sec : 0.5,\n  /waveform : \"sine\"\n}, {\n  /frequency : 3080.,\n  /env/amplitude : 0.142857,\n  /env/duration/sec : 0.428571,\n  /waveform : \"sine\"\n}, {\n  /frequency : 3520.,\n  /env/amplitude : 0.125,\n  /env/duration/sec : 0.375,\n  /waveform : \"sine\"\n}]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-46",
					"linecount" : 25,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 149.0, 6790.0, 664.0, 340.0 ],
					"text" : "/makefreqs = \"lambda([fundamental, partialnumbers],\n                   fundamental * partialnumbers)\",\n/makeamps = \"lambda(partialnumbers, 1. / partialnumbers)\",\n/makedurations = \"lambda([totalduration, partialnumbers], totalduration * (1. / partialnumbers))\",\n\n/fundamental/hz ??= 440.,\n/partialnumbers ??= [1, 3, 6, 7, 8],\n/totalduration/sec ??= 3.,\n/waveform ??= \"sine\",\n\n/notes = map(lambda([freq, amp, dur],\n                    {\n                        /frequency : freq,\n                        /env/amplitude : amp,\n                        /env/duration/sec : dur,\n                        /waveform : /waveform     # note the use of the same address!\n                                                  # on the left of the colon, it's a target,\n                                                  # and on the right, its value will be\n                                                  # looked up in the working bundle.\n                    }\n             ),\n             /makefreqs(/fundamental/hz, /partialnumbers),\n             /makeamps(/partialnumbers),\n             /makedurations(/totalduration/sec, /partialnumbers)\n         )"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 329.0, 116.0, 640.0, 480.0 ],
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
						"subpatcher_template" : "Untitled5_template",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-16",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 62.0, 432.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 223.0, 172.0, 117.0, 22.0 ],
									"text" : "o.synthesizer.basic~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 200.0, 202.0, 117.0, 22.0 ],
									"text" : "o.synthesizer.basic~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 177.0, 232.0, 117.0, 22.0 ],
									"text" : "o.synthesizer.basic~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 154.0, 262.0, 117.0, 22.0 ],
									"text" : "o.synthesizer.basic~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 131.0, 292.0, 117.0, 22.0 ],
									"text" : "o.synthesizer.basic~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 108.0, 322.0, 117.0, 22.0 ],
									"text" : "o.synthesizer.basic~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 85.0, 352.0, 117.0, 22.0 ],
									"text" : "o.synthesizer.basic~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 62.0, 382.0, 117.0, 22.0 ],
									"text" : "o.synthesizer.basic~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 9,
									"outlettype" : [ "", "", "", "", "", "", "", "", "FullPacket" ],
									"patching_rect" : [ 62.0, 122.0, 153.0, 22.0 ],
									"text" : "o.route /1 /2 /3 /4 /5 /6 /7 /8"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 62.0, 87.0, 109.0, 22.0 ],
									"text" : "o.route /basicsynth"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 62.0, 46.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-7", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-7", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-7", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-7", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-7", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-7", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 66.0, 8308.0, 171.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p o.synthesizer.basic~.8voices"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-43",
					"linecount" : 16,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 62.0, 6218.0, 123.0, 239.0 ],
					"text" : "Let's make the duration and amplitude of the envelope inversely proportional to the partial number (the higher the partial number, the quieter and shorter it will be). While we're at it, let's rewrite our harmonic series function to take a list of partial numbers rather than a range."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-36",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 346.5, 5998.0, 272.0, 79.0 ],
					"text" : "This synth takes a number of messages -- so far, we've written some code to generate frequencies that can be used with this, but we should also make envelopes for each partial, and set the waveform. ",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbletextmargin" : 15,
					"bubbleusescolors" : 1,
					"fontsize" : 12.0,
					"id" : "obj-33",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 556.0, 5900.0, 170.0, 71.0 ],
					"text" : "Double click and check out the o.route objects at the top of the patch. "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 415.0, 5923.5, 135.0, 24.0 ],
					"text" : "o.synthesizer.basic~"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 133.0, 5838.0, 699.0, 21.0 ],
					"text" : "Let's continue with our harmonic series... Our target will be the o.synthesizer.basic~ abstraction that we saw in tutorial 3:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 12.0,
					"id" : "obj-26",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 197.0, 4928.0, 378.0, 60.0 ],
					"text" : "Note: if you send the post-ast message to the o.expr.codebox above, \nyou'll see that /makehs(55, 1, 8) \nis transformed by o.expr into apply(/makehs, 55, 1, 8), \n...so the two ways of writing that really are the same."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-23",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 197.0, 4851.0, 458.0, 50.0 ],
					"text" : "Before moving on, let's get rid of those ugly apply() functions; once you've created a function and assigned it to an address, you can call it just like you call any other function: by writing its arguments in parentheses after its name."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-24",
					"linecount" : 6,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 166.0, 5017.0, 633.0, 97.0 ],
					"text" : "/makehs : \"lambda([fundamental, startingpartial, npartials], \n                  prog2(if(npartials < 1, /npartials = 1, /npartials = npartials),\n                        fundamental * aseq(startingpartial, startingpartial + /npartials - 1),\n                        delete(/npartials)))\",\n/hs/a1 : [55, 110, 165, 220, 275, 330, 385, 440],\n/hs/as1 : [524.434, 582.705, 640.975]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-25",
					"linecount" : 6,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 166.0, 4731.0, 633.0, 95.0 ],
					"text" : "/makehs = \"lambda([fundamental, startingpartial, npartials], \n                  prog2(if(npartials < 1, /npartials = 1, /npartials = npartials),\n                        fundamental * aseq(startingpartial, startingpartial + /npartials - 1),\n                        delete(/npartials)))\",\n/hs/a1 = /makehs(55, 1, 8),\n/hs/as1 = /makehs(58.27047, 9, 3)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-4",
					"linecount" : 11,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 241.0, 6387.0, 666.0, 161.0 ],
					"text" : "/makefreqs : \"lambda([fundamental, partialnumbers],\n                   fundamental * partialnumbers)\",\n/makeamps : \"lambda(partialnumbers, 1. / partialnumbers)\",\n/makedurations : \"lambda([totalduration, partialnumbers], totalduration * (1. / partialnumbers))\",\n/fundamental/hz : 440.,\n/partialnumbers : [1, 3, 6, 7, 8],\n/totalduration/sec : 3.,\n/waveform : \"sine\",\n/freqs : [440., 1320., 2640., 3080., 3520.],\n/amps : [1., 0.333333, 0.166667, 0.142857, 0.125],\n/durations : [3., 1., 0.5, 0.428571, 0.375]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-6",
					"linecount" : 13,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 241.0, 6152.0, 666.0, 189.0 ],
					"text" : "/makefreqs = \"lambda([fundamental, partialnumbers],\n                   fundamental * partialnumbers)\",\n/makeamps = \"lambda(partialnumbers, 1. / partialnumbers)\",\n/makedurations = \"lambda([totalduration, partialnumbers], totalduration * (1. / partialnumbers))\",\n\n/fundamental/hz ??= 440.,\n/partialnumbers ??= [1, 3, 6, 7, 8],\n/totalduration/sec ??= 3.,\n/waveform ??= \"sine\",\n\n/freqs = /makefreqs(/fundamental/hz, /partialnumbers),\n/amps = /makeamps(/partialnumbers),\n/durations = /makedurations(/totalduration/sec, /partialnumbers)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-97",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 597.0, 5582.0, 308.0, 137.0 ],
					"text" : "The result that map() produces is equivalent to calling apply() with the same function, on every pair of arguments in the lists /a and /b:\n\n/res = [\n           apply(lambda([a, b], a + b), /a[[0]], /b[[0]]),\n           apply(lambda([a, b], a + b), /a[[1]], /b[[1]]),\n           apply(lambda([a, b], a + b), /a[[2]], /b[[2]])\n]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-95",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 440.0, 5470.0, 120.0, 36.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 97, 0, 0, 44, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 24, 47, 98, 0, 0, 44, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 7, 0, 0, 0, 9 ],
					"saved_bundle_length" : 72,
					"text" : "/a : [1, 2, 3],\n/b : [5, 7, 9]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-94",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 66.0, 5470.0, 67.0, 36.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 97, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 12, 47, 98, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2 ],
					"saved_bundle_length" : 48,
					"text" : "/a : 1,\n/b : 2"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubblepoint" : 0.78,
					"bubbletextmargin" : 15,
					"bubbleusescolors" : 1,
					"fontsize" : 12.0,
					"id" : "obj-84",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 569.0, 5426.0, 297.0, 57.0 ],
					"text" : "Unlike apply(), map will iterate over both lists, applying the function to each pair of arguments"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 0,
					"bubbleusescolors" : 1,
					"fontsize" : 12.0,
					"id" : "obj-83",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 336.0, 5558.0, 20.0, 39.0 ],
					"text" : "b",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 0,
					"bubbleusescolors" : 1,
					"fontsize" : 12.0,
					"id" : "obj-82",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 309.0, 5558.0, 20.0, 39.0 ],
					"text" : "a",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubblepoint" : 0.22,
					"bubbleside" : 2,
					"bubbletextmargin" : 10,
					"bubbleusescolors" : 1,
					"fontsize" : 12.0,
					"id" : "obj-81",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 167.0, 5474.0, 244.0, 49.0 ],
					"text" : "our function takes two arguments: a and b"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-80",
					"linecount" : 3,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 440.0, 5683.0, 137.0, 59.0 ],
					"text" : "/a : [1, 2, 3],\n/b : [5, 7, 9],\n/res : [6, 9, 12]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-79",
					"linecount" : 3,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 66.0, 5683.0, 77.0, 59.0 ],
					"text" : "/a : 1,\n/b : 2,\n/res : 3"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-78",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 440.0, 5525.0, 282.0, 31.0 ],
					"text" : "/res = map(lambda([a, b], a + b), /a, /b)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-77",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 66.0, 5525.0, 295.0, 31.0 ],
					"text" : "/res = apply(lambda([a, b], a + b), /a, /b)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-76",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 104.0, 5327.0, 757.0, 36.0 ],
					"text" : "So far, all of our examples have involved applying a function once to a set of arguments, but often we want to apply the same function repeatedly to each element of one or more lists. Let's compare map() with apply():",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontsize" : 13.0,
					"id" : "obj-109",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 428.5, 5215.5, 114.0, 21.0 ],
					"text" : "Mapping functions"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 5223.5, 931.0, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-73",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 166.0, 4267.0, 633.0, 108.0 ],
					"text" : "Now we've got another problem! \n\nWhere did our harmonic series go? lambda() returns the result of the very last expression, and we just changed that to delete(), which doesn't return anything. In this case, prog2() comes in handy -- it evaluates a sequence of expressions and returns the result of the *second* one (see also: prog1 and progn -- in fact, you can think of lambda() as having a builtin implicit progn around its arguments, since it returns the result of the last, or nth, one)."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-74",
					"linecount" : 6,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 166.0, 4538.0, 639.0, 97.0 ],
					"text" : "/makehs : \"lambda([fundamental, startingpartial, npartials], \n                  prog2(if(npartials < 1, /npartials = 1, /npartials = npartials),\n                        fundamental * aseq(startingpartial, startingpartial + /npartials - 1),\n                        delete(/npartials)))\",\n/hs/a1 : [55, 110, 165, 220, 275, 330, 385, 440],\n/hs/as1 : [524.434, 582.705, 640.975]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-75",
					"linecount" : 6,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 166.0, 4402.0, 633.0, 95.0 ],
					"text" : "/makehs = \"lambda([fundamental, startingpartial, npartials], \n                  prog2(if(npartials < 1, /npartials = 1, /npartials = npartials),\n                        fundamental * aseq(startingpartial, startingpartial + /npartials - 1),\n                        delete(/npartials)))\",\n/hs/a1 = apply(/makehs, 55, 1, 8),\n/hs/as1 = apply(/makehs, 58.27047, 9, 3)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 13.0,
					"id" : "obj-70",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 92.0, 3878.0, 270.0, 79.0 ],
					"text" : "Note, however, that our output bundle now contains an /npartials messages, which we probably don't want. \n\nLet's delete it:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-71",
					"linecount" : 6,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 212.0, 4070.0, 593.0, 97.0 ],
					"text" : "/makehs : \"lambda([fundamental, startingpartial, npartials], \n                  if(npartials < 1, /npartials = 1, /npartials = npartials),\n                  fundamental * aseq(startingpartial, startingpartial + /npartials - 1),\n                  delete(/npartials))\",\n/hs/a1,\n/hs/as1"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-72",
					"linecount" : 6,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 212.0, 3943.0, 593.0, 95.0 ],
					"text" : "/makehs = \"lambda([fundamental, startingpartial, npartials], \n                  if(npartials < 1, /npartials = 1, /npartials = npartials),\n                  fundamental * aseq(startingpartial, startingpartial + /npartials - 1),\n                  delete(/npartials))\",\n/hs/a1 = apply(/makehs, 55, 1, 8),\n/hs/as1 = apply(/makehs, 58.27047, 9, 3)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-69",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 328.0, 3435.0, 457.0, 79.0 ],
					"text" : "So, we would like to check the value of npartials and change it if it's less than one, but because it's an identifier, we can't change it, that is, we can't write:\n\nif(npartials < 1, npartials = 1),\n...",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 13.0,
					"id" : "obj-68",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 133.0, 3252.5, 702.0, 94.0 ],
					"text" : "Before we do that, let's talk about the distinction between addresses and the identifiers that we pass as the first argument to lambda(). Addresses and identifiers are similar in that they both refer to data by a name, however, there are some key differences, the most important being that once an identifier is bound to some data (via a call to apply() or another higher-order function), that binding can never change. Another difference is that identifiers are never stored in the working bundle, while addresses always are---in fact, that's the primary reason that they are visually distinct, to remind you that they have different semantics.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-65",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 36.0, 3090.0, 896.0, 94.0 ],
					"text" : "Now we have a pretty useful function that we can continue to add features to as we need them. However, we should first modify our lambda to protect against arguments that are out of bounds or might otherwise produce unintended results. \n\nFor example, we probably intend for the fundamental, starting partial, and number of partials to all be positive values. Negative frequencies and harmonic numbers could make sense, however, so let's leave those alone, but since the third argument represents the number of partials we want to end up with, that value should definitely be greater than 0, so let's enforce that.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-66",
					"linecount" : 6,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 172.0, 3687.0, 613.0, 97.0 ],
					"text" : "/makehs : \"lambda([fundamental, startingpartial, npartials], \n                  if(npartials < 1, /npartials = 1, /npartials = npartials),\n                  fundamental * aseq(startingpartial, startingpartial + /npartials - 1))\",\n/npartials : 3,\n/hs/a1 : [55, 110, 165, 220, 275, 330, 385, 440],\n/hs/as1 : [524.434, 582.705, 640.975]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-67",
					"linecount" : 5,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 172.0, 3564.0, 613.0, 85.0 ],
					"text" : "/makehs = \"lambda([fundamental, startingpartial, npartials], \n                  if(npartials < 1, /npartials = 1, /npartials = npartials),\n                  fundamental * aseq(startingpartial, startingpartial + /npartials - 1))\",\n/hs/a1 = apply(/makehs, 55, 1, 8),\n/hs/as1 = apply(/makehs, 58.27047, 9, 3)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 12.0,
					"id" : "obj-61",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 131.0, 2856.0, 370.0, 33.0 ],
					"text" : "Note: the lambda string is getting long, so we can format it across a couple lines using indentation to make it more easily readable."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-62",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 711.0, 2763.0, 182.0, 50.0 ],
					"text" : "While we're at it, we might as well add the starting harmonic as a parameter as well"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-63",
					"linecount" : 4,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 77.0, 2924.0, 680.0, 72.0 ],
					"text" : "/makehs : \"lambda([fundamental, startingpartial, npartials], \n                  fundamental * aseq(startingpartial, startingpartial + npartials - 1))\",\n/hs/a1 : [55, 110, 165, 220, 275, 330, 385, 440],\n/hs/as1 : [524.434, 582.705, 640.975]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-64",
					"linecount" : 4,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 77.0, 2753.0, 600.0, 70.0 ],
					"text" : "/makehs = \"lambda([fundamental, startingpartial, npartials], \n                  fundamental * aseq(startingpartial, startingpartial + npartials - 1))\",\n/hs/a1 = apply(/makehs, 55, 1, 8),\n/hs/as1 = apply(/makehs, 58.27047, 9, 3)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 12.0,
					"id" : "obj-60",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 347.0, 2533.0, 272.0, 33.0 ],
					"text" : "Note: now that our lambda takes two arguments, we write them as a list in square brackets."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-57",
					"linecount" : 10,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 77.0, 2473.5, 196.0, 152.0 ],
					"text" : "Now let's say we want to be able to make harmonic series of different lengths, rather than always being limited to 8 harmonics. Rather than make separate versions of the same function that have different values for the upper limit of aseq(), we can add a parameter to our lambda"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-58",
					"linecount" : 4,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 311.0, 2588.0, 554.0, 72.0 ],
					"text" : "/makehs : \"lambda([fundamental, npartials], fundamental * aseq(1, npartials))\",\n/hs/a1 : [55, 110, 165, 220, 275, 330, 385, 440],\n/hs/as1 : [58.2705, 116.541, 174.811, 233.082, 291.352, 349.623, 407.893, 466.164, 524.434, 582.705, 640.975, 699.246]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-59",
					"linecount" : 3,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 311.0, 2454.0, 534.0, 57.0 ],
					"text" : "/makehs = \"lambda([fundamental, npartials], fundamental * aseq(1, npartials))\",\n/hs/a1 = apply(/makehs, 55, 8),\n/hs/as1 = apply(/makehs, 58.27047, 12)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 12.0,
					"id" : "obj-56",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 205.0, 2213.0, 321.0, 33.0 ],
					"text" : "Note: when we store a lambda at an address instead of using it directly, we have to store it as a string."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-53",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 600.0, 2137.0, 183.0, 94.0 ],
					"text" : "Since the first argument to apply() is the same in both expressions, we can hoist it out assign it to an address that we can pass to apply() instead."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-54",
					"linecount" : 3,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 175.0, 2269.0, 563.0, 59.0 ],
					"text" : "/makehs : \"lambda(fundamental, fundamental * aseq(1, 8))\",\n/hs/a1 : [55, 110, 165, 220, 275, 330, 385, 440],\n/hs/as1 : [58.2705, 116.541, 174.811, 233.082, 291.352, 349.623, 407.893, 466.164]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-55",
					"linecount" : 3,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 175.0, 2137.0, 395.0, 57.0 ],
					"text" : "/makehs = \"lambda(fundamental, fundamental * aseq(1, 8))\",\n/hs/a1 = apply(/makehs, 55),\n/hs/as1 = apply(/makehs, 58.27047)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-50",
					"linecount" : 10,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 115.0, 1888.0, 165.0, 152.0 ],
					"text" : "...but since the structure of the expression itself doesn't change, only the value of the fundamental, we could *abstract* the expression and write it as a function of one variable, and then call apply(), passing it our function and its argument."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-51",
					"linecount" : 2,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 317.0, 1957.0, 562.0, 46.0 ],
					"text" : "/hs/a1 : [55, 110, 165, 220, 275, 330, 385, 440],\n/hs/as1 : [58.2705, 116.541, 174.811, 233.082, 291.352, 349.623, 407.893, 466.164]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-52",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 317.0, 1896.0, 487.0, 44.0 ],
					"text" : "/hs/a1 = apply(lambda(fundamental, fundamental * aseq(1, 8)), 55),\n/hs/as1 = apply(lambda(fundamental, fundamental * aseq(1, 8)), 58.27047)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-40",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 419.0, 1666.0, 267.0, 65.0 ],
					"text" : "If we want to create a couple of these series built on different fundamentals, we could just repeat the expression and change the  fundamental..."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-41",
					"linecount" : 2,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 177.0, 1758.0, 577.0, 46.0 ],
					"text" : "/hs/a1 : [55, 110, 165, 220, 275, 330, 385, 440],\n/hs/as1 : [58.2705, 116.541, 174.811, 233.082, 291.352, 349.623, 407.893, 466.164]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-42",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 177.0, 1687.0, 216.0, 44.0 ],
					"text" : "/hs/a1 = 55 * aseq(1, 8),\n/hs/as1 = 58.27047 * aseq(1, 8)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-37",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 170.0, 1475.0, 302.0, 65.0 ],
					"text" : "Let's say you want to compute the first 8 harmonics of a 55 Hz fundamental. You could do that with a simple expression that makes use of odot's \"scalar expansion\" feature discussed earlier:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-38",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 500.0, 1564.0, 338.0, 33.0 ],
					"text" : "/hs : [55, 110, 165, 220, 275, 330, 385, 440]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-39",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 500.0, 1513.0, 150.0, 31.0 ],
					"text" : "/hs = 55 * aseq(1, 8)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-22",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 65.0, 1320.0, 840.0, 108.0 ],
					"text" : "...but the more common use of apply() is to apply a function that you wrote yourself. \nWe define functions using another function called lambda(). \n\nlambda() takes a list of zero or more identifiers (think addresses but without slashes) as its first argument, followed by a list of expressions that make use of those identifiers in some way. \n\nLet's look at some examples:"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 214.0, 847.0, 119.0, 22.0 ],
					"text" : "metro 500 @active 1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 214.0, 1130.0, 28.0, 22.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 214.0, 972.0, 48.0, 22.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 214.0, 925.11504424778775, 55.0, 22.0 ],
					"text" : "o.pack /r"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 214.0, 899.076696165191834, 28.0, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 214.0, 873.038348082595917, 59.0, 22.0 ],
					"text" : "random 4"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-13",
					"linecount" : 5,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 214.0, 1178.0, 119.0, 85.0 ],
					"text" : "/r : 3,\n/func : \"add\",\n/val : -4,\n/min : -20,\n/max : 20"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-14",
					"linecount" : 6,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 214.0, 1006.0, 560.0, 95.0 ],
					"text" : "/func ??= \"add\",\n/val ??= 0,\n/min ??= -20, \n/max ??= 20,\n/func = if(/val > /max, \"sub\", if(/val < /min, \"add\", if(/val % 2, \"add\", \"sub\"))),\n/val = apply(/func, /val, /r)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-15",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 214.0, 765.0, 598.0, 36.0 ],
					"text" : "Why would you want to do that? \nOne reason is that you might want to change which function is applied dynamically:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-12",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 412.0, 657.0, 87.0, 33.0 ],
					"text" : "/a : 23"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-11",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 412.0, 611.0, 163.0, 31.0 ],
					"text" : "/a = apply(add, 10, 13)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-9",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 106.0, 542.0, 755.0, 36.0 ],
					"text" : "There's one more way to express a function call, which is by passing the name of the function and its arguments to another higher-order function such as apply():"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-8",
					"linecount" : 4,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 523.0, 406.0, 163.0, 70.0 ],
					"text" : "add(10, 33),\nprog1(/x, /x = /x + 1),\nif(bound(/y), /y, 33),\neq(/x, /y)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-7",
					"linecount" : 4,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 320.0, 406.0, 77.0, 70.0 ],
					"text" : "10 + 33,\n/x++,\n/y ?? 33, \n/x == /y"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-2",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.5, 242.984848484848499, 906.0, 36.0 ],
					"text" : "We've already seen that operators in [o.expr.codebox] have functional equivalents. \nThe main difference between an operator and a function is how we write the arguments: ",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-5",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.5, 182.0, 906.0, 36.0 ],
					"text" : "Odot has a small collection of functions that take other functions and their arguments as their input, applying the function to its arguments in different ways. These are often referred to as \"higher-order\" functions, and are very powerful. In this tutorial, we'll take a look at them and some of their uses.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 8 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-3",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "advance.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -1.0, -2.0 ],
					"patching_rect" : [ 766.0, 8592.0, 195.0, 28.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 367.0, 8606.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ 8 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-10",
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
					"fontface" : 2,
					"fontsize" : 12.0,
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 884.0, 715.5, 77.0, 20.0 ],
					"text" : "(scroll down)"
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
					"args" : [ 8 ],
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
					"destination" : [ "obj-48", 0 ],
					"midpoints" : [ 440.5, 8447.0, 906.5, 8447.0, 906.5, 7836.0, 75.5, 7836.0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"midpoints" : [ 440.5, 8497.0, 921.5, 8497.0, 921.5, 7836.0, 75.5, 7836.0 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"midpoints" : [ 440.5, 8535.0, 936.5, 8535.0, 936.5, 7836.0, 75.5, 7836.0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"midpoints" : [ 232.5, 1161.0, 813.0, 1161.0, 813.0, 964.0, 252.5, 964.0 ],
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"order" : 1,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"order" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 1 ],
					"order" : 0,
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"order" : 1,
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-95", 0 ]
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
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.display.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.union.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.compose.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
