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
		"rect" : [ 53.0, 63.0, 1695.0, 805.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
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
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 2.052795, 109.0, 110.0, 20.0 ],
					"text" : "o.route /total/count"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 2.052795, 146.0, 32.5, 19.0 ],
					"text" : "t i b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.552795, 172.0, 37.0, 18.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"handoff" : "",
					"hltcolor" : [ 1.0, 0.059025, 0.041294, 0.5 ],
					"id" : "obj-47",
					"maxclass" : "ubutton",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"patching_rect" : [ 827.349976, 77.0, 65.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 512.0, 44.46875, 19.0, 55.8125 ]
				}

			}
, 			{
				"box" : 				{
					"handoff" : "",
					"hltcolor" : [ 1.0, 0.015209, 0.083379, 0.5 ],
					"id" : "obj-41",
					"maxclass" : "ubutton",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"patching_rect" : [ 669.742554, 77.0, 65.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 512.0, 100.28125, 19.0, 21.0 ]
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
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 659.349976, 37.0, 207.0, 20.0 ],
					"text" : "o.io.wacom.display.helper.pen.button"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 903.849976, 186.0, 186.0, 20.0 ],
					"text" : "o.io.wacom.display.helper.pen.tilt"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 491.5, 186.0, 192.0, 20.0 ],
					"text" : "o.io.wacom.display.helper.pen.xyz"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 66.0, 186.0, 180.0, 20.0 ],
					"text" : "o.io.wacom.display.helper.touch"
				}

			}
, 			{
				"box" : 				{
					"bgtransparent" : 1,
					"id" : "obj-79",
					"maxclass" : "lcd",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "list", "list", "int", "" ],
					"patching_rect" : [ 491.5, 229.5, 400.849976, 250.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 104.0, 44.46875, 400.849976, 250.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"idlemouse" : 1,
					"maxclass" : "jit.pwindow",
					"name" : "place",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 912.849976, 229.5, 368.0, 228.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 91.625, 91.0, 155.6875 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "FullPacket" ],
					"patching_rect" : [ 66.0, 53.0, 115.0, 20.0 ],
					"text" : "o.select /touch /pen"
				}

			}
, 			{
				"box" : 				{
					"bgtransparent" : 1,
					"border" : 0,
					"id" : "obj-28",
					"local" : 0,
					"maxclass" : "lcd",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "list", "list", "int", "" ],
					"patching_rect" : [ 66.0, 229.5, 400.0, 250.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 113.0, 79.28125, 320.0, 175.875 ]
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"id" : "obj-23",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 273.0, 23.0, 100.0, 50.0 ],
					"pic" : "wacom-intuos-5-tablet.jpg",
					"presentation" : 1,
					"presentation_rect" : [ -3.075012, -1.375, 565.0, 341.6875 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-1",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 66.0, 1.0, 25.0, 25.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-72", 1 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "wacom-intuos-5-tablet.jpg",
				"bootpath" : "/Users/gabacheker/Documents/maxliB/wacom",
				"patcherrelativepath" : ".",
				"type" : "JPEG",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.wacom.display.helper.touch.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/maxliB/wacom",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.wacom.display.helper.pen.xyz.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/maxliB/wacom",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.wacom.display.helper.pen.tilt.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/maxliB/wacom",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.gl.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/maxliB/CNMAT_Externals/odot/abstractions/io/graphics",
				"patcherrelativepath" : "../CNMAT_Externals/odot/abstractions/io/graphics",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.gl.platohelper.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/maxliB/CNMAT_Externals/odot/abstractions/io/graphics",
				"patcherrelativepath" : "../CNMAT_Externals/odot/abstractions/io/graphics",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.wacom.display.helper.pen.button.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/maxliB/wacom",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.select.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.iterate.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.cond.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.union.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.message.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.if.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
