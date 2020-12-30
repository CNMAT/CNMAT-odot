{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 8,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 14.0, 63.0, 1008.0, 694.0 ],
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
					"fontsize" : 11.0,
					"id" : "obj-61",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 670.0, 4339.0, 250.0, 105.0 ],
					"text" : "int IsPrime(int number) {\n    int i;\n    for (i=2; i<number; i++) {\n        if (number % i == 0 && i != number) return 0;\n    }\n    return 1;\n}\n"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-55",
					"linecount" : 4,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 94.0, 4260.0, 341.0, 68.0 ],
					"text" : "if(/state = 0, \n  /print = \"prime\", \n  /print = \"non-prime\"\n)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-32",
					"linecount" : 9,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 470.0, 4157.0, 242.0, 131.0 ],
					"text" : "/loop = aseq(2, /num - 1),\n/test = null,\nmap(\n  lambda([i], \n    if(/num % i == 0 && i != /num, \n      /test = 0\n    )\n  ), /loop\n)"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.51 ],
					"fontface" : 2,
					"fontsize" : 13.0,
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 89.0, 3425.0, 822.0, 21.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 721.0, 243.0, 1152.0, 665.0 ],
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
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 104.0, 1172.0, 741.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 418.5, 87.0, 66.0, 24.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 11.0,
													"id" : "obj-23",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 944.0, 417.5, 138.0, 56.0 ],
													"text" : "similar to ex4, but defines most of function first rather than naming the squares function"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 11.0,
													"id" : "obj-21",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 599.0, 416.0, 26.0, 19.0 ],
													"text" : "ex5"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 11.0,
													"id" : "obj-22",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 599.0, 234.5, 26.0, 19.0 ],
													"text" : "ex4"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 11.0,
													"id" : "obj-18",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 42.0, 571.0, 26.0, 19.0 ],
													"text" : "ex3"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 11.0,
													"id" : "obj-15",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 42.0, 416.0, 26.0, 19.0 ],
													"text" : "ex2"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 11.0,
													"id" : "obj-14",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 42.0, 234.5, 26.0, 19.0 ],
													"text" : "ex1"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 11.0,
													"id" : "obj-13",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1019.0, 234.5, 138.0, 43.0 ],
													"text" : "similar to ex2, but saves function application for last"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 11.0,
													"id" : "obj-11",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 285.0, 578.5, 138.0, 43.0 ],
													"text" : "removes need for definition bc built-in func present"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 11.0,
													"id" : "obj-10",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 450.0, 416.0, 138.0, 31.0 ],
													"text" : "clear definitions and intention; a bit slimmer"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 11.0,
													"id" : "obj-9",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 387.0, 242.5, 138.0, 43.0 ],
													"text" : "verbose, but shows clearly how to divide a function up into components"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-39",
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 418.5, 115.0, 201.0, 24.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 108, 105, 115, 116, 0, 0, 0, 44, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 4, 0, 0, 0, 5 ],
													"saved_bundle_length" : 56,
													"text" : "/list : [1, 2, 3, 4, 5]"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.490196078431373, 0.701960784313725, 0.392156862745098, 1.0 ],
													"id" : "obj-45",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 1,
															"revision" : 8,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 59.0, 104.0, 633.0, 618.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-8",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 344.0, 236.0, 150.0, 22.0 ],
																	"text" : "\"object\"-based"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-6",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "FullPacket" ],
																	"patching_rect" : [ 38.0, 506.0, 114.0, 24.0 ],
																	"text" : "o.select /squares"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"fontsize" : 12.0,
																	"id" : "obj-4",
																	"maxclass" : "o.display",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 38.0, 539.0, 255.0, 34.0 ],
																	"text" : "/squares : [2707., 518., 53.]"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"fontsize" : 12.0,
																	"id" : "obj-5",
																	"linecount" : 2,
																	"maxclass" : "o.expr.codebox",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "FullPacket", "FullPacket" ],
																	"patching_rect" : [ 38.0, 449.0, 537.0, 46.0 ],
																	"text" : "/list = getaddresses(),\n\t/squares = map(lambda([p], sqrt(pow(p./x, 2)) + pow(p./y, 2)), /list)"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 180.0, 376.0, 180.0, 22.0 ],
																	"text" : "operation on multiple points"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-2",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 180.0, 53.0, 148.0, 22.0 ],
																	"text" : "operation on one point"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"fontsize" : 12.0,
																	"id" : "obj-38",
																	"linecount" : 12,
																	"maxclass" : "o.compose",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 38.0, 259.0, 121.0, 174.0 ],
																	"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 47, 112, 47, 49, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 3, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 52, 0, 0, 0, 64, 47, 112, 47, 50, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 34, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 22, 0, 0, 0, 64, 47, 112, 47, 51, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 44, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 3 ],
																	"saved_bundle_length" : 220,
																	"text" : "/p/1 : {\n\t/x : 3,\n\t/y : 52\n},\n/p/2 : {\n\t/x : 34,\n\t/y : 22\n},\n/p/3 : {\n\t/x : 44,\n\t/y : 3\n}"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"fontsize" : 12.0,
																	"id" : "obj-40",
																	"maxclass" : "o.display",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 38.0, 140.0, 126.0, 34.0 ]
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"fontsize" : 12.0,
																	"id" : "obj-39",
																	"linecount" : 4,
																	"maxclass" : "o.compose",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 38.0, 27.0, 71.0, 65.0 ],
																	"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 47, 112, 0, 0, 44, 46, 0, 0, 0, 0, 0, 48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 3, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 52 ],
																	"saved_bundle_length" : 80,
																	"text" : "/p : {\n\t/x : 3,\n\t/y : 52\n}"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"fontsize" : 12.0,
																	"id" : "obj-37",
																	"maxclass" : "o.expr.codebox",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "FullPacket", "FullPacket" ],
																	"patching_rect" : [ 38.0, 102.0, 537.0, 32.0 ],
																	"text" : "\t/squares = apply(lambda([p], sqrt(pow(p./x, 2)) + pow(p./y, 2)), /p)"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-40", 0 ],
																	"source" : [ "obj-37", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 0 ],
																	"source" : [ "obj-38", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-37", 0 ],
																	"source" : [ "obj-39", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-6", 0 ],
																	"source" : [ "obj-5", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"source" : [ "obj-6", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 133.0, 91.0, 93.0, 24.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"fontsize" : 14.0,
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p point-based"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 2,
													"fontsize" : 13.0,
													"id" : "obj-33",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 42.0, 30.0, 328.0, 50.0 ],
													"text" : "Square root of the sum of the squares:  this is kind of a weird example because to do the calculation requested we already need more than one element.  "
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-31",
													"linecount" : 4,
													"maxclass" : "o.display",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 70.0, 315.0, 344.0, 75.0 ],
													"text" : "/list : [1, 2, 3, 4, 5],\n/squares : [1., 4., 9., 16., 25.],\n/func/sss : \"lambda([s], sqrt(sum(s)))\",\n/ans : 7.4162"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-20",
													"linecount" : 3,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 70.0, 234.5, 299.0, 59.0 ],
													"text" : "/squares = apply(pow, /list, 2), \n/func/sss = \"lambda([s], sqrt(sum(s)))\",\n/ans = /func/sss(/squares)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 1,
															"revision" : 8,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-6",
																	"linecount" : 3,
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 307.0, 100.0, 215.0, 53.0 ],
																	"text" : "this would be a tight example if it returned a list of two elements\n :P "
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"fontsize" : 12.0,
																	"id" : "obj-1",
																	"maxclass" : "o.display",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 253.0, 363.0, 34.0 ]
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"fontsize" : 12.0,
																	"id" : "obj-2",
																	"linecount" : 2,
																	"maxclass" : "o.compose",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 115.0, 215.0, 38.0 ],
																	"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 108, 105, 115, 116, 47, 49, 0, 44, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 4, 0, 0, 0, 5, 0, 0, 0, 28, 47, 108, 105, 115, 116, 47, 50, 0, 44, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 6, 0, 0, 0, 7 ],
																	"saved_bundle_length" : 88,
																	"text" : "/list/1 : [1, 2, 3, 4, 5],\n/list/2 : [5, 6, 7]"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"fontsize" : 12.0,
																	"id" : "obj-3",
																	"linecount" : 3,
																	"maxclass" : "o.expr.codebox",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "FullPacket", "FullPacket" ],
																	"patching_rect" : [ 50.0, 174.0, 392.0, 59.0 ],
																	"text" : "/list/master = [/list/1, /list/2],\n\t/squares = map(lambda([l], pow(l, 2)), /list/master),\n/sss = sqrt(sum(/squares))"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 42.0, 91.0, 85.0, 24.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"fontsize" : 14.0,
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p multi-dim?"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-7",
													"linecount" : 3,
													"maxclass" : "o.display",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 632.0, 483.0, 344.0, 61.0 ],
													"text" : "/list : [1, 2, 3, 4, 5],\n/func/sss : \"lambda([s], sqrt(sum(s)))\",\n/ans : 7.4162"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-4",
													"linecount" : 2,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 632.0, 416.0, 299.0, 46.0 ],
													"text" : "/func/sss = \"lambda([s], sqrt(sum(s)))\",\n/ans = /func/sss(apply(pow, /list, 2))"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-12",
													"linecount" : 3,
													"maxclass" : "o.display",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 632.0, 315.0, 270.0, 61.0 ],
													"text" : "/list : [1, 2, 3, 4, 5],\n/squares : \"lambda([l], pow(l, 2))\",\n/sss : 7.4162"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-17",
													"linecount" : 2,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 632.0, 234.5, 371.0, 46.0 ],
													"text" : "\t/squares = \"lambda([l], pow(l, 2))\",\n/sss = sqrt(sum(apply(/squares, /list)))"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-40",
													"linecount" : 3,
													"maxclass" : "o.display",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 70.0, 483.0, 255.0, 61.0 ],
													"text" : "/list : [1, 2, 3, 4, 5],\n/squares : [1., 4., 9., 16., 25.],\n/sss : 7.4162"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-37",
													"linecount" : 2,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 70.0, 416.0, 371.0, 46.0 ],
													"text" : "\t/squares = apply(lambda([l], pow(l, 2)), /list),\n/sss = sqrt(sum(/squares))"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-36",
													"linecount" : 3,
													"maxclass" : "o.display",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 70.0, 645.0, 255.0, 61.0 ],
													"text" : "/list : [1, 2, 3, 4, 5],\n/squares : [1., 4., 9., 16., 25.],\n/sss : 7.4162"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-29",
													"linecount" : 2,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 70.0, 571.0, 198.0, 46.0 ],
													"text" : "\t/squares = pow(/list, 2),\n/sss = sqrt(sum(/squares))"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"order" : 1,
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"order" : 4,
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"order" : 2,
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"order" : 3,
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"order" : 0,
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 567.0, 80.0, 52.0, 24.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"fontsize" : 14.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p more"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"linecount" : 23,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 226.0, 1120.0, 382.0 ],
									"text" : "that discussion was pertaining to the map() function, and whether to use lambda or some builtin function, iirc\n\nmap is sort of inherently complicated because it takes a function and then does this sequential set of operations on the other arguments to apply the function to them, and i think that's confusing for people who have less experience with \"higher order functions\" like map\n\nso, what i was suggesting was to take a step back from using map to apply a function many times, and just think of applying the same function one time\n\njust get map out of the picture, and focus on the operation you want to do, rather than the complexities of map's machinery that does many applications\n\nso you’re touching on how to consider the design\nyeah, i guess so\n\nso, if you need to do the square root of the sum of the squares, which is a pretty normal thing to have to do, you just forget about map for a second, and write down the expression: sqrt(pow(x1, 2) + pow(x2, 2))\n\nis there a builtin function that does that? idk, maybe, maybe not, but i don't have time to look for it\nok, how do i write that with apply?\n\n`apply(lambda([x1, x2], sqrt(pow(x1, 2) + pow(x2, 2))), /x1, /x2)`\n\n\nyea; I like this suggestion on backing up from making the thing handle a list and just looking at whether or not it’s formed properly for 1 elem\n\n"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 15.0, 212.0, 22.0 ],
									"text" : "tutorial 08"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 78.0, 414.0, 22.0 ],
									"text" : "is a function that does this process for the first element of any list "
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 56.0, 246.0, 22.0 ],
									"text" : "is there a function that does it for you?"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 184.0, 200.0, 22.0 ],
									"text" : "map(delete, [/foo, /foo1, /foo2])"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 152.0, 194.0, 22.0 ],
									"text" : "delete = lambda([], /whatever)"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 566.0, 111.0, 51.0, 24.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"fontsize" : 14.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p to do"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 94.0, 4024.0, 29.5, 24.0 ],
					"text" : "11"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-78",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 94.0, 4057.0, 49.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 94.0, 4086.0, 79.0, 23.0 ],
					"text" : "o.pack /num"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-6",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 98.0, 3963.0, 271.0, 35.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 47, 109, 121, 108, 105, 115, 116, 0, 44, 105, 105, 105, 105, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 4, 0, 0, 0, 5, 0, 0, 0, 6, 0, 0, 0, 7, 0, 0, 0, 8, 0, 0, 0, 9, 0, 0, 0, 12, 47, 118, 0, 0, 44, 105, 0, 0, 0, 0, 0, 4 ],
					"saved_bundle_length" : 92,
					"text" : "/mylist : [1, 2, 3, 4, 5, 6, 7, 8, 9],\n/v : 4"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-9",
					"linecount" : 4,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 94.0, 4339.0, 265.0, 70.0 ],
					"text" : "/num : 11,\n/loop : [2, 3, 4, 5],\n/state : 0,\n/print : \"non-prime\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-20",
					"linecount" : 9,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 94.0, 4123.0, 341.0, 131.0 ],
					"text" : "/loop = aseq(2, /num / 2),\n/state = 0,  \napply(\n  lambda([i], \n    if( (/num % i) == 0, \n      progn(/state = 1, break)\n    )\n  ), /loop\n)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 529.0, 4109.0, 351.0, 20.0 ],
					"text" : "filter a list"
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
					"patching_rect" : [ 784.0, 5967.0, 195.0, 28.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 13.0,
					"id" : "obj-2",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 65.0, 2095.0, 868.0, 65.0 ],
					"text" : "A quick word on [a] vs /a:\nIf you have defined a variable 'a' for your lambda function, its scope is private to that function block and cannot exist anywhere outside of it.  Conversely, if you have defined an address '/a' somewhere in your expression, passed it in, etc., that address is global to the codebox instance.  It can be redefined and mutated, but it does not have the same private scope that 'a' does.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 367.0, 5981.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 143.0, 5046.5, 177.0, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 257.0, 4751.5, 63.0, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 129.0, 4543.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-98",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 61.0, 5065.5, 131.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 61.0, 5035.0, 63.0, 22.0 ],
					"text" : "o.select /x"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-92",
					"items" : [ "/scaleoffset", ",", "/invert", ",", "/scalepi" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 129.0, 4582.0, 89.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 231.0, 4423.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 61.0, 4622.0, 122.0, 22.0 ],
					"text" : "o.pack /input /func"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-87",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 61.0, 4582.0, 52.0, 22.0 ],
					"style" : "default"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 61.0, 4743.0, 189.0, 22.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-59",
					"linecount" : 39,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 325.0, 4528.0, 521.0, 529.0 ],
					"text" : "Let's look at a final example involving apply() where we integrate some of the ideas seen above into a small library of user functions.\n\nWe'll give our library a specific address \"/return\", which we can use to name the generated address that we get back from the functions being applied.  \n\nYou can see what is happening in each of the functions by reading the lambda definitions in the [o.compose] box carefully.  Note that when the function runs, it will make an assignment with assign().  The result of the lambda function's calculation is then assigned to this argument's value.  Each quoted lambda definition has two arguments:  \"c\" and \"i\".  \"c\" represents the value that we want to transform, and \"i\" represents the name we use for the returned value.  This works because we are using the value of \"i\" as the first argument to assign() in the body of the lambda function definition.  It's worth noting here that we could just as easily have implemented this lambda() in the [o.expr.codebox], but that would not allow for the selection we are interested in here.\n\nNote that the two critical components are already in place:\n\n1. definitions for our functions (in the [o.compose] box above, and \n2. an initial function for selection (seen in the [umenu])\n\nLet's review what happens when we make a selection with [umenu] and input a value from the number box.\n\n- the pre-formatted bundle containing /input and /func are blended with the pre-formatted bundle containing our function definitions, and these are sent to [o.expr.codebox]\n\n- we define /return as \"/x\"\n\n- we call apply() with 3 arguments:  \n\n     1. the value of the function name\n     2. the /input, and \n     3. the return name to use\n\n- apply() applies the function we have chosen with the arguments given.  The input is processed according to which function we chose in the [umenu], and the result is assigned to the name \"/x\".\n\n- at the bottom, we select only \"/x\" with [o.select]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-60",
					"linecount" : 3,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 231.0, 4449.0, 403.0, 48.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 47, 115, 99, 97, 108, 101, 111, 102, 102, 115, 101, 116, 0, 0, 0, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 99, 44, 32, 105, 93, 44, 32, 97, 115, 115, 105, 103, 110, 40, 105, 44, 32, 99, 32, 42, 32, 48, 46, 53, 32, 43, 32, 48, 46, 53, 41, 41, 0, 0, 0, 0, 0, 0, 0, 48, 47, 105, 110, 118, 101, 114, 116, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 99, 44, 32, 105, 93, 44, 32, 97, 115, 115, 105, 103, 110, 40, 105, 44, 32, 32, 99, 32, 42, 32, 45, 49, 46, 41, 41, 0, 0, 0, 0, 60, 47, 115, 99, 97, 108, 101, 112, 105, 0, 0, 0, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 99, 44, 32, 105, 93, 44, 32, 97, 115, 115, 105, 103, 110, 40, 105, 44, 32, 32, 50, 32, 42, 32, 112, 105, 40, 41, 32, 42, 32, 99, 41, 41, 0, 0, 0, 0 ],
					"saved_bundle_length" : 200,
					"text" : "/scaleoffset : \"lambda([c, i], assign(i, c * 0.5 + 0.5))\",\n/invert : \"lambda([c, i], assign(i,  c * -1.))\",\n/scalepi : \"lambda([c, i], assign(i,  2 * pi() * c))\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-66",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 61.0, 4894.0, 248.0, 43.0 ],
					"text" : "/return = \"/x\",\napply(value(/func), /input, /return)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 546.0, 3673.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 470.0, 3755.0, 54.0, 22.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 470.0, 3593.0, 95.0, 22.0 ],
					"text" : "o.linear_ramp /c"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-13",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 546.0, 3710.0, 252.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 109, 121, 102, 117, 110, 99, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 99, 93, 44, 32, 47, 105, 32, 61, 32, 99, 32, 42, 32, 50, 41, 0 ],
					"saved_bundle_length" : 56,
					"text" : "/myfunc : \"lambda([c], /i = c * 2)\""
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-83",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 519.0, 5843.0, 297.0, 33.0 ],
					"text" : "Here is one last example illustrating the div operator.\nCan you figure out what is happening?"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-82",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.0, 5405.0, 348.0, 127.0 ],
					"text" : "rreduce() is precisely the opposite.  It will reduce a list of values starting from the right side of the list and working to the left.  \n\nIn the example below, the operation is again subtraction.  \n\nWe start with the first two values on the right:\n3 is subtracted from 4, resulting in 1.\n2 is then subtracted from 1, resulting in -1.  \n1 is then subtracted from -1, resulting in -2 (the final result)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-81",
					"linecount" : 10,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 61.0, 5397.5, 367.0, 141.0 ],
					"text" : "lreduce() will reduce a list of values starting from the left side of the list and working to the right.  The accumulated result is calculated until there is nothing remaining in the list.\n\nIn the example below, the operation is defined as subtraction.  \n\nWe start with the first two values on the left:\n2 is subtracted from 1, resulting in -1.\n-3 is then subtracted from -1, resulting in -4.  \n4 is then subtracted from -4, resulting in -8 (the final result)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-80",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 258.0, 5218.0, 495.0, 137.0 ],
					"text" : "map() and apply() are higher order functions: functions that take other functions as arguments.  \nLet's look at two other higher order functions included in the expression language, specifically lreduce(), rreduce().\n\nBoth functions require an operation to be specified as the first argument.  \nThis operation will most commonly be one of the following:  sub (subtraction), add (addition), div (division), or mul (multiplication).\nThat being said, we can reduce() a list with any operation which requires two args.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-14",
					"linecount" : 17,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 72.0, 3666.0, 351.0, 234.0 ],
					"text" : "Here's a similar example, but with a slight change to expand the options in the output bundle.  \n\nInstead of defining the function within the [o.expr.codebox], we define it in [o.compose].  This allows the user to specify exactly what the function does before it ever reaches the codebox.  We might want to change the function from calculating celsius from an input fahrenheit, to doing something completely different.\n\nIt might also be advantageous to have a list of functions that get called upon, depending on what we send in.  This idea of sending data to be evaluated along with a description of the function itself is a powerful way to make a patch more dynamic and less subject to user editing.\n\nTry clicking the two [o.compose] boxes to see the difference in the way the input gets processed."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-7",
					"linecount" : 17,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 508.0, 3134.0, 340.0, 253.0 ],
					"text" : "Let's try taking this same function and wrapping it with our own name.  We'll call the function /f2c in this example, since we're converting fahrenheit to celsius.  \n\nThe first step is assigning a string to the address \"/f2c\".\nThis string is literally everything we would do with the function if we called it in-place, except one detail:  We surround it in quotes.  You can think of this as a function definition, although technically it's only a string until it gets applied.\n\nWe apply this function by using the address in-place – as in /f2c(<our input>) – which calls apply() behind the scenes.  \n\nIn this case, we'll use the input of /c that we pass in from a float in Max."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-52",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 505.0, 3637.0, 337.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 47, 109, 121, 102, 117, 110, 99, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 99, 93, 44, 32, 47, 102, 32, 61, 32, 40, 57, 46, 48, 32, 47, 32, 53, 41, 32, 42, 32, 99, 32, 43, 32, 51, 50, 41, 0, 0, 0, 0 ],
					"saved_bundle_length" : 72,
					"text" : "/myfunc : \"lambda([c], /f = (9.0 / 5) * c + 32)\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-35",
					"linecount" : 3,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 470.0, 3910.0, 348.0, 58.0 ],
					"text" : "/c : 0.6,\n/myfunc : \"lambda([c], /i = c * 2)\",\n/i : 1.2"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-51",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 470.0, 3796.0, 83.0, 32.0 ],
					"text" : "/myfunc(/c)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-27",
					"linecount" : 16,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 69.0, 2816.0, 367.0, 239.0 ],
					"text" : "aseq() and map():\n\nNote the use of aseq() here to generate a list of indices to be used in function mapping.\n\nThe first calculation is done with index 0 from the arithmetic sequence we generate, which is zero (0).\nIt translates to:  /c[[0]] = (5.0 / 9) * (/f[[0]] - 32)\nThe value from /f that is used is 100\n\nThe second calculation is done with index 1 from the arithmetic sequence, which is one (1).\nIt translates to: /c[[1]] = (5.0 / 9) * (/f[[1]] - 32)\nthe value from /f that is used is 92.4\n\n...and so on..."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-1",
					"linecount" : 12,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 69.0, 2619.0, 374.0, 181.0 ],
					"text" : "Let's modify this same function to accept and operate on list of values.  So this time, we'll call map() instead of apply()\n\nWe'll call nfill() to generate a list that is the same size as /f, and similarly to the example above, we'll call map() inplace rather than assigning it to anything.  This form may read more like a traditional for() loop.\n\nJust to review, when we call map, we do so as:\n\nmap( function( [arg1, arg2, arg3, ...], function-expression ), mapArg1, mapArg2"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-64",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 501.0, 2675.0, 195.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 102, 0, 0, 44, 105, 100, 105, 105, 0, 0, 0, 0, 0, 0, 100, 64, 87, 25, -103, -103, -103, -103, -102, 0, 0, 0, 68, 0, 0, 0, 99 ],
					"saved_bundle_length" : 52,
					"text" : "/f : [100, 92.4, 68, 99]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-65",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 501.0, 2921.0, 330.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-67",
					"linecount" : 7,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 501.0, 2756.0, 244.0, 106.0 ],
					"text" : "/c = nfill(length(/f), 0),\nmap(\n  lambda([f, i], \n    /c[[i]] = (5.0 / 9) * (f - 32)\n  ), \n  /f, aseq(0, length(/f) - 1)\n)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-75",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 501.0, 2350.0, 402.0, 108.0 ],
					"text" : "Here's slightly different example.  \n\nIn this case we'll calculate the celsius value from a value input in fahrenheit.  \n\nNotice that we don't have to use the return value if we perform assignment from within the function body."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 12.0,
					"id" : "obj-74",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 723.0, 1823.5, 214.0, 47.0 ],
					"text" : "Since the bundle is unchanged so far, let's assign the result, and watch for differences..."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubblepoint" : 0.69,
					"bubbleside" : 3,
					"bubbletextmargin" : 15,
					"bubbleusescolors" : 1,
					"fontsize" : 13.0,
					"id" : "obj-73",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 69.0, 1846.5, 345.0, 132.0 ],
					"text" : "Okay, this makes more sense.\nNow we can see that the result of the function application was bound to an address \"/result\", and that the comparison of the two values (\"/sphere\" and \"/cylinder\") is false.  \n\nWhich is of course what we would expect."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-72",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 458.0, 1917.5, 369.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-63",
					"linecount" : 5,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 458.0, 1805.5, 215.0, 86.0 ],
					"text" : "/result = apply(\n  lambda([a, b], \n    a == b\n  ), /shapes[[0]], /shapes[[1]]\n)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 12.0,
					"id" : "obj-62",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 723.0, 1554.0, 227.0, 127.0 ],
					"text" : "Click the [o.compose] box above.  \nWhat went wrong?\n\nOur function was applied, but we don't see anything new in the bundle.  We did not assign it to anything.  \n\nUntil we store the result somewhere, we will not see it appear in the bundle."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-54",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 458.0, 1710.5, 369.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-38",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 458.0, 1483.5, 351.0, 35.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 47, 115, 104, 97, 112, 101, 115, 0, 44, 115, 115, 115, 0, 0, 0, 0, 47, 115, 112, 104, 101, 114, 101, 0, 47, 99, 121, 108, 105, 110, 100, 101, 114, 0, 0, 0, 47, 115, 113, 117, 97, 114, 101, 0, 0, 0, 0, 52, 47, 112, 114, 111, 112, 101, 114, 116, 105, 101, 115, 0, 44, 115, 115, 115, 0, 0, 0, 0, 114, 111, 117, 110, 100, 0, 0, 0, 116, 117, 98, 117, 108, 97, 114, 0, 112, 114, 111, 112, 111, 114, 116, 105, 111, 110, 97, 108, 0, 0, 0, 0 ],
					"saved_bundle_length" : 120,
					"text" : "/shapes : [\"/sphere\", \"/cylinder\", \"/square\"],\n/properties : [\"round\", \"tubular\", \"proportional\"]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-44",
					"linecount" : 5,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 458.0, 1574.5, 215.0, 86.0 ],
					"text" : "apply(\n  lambda([a, b], \n    a == b\n  ), /shapes[[0]], /shapes[[1]]\n)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-36",
					"linecount" : 21,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 49.0, 1463.0, 371.0, 311.0 ],
					"text" : "Let's make our own function for apply(), and apply it.\nThere is more than one way to type this, but let's start by examining a special function called \"lambda\".\n\nlambda() defines an anonymous function, a function written inplace that has no function definition.  It's the way in ODOT to abstract some expressions from the rest of our code, without giving it a name.  lambda() takes arguments, similarly to all other functions, but we define its arguments with brackets.  The values inside of these brackets do not require leading slashes as other addresses in ODOT.  These values are used inside of the function and are local to it.\n\nBTW:  We'll start indenting expressions in the codebox here, since it can be easier to read and debug, but note that you don't have to.  \nThe syntax to the right could be written as...\n\napply(lambda([a, b], a == b), /shapes, /properties)\n\n...and is identical."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-26",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 280.0, 1310.0, 391.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-25",
					"linecount" : 17,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 338.0, 1005.0, 506.0, 253.0 ],
					"text" : "Let's try something similar.\nThis time, instead of assigning a single property, let's assign all of them in one go.\n\nTo do this, we will call map().  Note that three things changed:\n\n1. we pass in the entire list \"/shapes\"\n2. we pass in the entire list \"/properties\"\n3. we change the name \"apply\" to \"map\"\n\nmap() takes three or more arguments, similarly to apply().  \nThe difference is that it expects the arguments you pass to be lists, and that the lists have identical length.  \nmap() will go down the list of items for each argument slot and do the function application you have specified, each item at a time.  If you are familiar with a for() loop in other languages, you'll notice similarities.\n\nClick the compose box to see a result below."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-21",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 280.0, 873.0, 381.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 47, 115, 104, 97, 112, 101, 115, 0, 44, 115, 115, 115, 0, 0, 0, 0, 47, 115, 112, 104, 101, 114, 101, 0, 47, 99, 121, 108, 105, 110, 100, 101, 114, 0, 0, 0, 47, 115, 113, 117, 97, 114, 101, 0, 0, 0, 0, 52, 47, 112, 114, 111, 112, 101, 114, 116, 105, 101, 115, 0, 44, 115, 115, 115, 0, 0, 0, 0, 114, 111, 117, 110, 100, 0, 0, 0, 116, 117, 98, 117, 108, 97, 114, 0, 112, 114, 111, 112, 111, 114, 116, 105, 111, 110, 97, 108, 0, 0, 0, 0 ],
					"saved_bundle_length" : 120,
					"text" : "/shapes : [\"/sphere\", \"/cylinder\", \"/square\"],\n/properties : [\"round\", \"tubular\", \"proportional\"]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 280.0, 934.0, 248.0, 32.0 ],
					"text" : "map(assign, /shapes, /properties)"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbletextmargin" : 15,
					"bubbleusescolors" : 1,
					"fontsize" : 12.0,
					"id" : "obj-19",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 579.0, 674.5, 331.0, 84.0 ],
					"text" : "Here is the result of our application:  \n\n1. An address with the name \"/sphere\" was generated\n2. The value \"round\" was bound to it"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-16",
					"linecount" : 17,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 270.0, 350.0, 671.0, 234.0 ],
					"text" : "Take a look at our compose box above.  There are two lists - one of shapes, and one of properties.  Let's generate a new address to represent a link between the shape of a sphere and the property \"round\".\n\nWe'll call the apply() function for this, which performs function application (it applies a function with arguments that you pass it).\n\napply() takes three or more arguments:\n\n1. the name of the function to use for application\n2. a list of one or more elements that represent first argument to the function\n3. a list of one or more elements that represent the second argument to the function\n4. etc. ... \n\nIn our particular case, the function we're interested in is named \"assign\", and it takes two arguments.\n\n1. a list of one or more strings, representing the address name that will be generated\n2. a list of one or more values (any data type), representing the data to be bound to the aforementioned addresses"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-11",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 221.0, 236.0, 381.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 47, 115, 104, 97, 112, 101, 115, 0, 44, 115, 115, 115, 0, 0, 0, 0, 47, 115, 112, 104, 101, 114, 101, 0, 47, 99, 121, 108, 105, 110, 100, 101, 114, 0, 0, 0, 47, 115, 113, 117, 97, 114, 101, 0, 0, 0, 0, 52, 47, 112, 114, 111, 112, 101, 114, 116, 105, 101, 115, 0, 44, 115, 115, 115, 0, 0, 0, 0, 114, 111, 117, 110, 100, 0, 0, 0, 116, 117, 98, 117, 108, 97, 114, 0, 112, 114, 111, 112, 111, 114, 116, 105, 111, 110, 97, 108, 0, 0, 0, 0 ],
					"saved_bundle_length" : 120,
					"text" : "/shapes : [\"/sphere\", \"/cylinder\", \"/square\"],\n/properties : [\"round\", \"tubular\", \"proportional\"]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 221.0, 287.0, 335.0, 32.0 ],
					"text" : "apply(assign, /shapes[[0]], /properties[[0]])"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 221.0, 679.0, 345.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 150.0, 815.0, 38.0 ],
					"text" : "Let's take some time to look at function application and function mapping in ODOT.  \nWe'll cover the basics of how to apply and map functions, as well as details on what the implications of these practices are.",
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
					"id" : "obj-10",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "o.t.banner.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -4.0, -5.0 ],
					"patching_rect" : [ 18.0, 9.0, 645.0, 91.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubblepoint" : 0.16,
					"bubbleside" : 2,
					"bubbletextmargin" : 10,
					"bubbleusescolors" : 1,
					"fontsize" : 11.0,
					"id" : "obj-46",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 269.0, 3117.0, 125.0, 60.0 ],
					"text" : "pre-defining a function, then using it"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-47",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 164.0, 3123.0, 86.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 164.0, 3160.0, 65.0, 24.0 ],
					"text" : "o.pack /c"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-49",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 164.0, 3329.0, 229.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-50",
					"linecount" : 4,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 164.0, 3201.0, 192.0, 69.0 ],
					"text" : "/f2c = \"lambda([c], \n    /f = (9.0 / 5) * c + 32\n  )\",\n/f2c(/c)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-68",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 183.0, 2272.0, 112.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 183.0, 2309.0, 58.0, 22.0 ],
					"text" : "o.pack /f"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-70",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 183.0, 2489.0, 147.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-71",
					"linecount" : 5,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 183.0, 2361.0, 234.0, 86.0 ],
					"text" : "apply(\n  lambda([f], \n    /c = (5.0 / 9.) * (f - 32.)\n  ), /f\n)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.0, 5888.0, 164.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.0, 5813.0, 167.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 118, 101, 99, 0, 0, 0, 0, 44, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 0, 2 ],
					"saved_bundle_length" : 52,
					"text" : "/vec : [20, 2, 2, 2]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-23",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 270.0, 5843.0, 214.0, 32.0 ],
					"text" : "/result = lreduce(div, /vec)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-33",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 359.0, 5638.5, 56.0, 43.0 ],
					"text" : "1 - 2 = -1\n-1 - 3 = -4\n-4 - 4 = -8",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-37",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 813.0, 5638.5, 56.0, 43.0 ],
					"text" : "4 - 3 = 1\n1 - 2 = -1\n-1 - 1 = -2",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-39",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 582.0, 5689.0, 164.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-40",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 582.0, 5589.0, 159.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 118, 101, 99, 0, 0, 0, 0, 44, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 4 ],
					"saved_bundle_length" : 52,
					"text" : "/vec : [1, 2, 3, 4]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-41",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 582.0, 5644.0, 214.0, 32.0 ],
					"text" : "/result = rreduce(sub, /vec)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-42",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 128.0, 5689.0, 164.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-43",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 128.0, 5589.0, 159.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 118, 101, 99, 0, 0, 0, 0, 44, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 4 ],
					"saved_bundle_length" : 52,
					"text" : "/vec : [1, 2, 3, 4]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-45",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 128.0, 5644.0, 214.0, 32.0 ],
					"text" : "/result = lreduce(sub, /vec)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 13.0,
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 598.0, 89.0, 21.0 ],
					"text" : "( scroll down )"
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
					"patching_rect" : [ 781.0, 14.0, 195.0, 28.0 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 1 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 1 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 1 ],
					"source" : [ "obj-92", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-99", 0 ]
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
				"name" : "o.linear_ramp.maxpat",
				"bootpath" : "~/Documents/programming/git_repositories/CNMAT-builds/CNMAT-odot/help/o.expr-helpers",
				"patcherrelativepath" : "../../help/o.expr-helpers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.compose.mxo",
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
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.select.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
