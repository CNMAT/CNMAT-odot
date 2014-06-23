{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 3,
			"architecture" : "x86"
		}
,
		"rect" : [ 100.0, 100.0, 975.0, 750.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
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
		"showrootpatcherontab" : 0,
		"showontab" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-3",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 3,
							"architecture" : "x86"
						}
,
						"rect" : [ 100.0, 126.0, 975.0, 724.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
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
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"args" : [ "/pad/a/4" ],
									"id" : "obj-8",
									"maxclass" : "bpatcher",
									"name" : "o.io.quneo.display.helper.pad.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 656.852173, 38.79303, 118.336945, 104.867409 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "/pad/a/4" ],
									"id" : "obj-7",
									"maxclass" : "bpatcher",
									"name" : "o.io.quneo.display.helper.pad.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 234.852142, 408.79303, 118.336945, 104.867409 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "bpatcher",
									"name" : "o.io.quneo.display.helper.slide.A-D.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 697.0, 268.460602, 63.0, 170.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "bpatcher",
									"name" : "o.io.quneo.display.helper.slide.A-D.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 580.0, 176.460602, 63.0, 170.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "bpatcher",
									"name" : "o.io.quneo.display.helper.slide.A-D.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 490.0, 81.460602, 63.0, 170.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "bpatcher",
									"name" : "o.io.quneo.display.helper.arrowbutton.1A-D.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 607.0, 499.0, 50.0, 44.453491 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "bpatcher",
									"name" : "o.io.quneo.display.helper.arrowbutton.1A-D.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 441.0, 458.0, 50.0, 44.453491 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "bpatcher",
									"name" : "o.io.quneo.display.helper.arrowbutton.1A-D.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 360.0, 323.0, 50.0, 44.453491 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-30",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 244.0, 136.460602, 229.0, 60.0 ],
									"text" : "Name the sensor domain in the bpatcher inspector, with an argument, such as /pad/a/4/ to identify the domain to the device."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-17",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 83.155273, 44.375305, 386.0, 74.0 ],
									"text" : "Quneo Parts (or Sensor domains) exist as separate patches (to be opened as bpatchers), for building new relations between existing and non-existing sensor domains.  Compose new assemblages of interactivity, distribute the device across patchers or reconfigure the device completely. "
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-15",
									"linecount" : 4,
									"maxclass" : "o.message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 59.020569, 506.453491, 150.0, 60.0 ],
									"text" : "/pad/a/4/velocity\n/pad/a/4/pressure\n/pad/a/4/x 0.\n/pad/a/4/y 0.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "/pad/a/4" ],
									"id" : "obj-14",
									"maxclass" : "bpatcher",
									"name" : "o.io.quneo.display.helper.pad.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 69.683624, 262.58609, 118.336945, 104.867409 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "/pad/a/4" ],
									"id" : "obj-9",
									"maxclass" : "bpatcher",
									"name" : "o.io.quneo.display.helper.pad.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 118.852112, 136.460602, 125.147888, 104.867409 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 289.0, 88.0, 56.0, 43.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 11.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 11.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p reconstructions"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 3,
							"architecture" : "x86"
						}
,
						"rect" : [ 0.0, 26.0, 975.0, 724.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
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
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 3,
											"architecture" : "x86"
										}
,
										"rect" : [ 279.0, 44.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-7",
													"linecount" : 87,
													"maxclass" : "o.message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 150.0, 1076.0 ],
													"text" : "/pad/c/4/pressure 0.\n/pad/c/4/x 0.456693\n/pad/c/4/y 0.488189\n/pad/c/4/velocity 0.\n/pad/a/4/pressure 0.\n/pad/a/4/x 0.976378\n/pad/a/4/y 0.362205\n/pad/a/4/velocity 0.\n/pad/b/4/pressure 0.\n/pad/b/4/x 0.708661\n/pad/b/4/y 0.590551\n/pad/b/4/velocity 0.\n/pad/b/3/pressure 0.\n/pad/b/3/x 0.417323\n/pad/b/3/y 0.496063\n/pad/b/3/velocity 0.\n/pad/a/3/pressure 0.\n/pad/a/3/x 0.464567\n/pad/a/3/y 0.0787402\n/pad/a/3/velocity 0.\n/pad/c/3/x 0.425197\n/pad/c/3/y 0.\n/pad/c/3/velocity 0.\n/pad/c/3/pressure 0.\n/pad/a/1/pressure 0.\n/pad/a/1/x 0.519685\n/pad/a/1/y 0.433071\n/pad/a/1/velocity 0.\n/pad/a/2/x 0.496063\n/pad/a/2/y 0.496063\n/pad/a/2/velocity 0.\n/pad/a/2/pressure 0.\n/pad/c/2/x 1.\n/pad/c/2/y 1.\n/pad/c/2/velocity 0.\n/pad/c/2/pressure 0.\n/pad/d/2/pressure 0.\n/pad/d/2/x 0.149606\n/pad/d/2/y 0.\n/pad/d/2/velocity 0.\n/pad/d/1/x 0.433071\n/pad/d/1/y 0.606299\n/pad/d/1/velocity 0.\n/pad/d/1/pressure 0.\n/pad/d/3/pressure 0.\n/pad/d/3/x 0.755906\n/pad/d/3/y 1.\n/pad/d/3/velocity 0.\n/pad/c/1/x 0.\n/pad/c/1/y 0.346457\n/pad/c/1/velocity 0.\n/pad/c/1/pressure 0.\n/large/arrowbutton/b/1/pressure 0.\n/large/arrowbutton/b/1/velocity 0.\n/large/arrowbutton/b/2/pressure 0.\n/large/arrowbutton/b/2/velocity 0.\n/large/arrowbutton/a/1/velocity 0.\n/large/arrowbutton/a/1/pressure 0.\n/large/arrowbutton/a/2/pressure 0.\n/large/arrowbutton/a/2/velocity 0.\n/button/b/pressure 0.\n/button/b/velocity 0.\n/button/c/velocity 0.\n/button/c/pressure 0.\n/button/a/velocity 0.\n/button/a/pressure 0.\n/slider/3/position 0.338583\n/slider/3/pressure 0.\n/slider/3/velocity 0.\n/instructions \"first tap 'mode' button, then tap 'pad /a/1' to enable preset 1. Ok to change the settings within preset 1, using the QuNeo Editor, as long as the midi mappings are not changed\"\n/manufactuer \"KESUMO, LLC.\" \"Keith McMillen\"\n/product \"Quneo, #K-707\"",
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-8",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 181.0, 40.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 3.187012, 625.275208, 81.135498, 19.0 ],
									"saved_object_attributes" : 									{
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
									"text" : "p see data"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"hidden" : 1,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 42.0, 6.0, 74.0, 19.0 ],
									"text" : "r display"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 24.0,
									"frgb" : 0.0,
									"id" : "obj-13",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 746.155273, 78.587738, 249.0, 60.0 ],
									"text" : "* o.io.quneo.display\nWhat Things Mean"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Unicode MS",
									"fontsize" : 18.0,
									"frgb" : 0.0,
									"id" : "obj-93",
									"linecount" : 16,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 746.155273, 138.587738, 352.0, 392.0 ],
									"text" : "'Redness' represents '/velocity.' \nHowever, the red graphics on the two '/disc'(s) indicate '/direction'\n\n'Blueness' represents '/pressure.'\n\n'Green graphics' respond to touching the actual QuNeo.\n For '/slider/long' green indicates a range between two fingers. For pads and sliders, green indicates '/position' of one finger.\n\n'Yellow graphics' can be clicked and dragged around with a mouse, in order to generate OSC bundles without the actual QuNeo in hand.\n",
									"textcolor" : [ 0.040087, 0.213358, 0.109884, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "bpatcher",
									"name" : "o.io.quneo.display.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 3.187012, 43.900269, 736.968262, 581.374939 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 173.0, 88.0, 72.0, 19.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 11.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 11.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p display"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-1",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 3,
							"architecture" : "x86"
						}
,
						"rect" : [ 0.0, 26.0, 975.0, 724.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
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
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"hidden" : 1,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 584.0, 579.0, 100.0, 19.0 ],
									"text" : "s display"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 3,
											"architecture" : "x86"
										}
,
										"rect" : [ 279.0, 44.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-7",
													"linecount" : 148,
													"maxclass" : "o.message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 150.0, 1825.0 ],
													"text" : "/pad/b/4/x 0.527559\n/pad/b/4/y 0.417323\n/pad/b/4/velocity 0.\n/pad/b/4/pressure 0.\n/pad/c/4/x 0.740157\n/pad/c/4/y 0.204724\n/pad/c/4/velocity 0.\n/pad/c/4/pressure 0.\n/pad/a/2/x 0.496063\n/pad/a/2/y 0.496063\n/pad/a/2/velocity 0.\n/pad/a/2/pressure 0.\n/pad/d/3/x 0.165354\n/pad/d/3/y 0.165354\n/pad/d/3/velocity 0.\n/pad/d/3/pressure 0.\n/pad/a/3/x 0.448819\n/pad/a/3/y 0.905512\n/pad/a/3/velocity 0.\n/pad/a/3/pressure 0.\n/pad/c/3/pressure 0.\n/pad/c/3/x 0.440945\n/pad/c/3/y 0.574803\n/pad/c/3/velocity 0.\n/pad/c/2/x 0.291339\n/pad/c/2/y 1.\n/pad/c/2/velocity 0.\n/pad/c/2/pressure 0.\n/pad/b/3/pressure 0.\n/pad/b/3/x 0.590551\n/pad/b/3/y 0.188976\n/pad/b/3/velocity 0.\n/pad/a/4/x 0.362205\n/pad/a/4/y 0.0551181\n/pad/a/4/velocity 0.\n/pad/a/4/pressure 0.\n/disc/b/pressure 0.\n/disc/b/velocity 0.\n/disc/b/direction 0.\n/disc/a/pressure 0.\n/disc/a/velocity 0.\n/disc/a/direction 0.\n/button/rhombus/pressure 0.\n/button/rhombus/velocity 0.\n/button/c/velocity 0.\n/button/c/pressure 0.\n/button/b/pressure 0.\n/button/b/velocity 0.\n/button/a/velocity 0.\n/button/a/pressure 0.\n/large/arrowbutton/b/1/pressure 0.\n/large/arrowbutton/b/1/velocity 0.\n/large/arrowbutton/b/2/pressure 0.\n/large/arrowbutton/b/2/velocity 0.\n/large/arrowbutton/a/1/pressure 0.\n/large/arrowbutton/a/1/velocity 0.\n/large/arrowbutton/a/2/velocity 0.\n/large/arrowbutton/a/2/pressure 0.\n/arrowbutton/b/1/velocity 0.\n/arrowbutton/b/1/pressure 0.\n/arrowbutton/a/1/velocity 0.\n/arrowbutton/a/1/pressure 0.\n/arrowbutton/b/2/pressure 0.\n/arrowbutton/b/2/velocity 0.\n/arrowbutton/a/2/pressure 0.\n/arrowbutton/a/2/velocity 0.\n/arrowbutton/b/3/velocity 0.\n/arrowbutton/b/3/pressure 0.\n/arrowbutton/a/3/velocity 0.\n/arrowbutton/a/3/pressure 0.\n/arrowbutton/b/4/pressure 0.\n/arrowbutton/b/4/velocity 0.\n/arrowbutton/a/4/pressure 0.\n/arrowbutton/a/4/velocity 0.\n/slider/long/velocity 0.\n/slider/long/pressure 0.\n/slider/long/2nd/position 0.\n/slider/long/position 0.\n/slider/d/velocity 0.\n/slider/d/position 0.\n/slider/d/pressure 0.\n/slider/c/pressure 0.\n/slider/c/position 0.\n/slider/c/velocity 0.\n/slider/b/position 0.\n/slider/b/pressure 0.\n/slider/b/velocity 0.\n/slider/a/velocity 0.\n/slider/a/pressure 0.\n/slider/a/position 0.\n/slider/1/velocity 0.\n/slider/1/pressure 0.\n/slider/1/position 0.\n/slider/2/velocity 0.\n/slider/2/pressure 0.\n/slider/2/position 0.\n/slider/3/pressure 0.\n/slider/3/velocity 0.\n/slider/3/position 0.\n/slider/4/pressure 0.\n/slider/4/position 0.\n/slider/4/velocity 0.\n/pad/d/4/velocity 0.\n/pad/d/4/pressure 0.\n/pad/d/4/x 0.\n/pad/d/4/y 0.\n/pad/d/2/pressure 0.\n/pad/d/2/y 0.\n/pad/d/2/velocity 0.\n/pad/d/2/x 0.\n/pad/b/2/pressure 0.\n/pad/b/2/x 0.\n/pad/b/2/y 0.\n/pad/b/2/velocity 0.\n/pad/d/1/velocity 0.\n/pad/d/1/pressure 0.\n/pad/d/1/x 0.\n/pad/d/1/y 0.\n/pad/c/1/x 0.\n/pad/c/1/y 0.\n/pad/c/1/velocity 0.\n/pad/c/1/pressure 0.\n/pad/b/1/pressure 0.\n/pad/b/1/y 0.\n/pad/b/1/velocity 0.\n/pad/b/1/x 0.\n/pad/a/1/velocity 0.\n/pad/a/1/pressure 0.\n/pad/a/1/x 0.\n/pad/a/1/y 0.\n/instructions \"first tap 'mode' button, then tap 'pad /a/1' to enable preset 1. Ok to change the settings within preset 1, using the QuNeo Editor, as long as the midi mappings are not changed\"\n/manufactuer \"KESUMO, LLC.\" \"Keith McMillen\"\n/product \"Quneo, #K-707\"",
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-8",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 181.0, 40.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 94.135498, 491.806458, 81.135498, 19.0 ],
									"saved_object_attributes" : 									{
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
									"text" : "p see data"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-6",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 155.135498, 177.741302, 150.0, 56.0 ],
									"text" : "Takes osc messages to control leds on the physical QuNeo, open object to see mapping."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-4",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 399.0, 355.806458, 197.0, 93.0 ],
									"text" : "from Where ?\nThe object recognizes any QuNeo by a locational identity as  assigned (by user or OS) to available usb ports. Takes an osc message to specify which usb port.\n\n"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-21",
									"maxclass" : "flonum",
									"maximum" : 1.0,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 68.635498, 213.741302, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-75",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 68.635498, 247.241302, 201.0, 20.0 ],
									"text" : "o.pack /led/disc/position/red/a"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 142.135498, 374.0, 100.0, 19.0 ],
									"text" : "o.io.quneo"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-1",
									"maxclass" : "o.message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 354.0, 330.806458, 150.0, 19.0 ],
									"text" : "/port \"QUNEO\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-25",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 119.135498, 55.30645, 333.0, 33.0 ],
									"text" : "OSC encoding of Keith McMillen's QuNeo controller  for prototyping and design of related algorithms."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-26",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 55.135498, 22.36441, 397.0, 33.0 ],
									"text" : "Provides graphical representation of sensor activity, as well as a  namespace encoding for gesture derivation and LED control."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 24.0,
									"frgb" : 0.0,
									"id" : "obj-27",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 24.135498, 88.36441, 241.0, 33.0 ],
									"text" : "o.io.quneo",
									"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.87451, 0.933333, 1.0, 1.0 ],
									"border" : 5,
									"bordercolor" : [ 0.360784, 0.537255, 0.8, 0.38 ],
									"grad1" : [ 0.431373, 0.929412, 0.423529, 0.7 ],
									"grad2" : [ 0.721569, 0.373195, 0.304401, 1.0 ],
									"id" : "obj-28",
									"maxclass" : "panel",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 12.186981, 12.36441, 424.42041, 118.884079 ],
									"rounded" : 70,
									"shape" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-75", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 118.0, 88.0, 47.0, 43.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 11.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 11.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p GetData"
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [ 			{
				"name" : "o.io.quneo.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.midi.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io",
				"patcherrelativepath" : "..",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "quneopic.jpg",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JPEG",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.pad.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "green-circle.png",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "PNG ",
				"implicit" : 1
			}
, 			{
				"name" : "yellow-circle.png",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "PNG ",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.slide.A-D.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.slide.1-4.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.longslide.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.arrowbutton.2A-D.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.arrowbutton.1A-D.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.disc.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.large.arrowbutton.2A-B.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.large.arrowbutton.1A-B.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.button.A.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.button.B.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.button.C.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.rhombusbutton.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "nothing.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/Max/Packages/CNMAT-CNMAT-MMJ-Depot-7782752/modules/basic_programming",
				"patcherrelativepath" : "../../../../../../Max/Packages/CNMAT-CNMAT-MMJ-Depot-7782752/modules/basic_programming",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "uc_license.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/Max/Packages/CNMAT-CNMAT-MMJ-Depot-7782752/modules/depot_support",
				"patcherrelativepath" : "../../../../../../Max/Packages/CNMAT-CNMAT-MMJ-Depot-7782752/modules/depot_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cnmat_blue.gif",
				"bootpath" : "/Users/gabacheker/Documents/Max/Packages/CNMAT-CNMAT-MMJ-Depot-7782752/modules/depot_support",
				"patcherrelativepath" : "../../../../../../Max/Packages/CNMAT-CNMAT-MMJ-Depot-7782752/modules/depot_support",
				"type" : "GIFf",
				"implicit" : 1
			}
, 			{
				"name" : "o.collectwithtimeout.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/Max/Packages/maxliB/o.io.qunexus/patchers",
				"patcherrelativepath" : "../../../../../../Max/Packages/maxliB/o.io.qunexus/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.message.mxo",
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
				"name" : "o.prepend.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.select.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.collect.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.cond.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.change.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pak.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
