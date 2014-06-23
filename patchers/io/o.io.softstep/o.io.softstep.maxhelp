{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 7,
			"architecture" : "x86"
		}
,
		"rect" : [ 32.0, 66.0, 1278.0, 923.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 10.0, 10.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"bubble" : 1,
					"bubblepoint" : 0.25,
					"bubbleside" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-41",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 380.0, 40.0, 164.0, 67.0 ],
					"text" : "in the future, input will allow for addressing of LEDs and illumination of pads."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-39",
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 361.0, 10.0, 79.0, 20.0 ],
					"text" : "/nada \"?\" ",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-38",
					"linecount" : 3,
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 189.0, 770.0, 370.0, 48.0 ],
					"text" : "/Instruction \"Push on 4 corners of any pad for corresponding data\" \n/Manufacturer \"Keith McMillen Instruments\" \n/Product \"SoftStep\" \n",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 540.0, 730.0, 242.0, 20.0 ],
					"text" : "o.gather /Instruction /Manufacturer /Product"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-35",
					"linecount" : 20,
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 570.0, 420.0, 161.0, 282.0 ],
					"text" : "/8/horizontal 0. \n/8/vertical 0. \n/6/horizontal 0. \n/6/vertical 0. \n/3/horizontal 0. \n/3/vertical 0. \n/1/horizontal 0. \n/1/vertical 0. \n/7/horizontal 0. \n/7/vertical 0. \n/2/horizontal 0. \n/2/vertical 0. \n/9/horizontal 0. \n/9/vertical 0. \n/4/horizontal 0. \n/4/vertical 0. \n/10/horizontal 0. \n/10/vertical 0. \n/5/horizontal 0. \n/5/vertical 0. \n",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-34",
					"linecount" : 10,
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 400.0, 420.0, 151.25, 144.0 ],
					"text" : "/8/xy 0. 0. \n/6/xy 0. 0. \n/3/xy 0. 0. \n/1/xy 0. 0. \n/7/xy 0. 0. \n/2/xy 0. 0. \n/9/xy 0. 0. \n/4/xy 0. 0. \n/10/xy 0. 0. \n/5/xy 0. 0. \n",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-33",
					"linecount" : 10,
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 260.0, 420.0, 120.0, 144.0 ],
					"text" : "/8/rawlist 0 0 0 0 \n/6/rawlist 0 0 0 0 \n/3/rawlist 0 0 0 0 \n/1/rawlist 0 0 0 0 \n/7/rawlist 0 0 0 0 \n/2/rawlist 0 0 0 0 \n/9/rawlist 0 0 0 0 \n/4/rawlist 0 0 0 0 \n/10/rawlist 0 0 0 0 \n/5/rawlist 0 0 0 0 \n",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-32",
					"linecount" : 10,
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 420.0, 176.25, 144.0 ],
					"text" : "/8/button false false false false \n/6/button false false false false \n/3/button false false false false \n/1/button false false false false \n/7/button false false false false \n/2/button false false false false \n/9/button false false false false \n/4/button false false false false \n/10/button false false false false \n/5/button false false false false \n",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 712.0, 370.0, 174.0, 20.0 ],
					"text" : "o.gather /*/horizontal /*/vertical"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 532.25, 370.0, 81.0, 20.0 ],
					"text" : "o.gather /*/xy"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 361.0, 370.0, 103.0, 20.0 ],
					"text" : "o.gather /*/rawlist"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 207.25, 370.0, 103.0, 20.0 ],
					"text" : "o.gather /*/button"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.172549, 1.0, 0.090196, 1.0 ],
					"id" : "obj-24",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 120.0, 220.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 900.0, 10.0, 150.0, 20.0 ],
					"text" : "example output"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 7,
							"architecture" : "x86"
						}
,
						"rect" : [ 25.0, 69.0, 455.0, 695.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-13",
									"linecount" : 73,
									"maxclass" : "o.message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 320.0, 1138.0 ],
									"text" : "/8/rawlist 0 0 0 0 \n/8/normlist 0. 0. 0. 0. \n/8/xy 0. 0. \n/8/pressure 0. \n/8/horizontal 0. \n/8/vertical 0. \n/8/button false false false false \n/6/rawlist 0 0 0 0 \n/6/normlist 0. 0. 0. 0. \n/6/xy 0. 0. \n/6/horizontal 0. \n/6/vertical 0. \n/6/button false false false false \n/3/rawlist 0 0 0 0 \n/3/normlist 0. 0. 0. 0. \n/3/xy 0. 0. \n/3/horizontal 0. \n/3/vertical 0. \n/3/button false false false false \n/1/rawlist 0 0 0 0 \n/1/normlist 0. 0. 0. 0. \n/1/xy 0. 0. \n/1/horizontal 0. \n/1/vertical 0. \n/1/button false false false false \n/7/rawlist 0 0 0 0 \n/7/normlist 0. 0. 0. 0. \n/7/xy 0. 0. \n/7/horizontal 0. \n/7/vertical 0. \n/7/button false false false false \n/2/rawlist 0 0 0 0 \n/2/normlist 0. 0. 0. 0. \n/2/xy 0. 0. \n/2/horizontal 0. \n/2/vertical 0. \n/2/button false false false false \n/9/rawlist 0 0 0 0 \n/9/normlist 0. 0. 0. 0. \n/9/xy 0. 0. \n/9/horizontal 0. \n/9/vertical 0. \n/9/button false false false false \n/4/rawlist 0 0 0 0 \n/4/normlist 0. 0. 0. 0. \n/4/xy 0. 0. \n/4/horizontal 0. \n/4/vertical 0. \n/4/button false false false false \n/10/rawlist 0 0 0 0 \n/10/normlist 0. 0. 0. 0. \n/10/xy 0. 0. \n/10/horizontal 0. \n/10/vertical 0. \n/10/button false false false false \n/5/rawlist 0 0 0 0 \n/5/normlist 0. 0. 0. 0. \n/5/xy 0. 0. \n/5/horizontal 0. \n/5/vertical 0. \n/5/button false false false false \n/diamond/left/button 0. \n/diamond/right/pressure 0. \n/diamond/forward/pressure 0. \n/diamond/backward/pressure 0. \n/diamond/backward/button \"released\" \n/diamond/right/button \"released\" \n/diamond/forward/button \"released\" \n/diamond/left/pressure \"released\" \n/Instruction \"Push on 4 corners of any pad for corresponding data\" \n/Manufacturer \"Keith McMillen Instruments\" \n/Product \"SoftStep\" \n",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-12",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 351.0, 40.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 180.0, 220.0, 93.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p entire_bundle"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"linecount" : 72,
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 900.0, 40.0, 320.0, 1000.0 ],
					"text" : "/6/rawlist 0 0 0 0 \n/6/normlist 0. 0. 0. 0. \n/6/xy 0. 0. \n/6/horizontal 0. \n/6/vertical 0. \n/6/button false false false false \n/3/rawlist 0 0 0 0 \n/3/normlist 0. 0. 0. 0. \n/3/xy 0. 0. \n/3/horizontal 0. \n/3/vertical 0. \n/3/button false false false false \n/1/rawlist 0 0 0 0 \n/1/normlist 0. 0. 0. 0. \n/1/xy 0. 0. \n/1/horizontal 0. \n/1/vertical 0. \n/1/button false false false false \n/7/rawlist 0 0 0 0 \n/7/normlist 0. 0. 0. 0. \n/7/xy 0. 0. \n/7/horizontal 0. \n/7/vertical 0. \n/7/button false false false false \n/2/rawlist 0 0 0 0 \n/2/normlist 0. 0. 0. 0. \n/2/xy 0. 0. \n/2/horizontal 0. \n/2/vertical 0. \n/2/button false false false false \n/8/rawlist 0 0 0 0 \n/8/normlist 0. 0. 0. 0. \n/8/xy 0. 0. \n/8/horizontal 0. \n/8/vertical 0. \n/8/button false false false false \n/9/rawlist 0 0 0 0 \n/9/normlist 0. 0. 0. 0. \n/9/xy 0. 0. \n/9/horizontal 0. \n/9/vertical 0. \n/9/button false false false false \n/4/rawlist 0 0 0 0 \n/4/normlist 0. 0. 0. 0. \n/4/xy 0. 0. \n/4/horizontal 0. \n/4/vertical 0. \n/4/button false false false false \n/10/rawlist 0 0 0 0 \n/10/normlist 0. 0. 0. 0. \n/10/xy 0. 0. \n/10/horizontal 0. \n/10/vertical 0. \n/10/button false false false false \n/5/rawlist 0 0 0 0 \n/5/normlist 0. 0. 0. 0. \n/5/xy 0. 0. \n/5/horizontal 0. \n/5/vertical 0. \n/5/button false false false false \n/diamond/left/button 0. \n/diamond/right/pressure 0. \n/diamond/forward/pressure 0. \n/diamond/backward/pressure 0. \n/diamond/backward/button \"released\" \n/diamond/right/button \"released\" \n/diamond/forward/button \"released\" \n/diamond/left/pressure \"released\" \n/Instruction \"Push on 4 corners of any pad for corresponding data\" \n/Manufacturer \"Keith McMillen Instruments\" \n/Product \"SoftStep\" ",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 671.0, 230.0, 150.0, 20.0 ],
					"text" : "unmatched input"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 620.0, 210.0, 123.5, 20.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 361.0, 130.0, 75.0, 20.0 ],
					"text" : "o.io.softstep"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.io.softstep.maxpat",
				"bootpath" : "/Users/jml/Documents/git_repositories/CNMAT-odot/abstractions/io/o.io.softstep",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "c.softstep.pad.maxpat",
				"bootpath" : "/Users/jml/Documents/git_repositories/CNMAT-odot/abstractions/io/o.io.softstep",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "c.softstep.navbutton.maxpat",
				"bootpath" : "/Users/jml/Documents/git_repositories/CNMAT-odot/abstractions/io/o.io.softstep",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.collectwithtimeout.maxpat",
				"bootpath" : "/Users/jml/Documents/git_repositories/CNMAT-odot/abstractions/io",
				"patcherrelativepath" : "..",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.softstep.platform.maxpat",
				"bootpath" : "/Users/jml/Documents/git_repositories/CNMAT-odot/abstractions/io/o.io.softstep",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.maxplatform.maxpat",
				"bootpath" : "/Users/jml/Documents/git_repositories/CNMAT-odot/abstractions",
				"patcherrelativepath" : "../..",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.gather.maxpat",
				"bootpath" : "/Users/jml/Documents/git_repositories/CNMAT-odot/abstractions/namespace",
				"patcherrelativepath" : "../../namespace",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.route.mxe",
				"type" : "iLaF"
			}
, 			{
				"name" : "o.prepend.mxe",
				"type" : "iLaF"
			}
, 			{
				"name" : "o.pack.mxe",
				"type" : "iLaF"
			}
, 			{
				"name" : "o.var.mxe",
				"type" : "iLaF"
			}
, 			{
				"name" : "o.message.mxe",
				"type" : "iLaF"
			}
, 			{
				"name" : "o.expr.mxe",
				"type" : "iLaF"
			}
, 			{
				"name" : "o.union.mxe",
				"type" : "iLaF"
			}
, 			{
				"name" : "o.collect.mxe",
				"type" : "iLaF"
			}
, 			{
				"name" : "o.intersection.mxe",
				"type" : "iLaF"
			}
, 			{
				"name" : "o.difference.mxe",
				"type" : "iLaF"
			}
 ]
	}

}
