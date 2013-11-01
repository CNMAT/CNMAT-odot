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
		"rect" : [ 44.0, 182.0, 1014.0, 776.0 ],
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
					"comment" : "",
					"id" : "obj-69",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 968.0, 119.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-67",
					"linecount" : 4,
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 283.0, 539.0, 150.0, 60.0 ],
					"text" : "/pad/a/1/led/sw/intensity/red 0.3125 \n/pad/a/1/led/sw/intensity/green 0.625 ",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-66",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 228.0, 515.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 228.0, 472.0, 149.0, 20.0 ],
					"text" : "o.collectwithtimeout 0.002"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-33",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 534.0, 311.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 396.0, 398.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-34",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 489.0, 311.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 351.0, 398.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-35",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 534.0, 276.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 396.0, 350.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-36",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 489.0, 276.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 351.0, 350.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-37",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 444.0, 311.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 285.0, 398.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-38",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 406.0, 311.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 247.0, 398.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-39",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 444.0, 276.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 285.0, 350.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-40",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 406.0, 276.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 247.0, 350.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-41",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 358.0, 311.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 173.0, 398.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-42",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 319.0, 311.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 128.0, 398.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-43",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 358.0, 276.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 173.0, 350.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-44",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 319.0, 276.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 128.0, 350.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-45",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 269.0, 311.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 60.0, 392.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-46",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 228.0, 311.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 19.0, 392.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-47",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 269.0, 276.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 60.0, 350.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-48",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 228.0, 276.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 19.0, 350.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-49",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 534.0, 241.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 396.0, 273.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-50",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 489.0, 241.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 351.0, 273.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-51",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 534.0, 205.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 396.0, 237.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-52",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 489.0, 205.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 351.0, 237.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-53",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 444.0, 241.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 285.0, 280.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-54",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 406.0, 241.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 241.0, 280.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-55",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 444.0, 205.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 285.0, 237.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-56",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 406.0, 205.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 241.0, 237.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-57",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 358.0, 241.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 173.0, 280.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-58",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 319.0, 241.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 128.0, 280.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-59",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 358.0, 205.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 173.0, 237.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-60",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 319.0, 205.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 128.0, 237.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-61",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 269.0, 241.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 60.0, 280.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-62",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 228.0, 241.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 19.0, 280.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-63",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 269.0, 205.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 60.0, 237.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-64",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 228.0, 205.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 19.0, 237.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-17",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 534.0, 167.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 396.0, 167.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-18",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 489.0, 167.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 351.0, 167.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-19",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 534.0, 130.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 396.0, 130.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-20",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 489.0, 130.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 351.0, 130.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-21",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 444.0, 167.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 285.0, 167.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-22",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 406.0, 167.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 241.0, 167.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-23",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 444.0, 130.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 285.0, 122.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-24",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 406.0, 130.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 241.0, 122.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-25",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 358.0, 167.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 173.0, 167.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-26",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 319.0, 167.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 128.0, 167.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-27",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 358.0, 130.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 173.0, 122.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-28",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 319.0, 130.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 128.0, 122.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-29",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 269.0, 167.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 60.0, 167.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-30",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 228.0, 167.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 19.0, 167.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-31",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 269.0, 130.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 60.0, 130.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-32",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 228.0, 130.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 19.0, 130.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-9",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 534.0, 95.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 396.0, 53.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-10",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 489.0, 95.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 351.0, 53.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-11",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 534.0, 56.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 396.0, 14.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-12",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 489.0, 56.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 351.0, 14.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-13",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 444.0, 95.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 285.0, 60.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-14",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 406.0, 95.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 241.0, 60.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-15",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 444.0, 56.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 285.0, 14.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-16",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 406.0, 56.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 241.0, 14.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-5",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 358.0, 95.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 173.0, 60.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-6",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 319.0, 95.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 128.0, 60.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-7",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 358.0, 56.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 173.0, 14.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/sw/intensity" ],
					"id" : "obj-8",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 319.0, 56.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 128.0, 14.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/1/led/SE/intensity" ],
					"id" : "obj-3",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 269.0, 95.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 60.0, 60.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/4/led/SW/intensity" ],
					"id" : "obj-4",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 228.0, 95.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 19.0, 60.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/4/led/NE/intensity" ],
					"id" : "obj-2",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 269.0, 56.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 60.0, 14.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/4/led/NW/intensity" ],
					"id" : "obj-1",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 228.0, 56.0, 29.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 19.0, 14.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.756348, 17.0, 100.0, 50.0 ],
					"pic" : "quneopic.jpg"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "quneopic.jpg",
				"bootpath" : "/Users/gabacheker/Documents/maxliB/o.io.quneo.all",
				"patcherrelativepath" : ".",
				"type" : "JPEG",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.led.red.green.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/maxliB/o.io.quneo.all",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.collectwithtimeout.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/maxliB/lib",
				"patcherrelativepath" : "../lib",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.pak.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.message.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.collect.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
