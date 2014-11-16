{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 0,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 49.0, 78.0, 1357.0, 694.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 11.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 5.0, 5.0 ],
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
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.0, 652.0, 100.0, 21.0 ],
					"style" : "",
					"text" : "o.print"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-74",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 327.5, 563.0, 66.0, 21.0 ],
					"style" : "",
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-72",
					"linecount" : 8,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 652.5, 348.5, 607.0, 118.0 ],
					"text" : "map(\n  lambda(i,\n    assign( \"/norm/\" +i+ \"/x1\", (value(\"/\"+i+\"/x1\") - /scalar/x) / /scalar/width),\n    assign( \"/norm/\" +i+ \"/x2\", (value(\"/\"+i+\"/x2\") - /scalar/x) / /scalar/width),\n    assign( \"/norm/\" +i+ \"/y1\", (value(\"/\"+i+\"/y1\") - /scalar/y) / /scalar/height),\n    assign( \"/norm/\" +i+ \"/y2\", (value(\"/\"+i+\"/y2\") - /scalar/y) / /scalar/height)\n  ), aseq(0, /count - 1)\n)",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "" ],
					"patching_rect" : [ 743.0, 542.0, 100.0, 21.0 ],
					"style" : "",
					"text" : "o.mappatch"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 743.0, 574.0, 58.0, 21.0 ],
					"style" : "",
					"text" : "o.route /*"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 0,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 268.0, 274.0, 1440.0, 806.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 5.0, 5.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 11.0,
									"id" : "obj-1",
									"linecount" : 19,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 226.0, 270.0, 841.0, 247.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, -72, 47, 115, 101, 116, 101, 120, 112, 114, 47, 50, 0, 0, 44, 115, 0, 0, 115, 101, 116, 101, 120, 112, 114, 32, 10, 109, 97, 112, 40, 10, 32, 32, 108, 97, 109, 98, 100, 97, 40, 105, 44, 10, 32, 32, 32, 32, 97, 115, 115, 105, 103, 110, 40, 32, 113, 117, 111, 116, 101, 40, 47, 110, 111, 114, 109, 47, 41, 32, 43, 105, 43, 32, 113, 117, 111, 116, 101, 40, 47, 120, 49, 41, 44, 32, 40, 118, 97, 108, 117, 101, 40, 113, 117, 111, 116, 101, 40, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 120, 49, 41, 41, 32, 45, 32, 47, 115, 99, 97, 108, 97, 114, 47, 120, 41, 32, 47, 32, 47, 115, 99, 97, 108, 97, 114, 47, 119, 105, 100, 116, 104, 41, 44, 10, 32, 32, 32, 32, 97, 115, 115, 105, 103, 110, 40, 32, 113, 117, 111, 116, 101, 40, 47, 110, 111, 114, 109, 47, 41, 32, 43, 105, 43, 32, 113, 117, 111, 116, 101, 40, 47, 120, 50, 41, 44, 32, 40, 118, 97, 108, 117, 101, 40, 113, 117, 111, 116, 101, 40, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 120, 50, 41, 41, 32, 45, 32, 47, 115, 99, 97, 108, 97, 114, 47, 120, 41, 32, 47, 32, 47, 115, 99, 97, 108, 97, 114, 47, 119, 105, 100, 116, 104, 41, 44, 10, 32, 32, 32, 32, 97, 115, 115, 105, 103, 110, 40, 32, 113, 117, 111, 116, 101, 40, 47, 110, 111, 114, 109, 47, 41, 32, 43, 105, 43, 32, 113, 117, 111, 116, 101, 40, 47, 121, 49, 41, 44, 32, 40, 118, 97, 108, 117, 101, 40, 113, 117, 111, 116, 101, 40, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 121, 49, 41, 41, 32, 45, 32, 47, 115, 99, 97, 108, 97, 114, 47, 121, 41, 32, 47, 32, 47, 115, 99, 97, 108, 97, 114, 47, 104, 101, 105, 103, 104, 116, 41, 44, 10, 32, 32, 32, 32, 97, 115, 115, 105, 103, 110, 40, 32, 113, 117, 111, 116, 101, 40, 47, 110, 111, 114, 109, 47, 41, 32, 43, 105, 43, 32, 113, 117, 111, 116, 101, 40, 47, 121, 50, 41, 44, 32, 40, 118, 97, 108, 117, 101, 40, 113, 117, 111, 116, 101, 40, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 121, 50, 41, 41, 32, 45, 32, 47, 115, 99, 97, 108, 97, 114, 47, 121, 41, 32, 47, 32, 47, 115, 99, 97, 108, 97, 114, 47, 104, 101, 105, 103, 104, 116, 41, 44, 10, 32, 32, 32, 32, 109, 97, 112, 40, 108, 97, 109, 98, 100, 97, 40, 91, 120, 49, 44, 105, 93, 44, 32, 10, 32, 32, 32, 32, 32, 32, 97, 115, 115, 105, 103, 110, 40, 113, 117, 111, 116, 101, 40, 47, 95, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 115, 116, 97, 114, 116, 41, 44, 32, 120, 49, 32, 42, 32, 47, 115, 99, 97, 108, 101, 47, 116, 105, 109, 101, 41, 41, 44, 32, 10, 32, 32, 32, 32, 32, 32, 118, 97, 108, 117, 101, 40, 32, 113, 117, 111, 116, 101, 40, 47, 110, 111, 114, 109, 47, 41, 32, 43, 105, 43, 32, 113, 117, 111, 116, 101, 40, 47, 120, 49, 41, 32, 41, 44, 32, 105, 41, 44, 10, 32, 32, 32, 32, 109, 97, 112, 40, 108, 97, 109, 98, 100, 97, 40, 91, 120, 49, 44, 32, 120, 50, 44, 105, 93, 44, 32, 97, 115, 115, 105, 103, 110, 40, 113, 117, 111, 116, 101, 40, 47, 95, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 100, 117, 114, 41, 44, 32, 40, 120, 50, 32, 45, 32, 120, 49, 41, 32, 42, 32, 47, 115, 99, 97, 108, 101, 47, 116, 105, 109, 101, 41, 41, 44, 10, 32, 32, 32, 32, 32, 32, 118, 97, 108, 117, 101, 40, 32, 113, 117, 111, 116, 101, 40, 47, 110, 111, 114, 109, 47, 41, 32, 43, 105, 43, 32, 113, 117, 111, 116, 101, 40, 47, 120, 49, 41, 32, 41, 44, 32, 118, 97, 108, 117, 101, 40, 32, 113, 117, 111, 116, 101, 40, 47, 110, 111, 114, 109, 47, 41, 32, 43, 105, 43, 32, 113, 117, 111, 116, 101, 40, 47, 120, 50, 41, 32, 41, 44, 32, 105, 41, 44, 10, 32, 32, 32, 32, 109, 97, 112, 40, 108, 97, 109, 98, 100, 97, 40, 91, 121, 49, 44, 105, 93, 44, 32, 97, 115, 115, 105, 103, 110, 40, 113, 117, 111, 116, 101, 40, 47, 95, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 112, 105, 116, 99, 104, 49, 41, 44, 32, 121, 49, 32, 42, 32, 40, 47, 115, 99, 97, 108, 101, 47, 109, 105, 100, 105, 91, 91, 49, 93, 93, 32, 45, 32, 47, 115, 99, 97, 108, 101, 47, 109, 105, 100, 105, 91, 91, 48, 93, 93, 41, 32, 43, 32, 47, 115, 99, 97, 108, 101, 47, 109, 105, 100, 105, 91, 91, 48, 93, 93, 41, 41, 44, 10, 32, 32, 32, 32, 32, 32, 118, 97, 108, 117, 101, 40, 32, 113, 117, 111, 116, 101, 40, 47, 110, 111, 114, 109, 47, 41, 32, 43, 105, 43, 32, 113, 117, 111, 116, 101, 40, 47, 121, 49, 41, 32, 41, 44, 32, 105, 41, 44, 10, 32, 32, 32, 32, 109, 97, 112, 40, 108, 97, 109, 98, 100, 97, 40, 91, 121, 50, 44, 105, 93, 44, 32, 97, 115, 115, 105, 103, 110, 40, 113, 117, 111, 116, 101, 40, 47, 95, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 112, 105, 116, 99, 104, 50, 41, 44, 32, 121, 50, 32, 42, 32, 40, 47, 115, 99, 97, 108, 101, 47, 109, 105, 100, 105, 91, 91, 49, 93, 93, 32, 45, 32, 47, 115, 99, 97, 108, 101, 47, 109, 105, 100, 105, 91, 91, 48, 93, 93, 41, 32, 43, 32, 47, 115, 99, 97, 108, 101, 47, 109, 105, 100, 105, 91, 91, 48, 93, 93, 41, 41, 44, 10, 32, 32, 32, 32, 32, 32, 118, 97, 108, 117, 101, 40, 32, 113, 117, 111, 116, 101, 40, 47, 110, 111, 114, 109, 47, 41, 32, 43, 105, 43, 32, 113, 117, 111, 116, 101, 40, 47, 121, 50, 41, 32, 41, 44, 32, 105, 41, 44, 10, 32, 32, 32, 32, 109, 97, 112, 40, 108, 97, 109, 98, 100, 97, 40, 105, 44, 32, 97, 115, 115, 105, 103, 110, 40, 113, 117, 111, 116, 101, 40, 47, 95, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 105, 100, 41, 44, 32, 115, 116, 114, 105, 110, 103, 40, 32, 105, 32, 41, 41, 41, 44, 32, 105, 41, 10, 32, 32, 41, 44, 32, 97, 115, 101, 113, 40, 48, 44, 32, 47, 99, 111, 117, 110, 116, 32, 45, 32, 49, 41, 10, 41, 0, 0 ],
									"saved_bundle_length" : 1228,
									"text" : "/setexpr/2 : \"setexpr \nmap(\n  lambda(i,\n    assign( quote(/norm/) +i+ quote(/x1), (value(quote(/)+i+quote(/x1)) - /scalar/x) / /scalar/width),\n    assign( quote(/norm/) +i+ quote(/x2), (value(quote(/)+i+quote(/x2)) - /scalar/x) / /scalar/width),\n    assign( quote(/norm/) +i+ quote(/y1), (value(quote(/)+i+quote(/y1)) - /scalar/y) / /scalar/height),\n    assign( quote(/norm/) +i+ quote(/y2), (value(quote(/)+i+quote(/y2)) - /scalar/y) / /scalar/height),\n    map(lambda([x1,i], \n      assign(quote(/_/)+i+quote(/start), x1 * /scale/time)), \n      value( quote(/norm/) +i+ quote(/x1) ), i),\n    map(lambda([x1, x2,i], assign(quote(/_/)+i+quote(/dur), (x2 - x1) * /scale/time)),\n      value( quote(/norm/) +i+ quote(/x1) ), value( quote(/norm/) +i+ quote(/x2) ), i),\n    map(lambda([y1,i], assign(quote(/_/)+i+quote(/pitch1), y1 * (/scale/midi[[1]] - /scale/midi[[0]]) + /scale/midi[[0]])),\n      value( quote(/norm/) +i+ quote(/y1) ), i),\n    map(lambda([y2,i], assign(quote(/_/)+i+quote(/pitch2), y2 * (/scale/midi[[1]] - /scale/midi[[0]]) + /scale/midi[[0]])),\n      value( quote(/norm/) +i+ quote(/y2) ), i),\n    map(lambda(i, assign(quote(/_/)+i+quote(/id), string( i ))), i)\n  ), aseq(0, /count - 1)\n)\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 11.0,
									"id" : "obj-49",
									"linecount" : 9,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 305.0, 58.0, 729.0, 123.0 ],
									"saved_bundle_data" : [  ],
									"saved_bundle_length" : 0,
									"text" : "/setexpr/2 : \"/scale/time = 1000,\n/scale/midi = [60, 127],\nmap( lambda([x1,i], assign(quote(/_/)+i+quote(/start), x1 * /scale/time)),\n/map/x2 : \"lambda([x1, x2,i], assign(quote(/_/)+i+quote(/dur), (x2 - x1) * /scale/time))\",\n/map/y1 : \"lambda([y1,i], assign(quote(/_/)+i+quote(/pitch1), y1 * (/scale/midi[[1]] - /scale/midi[[0]]) + /scale/midi[[0]]))\",\n/map/y2 : \"lambda([y2,i], assign(quote(/_/)+i+quote(/pitch2), y2 * (/scale/midi[[1]] - /scale/midi[[0]]) + /scale/midi[[0]]))\",\n/map/index : \"lambda(i, assign(quote(/_/)+i+quote(/id), string( i )))\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
 ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 627.0, 71.0, 729.0, 21.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"fontsize" : 11.0,
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 386.0, 766.0, 100.0, 21.0 ],
					"style" : "",
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-47",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 596.0, 873.0, 150.0, 33.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 841.0, 809.0, 45.0, 45.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "spectroscope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 991.0, 744.0, 300.0, 100.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"interpinlet" : 1,
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 991.0, 708.0, 134.0, 27.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 990.5, 643.0, 100.0, 21.0 ],
					"style" : "",
					"text" : "o.route /poly"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-30",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 990.5, 674.0, 129.0, 33.0 ],
					"style" : "",
					"text" : "poly~ gliss-grain.poly 100"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-37",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 354.5, 483.0, 50.0, 21.0 ],
					"style" : "",
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 193.5, 944.0, 100.0, 21.0 ],
					"style" : "",
					"text" : "o.select /poly"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-42",
					"linecount" : 8,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 193.5, 817.0, 329.0, 118.0 ],
					"text" : "if( exists(/delta),\n  progn(\n    if( /delta > 0.5,\n      /poly = [\"note\", /upper],\n      /poly = [\"note\", /lower]\n    )\n  )\n)",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 559.0, 569.0, 150.0, 19.0 ],
					"style" : "",
					"text" : "crash when not cleared first!"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 488.0, 648.0, 56.0, 21.0 ],
					"style" : "",
					"text" : "0, 1 1000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 488.0, 680.0, 77.0, 21.0 ],
					"style" : "",
					"text" : "line 0. 0.0001"
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-39",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 488.0, 722.0, 235.0, 18.0 ],
					"size" : 1.0,
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 193.5, 783.0, 120.0, 21.0 ],
					"style" : "",
					"text" : "o.cond !emptybundle()"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 386.0, 662.0, 20.0, 20.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 386.0, 695.0, 48.0, 21.0 ],
					"style" : "",
					"text" : "metro 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"format" : 6,
					"id" : "obj-29",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 386.0, 729.0, 80.0, 21.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 386.0, 792.0, 66.0, 21.0 ],
					"style" : "",
					"text" : "lookup $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 327.5, 529.0, 66.0, 21.0 ],
					"style" : "",
					"text" : "dump /start"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 203.0, 542.0, 41.0, 21.0 ],
					"style" : "",
					"text" : "dosort"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "", "clear" ],
					"patching_rect" : [ 203.0, 458.0, 55.0, 21.0 ],
					"style" : "",
					"text" : "t b l clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 221.0, 501.0, 55.0, 21.0 ],
					"style" : "",
					"text" : "o.route /*"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 422.0, 132.0, 20.0, 20.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 845.0, 438.0, 410.0, 19.0 ],
					"style" : "",
					"text" : "ideally this could be played in real time, have to think about how to do that exactly."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-34",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 941.0, 307.0, 178.0, 31.0 ],
					"text" : "/map/fns = getaddresses()",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 928.0, 398.0, 313.0, 19.0 ],
					"style" : "",
					"text" : "generalize this syntax to include what to pass in as arguments"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-14",
					"linecount" : 9,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 547.0, 189.0, 750.0, 123.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 99, 97, 108, 101, 47, 116, 105, 109, 101, 0, 44, 105, 0, 0, 0, 0, 3, -24, 0, 0, 0, 24, 47, 115, 99, 97, 108, 101, 47, 109, 105, 100, 105, 0, 44, 105, 105, 0, 0, 0, 0, 60, 0, 0, 0, 127, 0, 0, 0, 84, 47, 109, 97, 112, 47, 120, 49, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 120, 49, 44, 105, 93, 44, 32, 97, 115, 115, 105, 103, 110, 40, 113, 117, 111, 116, 101, 40, 47, 95, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 115, 116, 97, 114, 116, 41, 44, 32, 120, 49, 32, 42, 32, 47, 115, 99, 97, 108, 101, 47, 116, 105, 109, 101, 41, 41, 0, 0, 0, 0, 0, 0, 0, 92, 47, 109, 97, 112, 47, 120, 50, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 120, 49, 44, 32, 120, 50, 44, 105, 93, 44, 32, 97, 115, 115, 105, 103, 110, 40, 113, 117, 111, 116, 101, 40, 47, 95, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 100, 117, 114, 41, 44, 32, 40, 120, 50, 32, 45, 32, 120, 49, 41, 32, 42, 32, 47, 115, 99, 97, 108, 101, 47, 116, 105, 109, 101, 41, 41, 0, 0, 0, 0, 0, 0, -128, 47, 109, 97, 112, 47, 121, 49, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 121, 49, 44, 105, 93, 44, 32, 97, 115, 115, 105, 103, 110, 40, 113, 117, 111, 116, 101, 40, 47, 95, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 112, 105, 116, 99, 104, 49, 41, 44, 32, 121, 49, 32, 42, 32, 40, 47, 115, 99, 97, 108, 101, 47, 109, 105, 100, 105, 91, 91, 49, 93, 93, 32, 45, 32, 47, 115, 99, 97, 108, 101, 47, 109, 105, 100, 105, 91, 91, 48, 93, 93, 41, 32, 43, 32, 47, 115, 99, 97, 108, 101, 47, 109, 105, 100, 105, 91, 91, 48, 93, 93, 41, 41, 0, 0, 0, 0, 0, -128, 47, 109, 97, 112, 47, 121, 50, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 121, 50, 44, 105, 93, 44, 32, 97, 115, 115, 105, 103, 110, 40, 113, 117, 111, 116, 101, 40, 47, 95, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 112, 105, 116, 99, 104, 50, 41, 44, 32, 121, 50, 32, 42, 32, 40, 47, 115, 99, 97, 108, 101, 47, 109, 105, 100, 105, 91, 91, 49, 93, 93, 32, 45, 32, 47, 115, 99, 97, 108, 101, 47, 109, 105, 100, 105, 91, 91, 48, 93, 93, 41, 32, 43, 32, 47, 115, 99, 97, 108, 101, 47, 109, 105, 100, 105, 91, 91, 48, 93, 93, 41, 41, 0, 0, 0, 0, 0, 72, 47, 109, 97, 112, 47, 105, 110, 100, 101, 120, 0, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 105, 44, 32, 97, 115, 115, 105, 103, 110, 40, 113, 117, 111, 116, 101, 40, 47, 95, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 105, 100, 41, 44, 32, 115, 116, 114, 105, 110, 103, 40, 32, 105, 32, 41, 41, 41, 0 ],
					"saved_bundle_length" : 592,
					"text" : "/scale/time : 1000,\n/scale/midi : [60, 127],\n/map/x1 : \"lambda([x1,i], assign(quote(/_/)+i+quote(/start), x1 * /scale/time))\",\n/map/x2 : \"lambda([x1, x2,i], assign(quote(/_/)+i+quote(/dur), (x2 - x1) * /scale/time))\",\n/map/y1 : \"lambda([y1,i], assign(quote(/_/)+i+quote(/pitch1), y1 * (/scale/midi[[1]] - /scale/midi[[0]]) + /scale/midi[[0]]))\",\n/map/y2 : \"lambda([y2,i], assign(quote(/_/)+i+quote(/pitch2), y2 * (/scale/midi[[1]] - /scale/midi[[0]]) + /scale/midi[[0]]))\",\n/map/index : \"lambda(i, assign(quote(/_/)+i+quote(/id), string( i )))\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-13",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 246.0, 576.0, 71.5, 45.0 ],
					"style" : "",
					"text" : "o.table @sort /start @key /id"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 979.0, 542.0, 72.0, 21.0 ],
					"style" : "",
					"text" : "peek~ on-off"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 928.0, 501.0, 109.0, 21.0 ],
					"style" : "",
					"text" : "buffer~ on-off 20000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 0,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 121.0, 44.0, 1285.0, 767.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 5.0, 5.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 789.0, 419.0, 100.0, 19.0 ],
									"style" : "",
									"text" : "prepend setexpr"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 789.0, 367.0, 100.0, 19.0 ],
									"style" : "",
									"text" : "o.route /setexpr/2"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 11.0,
									"id" : "obj-52",
									"linecount" : 18,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 789.0, 78.0, 841.0, 235.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, -80, 47, 115, 101, 116, 101, 120, 112, 114, 47, 50, 0, 0, 44, 115, 0, 0, 109, 97, 112, 40, 10, 32, 32, 108, 97, 109, 98, 100, 97, 40, 105, 44, 10, 32, 32, 32, 32, 97, 115, 115, 105, 103, 110, 40, 32, 113, 117, 111, 116, 101, 40, 47, 110, 111, 114, 109, 47, 41, 32, 43, 105, 43, 32, 113, 117, 111, 116, 101, 40, 47, 120, 49, 41, 44, 32, 40, 118, 97, 108, 117, 101, 40, 113, 117, 111, 116, 101, 40, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 120, 49, 41, 41, 32, 45, 32, 47, 115, 99, 97, 108, 97, 114, 47, 120, 41, 32, 47, 32, 47, 115, 99, 97, 108, 97, 114, 47, 119, 105, 100, 116, 104, 41, 44, 10, 32, 32, 32, 32, 97, 115, 115, 105, 103, 110, 40, 32, 113, 117, 111, 116, 101, 40, 47, 110, 111, 114, 109, 47, 41, 32, 43, 105, 43, 32, 113, 117, 111, 116, 101, 40, 47, 120, 50, 41, 44, 32, 40, 118, 97, 108, 117, 101, 40, 113, 117, 111, 116, 101, 40, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 120, 50, 41, 41, 32, 45, 32, 47, 115, 99, 97, 108, 97, 114, 47, 120, 41, 32, 47, 32, 47, 115, 99, 97, 108, 97, 114, 47, 119, 105, 100, 116, 104, 41, 44, 10, 32, 32, 32, 32, 97, 115, 115, 105, 103, 110, 40, 32, 113, 117, 111, 116, 101, 40, 47, 110, 111, 114, 109, 47, 41, 32, 43, 105, 43, 32, 113, 117, 111, 116, 101, 40, 47, 121, 49, 41, 44, 32, 40, 118, 97, 108, 117, 101, 40, 113, 117, 111, 116, 101, 40, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 121, 49, 41, 41, 32, 45, 32, 47, 115, 99, 97, 108, 97, 114, 47, 121, 41, 32, 47, 32, 47, 115, 99, 97, 108, 97, 114, 47, 104, 101, 105, 103, 104, 116, 41, 44, 10, 32, 32, 32, 32, 97, 115, 115, 105, 103, 110, 40, 32, 113, 117, 111, 116, 101, 40, 47, 110, 111, 114, 109, 47, 41, 32, 43, 105, 43, 32, 113, 117, 111, 116, 101, 40, 47, 121, 50, 41, 44, 32, 40, 118, 97, 108, 117, 101, 40, 113, 117, 111, 116, 101, 40, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 121, 50, 41, 41, 32, 45, 32, 47, 115, 99, 97, 108, 97, 114, 47, 121, 41, 32, 47, 32, 47, 115, 99, 97, 108, 97, 114, 47, 104, 101, 105, 103, 104, 116, 41, 44, 10, 32, 32, 32, 32, 109, 97, 112, 40, 108, 97, 109, 98, 100, 97, 40, 91, 120, 49, 44, 105, 93, 44, 32, 10, 32, 32, 32, 32, 32, 32, 97, 115, 115, 105, 103, 110, 40, 113, 117, 111, 116, 101, 40, 47, 95, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 115, 116, 97, 114, 116, 41, 44, 32, 120, 49, 32, 42, 32, 47, 115, 99, 97, 108, 101, 47, 116, 105, 109, 101, 41, 41, 44, 32, 10, 32, 32, 32, 32, 32, 32, 118, 97, 108, 117, 101, 40, 32, 113, 117, 111, 116, 101, 40, 47, 110, 111, 114, 109, 47, 41, 32, 43, 105, 43, 32, 113, 117, 111, 116, 101, 40, 47, 120, 49, 41, 32, 41, 44, 32, 105, 41, 44, 10, 32, 32, 32, 32, 109, 97, 112, 40, 108, 97, 109, 98, 100, 97, 40, 91, 120, 49, 44, 32, 120, 50, 44, 105, 93, 44, 32, 97, 115, 115, 105, 103, 110, 40, 113, 117, 111, 116, 101, 40, 47, 95, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 100, 117, 114, 41, 44, 32, 40, 120, 50, 32, 45, 32, 120, 49, 41, 32, 42, 32, 47, 115, 99, 97, 108, 101, 47, 116, 105, 109, 101, 41, 41, 44, 10, 32, 32, 32, 32, 32, 32, 118, 97, 108, 117, 101, 40, 32, 113, 117, 111, 116, 101, 40, 47, 110, 111, 114, 109, 47, 41, 32, 43, 105, 43, 32, 113, 117, 111, 116, 101, 40, 47, 120, 49, 41, 32, 41, 44, 32, 118, 97, 108, 117, 101, 40, 32, 113, 117, 111, 116, 101, 40, 47, 110, 111, 114, 109, 47, 41, 32, 43, 105, 43, 32, 113, 117, 111, 116, 101, 40, 47, 120, 50, 41, 32, 41, 44, 32, 105, 41, 44, 10, 32, 32, 32, 32, 109, 97, 112, 40, 108, 97, 109, 98, 100, 97, 40, 91, 121, 49, 44, 105, 93, 44, 32, 97, 115, 115, 105, 103, 110, 40, 113, 117, 111, 116, 101, 40, 47, 95, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 112, 105, 116, 99, 104, 49, 41, 44, 32, 121, 49, 32, 42, 32, 40, 47, 115, 99, 97, 108, 101, 47, 109, 105, 100, 105, 91, 91, 49, 93, 93, 32, 45, 32, 47, 115, 99, 97, 108, 101, 47, 109, 105, 100, 105, 91, 91, 48, 93, 93, 41, 32, 43, 32, 47, 115, 99, 97, 108, 101, 47, 109, 105, 100, 105, 91, 91, 48, 93, 93, 41, 41, 44, 10, 32, 32, 32, 32, 32, 32, 118, 97, 108, 117, 101, 40, 32, 113, 117, 111, 116, 101, 40, 47, 110, 111, 114, 109, 47, 41, 32, 43, 105, 43, 32, 113, 117, 111, 116, 101, 40, 47, 121, 49, 41, 32, 41, 44, 32, 105, 41, 44, 10, 32, 32, 32, 32, 109, 97, 112, 40, 108, 97, 109, 98, 100, 97, 40, 91, 121, 50, 44, 105, 93, 44, 32, 97, 115, 115, 105, 103, 110, 40, 113, 117, 111, 116, 101, 40, 47, 95, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 112, 105, 116, 99, 104, 50, 41, 44, 32, 121, 50, 32, 42, 32, 40, 47, 115, 99, 97, 108, 101, 47, 109, 105, 100, 105, 91, 91, 49, 93, 93, 32, 45, 32, 47, 115, 99, 97, 108, 101, 47, 109, 105, 100, 105, 91, 91, 48, 93, 93, 41, 32, 43, 32, 47, 115, 99, 97, 108, 101, 47, 109, 105, 100, 105, 91, 91, 48, 93, 93, 41, 41, 44, 10, 32, 32, 32, 32, 32, 32, 118, 97, 108, 117, 101, 40, 32, 113, 117, 111, 116, 101, 40, 47, 110, 111, 114, 109, 47, 41, 32, 43, 105, 43, 32, 113, 117, 111, 116, 101, 40, 47, 121, 50, 41, 32, 41, 44, 32, 105, 41, 44, 10, 32, 32, 32, 32, 109, 97, 112, 40, 108, 97, 109, 98, 100, 97, 40, 105, 44, 32, 97, 115, 115, 105, 103, 110, 40, 113, 117, 111, 116, 101, 40, 47, 95, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 105, 100, 41, 44, 32, 115, 116, 114, 105, 110, 103, 40, 32, 105, 32, 41, 41, 41, 44, 32, 105, 41, 10, 32, 32, 41, 44, 32, 97, 115, 101, 113, 40, 48, 44, 32, 47, 99, 111, 117, 110, 116, 32, 45, 32, 49, 41, 10, 41, 0, 0, 0 ],
									"saved_bundle_length" : 1220,
									"text" : "/setexpr/2 : \"map(\n  lambda(i,\n    assign( quote(/norm/) +i+ quote(/x1), (value(quote(/)+i+quote(/x1)) - /scalar/x) / /scalar/width),\n    assign( quote(/norm/) +i+ quote(/x2), (value(quote(/)+i+quote(/x2)) - /scalar/x) / /scalar/width),\n    assign( quote(/norm/) +i+ quote(/y1), (value(quote(/)+i+quote(/y1)) - /scalar/y) / /scalar/height),\n    assign( quote(/norm/) +i+ quote(/y2), (value(quote(/)+i+quote(/y2)) - /scalar/y) / /scalar/height),\n    map(lambda([x1,i], \n      assign(quote(/_/)+i+quote(/start), x1 * /scale/time)), \n      value( quote(/norm/) +i+ quote(/x1) ), i),\n    map(lambda([x1, x2,i], assign(quote(/_/)+i+quote(/dur), (x2 - x1) * /scale/time)),\n      value( quote(/norm/) +i+ quote(/x1) ), value( quote(/norm/) +i+ quote(/x2) ), i),\n    map(lambda([y1,i], assign(quote(/_/)+i+quote(/pitch1), y1 * (/scale/midi[[1]] - /scale/midi[[0]]) + /scale/midi[[0]])),\n      value( quote(/norm/) +i+ quote(/y1) ), i),\n    map(lambda([y2,i], assign(quote(/_/)+i+quote(/pitch2), y2 * (/scale/midi[[1]] - /scale/midi[[0]]) + /scale/midi[[0]])),\n      value( quote(/norm/) +i+ quote(/y2) ), i),\n    map(lambda(i, assign(quote(/_/)+i+quote(/id), string( i ))), i)\n  ), aseq(0, /count - 1)\n)\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 11.0,
									"id" : "obj-4",
									"linecount" : 18,
									"maxclass" : "o.expr.codebox.set",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 712.0, 487.0, 831.0, 255.0 ],
									"text" : "map(\n  lambda(i,\n    assign( quote(/norm/) +i+ quote(/x1), (value(quote(/)+i+quote(/x1)) - /scalar/x) / /scalar/width),\n    assign( quote(/norm/) +i+ quote(/x2), (value(quote(/)+i+quote(/x2)) - /scalar/x) / /scalar/width),\n    assign( quote(/norm/) +i+ quote(/y1), (value(quote(/)+i+quote(/y1)) - /scalar/y) / /scalar/height),\n    assign( quote(/norm/) +i+ quote(/y2), (value(quote(/)+i+quote(/y2)) - /scalar/y) / /scalar/height),\n    map(lambda([x1,i], \n      assign(quote(/_/)+i+quote(/start), x1 * /scale/time)), \n      value( quote(/norm/) +i+ quote(/x1) ), i),\n    map(lambda([x1, x2,i], assign(quote(/_/)+i+quote(/dur), (x2 - x1) * /scale/time)),\n      value( quote(/norm/) +i+ quote(/x1) ), value( quote(/norm/) +i+ quote(/x2) ), i),\n    map(lambda([y1,i], assign(quote(/_/)+i+quote(/pitch1), y1 * (/scale/midi[[1]] - /scale/midi[[0]]) + /scale/midi[[0]])),\n      value( quote(/norm/) +i+ quote(/y1) ), i),\n    map(lambda([y2,i], assign(quote(/_/)+i+quote(/pitch2), y2 * (/scale/midi[[1]] - /scale/midi[[0]]) + /scale/midi[[0]])),\n      value( quote(/norm/) +i+ quote(/y2) ), i),\n    map(lambda(i, assign(quote(/_/)+i+quote(/id), string( i ))), i)\n  ), aseq(0, /count - 1)\n)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-9",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 509.0, 355.0, 262.0, 31.0 ],
									"style" : "",
									"text" : "maybe use /bounds to make more cross map-able, e.g. a path could have x1 and x1... "
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 509.0, 315.0, 210.0, 19.0 ],
									"style" : "",
									"text" : "currently line only, also add other shapes"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 960.0, 404.0, 53.0, 19.0 ],
									"style" : "",
									"text" : "mapping"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 615.0, 511.0, 82.0, 19.0 ],
									"style" : "",
									"text" : "o.timetag /now"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 974.0, 435.0, 25.0, 25.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 615.0, 484.0, 47.0, 19.0 ],
									"style" : "",
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 615.0, 677.0, 76.0, 19.0 ],
									"style" : "",
									"text" : "o.route /norm"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 615.0, 454.0, 50.0, 19.0 ],
									"style" : "",
									"text" : "o.flatten"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-20",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 51.0, 7.0, 25.0, 25.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-22",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 51.0, 755.0, 25.0, 25.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 0,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 11.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 5.0, 5.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-46",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 50.0, 130.0, 32.5, 19.0 ],
													"style" : "",
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-45",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 102.0, 130.0, 84.0, 19.0 ],
													"style" : "",
													"text" : "o.select /scalar"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 175.0, 61.0, 19.0 ],
													"style" : "",
													"text" : "o.collect"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 50.0, 100.0, 71.0, 19.0 ],
													"style" : "",
													"text" : "o.route /play"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-12",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 254.0, 25.0, 25.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-45", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-46", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-45", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-46", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-46", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 51.0, 413.5, 153.0, 19.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"fontsize" : 11.0,
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p collect: /play\\, /scalar\\, /count"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 115.0, 219.5, 100.0, 19.0 ],
									"style" : "",
									"text" : "o.select /scalar"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 11.0,
									"id" : "obj-37",
									"linecount" : 8,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 51.0, 280.5, 423.0, 118.0 ],
									"text" : "/count = 0,\nmap(\n  lambda(a,\n    if( !strcmp(a, \"/line\", 5),\n      assign(quote(/play/)+(/count++), value(a))\n    )\n  ), getaddresses()\n)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 51.0, 191.0, 83.0, 19.0 ],
									"style" : "",
									"text" : "o.route /events"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 51.0, 249.5, 83.0, 19.0 ],
									"style" : "",
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 11.0,
									"id" : "obj-26",
									"linecount" : 10,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 51.0, 38.5, 423.0, 143.0 ],
									"text" : "map(\n  lambda(a,\n    if( !strcmp(a, \"/staff\", 6),\n        /scalar = value(a)\n    ),\n    if( and(!strcmp(a, \"/events\", 7), /type == \"g\"),\n        /events = value(a)\n    )\n  ), getaddresses()\n)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 203.0, 412.0, 155.0, 21.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"fontsize" : 11.0,
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p get-staff-and-staff-elements"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 547.0, 154.0, 56.0, 21.0 ],
					"style" : "",
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 71.0, 1063.0, 20.0, 20.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 368.0, 164.0, 56.0, 21.0 ],
					"style" : "",
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 203.0, 378.0, 100.0, 21.0 ],
					"style" : "",
					"text" : "o.route /outstave"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-24",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 298.0, 124.0, 50.0, 21.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 298.0, 205.0, 106.0, 21.0 ],
					"style" : "",
					"text" : "o.pack /getstave 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 203.0, 296.0, 114.0, 21.0 ],
					"style" : "",
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-10",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 203.0, 332.0, 310.0, 31.0 ],
					"text" : "/outstave = value(quote(/stave/) + /getstave)",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 203.0, 263.0, 88.0, 21.0 ],
					"style" : "",
					"text" : "o.route /1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 203.0, 227.0, 88.0, 21.0 ],
					"style" : "",
					"text" : "o.route /page"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 203.0, 189.0, 91.0, 21.0 ],
					"style" : "",
					"text" : "o.route /Layer_1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 156.0, 189.0, 20.0, 20.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 156.0, 111.0, 20.0, 20.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 203.0, 124.0, 35.0, 21.0 ],
					"style" : "",
					"text" : "o.var"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 203.0, 31.0, 50.0, 21.0 ],
					"style" : "",
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-1",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 203.0, 71.0, 85.0, 45.0 ],
					"style" : "",
					"text" : "o.svg @autowatch 1 @separator -"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "gliss-grain.poly.maxpat",
				"bootpath" : "~/Documents/dev-lib/CNMAT-odot/src/o.svg",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.svg.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.var.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.codebox.mxo",
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
, 			{
				"name" : "o.select.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.collect.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.flatten.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.timetag.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.codebox.set.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.compose.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.table.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.cond.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.display.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.mappatch.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.print.mxo",
				"type" : "iLaX"
			}
 ],
		"embedsnapshot" : 0
	}

}
