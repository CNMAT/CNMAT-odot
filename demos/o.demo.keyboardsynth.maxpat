{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 137.0, 44.0, 1012.0, 644.0 ],
		"bglocked" : 0,
		"defrect" : [ 137.0, 44.0, 1012.0, 644.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 20.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 36.0, 194.0, 20.0, 20.0 ],
					"id" : "obj-7",
					"outlettype" : [ "bang" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.if (/key/is==down)",
					"numoutlets" : 2,
					"patching_rect" : [ 58.0, 164.0, 196.0, 29.0 ],
					"id" : "obj-17",
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"fontsize" : 20.0,
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Synthesizer Signal Processing",
					"numoutlets" : 0,
					"patching_rect" : [ 233.0, 372.0, 418.0, 29.0 ],
					"id" : "obj-12",
					"fontsize" : 20.0,
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Control Structure\n\n(e.g. linearly scaled mapped parameters)",
					"linecount" : 4,
					"numoutlets" : 0,
					"patching_rect" : [ 444.0, 245.0, 214.0, 98.0 ],
					"id" : "obj-11",
					"fontsize" : 20.0,
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Gesture Acquisition",
					"linecount" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 578.0, 57.0, 150.0, 52.0 ],
					"id" : "obj-10",
					"fontsize" : 20.0,
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Keyboard Synthesizer design pattern\nAdrian Freed 2011\n",
					"linecount" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 508.0, 485.0, 251.0, 75.0 ],
					"id" : "obj-8",
					"fontsize" : 20.0,
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.expr /fuzz = /velocity * 12.",
					"numoutlets" : 1,
					"patching_rect" : [ 56.0, 318.0, 256.0, 29.0 ],
					"id" : "obj-2",
					"outlettype" : [ "FullPacket" ],
					"fontsize" : 20.0,
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.expr /attack = (1.0 - /velocity) *200.",
					"numoutlets" : 1,
					"patching_rect" : [ 57.0, 270.0, 337.0, 29.0 ],
					"id" : "obj-1",
					"outlettype" : [ "FullPacket" ],
					"fontsize" : 20.0,
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p fuzzy synth",
					"numoutlets" : 2,
					"patching_rect" : [ 50.0, 372.0, 127.0, 29.0 ],
					"id" : "obj-33",
					"outlettype" : [ "signal", "FullPacket" ],
					"fontsize" : 20.0,
					"numinlets" : 1,
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 418.0, 93.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 418.0, 93.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 20.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Use the delegation outlet to recover the control parameter for this object that incorporates the Sine Synth behavior",
									"linecount" : 4,
									"numoutlets" : 0,
									"patching_rect" : [ 296.0, 87.0, 317.0, 98.0 ],
									"id" : "obj-5",
									"fontsize" : 20.0,
									"numinlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "use tanh~ as a handy   monotonic odd function",
									"linecount" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 133.0, 200.0, 300.0, 52.0 ],
									"id" : "obj-2",
									"fontsize" : 20.0,
									"numinlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "o.route /fuzz",
									"numoutlets" : 2,
									"patching_rect" : [ 154.0, 136.0, 121.0, 29.0 ],
									"id" : "obj-28",
									"outlettype" : [ "", "FullPacket" ],
									"fontsize" : 20.0,
									"numinlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 178.0, 32.5, 29.0 ],
									"id" : "obj-27",
									"outlettype" : [ "signal" ],
									"fontsize" : 20.0,
									"numinlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tanh~",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 215.0, 61.0, 29.0 ],
									"id" : "obj-22",
									"outlettype" : [ "signal" ],
									"fontsize" : 20.0,
									"numinlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p Sine Synth",
									"numoutlets" : 2,
									"patching_rect" : [ 50.0, 100.0, 124.0, 29.0 ],
									"id" : "obj-20",
									"outlettype" : [ "signal", "FullPacket" ],
									"fontsize" : 20.0,
									"numinlets" : 1,
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 336.0, 79.0, 944.0, 509.0 ],
										"bglocked" : 0,
										"defrect" : [ 336.0, 79.0, 944.0, 509.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 20.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "o.print",
													"numoutlets" : 0,
													"patching_rect" : [ 212.0, 87.0, 66.0, 29.0 ],
													"id" : "obj-14",
													"fontsize" : 20.0,
													"numinlets" : 1,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"numoutlets" : 1,
													"patching_rect" : [ 204.0, 114.0, 50.0, 27.0 ],
													"id" : "obj-11",
													"outlettype" : [ "" ],
													"fontsize" : 20.0,
													"numinlets" : 2,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p sine wave",
													"numoutlets" : 2,
													"patching_rect" : [ 40.0, 83.0, 116.0, 29.0 ],
													"id" : "obj-7",
													"outlettype" : [ "signal", "FullPacket" ],
													"fontsize" : 20.0,
													"numinlets" : 1,
													"fontname" : "Arial",
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 30.0, 345.0, 640.0, 480.0 ],
														"bglocked" : 0,
														"defrect" : [ 30.0, 345.0, 640.0, 480.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 20.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "o.route /frequency",
																	"numoutlets" : 2,
																	"patching_rect" : [ 50.0, 100.0, 172.0, 29.0 ],
																	"id" : "obj-1",
																	"outlettype" : [ "", "FullPacket" ],
																	"fontsize" : 20.0,
																	"numinlets" : 2,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cycle~",
																	"numoutlets" : 1,
																	"patching_rect" : [ 61.0, 227.0, 68.0, 29.0 ],
																	"id" : "obj-2",
																	"outlettype" : [ "signal" ],
																	"fontsize" : 20.0,
																	"numinlets" : 2,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
																	"id" : "obj-3",
																	"outlettype" : [ "FullPacket" ],
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 61.0, 316.0, 25.0, 25.0 ],
																	"id" : "obj-4",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 203.0, 316.0, 25.0, 25.0 ],
																	"id" : "obj-5",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 1 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontsize" : 20.0,
														"fontface" : 0,
														"fontsize" : 20.0,
														"globalpatchername" : "",
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"fontname" : "Arial"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adsr~ 20 30 0.6 100",
													"numoutlets" : 4,
													"patching_rect" : [ 223.0, 354.0, 189.0, 29.0 ],
													"id" : "obj-13",
													"outlettype" : [ "signal", "signal", "", "" ],
													"fontsize" : 20.0,
													"numinlets" : 5,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0",
													"numoutlets" : 1,
													"patching_rect" : [ 217.0, 260.0, 32.5, 27.0 ],
													"id" : "obj-12",
													"outlettype" : [ "" ],
													"fontsize" : 20.0,
													"numinlets" : 2,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "select up",
													"numoutlets" : 2,
													"patching_rect" : [ 190.0, 211.0, 91.0, 29.0 ],
													"id" : "obj-9",
													"outlettype" : [ "bang", "" ],
													"fontsize" : 20.0,
													"numinlets" : 1,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "*~",
													"numoutlets" : 1,
													"patching_rect" : [ 41.0, 418.0, 32.5, 29.0 ],
													"id" : "obj-8",
													"outlettype" : [ "signal" ],
													"fontsize" : 20.0,
													"numinlets" : 2,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "o.route /amplitude /key/is /attack /decay /sustain /release",
													"numoutlets" : 7,
													"patching_rect" : [ 116.0, 147.0, 513.0, 29.0 ],
													"id" : "obj-6",
													"outlettype" : [ "", "", "", "", "", "", "FullPacket" ],
													"fontsize" : 20.0,
													"numinlets" : 7,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 49.0, 27.0, 25.0, 25.0 ],
													"id" : "obj-17",
													"outlettype" : [ "FullPacket" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 41.0, 467.0, 25.0, 25.0 ],
													"id" : "obj-18",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 612.0, 459.0, 25.0, 25.0 ],
													"id" : "obj-19",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 2 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 3 ],
													"destination" : [ "obj-13", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 4 ],
													"destination" : [ "obj-13", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 5 ],
													"destination" : [ "obj-13", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 6 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 20.0,
										"fontface" : 0,
										"fontsize" : 20.0,
										"globalpatchername" : "",
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-30",
									"outlettype" : [ "FullPacket" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 280.0, 25.0, 25.0 ],
									"id" : "obj-31",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 256.0, 280.0, 25.0, 25.0 ],
									"id" : "obj-32",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 1 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 20.0,
						"fontface" : 0,
						"fontsize" : 20.0,
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 160.0, 454.0, 25.0, 25.0 ],
					"id" : "obj-29",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.expr /amplitude = /velocity",
					"numoutlets" : 1,
					"patching_rect" : [ 57.0, 225.0, 259.0, 29.0 ],
					"id" : "obj-21",
					"outlettype" : [ "FullPacket" ],
					"fontsize" : 20.0,
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"numoutlets" : 0,
					"patching_rect" : [ 48.0, 442.0, 45.0, 45.0 ],
					"id" : "obj-4",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "o.message",
					"text" : "/key/is up \n/midipitch 58 \n/frequency 233.082 \n",
					"linecount" : 3,
					"numoutlets" : 1,
					"patching_rect" : [ 112.0, 87.0, 315.0, 48.0 ],
					"id" : "obj-5",
					"outlettype" : [ "" ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 1,
					"patching_rect" : [ 32.0, 11.0, 516.0, 60.0 ],
					"id" : "obj-3",
					"outlettype" : [ "FullPacket" ],
					"name" : "o.io.manual.maxpat",
					"args" : [  ],
					"numinlets" : 1,
					"lockeddragscroll" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 1 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
