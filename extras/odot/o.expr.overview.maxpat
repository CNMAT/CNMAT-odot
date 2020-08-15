{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 11.0, 54.0, 1220.0, 389.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 11.0,
		"default_fontface" : 0,
		"default_fontname" : "Helvetica",
		"gridonopen" : 2,
		"gridsize" : [ 10.0, 10.0 ],
		"gridsnaponopen" : 2,
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
		"subpatcher_template" : "gridded",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 84.0, 129.0, 640.0, 480.0 ],
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
						"subpatcher_template" : "gridded",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 780.0, 190.0, 110.0, 22.0 ],
									"text" : "routepass min max"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "stop" ],
									"patching_rect" : [ 585.0, 289.0, 47.0, 22.0 ],
									"text" : "t s stop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 675.0, 349.0, 69.0, 22.0 ],
									"text" : "zl.reg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 675.0, 319.0, 35.0, 22.0 ],
									"text" : "del 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "bang", "" ],
									"patching_rect" : [ 625.5, 90.0, 118.0, 22.0 ],
									"text" : "t s b s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 585.0, 259.0, 77.0, 22.0 ],
									"text" : "route symbol"
								}

							}
, 							{
								"box" : 								{
									"coll_data" : 									{
										"count" : 21,
										"data" : [ 											{
												"key" : "#",
												"value" : [ "comment" ]
											}
, 											{
												"key" : "+",
												"value" : [ "add" ]
											}
, 											{
												"key" : "-",
												"value" : [ "sub" ]
											}
, 											{
												"key" : "/",
												"value" : [ "div" ]
											}
, 											{
												"key" : "*",
												"value" : [ "mul" ]
											}
, 											{
												"key" : "*=",
												"value" : [ "mul_assign" ]
											}
, 											{
												"key" : "+=",
												"value" : [ "add_assign" ]
											}
, 											{
												"key" : "-=",
												"value" : [ "sub_assign" ]
											}
, 											{
												"key" : "/=",
												"value" : [ "div_assign" ]
											}
, 											{
												"key" : "<",
												"value" : [ "lt" ]
											}
, 											{
												"key" : "<=",
												"value" : [ "lteq" ]
											}
, 											{
												"key" : "==",
												"value" : [ "eq" ]
											}
, 											{
												"key" : "!=",
												"value" : [ "neq" ]
											}
, 											{
												"key" : ">=",
												"value" : [ "gteq" ]
											}
, 											{
												"key" : ">",
												"value" : [ "gt" ]
											}
, 											{
												"key" : "&&",
												"value" : [ "and" ]
											}
, 											{
												"key" : "&",
												"value" : [ "andb" ]
											}
, 											{
												"key" : "||",
												"value" : [ "or" ]
											}
, 											{
												"key" : "??=",
												"value" : [ "null_coalescing_operator" ]
											}
, 											{
												"key" : "?",
												"value" : [ "ternary_operator" ]
											}
, 											{
												"key" : "[[]]",
												"value" : [ "element" ]
											}
 ]
									}
,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 585.0, 229.0, 89.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1,
										"precision" : 6
									}
,
									"text" : "coll @embed 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-611",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 675.0, 480.0, 53.0, 22.0 ],
									"text" : "pcontrol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-610",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 740.0, 550.0, 183.0, 22.0 ],
									"text" : "load odot-length.maxhelp"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-511",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 675.0, 420.0, 168.0, 22.0 ],
									"text" : "sprintf load odot-%s.maxhelp",
									"varname" : "loader"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-511", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-511", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-610", 1 ],
									"order" : 0,
									"source" : [ "obj-511", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-611", 0 ],
									"order" : 1,
									"source" : [ "obj-511", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-6", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-511", 0 ],
									"source" : [ "obj-6", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-511", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"source" : [ "obj-8", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1020.0, 430.0, 76.0, 19.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p prev_loader"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 84.0, 129.0, 640.0, 480.0 ],
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
						"subpatcher_template" : "gridded",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 4,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
										"subpatcher_template" : "gridded",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-3",
													"linecount" : 5,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 305.0, 76.0 ],
													"text" : "# + - * / pow sqrt += -= *= /= aseq nfill [[]] length sum max min rev scale clip ceil round floor mtof ftom if < <= == >= > && || progn map lambda quote assign getaddresses value bound exists ??= delete typetags float32 int32 ?"
												}

											}
 ],
										"lines" : [  ]
									}
,
									"patching_rect" : [ 590.0, 340.0, 57.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p prevlist"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-13",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 340.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 235.0, 290.0, 100.0, 20.0 ],
									"text" : "&",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "32-button[1]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-14",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 365.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 235.0, 316.0, 100.0, 20.0 ],
									"text" : "|",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "33-button[1]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-5",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 45.0, 390.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 15.0, 340.0, 100.0, 20.0 ],
									"text" : "cast",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "35-button[1]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-4",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 207.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 235.0, 165.0, 100.0, 20.0 ],
									"text" : "!=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "29-button[1]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-1",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 45.0, 359.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 15.0, 316.0, 100.0, 20.0 ],
									"text" : "?",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "47-button[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "bang", "" ],
									"patching_rect" : [ 625.5, 90.0, 118.0, 22.0 ],
									"text" : "t s b s"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-513",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 45.0, 54.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 15.0, 15.0, 100.0, 20.0 ],
									"text" : "#",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "0-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-515",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 45.0, 79.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 15.0, 40.0, 100.0, 20.0 ],
									"text" : "+",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "1-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-517",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 45.0, 104.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 15.0, 65.0, 100.0, 20.0 ],
									"text" : "-",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "2-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-519",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 45.0, 129.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 15.0, 90.0, 100.0, 20.0 ],
									"text" : "*",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "3-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-521",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 45.0, 154.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 15.0, 115.0, 100.0, 20.0 ],
									"text" : "/",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "4-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-523",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 45.0, 179.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 15.0, 140.0, 100.0, 20.0 ],
									"text" : "pow",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "5-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-525",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 45.0, 204.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 15.0, 165.0, 100.0, 20.0 ],
									"text" : "sqrt",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "6-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-527",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 45.0, 229.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 15.0, 190.0, 100.0, 20.0 ],
									"text" : "+=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "7-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-529",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 45.0, 254.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 15.0, 215.0, 100.0, 20.0 ],
									"text" : "-=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "8-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-531",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 45.0, 279.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 15.0, 240.0, 100.0, 20.0 ],
									"text" : "*=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "9-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-533",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 45.0, 304.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 15.0, 265.0, 100.0, 20.0 ],
									"text" : "/=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "10-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-535",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 45.0, 329.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 15.0, 290.0, 100.0, 20.0 ],
									"text" : "aseq",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "11-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-537",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 155.0, 54.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 15.0, 100.0, 20.0 ],
									"text" : "nfill",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "12-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-539",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 155.0, 79.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 40.0, 100.0, 20.0 ],
									"text" : "lists",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "13-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-541",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 155.0, 104.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 65.0, 100.0, 20.0 ],
									"text" : "length",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "14-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-543",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 155.0, 129.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 90.0, 100.0, 20.0 ],
									"text" : "sum",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "15-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-545",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 155.0, 154.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 115.0, 100.0, 20.0 ],
									"text" : "max",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "16-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-547",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 155.0, 179.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 140.0, 100.0, 20.0 ],
									"text" : "min",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "17-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-549",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 155.0, 204.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 165.0, 100.0, 20.0 ],
									"text" : "rev",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "18-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-551",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 155.0, 229.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 190.0, 100.0, 20.0 ],
									"text" : "scale",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "19-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-553",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 155.0, 254.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 215.0, 100.0, 20.0 ],
									"text" : "clip",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "20-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-555",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 155.0, 279.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 240.0, 100.0, 20.0 ],
									"text" : "ceil",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "21-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-557",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 155.0, 304.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 265.0, 100.0, 20.0 ],
									"text" : "round",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "22-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-559",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 155.0, 329.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 290.0, 100.0, 20.0 ],
									"text" : "floor",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "23-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-561",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 54.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 235.0, 15.0, 100.0, 20.0 ],
									"text" : "mtof",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "24-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-563",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 79.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 235.0, 40.0, 100.0, 20.0 ],
									"text" : "ftom",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "25-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-565",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 104.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 235.0, 65.0, 100.0, 20.0 ],
									"text" : "if",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "26-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-567",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 129.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 235.0, 90.0, 100.0, 20.0 ],
									"text" : "<",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "27-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-569",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 154.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 235.0, 115.0, 100.0, 20.0 ],
									"text" : "<=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "28-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-571",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 179.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 235.0, 140.0, 100.0, 20.0 ],
									"text" : "==",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "29-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-573",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 234.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 235.0, 190.0, 100.0, 20.0 ],
									"text" : ">=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "30-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-575",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 259.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 235.0, 215.0, 100.0, 20.0 ],
									"text" : ">",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "31-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-577",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 284.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 235.0, 240.0, 100.0, 20.0 ],
									"text" : "&&",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "32-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-579",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 309.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 235.0, 265.0, 100.0, 20.0 ],
									"text" : "||",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "33-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-581",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 390.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 235.0, 340.0, 100.0, 20.0 ],
									"text" : "progn",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "34-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-583",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 265.0, 420.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 235.0, 365.0, 100.0, 20.0 ],
									"text" : "map",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "35-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-585",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 375.0, 54.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 345.0, 15.0, 100.0, 20.0 ],
									"text" : "lambda",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "36-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-587",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 375.0, 79.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 345.0, 40.0, 100.0, 20.0 ],
									"text" : "quote",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "37-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-589",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 375.0, 104.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 345.0, 65.0, 100.0, 20.0 ],
									"text" : "assign",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "38-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-591",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 375.0, 129.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 345.0, 90.0, 100.0, 20.0 ],
									"text" : "getaddresses",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "39-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-593",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 375.0, 154.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 345.0, 115.0, 100.0, 20.0 ],
									"text" : "value",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "40-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-595",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 375.0, 179.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 345.0, 140.0, 100.0, 20.0 ],
									"text" : "bound",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "41-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-597",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 375.0, 204.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 345.0, 165.0, 100.0, 20.0 ],
									"text" : "exists",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "42-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-599",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 375.0, 229.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 345.0, 190.0, 100.0, 20.0 ],
									"text" : "??=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "43-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-601",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 375.0, 254.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 345.0, 215.0, 100.0, 20.0 ],
									"text" : "delete",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "44-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-603",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 375.0, 279.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 345.0, 240.0, 100.0, 20.0 ],
									"text" : "typetags",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "45-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-605",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 375.0, 304.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 345.0, 265.0, 100.0, 20.0 ],
									"text" : "float32",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "46-button"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
									"id" : "obj-607",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 375.0, 329.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 345.0, 290.0, 100.0, 20.0 ],
									"text" : "int32",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "47-button"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-14", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-513", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-515", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-517", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-519", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-521", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-523", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-525", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-527", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-529", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-531", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-533", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-535", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-535", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-537", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-539", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-541", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-543", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-545", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-547", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-549", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-551", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-553", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-555", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-557", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-559", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-561", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-563", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-565", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-567", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-569", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-571", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-573", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-575", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-577", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-579", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-581", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-583", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-585", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-587", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-589", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-591", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-593", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-595", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-597", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-599", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-601", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-603", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-605", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-607", 1 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1020.0, 400.0, 42.0, 19.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p temp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1080.0, 460.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1190.0, 570.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-611",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 675.0, 480.0, 53.0, 19.0 ],
					"text" : "pcontrol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-412",
					"items" : [ "remove", ",", "create", ",", "connect" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1200.0, 450.0, 100.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-613",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1107.5, 630.0, 69.0, 19.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-612",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 282.0, 104.0, 874.0, 626.0 ],
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
						"subpatcher_template" : "gridded",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 451.0, 181.0, 65.0, 22.0 ],
									"text" : "o.pack /list"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 451.0, 242.0, 86.0, 22.0 ],
									"text" : "o.route /sorted"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 451.0, 205.0, 162.0, 32.0 ],
									"text" : "/sorted = sort(/list)"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 182.0, 521.0, 23.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 494.0, 391.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 317.0, 223.0, 30.0, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 182.0, 242.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 50.0, 71.0, 119.0, 22.0 ],
									"text" : "route int bang active"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 31.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 330.0, 474.0, 72.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-510",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 4,
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
										"subpatcher_template" : "gridded",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 100.0, 100.0, 22.0 ],
													"text" : "zl.slice 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 228.0, 195.0, 22.0 ],
													"text" : "script connect $1-button 1 loader 0"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-408",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-409",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 323.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-409", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-408", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 293.0, 370.0, 107.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p connect_objects"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-413",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 157.0, 29.5, 22.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-411",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 4,
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
										"subpatcher_template" : "gridded",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 100.0, 100.0, 22.0 ],
													"text" : "zl.slice 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 228.0, 129.0, 22.0 ],
													"text" : "script delete $1-button"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-408",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-409",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 323.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-409", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-408", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 50.0, 370.0, 105.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p remove_objects"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-410",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 4,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 188.0, 198.0, 466.0, 347.0 ],
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
										"subpatcher_template" : "gridded",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 1,
															"revision" : 4,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 59.0, 104.0, 792.0, 596.0 ],
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
														"subpatcher_template" : "gridded",
														"assistshowspatchername" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-35",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 154.5, 374.0, 29.5, 22.0 ],
																	"text" : "i"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-32",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"patching_rect" : [ 50.0, 356.0, 30.0, 22.0 ],
																	"text" : "t i b"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-18",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 50.0, 299.0, 32.0, 22.0 ],
																	"text" : "* 25"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-14",
																	"maxclass" : "newobj",
																	"numinlets" : 3,
																	"numoutlets" : 3,
																	"outlettype" : [ "", "", "" ],
																	"patching_rect" : [ 62.0, 100.0, 86.0, 22.0 ],
																	"text" : "route list bang"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-2",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 62.0, 458.0, 100.0, 22.0 ],
																	"text" : "join"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-202",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "int", "int", "int" ],
																	"patching_rect" : [ 62.0, 180.0, 257.0, 22.0 ],
																	"text" : "t i i i"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-201",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 300.0, 317.0, 100.0, 22.0 ],
																	"text" : "join"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-19",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 133.0, 416.0, 100.0, 22.0 ],
																	"text" : "join"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-17",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 62.0, 142.0, 100.0, 22.0 ],
																	"text" : "zl.slice 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-20",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 160.0, 335.0, 38.0, 22.0 ],
																	"text" : "* 110"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-22",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 220.0, 261.0, 29.5, 22.0 ],
																	"text" : "1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-5",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 160.0, 274.0, 36.0, 22.0 ],
																	"text" : "sel 0"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-4",
																	"maxclass" : "newobj",
																	"numinlets" : 5,
																	"numoutlets" : 4,
																	"outlettype" : [ "int", "", "", "int" ],
																	"patching_rect" : [ 160.0, 306.0, 84.0, 22.0 ],
																	"text" : "counter"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 160.0, 216.0, 36.0, 22.0 ],
																	"text" : "% 15"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-9",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 62.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-11",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 62.0, 540.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-18", 0 ],
																	"order" : 1,
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 0 ],
																	"order" : 0,
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-17", 0 ],
																	"source" : [ "obj-14", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-22", 0 ],
																	"source" : [ "obj-14", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-201", 1 ],
																	"source" : [ "obj-17", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-202", 0 ],
																	"source" : [ "obj-17", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-32", 0 ],
																	"source" : [ "obj-18", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 1 ],
																	"source" : [ "obj-19", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 0 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-35", 1 ],
																	"source" : [ "obj-20", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-19", 1 ],
																	"source" : [ "obj-201", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"source" : [ "obj-202", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-201", 0 ],
																	"source" : [ "obj-202", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 2 ],
																	"source" : [ "obj-22", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"source" : [ "obj-32", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-35", 0 ],
																	"source" : [ "obj-32", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-19", 0 ],
																	"source" : [ "obj-35", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 0 ],
																	"source" : [ "obj-4", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"source" : [ "obj-5", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-14", 0 ],
																	"source" : [ "obj-9", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 41.0, 92.0, 168.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p align_matrix_format_strings"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 239.0, 40.0, 150.0, 60.0 ],
													"text" : "1 y\n2 x\n3 id\n4 text string"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 41.0, 131.0, 420.0, 49.0 ],
													"text" : "script newdefault $3-button $2 $1 textbutton @text $4 @textoncolor 1. 1. 1. 1. @bgcolor 0.562441 0.591367 0.533516 1. @presentation 1 @presentation_position $2 $1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-408",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 41.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-409",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 41.0, 271.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-409", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-408", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 171.5, 370.0, 95.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p make_objects"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 317.0, 272.0, 68.0, 22.0 ],
									"text" : "listfunnel 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-400",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 50.0, 317.0, 262.0, 22.0 ],
									"text" : "gate 3"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-16",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 521.0, 23.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-104",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 330.0, 513.0, 98.0, 22.0 ],
									"text" : "print instructions"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"linecount" : 11,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 258.0, 17.0, 589.0, 156.0 ],
									"text" : "ceil l2norm andalso sign ntoh32 hton32 product lt string sinh y0 gt blob2 orelse or bound progn bitand median interleave int32 atan acosh y1 list_element erfc sqrttwo butlast emptybundle lntwo assign_to_index mean tern_op oneoverpi cross length cos [] hypot decrement null_coalescing log10 acos gettimetag getmsgcount round nth if lnten mul strchar settimetag sum lambda typetags assigntobundlemember max first tan eq j0 cbrt cosh neq eval rest quickhull identity quarterpi logb gteq j1 map mtof asinh getaddresses rev rreduce assign mod tanh gamma fmod sqrt strtotime scale floattotime sin log typetags halfpi cast lgamma nfill split erf float64 join min twopi lteq clip strcmp cumsum strfind dot-op twooverpi mul_assign pi e logtene prog1 atan2 radtodeg mod_assign sort bool ilogb apply floor value div_assign sqrthalf delete nextafter expm1 abs add_assign add not div sortidx logtwoe ftom last dot increment degtorad and sub_assign bitor pow det avg aseq jn exp quote comment extrema remainder float32 asin getbundlemember strlen range sub match lreduce exists blob atanh"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-400", 1 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-410", 0 ],
									"source" : [ "obj-14", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-410", 0 ],
									"source" : [ "obj-400", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-411", 0 ],
									"source" : [ "obj-400", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-510", 0 ],
									"source" : [ "obj-400", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"order" : 0,
									"source" : [ "obj-410", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 1,
									"source" : [ "obj-410", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"order" : 0,
									"source" : [ "obj-411", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 1,
									"source" : [ "obj-411", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"order" : 0,
									"source" : [ "obj-413", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-400", 0 ],
									"order" : 1,
									"source" : [ "obj-413", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"order" : 0,
									"source" : [ "obj-510", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 1,
									"source" : [ "obj-510", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-413", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1119.0, 520.0, 46.0, 19.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p build"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-610",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 740.0, 550.0, 183.0, 19.0 ],
					"text" : "load odot-[].maxhelp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-511",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 675.0, 420.0, 168.0, 19.0 ],
					"text" : "sprintf load odot-%s.maxhelp",
					"varname" : "loader"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-330",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 10.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 10.0, 100.0, 20.0 ],
					"text" : "[]",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "0-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-332",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 35.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 35.0, 100.0, 20.0 ],
					"text" : "abs",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "1-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-334",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 60.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 60.0, 100.0, 20.0 ],
					"text" : "acos",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "2-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-336",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 85.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 85.0, 100.0, 20.0 ],
					"text" : "acosh",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "3-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-338",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 110.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 110.0, 100.0, 20.0 ],
					"text" : "add",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "4-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-340",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 135.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 135.0, 100.0, 20.0 ],
					"text" : "add_assign",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "5-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-342",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 160.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 160.0, 100.0, 20.0 ],
					"text" : "and",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "6-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-344",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 185.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 185.0, 100.0, 20.0 ],
					"text" : "andalso",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "7-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-346",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 210.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 210.0, 100.0, 20.0 ],
					"text" : "apply",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "8-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-348",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 235.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 235.0, 100.0, 20.0 ],
					"text" : "aseq",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "9-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-350",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 260.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 260.0, 100.0, 20.0 ],
					"text" : "asin",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "10-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-352",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 285.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 285.0, 100.0, 20.0 ],
					"text" : "asinh",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "11-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-354",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 310.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 310.0, 100.0, 20.0 ],
					"text" : "assign",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "12-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-356",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 335.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 335.0, 100.0, 20.0 ],
					"text" : "assign_to_index",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "13-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-358",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 360.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 360.0, 100.0, 20.0 ],
					"text" : "assigntobundlemember",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "14-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-360",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 120.0, 10.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 10.0, 100.0, 20.0 ],
					"text" : "atan",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "15-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-362",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 120.0, 35.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 35.0, 100.0, 20.0 ],
					"text" : "atan2",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "16-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-364",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 120.0, 60.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 60.0, 100.0, 20.0 ],
					"text" : "atanh",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "17-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-366",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 120.0, 85.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 85.0, 100.0, 20.0 ],
					"text" : "avg",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "18-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-368",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 120.0, 110.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 110.0, 100.0, 20.0 ],
					"text" : "bitand",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "19-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-370",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 120.0, 135.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 135.0, 100.0, 20.0 ],
					"text" : "bitor",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "20-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-372",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 120.0, 160.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 160.0, 100.0, 20.0 ],
					"text" : "blob",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "21-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-374",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 120.0, 185.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 185.0, 100.0, 20.0 ],
					"text" : "blob2",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "22-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-376",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 120.0, 210.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 210.0, 100.0, 20.0 ],
					"text" : "bool",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "23-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-378",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 120.0, 235.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 235.0, 100.0, 20.0 ],
					"text" : "bound",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "24-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-380",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 120.0, 260.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 260.0, 100.0, 20.0 ],
					"text" : "butlast",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "25-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-382",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 120.0, 285.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 285.0, 100.0, 20.0 ],
					"text" : "cast",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "26-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-384",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 120.0, 310.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 310.0, 100.0, 20.0 ],
					"text" : "cbrt",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "27-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-386",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 120.0, 335.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 335.0, 100.0, 20.0 ],
					"text" : "ceil",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "28-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-388",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 120.0, 360.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 360.0, 100.0, 20.0 ],
					"text" : "clip",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "29-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-390",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 230.0, 10.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 230.0, 10.0, 100.0, 20.0 ],
					"text" : "comment",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "30-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-392",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 230.0, 35.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 230.0, 35.0, 100.0, 20.0 ],
					"text" : "cos",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "31-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-394",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 230.0, 60.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 230.0, 60.0, 100.0, 20.0 ],
					"text" : "cosh",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "32-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-396",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 230.0, 85.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 230.0, 85.0, 100.0, 20.0 ],
					"text" : "cross",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "33-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-398",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 230.0, 110.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 230.0, 110.0, 100.0, 20.0 ],
					"text" : "cumsum",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "34-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-400",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 230.0, 135.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 230.0, 135.0, 100.0, 20.0 ],
					"text" : "decrement",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "35-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-402",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 230.0, 160.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 230.0, 160.0, 100.0, 20.0 ],
					"text" : "degtorad",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "36-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-404",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 230.0, 185.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 230.0, 185.0, 100.0, 20.0 ],
					"text" : "delete",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "37-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-406",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 230.0, 210.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 230.0, 210.0, 100.0, 20.0 ],
					"text" : "det",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "38-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-408",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 230.0, 235.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 230.0, 235.0, 100.0, 20.0 ],
					"text" : "div",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "39-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-410",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 230.0, 260.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 230.0, 260.0, 100.0, 20.0 ],
					"text" : "div_assign",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "40-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-413",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 230.0, 285.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 230.0, 285.0, 100.0, 20.0 ],
					"text" : "dot",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "41-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-415",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 230.0, 310.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 230.0, 310.0, 100.0, 20.0 ],
					"text" : "dot-op",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "42-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-417",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 230.0, 335.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 230.0, 335.0, 100.0, 20.0 ],
					"text" : "e",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "43-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-419",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 230.0, 360.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 230.0, 360.0, 100.0, 20.0 ],
					"text" : "emptybundle",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "44-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-421",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 10.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 340.0, 10.0, 100.0, 20.0 ],
					"text" : "eq",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "45-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-423",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 35.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 340.0, 35.0, 100.0, 20.0 ],
					"text" : "erf",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "46-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-425",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 60.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 340.0, 60.0, 100.0, 20.0 ],
					"text" : "erfc",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "47-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-427",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 85.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 340.0, 85.0, 100.0, 20.0 ],
					"text" : "eval",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "48-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-429",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 110.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 340.0, 110.0, 100.0, 20.0 ],
					"text" : "exists",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "49-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-431",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 135.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 340.0, 135.0, 100.0, 20.0 ],
					"text" : "exp",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "50-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-433",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 160.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 340.0, 160.0, 100.0, 20.0 ],
					"text" : "expm1",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "51-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-435",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 185.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 340.0, 185.0, 100.0, 20.0 ],
					"text" : "extrema",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "52-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-437",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 210.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 340.0, 210.0, 100.0, 20.0 ],
					"text" : "first",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "53-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-439",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 235.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 340.0, 235.0, 100.0, 20.0 ],
					"text" : "float32",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "54-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-441",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 260.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 340.0, 260.0, 100.0, 20.0 ],
					"text" : "float64",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "55-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-443",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 285.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 340.0, 285.0, 100.0, 20.0 ],
					"text" : "floattotime",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "56-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-445",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 310.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 340.0, 310.0, 100.0, 20.0 ],
					"text" : "floor",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "57-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-447",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 335.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 340.0, 335.0, 100.0, 20.0 ],
					"text" : "fmod",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "58-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-449",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 360.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 340.0, 360.0, 100.0, 20.0 ],
					"text" : "ftom",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "59-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-451",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 10.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.0, 10.0, 100.0, 20.0 ],
					"text" : "gamma",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "60-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-453",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 35.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.0, 35.0, 100.0, 20.0 ],
					"text" : "getaddresses",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "61-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-455",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 60.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.0, 60.0, 100.0, 20.0 ],
					"text" : "getbundlemember",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "62-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-457",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 85.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.0, 85.0, 100.0, 20.0 ],
					"text" : "getmsgcount",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "63-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-459",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 110.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.0, 110.0, 100.0, 20.0 ],
					"text" : "gettimetag",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "64-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-461",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 135.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.0, 135.0, 100.0, 20.0 ],
					"text" : "gt",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "65-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-463",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 160.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.0, 160.0, 100.0, 20.0 ],
					"text" : "gteq",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "66-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-465",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 185.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.0, 185.0, 100.0, 20.0 ],
					"text" : "halfpi",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "67-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-467",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 210.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.0, 210.0, 100.0, 20.0 ],
					"text" : "hton32",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "68-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-469",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 235.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.0, 235.0, 100.0, 20.0 ],
					"text" : "hypot",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "69-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-471",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 260.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.0, 260.0, 100.0, 20.0 ],
					"text" : "identity",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "70-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-473",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 285.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.0, 285.0, 100.0, 20.0 ],
					"text" : "if",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "71-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-475",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 310.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.0, 310.0, 100.0, 20.0 ],
					"text" : "ilogb",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "72-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-477",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 335.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.0, 335.0, 100.0, 20.0 ],
					"text" : "increment",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "73-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-479",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 360.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.0, 360.0, 100.0, 20.0 ],
					"text" : "int32",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "74-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-481",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 560.0, 10.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 560.0, 10.0, 100.0, 20.0 ],
					"text" : "interleave",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "75-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-483",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 560.0, 35.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 560.0, 35.0, 100.0, 20.0 ],
					"text" : "j0",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "76-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-485",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 560.0, 60.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 560.0, 60.0, 100.0, 20.0 ],
					"text" : "j1",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "77-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-487",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 560.0, 85.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 560.0, 85.0, 100.0, 20.0 ],
					"text" : "jn",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "78-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-489",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 560.0, 110.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 560.0, 110.0, 100.0, 20.0 ],
					"text" : "join",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "79-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-491",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 560.0, 135.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 560.0, 135.0, 100.0, 20.0 ],
					"text" : "l2norm",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "80-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-493",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 560.0, 160.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 560.0, 160.0, 100.0, 20.0 ],
					"text" : "lambda",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "81-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-495",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 560.0, 185.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 560.0, 185.0, 100.0, 20.0 ],
					"text" : "last",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "82-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-497",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 560.0, 210.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 560.0, 210.0, 100.0, 20.0 ],
					"text" : "length",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "83-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-499",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 560.0, 235.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 560.0, 235.0, 100.0, 20.0 ],
					"text" : "lgamma",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "84-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-501",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 560.0, 260.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 560.0, 260.0, 100.0, 20.0 ],
					"text" : "list_element",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "85-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-503",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 560.0, 285.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 560.0, 285.0, 100.0, 20.0 ],
					"text" : "lnten",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "86-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-505",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 560.0, 310.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 560.0, 310.0, 100.0, 20.0 ],
					"text" : "lntwo",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "87-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-507",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 560.0, 335.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 560.0, 335.0, 100.0, 20.0 ],
					"text" : "log",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "88-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-509",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 560.0, 360.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 560.0, 360.0, 100.0, 20.0 ],
					"text" : "log10",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "89-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-512",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 10.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 10.0, 100.0, 20.0 ],
					"text" : "logb",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "90-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-514",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 35.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 35.0, 100.0, 20.0 ],
					"text" : "logtene",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "91-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-516",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 60.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 60.0, 100.0, 20.0 ],
					"text" : "logtwoe",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "92-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-518",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 85.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 85.0, 100.0, 20.0 ],
					"text" : "lreduce",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "93-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-520",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 110.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 110.0, 100.0, 20.0 ],
					"text" : "lt",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "94-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-522",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 135.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 135.0, 100.0, 20.0 ],
					"text" : "lteq",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "95-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-524",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 160.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 160.0, 100.0, 20.0 ],
					"text" : "map",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "96-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-526",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 185.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 185.0, 100.0, 20.0 ],
					"text" : "match",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "97-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-528",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 210.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 210.0, 100.0, 20.0 ],
					"text" : "max",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "98-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-530",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 235.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 235.0, 100.0, 20.0 ],
					"text" : "mean",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "99-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-532",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 260.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 260.0, 100.0, 20.0 ],
					"text" : "median",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "100-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-534",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 285.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 285.0, 100.0, 20.0 ],
					"text" : "min",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "101-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-536",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 310.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 310.0, 100.0, 20.0 ],
					"text" : "mod",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "102-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-538",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 335.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 335.0, 100.0, 20.0 ],
					"text" : "mod_assign",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "103-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-540",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 360.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 360.0, 100.0, 20.0 ],
					"text" : "mtof",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "104-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-542",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 780.0, 10.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 780.0, 10.0, 100.0, 20.0 ],
					"text" : "mul",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "105-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-544",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 780.0, 35.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 780.0, 35.0, 100.0, 20.0 ],
					"text" : "mul_assign",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "106-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-546",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 780.0, 60.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 780.0, 60.0, 100.0, 20.0 ],
					"text" : "neq",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "107-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-548",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 780.0, 85.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 780.0, 85.0, 100.0, 20.0 ],
					"text" : "nextafter",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "108-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-550",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 780.0, 110.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 780.0, 110.0, 100.0, 20.0 ],
					"text" : "nfill",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "109-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-552",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 780.0, 135.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 780.0, 135.0, 100.0, 20.0 ],
					"text" : "not",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "110-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-554",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 780.0, 160.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 780.0, 160.0, 100.0, 20.0 ],
					"text" : "nth",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "111-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-556",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 780.0, 185.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 780.0, 185.0, 100.0, 20.0 ],
					"text" : "ntoh32",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "112-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-558",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 780.0, 210.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 780.0, 210.0, 100.0, 20.0 ],
					"text" : "null_coalescing",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "113-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-560",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 780.0, 235.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 780.0, 235.0, 100.0, 20.0 ],
					"text" : "oneoverpi",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "114-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-562",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 780.0, 260.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 780.0, 260.0, 100.0, 20.0 ],
					"text" : "or",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "115-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-564",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 780.0, 285.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 780.0, 285.0, 100.0, 20.0 ],
					"text" : "orelse",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "116-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-566",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 780.0, 310.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 780.0, 310.0, 100.0, 20.0 ],
					"text" : "pi",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "117-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-568",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 780.0, 335.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 780.0, 335.0, 100.0, 20.0 ],
					"text" : "pow",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "118-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-570",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 780.0, 360.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 780.0, 360.0, 100.0, 20.0 ],
					"text" : "product",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "119-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-572",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 890.0, 10.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 890.0, 10.0, 100.0, 20.0 ],
					"text" : "prog1",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "120-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-574",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 890.0, 35.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 890.0, 35.0, 100.0, 20.0 ],
					"text" : "progn",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "121-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-576",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 890.0, 60.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 890.0, 60.0, 100.0, 20.0 ],
					"text" : "quarterpi",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "122-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-578",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 890.0, 85.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 890.0, 85.0, 100.0, 20.0 ],
					"text" : "quickhull",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "123-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-580",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 890.0, 110.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 890.0, 110.0, 100.0, 20.0 ],
					"text" : "quote",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "124-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-582",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 890.0, 135.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 890.0, 135.0, 100.0, 20.0 ],
					"text" : "radtodeg",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "125-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-584",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 890.0, 160.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 890.0, 160.0, 100.0, 20.0 ],
					"text" : "range",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "126-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-586",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 890.0, 185.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 890.0, 185.0, 100.0, 20.0 ],
					"text" : "remainder",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "127-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-588",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 890.0, 210.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 890.0, 210.0, 100.0, 20.0 ],
					"text" : "rest",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "128-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-590",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 890.0, 235.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 890.0, 235.0, 100.0, 20.0 ],
					"text" : "rev",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "129-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-592",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 890.0, 260.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 890.0, 260.0, 100.0, 20.0 ],
					"text" : "round",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "130-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-594",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 890.0, 285.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 890.0, 285.0, 100.0, 20.0 ],
					"text" : "rreduce",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "131-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-596",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 890.0, 310.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 890.0, 310.0, 100.0, 20.0 ],
					"text" : "scale",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "132-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-598",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 890.0, 335.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 890.0, 335.0, 100.0, 20.0 ],
					"text" : "settimetag",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "133-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-600",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 890.0, 360.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 890.0, 360.0, 100.0, 20.0 ],
					"text" : "sign",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "134-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-602",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1000.0, 10.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1000.0, 10.0, 100.0, 20.0 ],
					"text" : "sin",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "135-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-604",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1000.0, 35.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1000.0, 35.0, 100.0, 20.0 ],
					"text" : "sinh",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "136-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-606",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1000.0, 60.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1000.0, 60.0, 100.0, 20.0 ],
					"text" : "sort",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "137-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-608",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1000.0, 85.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1000.0, 85.0, 100.0, 20.0 ],
					"text" : "sortidx",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "138-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-614",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1000.0, 110.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1000.0, 110.0, 100.0, 20.0 ],
					"text" : "split",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "139-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-616",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1000.0, 135.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1000.0, 135.0, 100.0, 20.0 ],
					"text" : "sqrt",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "140-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-618",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1000.0, 160.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1000.0, 160.0, 100.0, 20.0 ],
					"text" : "sqrthalf",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "141-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-620",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1000.0, 185.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1000.0, 185.0, 100.0, 20.0 ],
					"text" : "sqrttwo",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "142-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-622",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1000.0, 210.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1000.0, 210.0, 100.0, 20.0 ],
					"text" : "strchar",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "143-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-624",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1000.0, 235.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1000.0, 235.0, 100.0, 20.0 ],
					"text" : "strcmp",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "144-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-626",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1000.0, 260.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1000.0, 260.0, 100.0, 20.0 ],
					"text" : "strfind",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "145-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-628",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1000.0, 285.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1000.0, 285.0, 100.0, 20.0 ],
					"text" : "string",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "146-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-630",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1000.0, 310.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1000.0, 310.0, 100.0, 20.0 ],
					"text" : "strlen",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "147-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-632",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1000.0, 335.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1000.0, 335.0, 100.0, 20.0 ],
					"text" : "strtotime",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "148-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-634",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1000.0, 360.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1000.0, 360.0, 100.0, 20.0 ],
					"text" : "sub",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "149-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-636",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1110.0, 10.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1110.0, 10.0, 100.0, 20.0 ],
					"text" : "sub_assign",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-638",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1110.0, 35.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1110.0, 35.0, 100.0, 20.0 ],
					"text" : "sum",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "151-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-640",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1110.0, 60.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1110.0, 60.0, 100.0, 20.0 ],
					"text" : "tan",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "152-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-642",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1110.0, 85.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1110.0, 85.0, 100.0, 20.0 ],
					"text" : "tanh",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "153-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-644",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1110.0, 110.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1110.0, 110.0, 100.0, 20.0 ],
					"text" : "tern_op",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "154-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-646",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1110.0, 135.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1110.0, 135.0, 100.0, 20.0 ],
					"text" : "twooverpi",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "155-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-648",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1110.0, 160.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1110.0, 160.0, 100.0, 20.0 ],
					"text" : "twopi",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "156-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-650",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1110.0, 185.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1110.0, 185.0, 100.0, 20.0 ],
					"text" : "typetags",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "157-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-652",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1110.0, 210.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1110.0, 210.0, 100.0, 20.0 ],
					"text" : "typetags",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "158-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-654",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1110.0, 235.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1110.0, 235.0, 100.0, 20.0 ],
					"text" : "value",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "159-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-656",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1110.0, 260.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1110.0, 260.0, 100.0, 20.0 ],
					"text" : "y0",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "160-button"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-658",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1110.0, 285.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1110.0, 285.0, 100.0, 20.0 ],
					"text" : "y1",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "161-button"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-612", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-330", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-332", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-334", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-336", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-338", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-340", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-342", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-344", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-346", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-348", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-350", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-352", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-354", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-356", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-358", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-360", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-362", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-364", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-366", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-368", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-370", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-372", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-374", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-376", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-378", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-380", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-382", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-384", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-386", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-388", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-390", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-392", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-394", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-396", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-398", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-400", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-402", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-404", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-406", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-408", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-410", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-612", 0 ],
					"source" : [ "obj-412", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-413", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-415", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-417", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-419", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-421", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-423", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-425", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-427", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-429", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-431", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-433", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-435", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-437", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-439", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-441", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-443", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-445", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-447", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-449", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-451", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-453", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-455", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-457", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-459", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-461", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-463", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-465", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-467", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-469", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-471", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-473", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-475", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-477", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-479", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-481", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-483", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-485", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-487", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-489", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-491", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-493", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-495", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-497", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-499", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-501", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-503", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-505", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-507", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-509", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-610", 1 ],
					"order" : 0,
					"source" : [ "obj-511", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-611", 0 ],
					"order" : 1,
					"source" : [ "obj-511", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-512", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-514", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-516", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-518", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-520", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-522", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-524", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-526", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-528", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-530", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-532", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-534", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-536", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-538", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-540", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-542", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-544", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-546", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-548", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-550", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-552", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-554", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-556", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-558", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-560", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-562", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-564", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-566", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-568", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-570", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-572", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-574", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-576", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-578", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-580", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-582", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-584", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-586", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-588", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-590", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-592", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-594", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-596", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-598", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-600", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-602", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-604", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-606", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-608", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-612", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-613", 0 ],
					"source" : [ "obj-612", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-614", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-616", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-618", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-620", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-622", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-624", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-626", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-628", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-630", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-632", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-634", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-636", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-638", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-640", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-642", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-644", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-646", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-648", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-650", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-652", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-654", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-656", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-658", 1 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ]
	}

}
