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
		"rect" : [ 251.0, 44.0, 898.0, 768.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 617.0, 38.0, 60.0, 20.0 ],
					"text" : "loadbang"
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
					"patching_rect" : [ 632.0, 86.0, 282.0, 60.0 ],
					"text" : "/manufacturer \"3Dconnexion\"\n/device \"spacenavigator\"\n/instructions \"requires aka.spacenavigator and drivers from 3Dconnexion\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-66",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 95.0, 42.0, 150.0, 33.0 ],
					"text" : "Space Navigator\nAdrian Freed 2013"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 410.0, 632.0, 50.0, 20.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 411.0, 593.0, 225.0, 20.0 ],
					"text" : "o.io.helper.buttonstate /right /button/right"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 399.0, 662.0, 60.0, 20.0 ],
					"text" : "o.change"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 409.0, 558.0, 211.0, 20.0 ],
					"text" : "o.io.helper.buttonstate /left /button/left"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 408.0, 404.0, 120.0, 20.0 ],
					"presentation_rect" : [ 399.0, 404.0, 0.0, 0.0 ],
					"text" : "scale -180 180 -1. 1."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 332.0, 370.0, 120.0, 20.0 ],
					"presentation_rect" : [ 332.0, 370.0, 0.0, 0.0 ],
					"text" : "scale -180 180 -1. 1."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 254.0, 405.0, 120.0, 20.0 ],
					"presentation_rect" : [ 254.0, 405.0, 0.0, 0.0 ],
					"text" : "scale -180 180 -1. 1."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 187.0, 368.0, 120.0, 20.0 ],
					"presentation_rect" : [ 187.0, 368.0, 0.0, 0.0 ],
					"text" : "scale -180 180 -1. 1."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 112.0, 398.0, 120.0, 20.0 ],
					"presentation_rect" : [ 112.0, 398.0, 0.0, 0.0 ],
					"text" : "scale -180 180 -1. 1."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-54",
					"linecount" : 14,
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 624.0, 515.0, 308.0, 194.0 ],
					"text" : "/translation/side 0.\n/translation/vertical 0.\n/translation/along 0.\n/rotation/along 0.\n/rotation/around 0.\n/rotation/side 0.00555556\n/button/left/down false\n/button/left/up true\n/button/right/down false\n/button/right/up true\n/manufacturer \"3Dconnexion\"\n/device \"spacenavigator\"\n/instructions \"requires aka.spacenavigator and drivers from 3Dconnexion\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-53",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 239.0, 714.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 53.0, 374.0, 120.0, 20.0 ],
					"text" : "scale -180 180 -1. 1."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-51",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 96.0, 481.0, 568.0, 33.0 ],
					"text" : "o.pack /translation/side 0. /translation/vertical 0. /translation/along 0. /rotation/along 0. /rotation/around 0. /rotation/side 0. /left 0 /right 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 175.0, 90.0, 104.0, 17.0 ],
					"text" : "bang causes output"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 160.0, 90.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 59.0, 91.0, 101.0, 17.0 ],
					"text" : "Enable polling ...or..."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 406.0, 244.0, 51.0, 17.0 ],
					"text" : "Right"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 406.0, 178.0, 51.0, 17.0 ],
					"text" : "Left"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 336.0, 244.0, 51.0, 17.0 ],
					"text" : "Left"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 336.0, 178.0, 51.0, 17.0 ],
					"text" : "Right"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 266.0, 244.0, 51.0, 17.0 ],
					"text" : "Back"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 266.0, 178.0, 51.0, 17.0 ],
					"text" : "Fore"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 196.0, 244.0, 51.0, 17.0 ],
					"text" : "Back"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 196.0, 178.0, 51.0, 17.0 ],
					"text" : "Fore"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 126.0, 244.0, 51.0, 17.0 ],
					"text" : "Up"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 126.0, 178.0, 51.0, 17.0 ],
					"text" : "Down"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 56.0, 244.0, 51.0, 17.0 ],
					"text" : "Left"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 56.0, 178.0, 51.0, 17.0 ],
					"text" : "Right"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 539.0, 136.0, 67.0, 17.0 ],
					"text" : "Right Button"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 469.0, 136.0, 67.0, 17.0 ],
					"text" : "Left Button"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 46.0, 112.0, 502.0, 17.0 ],
					"text" : "aka.spacenavigator"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 44.0, 90.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 534.0, 151.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 464.0, 151.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"id" : "obj-26",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 394.0, 176.0, 12.0, 82.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"setminmax" : [ -200.0, 200.0 ],
					"settype" : 0,
					"slidercolor" : [ 0.0, 0.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-27",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 394.0, 151.0, 35.0, 17.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"id" : "obj-28",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 324.0, 176.0, 12.0, 82.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"setminmax" : [ -200.0, 200.0 ],
					"settype" : 0,
					"slidercolor" : [ 0.0, 1.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-29",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 324.0, 151.0, 35.0, 17.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"id" : "obj-30",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 254.0, 176.0, 12.0, 82.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"setminmax" : [ -200.0, 200.0 ],
					"settype" : 0,
					"slidercolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-31",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 254.0, 151.0, 35.0, 17.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"id" : "obj-32",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 184.0, 176.0, 12.0, 82.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"setminmax" : [ -200.0, 200.0 ],
					"settype" : 0,
					"slidercolor" : [ 0.0, 0.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-33",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 184.0, 151.0, 35.0, 17.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"id" : "obj-34",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 114.0, 176.0, 12.0, 82.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"setminmax" : [ -200.0, 200.0 ],
					"settype" : 0,
					"slidercolor" : [ 0.0, 1.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-35",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 114.0, 151.0, 35.0, 17.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"id" : "obj-36",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 44.0, 176.0, 12.0, 82.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"setminmax" : [ -200.0, 200.0 ],
					"settype" : 0,
					"slidercolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-37",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 44.0, 151.0, 35.0, 17.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-38",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 399.0, 136.0, 51.0, 17.0 ],
					"text" : "Rz"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-39",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 329.0, 136.0, 51.0, 17.0 ],
					"text" : "Ry"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 259.0, 136.0, 51.0, 17.0 ],
					"text" : "Rx"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-41",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 189.0, 136.0, 51.0, 17.0 ],
					"text" : "Tz"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-42",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 119.0, 136.0, 51.0, 17.0 ],
					"text" : "Ty"
				}

			}
, 			{
				"box" : 				{
					"data" : [ 3307, "png", "IBkSG0fBZn....PCIgDQRA...nD...fHHX.....928jQ....DLmPIQEBHf.B7g.YHB..LHZRDEDUnEXwZtFabbcdF94L22abWxkW1EjxlRTJxxkVVRFvvJvUIAN9hTEPQRrSJb+QKR.pChrbaR.LBPR8eZLRARkihihiS.LfMhcQLDTfArrjQMTrUr.JrSfjpDqnrpkHsnnHWRJt7xdemYN8G6LC2kbotDQY+ALX1cmY1ybd12u2y24LqfOiCGGGY974wwwAEgBRjdGQfP.RoDSSSBEJj3yx6yO0Z74laNY4RkwU5hppJBQslVSSinQihhhxxdsUqVkhEK1ziEJTHLLLtk2Otk0.SN4jx56bISljPgBE.nUpnToRToREpToByM2bzWe8cKoOsh9klMaVYlIxP1oyRu81KISlDcc8Uxl3ZFG3.Gfsu8sS4xkIQhDnnnrhzGWd890Q355JAvtps7O8m+SxKe4KSGs2AG7sNHoRk5ScHMv.CPqs1JgCGlVasUle94ob4xxq8Udsi+hnc9YlQ92mHAug20efe+Ajeou3WBMMMBGNLpppr+8uerrrHbnvz255it5rKBEJzJw8LNNNTpTIxkKG4xmGWGGjttrpUcaDJbiswPCMDqYMq4lVUocidA+mO8SK+aSj.au2ericL4a9luIaYyagd6s2fy6wdrGK30SLwDbwKdQJTn.ZZZnqqiPQAUEEjxZ+fq38Zgn1nc0F0Sfqqavw72LsLIZjnzZqsRWc00U898HG4HXaaK0zzBf07SOs7k+A+.18u42rx6mIykSt2d5QtCP93f7gn133m3DmPda21sI28t2s70dsWS9QezGIKVrn7y5XzQuj7UdkWQ9nO5itjTu+tPgjedP9TaYyW2okWWJp4N3aIOWznDJcZhPs7M+VXyadyB.4q9puJG8nGkUu5Uy5W+5YCaXCr10tV5omdHYxjDMZDDhaJKwqZjOedxjICm6bmiAGbPFd3gISlLzSO8zv48Remui729Bu.o.N6wOA6.j+9BEvJb3qp55ZBpQ9G+GjWXm+MDGPSHpAHgf6pmdn+74ksEKF+zQGkrYyRtb43bm6b7du26EXnlNUZ5YUqhdVU2jNUZ5ryNIY6sS7VZgDIRPrXwvzzDUUUTTT7R8DAoYtttX6XicUaJWoLEKTjb4xQ1rYYpolhol5JL8zSyryNCEKVDaO+JWGWrssYiaYKMze9Zm5TLcWcw+UlLDCnLvWHbXNwQNhbyOvCrrv5pRwyzQGxpSNIF.g.dmN5f2qTIREJLyNQFDde9aonv4UUIjlFJJJAcX+NpqashLsrrHRjHDuk3jn0DnqqSzHQwvz.MMMrrrPUQAghBH.gDjRvU5hTJwwwIvGSUUEMMMzzzBJf02Sy0sFjlMed1Xznrw3wQpqiQO8vZ229Hx.CvGrl0v9FZHhHk3BLJv+z286xS7y9YMkIM8CyexSJGbSaBcpI4T81OwF2HClKOkKjGooIUpTACUUdixk4HyOOwLMCfT8gqqKBgvyHWCSyPXXniqqKs0Va.fggQPGWSSCMcMzTW.D0CE+89pv5aSefZKkLqTRm+g+.EOyYvEXdf+0d5A8KcIz.lIcZ92ledpjKGp.SAz+cdm7qOyYVBWVRp2nOyyHO0l1Dg8.j+U3Bj9Tmha26yU7NVL.aEEdm3wwntec8C+THUUUz00QSWGCc8fNaGczAEJT.EEkEfjpFp5ZnG.FUTUaDN9WuOnP.BD0TeFFTdxIIxq+5TJedDd2uZ.BuZ6JCDYrwXOwiyOsqt37YxP6.e7YNCO.HeiYlgXIRDzQZfbmt+9k4GX.L8fgOnV7deKYEfH.GPUkmri1oC0lCJDBz0zvvv.CCiZ.SSCaaGV0p5IHEsAEUSTOKVA4mBpHDHTDHkBbTDDIaVdlW3EX1TonpoIkqVkpHnroAZiMFxRkvw6GeIPKZZ765oGNzvCSLfJ.Y.9UG7fbe6bmh.EU4wFS9mSml7CL.FKhdhEsuYDVUUESSKLVTm.jHk0l3qggNllVAPRWWmRkJgPHHQhDTrXQLMMBTN0CHMUUTTUQQUAEgeaz3cgeaJTTvRJIKP9wGGoGLT.LqCN0GYss4qN7vr1UuZ12EuHVNNjF3I14NYue6us7e4EeQg1UN7gkua5zD2SwTOHpeCuFnYutjtNgLMwPHVxHWBEELMLvzzDSSyF.kppJBDjLYajM6L04SUKUa47hZXkFjRbqqXTTUQ0vnAPHWz956e98i4A9bCMDOapT7umOOEmed5F3UdwWj+iu02Rpkb6aWbgu22SNxy8b0xgWDbZlBx+89+RcEKSBaYgIrDybcccrrrvxplZp9MCiZJnVZIN11NKIsSUSEMUMTTUQUQoFXUTpc+snRHbccww0AaI3FIB2HgOrJAXL937rszBOepTbtwGG.10O+mWK0aMO2yIl4cdG4+6C9fnPiJqE+ksXXoBbwXsPDSCLolWgv6LU0TwxzhPgBEnlpezM7.ajHQnRkJWauIO+nZJpZsR8kNXaaisiCEhFcIJ+Emts3LF251mat43eNed9cszB12+8SnnQEAi5k3AePg87yK+ehECGZ9xJTei6G5.msiNHpgA599DdaVVVDNbXLMMavH2eS55hiqKQiF0yzmZi3oVmRRSAUkEfkuOTyTUNNNXW0F2nQIWc2yRVJntZycQBLgiCesXw3tOzgVvL2OzhES.vY2vFjkFbPLp6B8Ie8l8RfwAx1VazU0pM.ICCCBGNr+JP1fhxeuTJoPgBXZZ1Pgjp9kC3ktoppfhxBfRQHf57AAIttK.K8vgI6FtCZavy1f480BV9Jpx.88rOKq5G9CCRhZ5TXtiAGTL5t2sbxewu.y5fTwN6j+6PgHbkJn53vV+BeQ1+nWhjJBLMMCfj+xsDNbXLsrvzSMUupxPWOvaITnPHTTBpap9zs5MxalhBXIdUlFFL+e81H4fmsofX4BauyYqiONFoR0fSyUcJLycnCIGdG6.CpkhMc2cyyL5nDlZUw9zu7KyOY+6mjZZAPRQQkvgCQjHQvxxJXzt5AkllNllFL2ryQ1Yxx8du2KdkasTPonhhp.EgJBUAJBuAKDhET10MpmqqK1.NkJwc9k+xXyBYDEowTQWuMGpYj2923avZd8WuoL4pNo3V1wND1yLi7bIRfKfliCg7ZvmXW6hyWoBI0zvxzBD0Ll8mOWnPgZJn78mL8ltS4JkIZzndOwkZ0b0LkT8kcrPcZKDKVUYGMJidrigLWNJO4jjYjQ3q90+5Lz8ceTcpoBR67A0F9i+QhssssrBmq4pGn4UF+vqYMRkQGkL.+jW5k3y+M+lr8G5gHUpT.MCRlXXZg0hTS9i5YXXfssMIRzZvDlCpz1aDN0EU6Ty.0B9TzPMUNNN3XZQ0DIfzoQzVa7Qc2MQiEipSME.TEHT+8y5FX.AaaaWcNbs.kez6Etf37e+uu7W+U9Jz+8e+heUkJxjIaGSCSTTUBFgyuT.eP4WrotgAF0UdfggQfelokEgiDI.Lp9kBrHH0XU+rrppFTV1NToRYVUmcx+2oOM2inlJpJP2+xeII20tttVkyankBtu8rGA6YO.vbyMKEJjmN5ncLLLHZznMjpUeJm+9EWvIxZOyt1SlrooZKtZ7.H44OsbfBpst59K2hooAevG7ADsu9vYpqfhlF+UYyhp2n7WOwM6ZFKejG4Q3ttq6ht5pqFfiOzZHkSu1TWz0porbbbHSlLr4MsYrcrWVeoqVZWvMB.t0J9T5crRkJwm7IeBG9vGl29sead228cES8i9Qx1+w+3a398MEnFczQkc2c2DOdb1zl1D28FuaV65VKc0YWDIZj5lphN55KUQYYYgqqKQhDAE0FKrrd3zr03Z4hhEKv3imgyd1yxIO4I4nG8nb5SeZt7ku7MUe8l9oPL6ryJiGOdv6SjHA2du8xFti6f0+4VO2du2Nc1YmzZqsFXzaXZfgtQP8V9ix0v5KcMBGGGJTn.yM2bLwDSvHiLBW7hWjgG9SXngt.e7G+wbpScJRmNMiM1X2z8yUrGWSe80m77m+7K4yUUUos1Zit5pKRmNMc2c2jJUJ5niNns1Zi3wiGL.fOrpYFKwwwlJUpPoxknP9BjKWNle94Y1YmkYlYFld5o4JW4JAaSmMKyjMafO0S9jOI6ae6aEoOth9bsd9m+4kO0S8T2PWS8F80OeNfFlCmuwrssMUqVEGGmk86LVrXb7iebV25V2s7+7F2Twd26dk80We9E.+o11i+3Ot73G+3qHOB8EG2xI96+9uu7nG8n7ge3GxINwIXjQF4l96r81am96uetm64dXqacq7vO7CSrafg5+KI9LSZN8zSKuzktDiM1XL6LyfiqKkJUxqtGyfBXaqs1p87ASmlD0sX+eZG++.dNwKw+.32fB....PRE4DQtJDXBB" ],
					"embed" : 1,
					"id" : "obj-43",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 12.0, 276.0, 74.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"data" : [ 3154, "png", "IBkSG0fBZn....PCIgDQRA...3B...vOHX....vmyneB....DLmPIQEBHf.B7g.YHB..LjPRDEDUnEX0Z1EabbcdF94Lm4uc1kj6xkjK2RRYRSwxHgJ+ipbqrMRbUbJrkQSEbAjuvntn2XDXCWeSupvo.AEHnHF8BUAizDfzjaBhgifpABbrsbnprh.TqsLnMDsqUXjBEkBkzRKRpkb496LyoWL6LZWRtTRTT1NeDGrK2cl47bdm2uuygygvcvXe+K6S8iOxOVcmrO1Tie1w9YJ9pnXOn3OEUghE1zgWey9B9lp2T8DEdBjJIds4AVPGOUGa1cyla3o7TT+mgFeHEODJ1Wfxu2+489kWKiiuiBeBZJTC9uOnhGEE+0n3OC0O8+9m9kO3eJ+mRgGMAtkxRk9uMshm.EeSTrKT4Kj+KOv+K7+EMCsW8lBUWptTlOhYfpuWBFDeYHp3WQgaCv13.Hzxb5AU7f086ecTO5+zi9EO7ltlAvtR38ZV4G7UFTwWute+OG0O4c9IewA+9b2W.vM1ZA7lJSUW+ccEXW9lA02maw497G9C4cHE0pCaMV8.XkMEpzpzJqGwJ.78hhG+yY+9x9KqnZcfarsdfWqtk4iGTwtqaYdDT2yyeOeNBeEB.uw1JGDqrEVsQgZf+iAT7vAfelKdlMD3ha0S3W68qU+R0uDABTnHO44G3+CV2yQJkjoTFDwETiZTfBj8eLKm8e6rHzD2xLroDJekhJnVy6B0uSLjZHEfBApuyK8c1TrF21KxplnFnH3dWKPxCOnM.CHmL2saWBrArJKt3hpJkqfuxGSoItRW51o6VBMBney942K98ri+pcvQ9OOBcjHItt0Z5vhEKFlll2z7bCOvO6y9LUoRkh98zoSSrXwPT2Z5hKFkLV2qjvVvC+nOLm3nmnkGS4xkoZ0pTsZUVbwEY3gGdcYaM+xEVXAUtYywByu.CN3fjNcZLLLV6qfBlhonK5BCLPPPB3RrDWUcUtDWhy6cd9VFeq0iiUEG9vGl8t28RkJUHYxjnoo05AhaMW0o9fSo9jO4STyM2bpW5a+RpuHhIlXB0QO5Qi9874yqpToRSlwlFEG9+5vp87WrGz00wwwAoTxgNzgv11FmXNL7HCSldxPrXwtkTuVEdddTtbYJTn.EVdY787P46y.CrEh4zbeL0TSwce22cDuQUUNwINg5Mdi2fcd+6jAGbvnSX+6e+Que1YmkKbgKPwhEQWWGCCCDZZH0zPoBDDs5uWHDDjFHPHD366G8cgMKaKRDOAoRkhLYxrtCxidzihqqqRWWWzD3NNN7pu5qRwhEY26d2rqcsK1xV1B111QmbO8zC8zSO2Rp5saboKMCiM1Q4HG4H7rO6yFo3qzvqRkJECLv.LzPCwniNJaaaaist0sR+82OoSmlDIhiPncGCzkWdYxkKGSN4j7oe5mx4O+4IWtbjMaVNvANvpsJ.zYmcx7yOOEJTfImbRd228cwwwgToRQ1dyR+CL.8OPejs2rzSO8P5t5hNZucRlLIs0VaXYYgTJQSSqtUQDYK788w0yE2ZtToZEJUrDEJTfEVXAt5UuJW8pyw7yOO4yeMJUpDt0869d9355x1291aZ.1D36bm6jwFaLz00QSSCeeeVd4koPgBL8zSi++yIQJkXaaS73woi16fjoRhggAIhm.SKSz00w11FolFBMMP.BEnTfuxGkRgmmWTdfTJQWWGcccjRYzmElW3hKBgfToR0ZvGczQYrwFCSSyHUqwv22ORIqUqJKUn.UpVAeee5ryNA.SSyHPz00Q2PGc40Aqouq9mEdWpw9TSSKZ.pTJRjHQqAu+95OpyCG0gQ3EPJkXXXftgAlFFQcd2c2MEKVDMMsqClTGogNFQPKQJaF1vyODbDf.A9J+n9WpIwwwo0fmnsDXZZ1RvQHvPWO5XLpCtqqGFFFzd6siuu+ZppMptqTgCsGZBABMAJk.MkO9Be.vJlEttdsFbgPfsscSVk.3UnTfttNllFXYYGAsggAkKWFgPPxjIoToRXYYForMBrtThlThlTCMQH3PiE2ZLo1yK.VCciUU9qIvymOe3pzVUkAglFVllXYYgkkUSfKkRDHHc5NYgEtVC97.qQq7xZZMTVUovugImTD3y0DA1oRkK0Zvm4RyP73wwxxZUImFFFXaaiscfZ2XKvZoS6s2AttdqN4SWhtTGMoDolVv.USCQcEtwRl999346gumOdddHzDjHQBVXgEZM3+ly7aHQhDXYYgPSfn9MHotDaKahEKVjZ2X0CpqNwiGmpUqdi8108yAJdPuzXoRWW2nVsZ0vwwgb4x0ZvO6YOK80WeMYSB88NNNXYY0ThYXS46imuOIRjndRLAUTjMnz5ZH0tN7BgnkptmmGt0boZspTqVsnpOEKVT433z7ZUN4IOo54dtmCaa6lf1zzDGGmHueiJd3qJkhhEKhkkUSSrHCK+U2dHkZnoccv0DBng7HPgueCvWWwsssob4JL4jStZE+0dsWiNSkJvlT+hEt7VGGGrrswptZ2npaZXD4MiEKFBMsn51MZOZLwbsT7f7yU3087nlqKNNNjOedFe7waF7JUpn9ZesuJ81a1Hn0zj33Di3wiisscT0jFAWW2.KKSTpf0VGKVLrsigPvpAWShlTflPhPJPSTO4WHhJ003RdCA2yykZ0bIVrXLyLyvT+toTCc2CIzA3ke4WlL8lEaKaPDjnEtdj.XVM3g96vJPUpVgDIRfPPTM+0RoWY9yJWVwJU8HkuVMz004c9UuSfhekqbE0y7LOC81auQUGZFZKLsrwdEpcXUESSSbccIYxTQK.KZlv5UPjqn18ZA9084zTMcOOufEa45hSrXTpTIlXhIT5u9q+5jNcWXYZglTKpBRXouPvCm7wvzDyFJGZZZFkOXYaiS73QfJCK8sBnadVYZop2nx655Q0pUnu95iyctyg9hKlmhEWlt6tKLMMIQhDMYMZzhD95Jm.BETqVM5Jc50zZrxYKiftt+tUfCzjhaYYx68duWPdT3w93O9iyN1wNHSlLMAa3fnIKhQvT8F5AJummG4xki6+9teb8baoud8rIQPCfuezz9BgfxkKyzSOMu0a8V71u8aywN1wBNiYlYFUe80GczQGbe228w8dO2KacjsRldxP7DwaXpcCLLVshaaaiuuOwiGGMYySzzHrq0Z7aUTpTQtxUxwYNyY3i9nOhie7iyDSLAW5RWp4kkkOedUGcb8MRMYxjbWCNHa6q7UXz+3Q4tF7tnmd5gToREk3ZZYhogYT89vpHMs95aP344QwhEYwEWjYmcVt3EuHW3BWfye9oYpo9cb1ydVN8oOMYylkKe4K2x+XYFd3gUm6bmaUcfTJoyN6jLYxP1rYou95id6sW5t6toyN6jN5ninD5P3CRtT344R0pUobkxTb4hTnPAVZokHe97bsqcMle94Yt4lKpM+BKv0VXgHe9K7Bu.uxq7JMw5Zde6fG7fpW7EewanZ0XzXhaiqGAnoITBSzBmNObM2qUzVasw3iONiLxH2ZOb1CbfCnFd3gCVDwmism9oeZ03iO959bzuoGIm3DmPc7iebd+2+84C+vOjKdwKdydpqYHQxH+QivnaeT158tUdvG7A4wdrGi1ZqsaJlts1FiG3ie.0o9smhrclkbeVNjKIQ4pPTVfrlDOKODwD31qKY91Y3xSdYF8eXTF3ue.FL4fDSEi1oc9t89cuk4XCC9C8+9PpSN+IAMHy1yPNybW+JFM6P8VmP5cmFcGcxcvbvr.9.KCm5u7T7.IefaYN1POKs+lweR0IyE.MtfYESnDPw.XnP81x0+rBPRQRV7ecQXt5CLe34+Sd9MDzvFbOflK67jJcJrU1X4awrLafB1pXQn+C1OKYtDo0SSU2pHPv2eae+M7c7MtGeRTMYKtQgjqac7fpiTESwM+d9rxXC+XWu7PWFpwMeQtZ.t.kgOXfO31B5aKvyZjU7Cy9Cukg+6062icEaW21aJ6s8EXOWXOpis7wVeIPA3CeiDeCFaKisorSxaNaG8YPEsIsqLpq1sIaikFcoMss+dSYqEVbqKBUo0VDO1TgF1j.uc81E+765mCUHnrXHv9.UgIG42tYzM24hmb5mTwoQwGWu8gn9Qy+i9h+++palH1GGK.9OB09md++gAz.346o3Tnx9+06e3.cX7l4eSkxWcGE7+ev2CEn8cM6OIC....PRE4DQtJDXBB" ],
					"embed" : 1,
					"id" : "obj-44",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 97.0, 261.0, 46.0, 63.0 ]
				}

			}
, 			{
				"box" : 				{
					"data" : [ 2895, "png", "IBkSG0fBZn....PCIgDQRA...3B...fJHX.....ynjVH....DLmPIQEBHf.B7g.YHB..KXPRDEDUXUXyY1EabbcdF94ble2YmkbW9+FRJKZYFEKKk3RqVHiB6F2arQRiQBBLBhCbxMwsvnJAs.NwFsEH2TfzZzhZz31zKZunEHvvvvQnnxPTxTQTQJVwRxJxlNxxpzlTT7ukhZWtj6+6LyIWL6tbWQtp1PFt9CXvN6ryLmmy67d99NyYgOEFm+RKp9+aF9PGG6byq9Z+0Sn3K7STj7uSM4Et0vK9jBrsKNzoWP8SO7rbrWaVPJ.aCvVODqrkgy9MZKeehC9O6DKo9ou57b5StLXoEBpkNHD0noFRkB3dFMF+1+0e+skwOQ.+EOUF0+z+yRb1IWAbDPDMvTKD15XH.TBPIAoV3gSWk+4e3t36+k6dKb9wF3999p74yiuuORgDEJ5rSKF3q9Jj55Ef.O5IYerZ0cA48.cAnI.c4l6qrXuCrFqu1MvGM77gToq.u1id6C95qutpboxDnBPSSCQMUSWWGWWWjR4s75KUtByrREd+kqvTyUhe8+aIN46VfryIwL5Gfb4SRIq8A5AgWPp7v6cvO5fe8qecUwhEa78t6tahDIRCf+3LdyollietqxO9k+.VaYMP3CaTFl968gC7LYxnRsRJxjNC6bm6jt6taLLL9XGzaUb5SLNYibO7cetSwxG5asENa44pWUO04N+4TKt3hzaO8xge0Cy.CLvm3P+Nuy6fGV7kOvvrzO+wYi0WWUtb4Vxq2RO4U94uh5g9hOD555333fllFu7K+xXaaiSDG10n6h96qehDIxGK.566SoRkHWtbjKedB78QEDvvCuCh3zZaLyLyvcdm2YCd0quyoN0oTG9vGlw98Fictyc13BdrG6wZr+JqrByM2bTnPAz00wvv.gThlThREJHxZ6KDhZY6DHDBBBBZ7a02rrsvMpKIRjf96u+aYm73G+3344oz00Es.tiiCu3K9hTnPANvAN.6e+6mcricfssciKtu95i95quORp5sar3hKvDSbbN5QOJO4S9jMT7a1zqRjHACO7vLxHivt28t4tu66l65ttKFZngn6t6FW2nHD25Td2NQ974IUpTbkqbEd228cY1YmkToRQxjI44e9meqVE.5pqtHc5zjKWNtxUtBSN4j333PhDIH4.IYngGlgFdPRNPR5qu9n6d5gN6nChGONwhECKKKzzzPJk0rJhF1hff.778vqpGkqTlhEJRtb4HSlLr5pqxpqdCRmNMYytFEKVDuZ98.+.777XO6YOszAaA7wFaLlXhIPWWGoTRPP.4ymmb4xwUu5UI3LuNZZZXaaSznQoyN5j3IhiggAtQcwzxDcccrssQSJQHkgUyUfRAAp.TJE999MFGnoogttN555MJnU+yff.7vCgPPhDIZO36d26lIlXBLMManZMGAAAMTxpUqvF4xQ4JkIHHft5pK.vzzrAH555nanit1lf0xuU6X0eJ0baJkxFcPkRgqqa6AenAGpQi2b4bfF2.MMMLLLP2v.SCiFMdu81KEJT.oTtIXZ5nYniQCn0PSqUXqe80AOb9VBBTAMZeMoFNNNsGb2XtXZZ1VvQHvPWuw4XTCbOOeLLLniN5ffffsUUaVcuYEtt8PJDHjBTJARU.Ahv4qXEwBOO+1CtPHv11tEqRH7JTpvIRYZZfkoIllFnoGBeoRkPHDDOdbJVrHVVlMT1lAVWSColFRMIRQcvglSt07fZe+PXMzM1R5uV.Oa1rDIRjs.tRoPHkXYZhsoFtQLPoGkNzygothBxpDgbbG80OYxTDCCvv.j5FTFm15kaYljJEAMUbRQnOWJBsSEKUr8fuvhKPznQwxxZKCNMLLvwLTUOZe+mTrZb.ePUDYG4ItXEF+5tD36inB3gMcy77mNxQwSFN8AolFZRYnMTJQTSgaNkYPP.9A9D3GfuuOBo.WWWxjIS6A+8t76gqqK15Jjx.DBIJDnoqSTKAQ68yxgb+WfRE.wp0dCFAABSRq1ATt9cxl9cVhYNx+Ewel8PwpxVU7Z94PEWffVSU5440XqZ0p333PpToZO3SO8zLz.ci2vOJn7ffJXQIbzqBQFfCI9APkrfL3lbbpP0u1rH5W6xjZh+Av2gA61l0KogmvDExVKP0FU222GupdToZEpVsZirOEJTP433z5nhW+0ec0S8TOE82oj2ZO+2jZiDfnNfBPE.jOrZRXysIzpldQWkfg6LOHzHe4.FtGK9bcrL+AwuDizuMJZxiKDPSii.EAAMAeMEuToRTpTYdvG7A3du26s0IY8RuzKQWIRfsYEhIWmTAFfzaSHE0U1aAz0N10xl.YTWRptDKe9w4st3aQ++4+wL1t6ixUUaqhCrUutuOU87vwwgrYyxEtvEZ0pTtbY0C9fO.CLPRLCVGcQq4LaeH1rynDfzhN6zfNy9qnvTGgEVICXDAbigksIttwvnR.BMARQsA+Bwlc4lxpTGbeeOpV0iHQhvBKr.y7AynF4NGQnCvy8bOG8OPRrsrwPUEGC+Pd1hx1z2a7gNHrIYhxXtzqxJW7WvbkTftMX6V6dTFSCSh45hdE+FoY2rNwlwMq5MT9pUQWWmi8ZGKTwWd4kUOwS7DLv.C..1BGL0BpeWZ0lz3kmDg.aFkcXOOhqMNW8LmEjQ.Mavro0Ko18wvzjnQihP2aaAeSeNsjS222ObxVdd3DIBEKVjolZJk9gNzgn6t6AKSKjZR5z1FGcuPnEM8Zd0eBHLIhqC8V92f2rGg4lcVvzALiW6IhZygBrIHFFFD0MJnU8lpJSaU8lUdOOepToLCN3f79u+6i95qmkBExSu81ClllzUGFXUtZH30FoiRCjVzSbIN2XRV+7Gi4VKOn6.Qh2TGT0j0uA8PfB+.HZznfr5lPWye2NvAZQwsrL4Mdi2.a6Hn+LOyyJ.TOxi7Hru8sOhEqChDTqgURPKBC2YNX9CSp27TrpmVn+0JVMPq6+aBTBmPFJEjuDjYCF8N5GSKaBPeasIs7fMHnQYegPPoRkXokVhibjiv3iONm3DmHbv4BKr.CN3fblybF1+W3ygyA1G3jf6P+Rnlebl6zSAFNftaM+asmF0sFMI1HTP.P9hPgJ7mcvuD+a+nuIPnG11tkZdsMJVr.KubJt7kuLW7hWjSdxSxTSMEKt3hsV.Ja1rpN6rS.X+eouGyrtC2X9YqArAMR807BUFJIrYJQfRgiOd1u+ixO9u7q7+If999TnPAVe80YkUVgqcsqwbyMGyN6UYlY9.ld5o4se62ljISxRKsTaeYY1wPIUEsGgqKtGPuIfDMU34lgEAfFlNN7M9iFjm867GhPJYsMJR0pg4hqToBkJWhB4KPtb4XiM1frYyxZqsFoSmlabiazXKclLrVlLM74G7fGjW3EdgVXcaWBt+l+9+C0e6O4DfajlJkeSpsnNzF31gKwx8lDq3knT4JT1K7bZthX87w0GnUubd84bucQrXw3BW3BL5nitEN2VC2mee6Ep9ZzTh6MAUH.+.PZPGwiga1yQ5y+KXIeXo1hvGs3we7Gmm9oeZFarwDiN5na64rsJ9qL9YUe8u8+HzkKfbyLFU8g0JfyN5CqU+UjYt271Bvd5oG16d2K228ceb+2+8yC+vOLwhE6C0x.usJdzn1gyFrdZtx9PlMnyc8Y3m8u+WvexW7yKJT6bSmNsZ94mmkVZIxt1Z3GDPoRkpk20JbcGcbnqt5Jb8YRlj3wiK.X0UWkImbRlbxIusDfFwwN86nn2GSwHeaEc90TelG3oUm7ru2m9+K79km8xJ3gT69Q9qTW32N6m9AtdbkYVVcleyzepF3eGjscrTnYM+om.....jTQNQjqBAlf" ],
					"embed" : 1,
					"id" : "obj-45",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 166.0, 271.0, 46.0, 42.0 ]
				}

			}
, 			{
				"box" : 				{
					"data" : [ 3102, "png", "IBkSG0fBZn....PCIgDQRA...3B...vKHX.....mkiuj....DLmPIQEBHf.B7g.YHB..KTcRDEDUnEXwY1EaTcdlG+2664y4LismYrMdLiMXvPcAAaIjcuHWrUIJJJIUJp2jToRTjZWsYkhTBZ4tcq1KPZixJkKpXQ4hsqTuHRMUJMhvlszDT.Zff1DHo3PARw3Zrw.FiM3Y7.1yLdly47tWblygy3OH7Q1tuRO5LebNm2eu+m+OOuOyLB9VdL6jSpJLzPrvLyfpdcLZoEZou9H2V1h3ay44aka1P+lei5K18tYp+zehj.N.F.R.e.Wf4AxzQGj7m9S4I+m9mIY6Yenl6GZv+i6cupe+N2IqFHEfYCn0ZbyED.eBSS1uiC2b1YAfewC4bKeXt35UqpN4N2IaDnCf1ZDszHZsww1AtTtbL+ryRW.IA90+nej5+2.+D+veHqtAbIaDNwNFFcXayI.9fd5gOXsqkNEBFc+6G0t1kRUt7C0B3AZrOP8of5KA0Y.0PfZDPcIPcYPcUPccPc50sN0ilMqJOnzA0y0SOpwxkSoff3IeRkR4ees.dfU7Qd8WW0FfMfUivbYN1BvI5oG7JTfb.qG3+oPAp0d6flVvM6HGAD2en7.C9094+bbhAnQriwCmjI4Su90YUMVDoA5rbYF3q+ZZOaV930rlfa3u829+8fW3y+bUsBEvZQPp2HBerEvM9a9q4x+4+LZMddRBRf2Df7F2fm9xWlSbvCh34dt6qpL2ymbowGW8U6ZWL86+9zBPVfDbGqRnZqSPoPYiv.PlOOGSJY+.m7JWAIPcfuF3KO8oYKaaaeqt4Tz3H65eT8uAp2ATeXiDx+.n9ZPcwFIgSCpBf51fZdPUET0ZD0CSBA0L4yqdid6UM.ndqe1O6Athx8zJs5ryp9OSmldHXSlTDn1In4DyPqhFMuAD.pFu2Mylk+8744jm6bbHk5AVoum731oSK17S8TnnYaPXDB3hes3OWG3P8zC+KczAe5YOK+hAG7AkYf6CO9biOt52s10xpHHAKt+NdR5h83gSvdaoE9i291TBXyaYK7udty8WtdUN55WuxezQoEVZhY7dTziAN.ugkE+cieYx00pnZ4x3oT3qTn78it2IRj.SSy6Ydz+lNgabianpToBRGGpdnCwk9w+3krZEqviA3MSjfWsXQZ0xB.rcbV14oZ0pTpTIUsZ03V25Vze+8eWWDK6aVrXQ0TSOEEKTj95qOZu81wvv..NpPDkbtXEOdxoAv+ggAO+zSSGoSe2XXYG6ae6im8YeVVXgEHc5zHkxlXsojS25tpu7O7kpqcsqQmczIG32c.xkKWDz.rgW+0wM10nhcLLL.9.fm3Tm5AB5yctyQlLYvwwgLYxvsu8sYgEVnoRmMsJ126uO0S73OA555333fllFu268dXaaiSBG1v.eGx0aubJgfVIPwC6KILwLIv4kRl7W9K4o9I+j6JfdddTsZUlat4Xt4mGeOOT99zauqgDNIZ5bGarwX8qe8Q7F4wO9wOt5.G3.r8GY6zWe8EcAuvK7BQOd5omlwmYFZ8G7Cv6C+P7IPgCOJ.Jqqy+8i+37O7huHiN5nApiPfuuORoDkREEV1VjJYJxjICc0UW20E4QNxQv00Uoqq2r89Tm5Tp0rl0ndsW60Tuy67NpKbgKnpTohZ4F0l3ppS1nM1QA0DM14zUHTuwp5bYulGzwDSbU0a+1us54e9meksJ.pLYxPu81KqacqiAFX.1zl1DaXCafd5oGZu81IUpjHDRFYfAn1vCGYWZC3CDBdlqdU5X0q9tpd2sw7yOOSM0TL7vCy4O+44RW5RL0TSQ2c2M6YO6YoVE.xlMKEJTf4laNFd3g4nG8nQIHcmqa5o2domdySt01GaZG6fd18twqw0NQqsh4K+xz9pWMkKWFgPfPHhrE999354hacWVn1BTobElat4nXwhbyadSt4MmgBEJPoRyRkJUvsge22yGWWW17l2bSKvl.e6ae6b3CeXz00QJk366y7yOOyM2bL93ii+m+YnoogksMx78vIssod0pXYYwuJYRNS4x7esiWDaaKzjRDRIH.QiNr7U9nTJ777PoTHDBzzzPWWGccczzzhdsv7BWbQHDjISlUF7AFX.N7gOLlllHkRDhlcR999HDBjBAUuwz7q5tad4wFiSjNMmZqakwFbPbLMi.QWWGcCcz0tCXM8dMdMMMMjRYSyoTJiVfJkhToRsxf2S9d..SSynUc3H7FnoogggAoz04WmtM96KWleehDbCKKZKYRjR4c.SSGMCcLhfVCMslgMD9PvQ.BD3q7ileMoFNKZG2l.OUKovzzbEAGg.Cc8nywSHY2qYMLjkEYzzPzZq366urpZb0cwJbn8PJDHjBTJARkO9hfdYrRXgqq2JCtPHv11tIqR.7JTJPWWGSSCrrrwvv.cccNugItUJilTRas0FUpTAKKyHkMNv5ZZH0zPpIQJBAGhWbKdRsmW.rF5FKo7WSfWpTovtzZBbkRgPJwxzDKKKrrrh.2vvfpZRDHn81yRwhyhYjOOvZrRdYoLVGGgcLFFD3ykh.6TkpUVYvm3ZSPxjIwxxZIImFFFXaaiscfZGOBrV5zZqsgqq2RS9z0PWSGolFZRYfMTJC9BHKpjouuOd9d364immGBofToRQwhEWYvuvPWfToRgkkEBo.QiOfzz0v1xlDIRDo1lwpdPC0IYxjTqVsuYucC+bfhGLKwKU555FE0qWGGGGlZpoVYvGYjQHe97MYSB88NNNXYYEkXFWwU99346SpToZjDSPEEsXJstDM4cfWHDqnp644gacWpUuF0qWOp5S4xkUNNNhl.+y9rOS8JuxqfsscSPaZZhiiSj2OthGdToTTtbYrrrZZiEsvxeMrGZZRjx6.tTHfX4QfBe+Xv2PwsssoZ0EX3gGdoJ969tuKYyjIvlz3lE1dqiiCV11X0Psiq5lFFQdyDIRfPJipaG2dDOwb4T7f7yE4087ntqKNNNTpTIFL1WvVGfEVXA02+6+2RtbcGAsTpgiSBRlLI111QUShCtttAVVlnTA8VmHQBrsSfPvRAWpgTSfTngPSfTzH4WHtyOgQrpJgf644R85tjHQBlXhIXrQGSst0uNgN.u4a9lzUttw1xFDAIZ111jLYxFvrTvC82gUfVn1BjJUJDBhp4ubJ8hyeVbaEKV0iT950QWWmO9Pebfhe8qec0K8RuD4xkKp5PyPagokM1KRsCqpXZZhqqKoSmAMMsnbj3UPzVTs6kC763yooZ5dddAMa45hShDToREN6YOqRe+6e+zd6cfkoERMYTEjvRegfGt4igoIlwJGZZZFkOXYaiSxjQfpEV5aQP27txrhpdbk200iZ0Vf74yyEu3EQ+V2pDkKOOc1YGXZZRpToZxZD2hDdbwa.gBpWuNczd6Kq0Xw6VFAcC+8JANPSJtkkIm7jmLHOJ7belm4YXqacqzUWc0DrgKhlrHFAa0anGn7dddL0TSwirsGAWO2UzWe2rIQPCfuez19BgfpUqx3iONezG8QbvCdP9jO4SBthIlXBU974os1Zissssw26u56wF13FnqU0EISkL1V6FXXrTE211FeeeRlLIRsl2nINrKWO9qznRkxb8qOECMzPb5SeZN1wNFm8rmkqcsq0baYkJUR0VasEcgoSml01Werou62kA9NCvZ6asrpUsJxjISThqokIlFlQ06CqhzT+0eCCOOOJWtL25V2homdZtxUtBW9xWlKcowYrwFkQFYDNyYNCc2c2L4jSFw6RV982e+pKdwKtjIPSSirYyRWc0Ec2c2jOedxkKGc1YmjMaVZqs1hRnCgOH4RgmmK0pUipKTkxyWl4laNt8suMkJUhYmcVJTn.yLyLQQghEY1hEi74u5q9p7Vu0a0DqK6ma6cu6UsyctyuQ0J9Hdha79Q.ZZCkvDsvsyC64d4FszRKL3fCxF23Fu+9kc2yd1ip+96O9ut1eQhcricnFbvAuq+aE2yqjie7iqN1wNFewW7E7Ue0WwUtxUtWuzUbzQGcvV1xV3QezGkG6wdLd5m9ookVZ4dhoG5+znBEJnt5UuJSN4jTZ1Ywy2mpUq1ntqUzFZYylM32mo6tIc5zOzy6+KLEHyw+XiYaE.....jTQNQjqBAlf" ],
					"embed" : 1,
					"id" : "obj-46",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 237.0, 263.0, 46.0, 47.0 ]
				}

			}
, 			{
				"box" : 				{
					"data" : [ 3272, "png", "IBkSG0fBZn....PCIgDQRA...rC...vKHX....PWhIqO....DLmPIQEBHf.B7g.YHB..L7WRDEDUnEX2Z1FaUbclG+279K2K19dM9kat1fACg.AJuDTDspgDppxKU6G1FoDUUEhZiRjBqzxG5GV09kTE1OT0jcqPjtsRUIQMaSCaJgl1ThBNKIDJMfffRZDzBwh2w1fCNWisuuemYN6Gl6LL2qu1NfcZW0GoilQ9NybN+N+eddNOmwiDyQlqqqHWtb355hrjLBDU+EIjj.gPfggAVVVRyU84MpcC2wiO93hREKgmvCEEEjj7eDpppDOdbjkkmx6sRkJTnPgF9aVVVnqq+E5DwL9vu5UupH5.r0VaEKKqPHmqrhEKR4xkob4xL93iSu816bN3M7AN5niJF9SGlQyLJ8zSOzZqshll1bceOs1t28t4AdfGfRkJQKszBxxxyZ3qwmyohi3CN1GHFZngns42F64M2Cc1Ym+MGzSbhSPhDIv11lDIRvDSLAkJURLy24za0Las6e6tEa5d1DpppXaaihhB6ZW6BSSSrsro2k1KczdGXYYMa6W.v00khEKR1rYIatb345hvyit6dAXYWaebtycNV7hW7rRcUCN4fG7fh8rm8v5V65nmd5I7BdnG5gBO+S+zOkKdwKR974QUUEMMMjjkQQVFgvehWt54RR9Yg8yFKgmmW3uEzLLMHdr3jHQB5niNl1A567NuCNNNBUU0aZfCg011lctycR974YCaXCr90udVvBV.lllgWb6s2Ns2d62r80MkMzPCx9126Pe80GOwS7DyJks9aVjHQB5t6tYQKZQrrksLV9xWNKYIKgt5pKZs0VId7XHIM0KuLasb4xwvCOL82e+bxSdRN+4OOCO7vjJUJ19129biaL.ISljLYxP1rYo+96m268duvjDo5LEc0c2zU2oIUmon81amVm+7o4lZhVZoEl27lGFFFnnnfrrbU2XoPWVOOObbcvohCkJWhB4KP1rYYzQGkQFYDFYjOiLYxvXicMJTn.NUie8b8vwwgUrhUL6lEqG10st0w9129PUUEYYY777HWtbjMaVtvEt.dG9PnnnfooIwhEilapYZIQKnooQ7XwQ2PGUUULMMQQVFIYYPBjDfP.dBODBAtttgw0JJJnpphppZXQJAG877vAGjjjHQhDysvtrksL1291G555gpSTyyyKTwpToLSjMKkJWBOOORlLI.nqqGN3UUUQUSEUkqCSM+V0+Vf2Pz9TVVNbRQHDDOd74VX6JcWgC3nkBBD1oJJJnoogplF5ZZgC31ZqMxmOOxxxWGFEUTzTQKDTETTpEvf6O.Vj.IjvS3E1+JxJXaaO2Ba74EGcc8oDVjjPSUM7ZzpBqiiKZZZzTSMgmmWCUunpX8JYfqqrjDRxRHDRHK7vSxC.LrLvwwctEVIIILMMqwM1GXABgew955ZXXXFBpllFEKVDIIIZokVnPgBXXnGpfQgTUQAYEEjUjQVJ.VH5hBQSr455Cnlp1M9NVlIXGarwB18wjxnJIKigtNFFFXXXTCrJJJHgDs1ZRFczqEIt02scphMqYGRBAdQJ3PfebqrjuqdghMd2R2zvN3PCRrXwvvvXRInzzzvzzDSSeUMZy2sWklZpYbbbmbBHUETUTQVQAEYY+IGYYjfIs7jmmGtdt345gqqKRxRDOdbFczQmag8SN0mP73wwvv.IYIjp57nnpfogIVVVgpZzrtfuJDKVLJWt7LGqVM9zWY86knKK433D1pToB111L7vCO2B6oO8oIc5z03BGDGaaaiggQMImBZBOOb87Hd73USjgelXkHJppLJxWGXIIooTccccwohCkqTlJUpDl0Ne97Baa6YeswG5PGRrksrELMMqATcccrssCikiprAGEBA4ymGCCiZJVPIXolpttJJxHKecXkkjfH4E.AddQ.tpxZZZRwhkn+96+FBtAmXPQ54kNbxID1W8UeURlHguKb0APvV8rsswvzDippZT0UWSKLVyxxBIY4v0Ui55FM4TiTVfIG655REGGrssYrwFiO7C+vOWP9GG3OJ13N2HK7EW3jU1RkJI13FuK5ryTgfJKqfssEwhECSSyvrvQgUUUCCCcDB+8lZYYgooERRLYXkUPVQBYIEjTjPVpZBPIovkUht8u.XcccnREGrrrXvAGjyc1yIVzhWzz5J+8O72GDfSVGdkS8Jhu8s8skBg8YdlmgN5LElFlfjexlf5e8AXxvFDuFj4tT4RDOd7puIQBqutdEs97A0WRZ8panBWoBppp71+uu8LprOVaOFGZfCAJvi12idck8JW4JhMu4MSmc1IPi.0.cCSLqSUCxFqqqiiiCszRhvMIDVQT0LuJ0s1Zif85wsTyZtttt9aHvwAaKKJTn.G+3GWrpUspFptu7QeYwirsGgtu2t4RtWBmQb3XCdLw5SudI0W+0ecZs04igtAxJxgYdCVlI.1fBJzz0QOxRO555gw2FllXGKVHbJAKyTGn0VcFSo5JKjohWkpv5R4xkHc5zblyblIA4XEGSrwWdi7Hu7i.KD7FwizKsKl31Gm2P5M7U1wGeLxmOGs017QWWm3wiWiaaT22fi0WTAB+2I77as0F51VeUSgfVMdcRuVVALO04wkJcIZhlnhaEbbbvvPmibjifoYsuep+xn+EQyOayPS.K.XbPjWvP20ffK7G9e9C9SpAO96+9ueV0pVEczQG0.X.3039p4WlnlpuB655xvCOLqcMqEGWmoLNc5bgCiqjTAE3N9v6fUasZdwa8EY7biyEtvE3sdq2h8t28x92+9mjK7O73+PwSe3mFD.WE5Zccw.Ke.58C5ky7ucF37UKCevAGTjNcZZt4lYMqYMr5uzpYIKcIzQ6cPr3whTVnFZZSVYMMMwyyiXwhgrRsEODEvFsG45MGWGZ58ahBEKvs2xsyKLxKv69wuKG3.Gfie7iyPCMzT9.V9aubwoF4TjdoowwzAk2PgAO1fvEfgdygt9lIFarwDM2byg2XKszBKrmdX421swxt0kwB6Ygzd6sShDIBSdoanitld35wAYeqY+oyf455RtIxgXXAul303wO6iCJU84ZFtusbez2G0GoRkhKe4KOsyT+rL+LwO9O+ioxesBCchgfJ.E.NIbrW5XSdmS81auhFk.PQQgjISRGczAoRkhzoSSmc1Is0VajLYRZt4lCSpE.r+RHBbccnb4xTrTQxmKOYylkIlXBt10tFiboQP1Ul89OuWNiwY7es8hpsl.tWXKO5V3m+K94MDz8Ox9EO+m777q+q+ZXPfR3CYYfr.S.bJ3fuvAa71D2wN1gXqacqS2j3jrnIuhV+KPMEIDrLRgr9aYaQO7h3zO4ogb.dUgjpGKC6+t1Oa5V1jD.md7SKNxHGg+zv+I5af93rCdVnX0q0CvoJrEAxWE1wANIbzW8nS+dh2912t34dtmqgo5ms1JV4Jn3+dQNq0Y8GTA.FbT.3BIMRRlbYp8ZBfK.v.krL9fF.aNfw.NAbwCewO+u.fCdvCJNvAN.G8nGkO5i9HtzktzMEjKt8ESpmNEu+heeHS0AbTSTWykqq3tQZNQ.M.1RUaEpC1iBTfY++2wLYxHFXfA3xW9xL10tFtddTrXwpqKZfskMczTGbKotE9OO2+A+2R+JxlIq+.Fp80zWux50fVTPqG1.kM.1r.i.ViaQgyTPpl8ydyXISlbFmvdoq7RhM8laBmIb7yzFjjVJxw5AsdfcYlgMHdM.17.Yfu4W+axqblWYN48XMk1O47+Dw262+8fqBDC+scHUGjQAEZrab8tvA.WIRKvEN.1b3mI9OCG38N.288b2yw+6yAxHxH9Qm9Gwy95OKL.v7pBobUvBNBLoo55Asdks930YJ4z4fUeaqlO9vebcuCy4J6GffSCzIfdU3pGzOuvFMwTTfmojSiBbdnquZWLPeCD1Keg3Fu0ctUwN18N7KJvlICZi.tQImBN94IdMeUHGDV6Wds7Md7uA26ccub2y+t+hE1.6g+udXwu4s9MPK.VL8Ja.jAm2nrvAs.HCx3NJfI7jOzSx19W1FsO+1aHWeg+MIUoREw25m9sX2u4tgl45Jci54oxENnxnnqgVAV4ZWIO3W8AYy22lYo8rzYjk+l8AX444Idre5iwu709k9pbLp8yWYpVicD.KXk8tRtya8N4qr7uB2ypuGVR2K4Fdr+2ku1rm5W8Ths8K1lerVbffOFm5U1Lv697uKes63q82suJt4LaW6eWhtevtErHDrFD7kq11.BtSDjBQkJUl0eRP++J6JW8Jhu6S8cEbKHnC7geIHjuU4+wBz5seWe+NwF9m1f.P7c9W+N+iMrQsOajOaNE1+O2y7ixLVsCHO.....IUjSD4pPfIH" ],
					"embed" : 1,
					"id" : "obj-47",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 307.0, 276.0, 59.0, 47.0 ]
				}

			}
, 			{
				"box" : 				{
					"data" : [ 3640, "png", "IBkSG0fBZn....PCIgDQRA...nC...vKHX....frflM.....DLmPIQEBHf.B7g.YHB..M7dRDEDUnEXuZtGibUcd.+249ddr6NyruYV+Xwu3gMXLPotEnAJDafjTDORSbBfRifJRvnVkjVE0PaPjDTbSQtDZJhJ0HTEPcHFDMN.ErEX4TdiwX6TvV1r1q8tdm0qmYm06NOu26W+iYmqmYeXu1dq+jNyq68bOe+teONem6YTbNPJWrfbngJxnE7IeIAKCEQr037RXRzngUmKzgY8AouAGQ9Uu8H7Z6tL+O6ymQNrFXFALc.McPSAh.dtfaAH+nXzlK+gKPiq+hr3VuxnrhE27rtdMqbA6cfQjezKLDO0qWBzZgnsnikjCCYLrHOdkyiktKHPYeMzsbvWOLJmXnbZli4ZPtiAj2ENdZn3fbSWsAe2uXB9SWQ6yJ53Y0EYSuyQjuwSNDGMWDZzo.QjiQtg6mrCWrhkSA3KUZBT4EoRm0jJVVwiHg0n41SheiyCsXKldGQGF1GReDfivO7qFie3csnyJc8LpyacGoja8e7vb7R5zrYFRcjApboDfxBT16DsFLooVBQzPFnoDJV1mAyT.N5XfRAF01DvsLI6pYzZ6RXrnKlzGEHSJHcO78uml3Q+KtnyHc9zpSheYYkeucv6ruxDUMLiNRtJWhRdvXkgFL41u9t3VtpN3ZWVKrvtZ7jd8GKWY4c9zgXKae.dwscH9jOnevw.rzAcerL8nyEtbFK9UxPGEXnC.4O.u7irPt4UNmSKceFexuvV6Qt8eVOXpJSowxAJM.cfxbOe94v2+OewbAy6jC1LQdtszi7ielcyte69fFsAKACcW55B9CXP6KkbCkFN7mwezxywa8O+mLiGuYzItlGYaxy9x5rjK0fCMPZxkSQ3FiP2rc55BuV9uejkOqmkbzbkk68wdGdtm8+sBv5djrUSN1buKJjcDHyQfr6kC+qtV5p8Xmxw23TcBK9t+Mxy9lNvhtHxTb+XapSal6jC7B+s768cou4sxYGxlfDMrYfxeie2sHu9uc2n8G+0nvn.1MBI.rMnqU+l7a9c8Hewqt6SJrmzC1zWZiRVukRhE1MgO9NngB6kd7tHJrgUvceeeG9Y+3+NZq0DmSlv+m+thr1mc7uTlJI8JkEJbLXO6l+k+9Ew291t3oUWl1CD+11j3a1DMM3Kw.67knzXkfBogksVXW+jyIvUUDwWTy85H4Udmnuf+LFHTWTJCPdfRCUA18964m+PW.q81mdXmjb8em2PhcU+0BMsLgDWgf0REhbIx2568nxV25uS9+MhlF45tgao5DvBfzb6ySlyM+nRW+MkE9KEgu9fB29GKrrmSdoscfYl98X+merPq2nPqWiP6eNgvWt7W8CV+4b3lnjJ0fx5dregzZ2Wg.gETsKX0pLuq4aIct1AE95oE9RuivE+zxA5O6IWeSkNmfy0HbdqRnyOuPyWs7j+xe8YEjdddxHiLhjISFI6vYkgGd3waYkrYq7874yeZMFG7P8KW+sduBjTHxREZbQR227OUB+MSIr52T3p9Olz0qN+Ysy+1E+B4qTwhWN92V2Z4du6aaF4yOxHiHEKTDewGcccTpJcyvvfnQihll1z12xkKS974mxiEJTHrrrlRcH0QSKW1M9Mo+c2CzTHh0RBbtpe.CbvQ3xWRY9vm5KL498fO7+tP7UKL2aUTy8lkG5m7udRuKezidTo2d6MnM1XiI999xrsjOedIa1rxQO5Qk8u+8Ok5z+zS9qEXEBctJQO40Iy6KuAgkuQ4E25mEb9mfXqaPHYyflvpuhyiWcCqeR2MxjIijZvTjIcFl+7mOM2byXZZdxteLqKabiaja5ltIJVrHwhECMMME.8z6.R2W7ZfFa.j7L2q5qRuG1Fd+0n.PCfG3geZgDMBtP6Mvjfzsrq79ev6K82e+zZKsxl9sahN5niy4Pt6cuahGONgCGl3wiywO9woXwhB.cO2NTtoeMnnGXzD89Au.Qimi+ge4NEnpE87tSAaSvsLev+0CyUbY0uBgM9BaTttO20gggAgCGFcccd9m+4wwwgvgByBVzBn81ZmPgBMq.jmmGEJTfQGcTFcrwv2yCw2m4Lm4Rnv0OF8zSOb9m+4GnuEKVRra61flaBnL1K3Vn3qeOJi74KJgR9kgzixs8MtgIA41111jMsoMwJtrUv7m+7C9867NuyfOO3fCRu81K4xkCCCCLMMQoogtlFhTILQa7OqTJpjmRgRov22O3XUa1N1DMRThGONs2d6mzaJaYKaAWWWwvvPAfssk5i+jdkKcE2OjrEJ1yaxK+doNQr8S8baQFJ8wmTv9G9genL24NWYsqcsxy7LOirm8rGIe97y5IcNck956vxS+zOsbG2wcLkIndvezyJzwWQniuhbi26uPlokKIwiGm4Lm4P2c2MKYIKgK7BuPV3BWHc0UWzbyMSznQPol9oPNakwFaLRkJE6cu6kO4S9DNvAN.oRkhN6rSV+5mbhS.379ZBQr4g91egY1xzRjHgjNcZLMMQWWGaa6fDBc1Qmz0blCcMmjzYGcRas0FM2RKzTiMRrXwngFZ.aaaz00QSSabWWUfapuuOtdt3V1khkJR9b4YzQGkLYxvPCMDCMzwHc5zjM6vjOedbGOd02ymzYRypV0p39tu6aJ4nPghhiisBlAKSCfUrhUvl27lwvv.MMM788YrwFiQGcTN3AOH9u8agttNNNNDIRDZpwlHV7XXZZRzHQwx1BCCCbbbPWSCklFn.03O1HewGQD777Bhi000wvv.CCifBPp9tuuOt3hRoHd73SqdWExYLnKYIKgMu4MikkUfUoVw22OvRUtbIN9niRwREw22mDIR..VVVAJtggAFlFXneBPp6Xi+aU8BpcL0zzBtgHhPznQmIHLy.sqjcEnr0VdGPv.pqqiooIFllXYZFnrs1ZqjKWNzzzNAH5FnaZfY.j5nqWObU6eUPQAJT3K9AiutlNgCGd1CznMDEKKqoETTJLMLBNGywA000CSSSZrwFw22eJsZ0Z8lnErp6plRgRSgHJzDe7U9.fcHabc8l8.UoT333TmqaEXEDoRg6VVlXa6D.oooIEJT.kRQrXwHe97XaaEX4pEPCcczz0QSWCMUUPgZqPs1jXddUfyzvbF+z8lQflMa1pqhXRYNUZZXaYgssM1110ApttNJTzbyIHSlgqINshq5zEKV2JcDA+ZJlPnRbplph6c9BS8pdNi.su96iHQhfss8jRFYZZhiiCNNUrl01p3paPiM1DttdSNYigNF5FnoqitlVkaLZZnfIMEjuuOd9d364immGJMEQiFkLYxL6A5d9z8PznQw11FklB03NL5F53X6PnPgBrl0lcEpb2ORjHTpToScr43wiUrnpw2QiSL0iqqaPqb4xDNbXRkJ0rGn6ae6ijISVmaa031vgCissccIhp1Dee778IZznimzhJYb0qwRZngt1IfUoTSqU0yyC2xtTpbIJWtbP14b4xIgCex29wSInu0a8Vx8e+2ONNN0AokkEgCGNH1sVKZ02EQHWtbXaaWWg.5UmNYb2UccMzzNAnZJETSd.Pv2uFXG2h533PgBEYu6cum8VzMrgMPh3wq31N9fWc4ZgCGFaGGrG2ZVqU0xzLH1JTnPnzzBl2rV20ZSDMUVTfIGq54QYWWBGNLYylksu8se1AZwhEkq8ZuF5niNCfTSSmvgCQjHQvwwIHaasfZXXhssUk860yiPgBgiSHTJlLnZ5noqPSoiRWglZ7jcJUvTGRMYcqBpmmKkK6RnPgnu95id9rdjtO+o+o0eRAccqaczdGchisCnpjXoZ8rUT9ICZ03ypYnKVpHQiFE03azc05kmnkbhw+SrLyIZUCrrkKiggAu1q+ZmYVzAFX.4ttq6hN5nCfoBRarrcvYBVypYcsrrv00kXwhGTvePkNimgUeBycNUfdh3TpaNUOOuJE265R3PgHe97rqcsKYYKaYSoUcZA8EewWjlatErsrQSWKHCa0oRpBZ0hELsrvploWrrrBhmscbHbjHAfoWcpjI.Y8UcwzZUq0x555QoREIYxjr+8u+SeK5Hijkb4FiVasErrrHZzn04pVqKa02mXACHUdlsszbySoq5DqFJ.xwiOmNPApyhZaaw69tuKNNS+yr5TUpnr5UuZV1xVFs2d60AWUnqyk0rRoelFUrrdddjJUJtrkeY354NswkmL21.EA.e+fx.UJEEJTfCdvCxq7JuBu5q9p7Fuwab5uaZ.zWe8IISljlZpIV9xWNW5kborvEsPZus1IRzH0TpmIllS1h533fuuOQhDAM85KLnV3lp03NcR974XfARwm9oeJ6XG6fst0sxt10tn+96+Le+QAHa1rRSM0Tv2iEKFya9ymK7Bt.VxhWBya9yi1ZqMhGOdPhJKaKrLsBlusZV15Ve4oP777HWtbLxHivfCNHG5PGhd6sWNvANH8zymw9129Xm6bmzYmcxQNxQNkbLi2KwErfEHSUvtttNIRjf1auc5ryNIYxjzQGcPqs1JIRjflZpofDXUgsRxDAOOWJUpDEJVfbikiQGcTN9wONYylkgGdXRmNMG6XGKnkNSFFNSlf3zG3Ad.dhm3IlQLbZsgtO9i+3xC9fO3oSWpKQUs0yBTWA.USrTs7tpq4bpjFZnA1912NKZQmc+2iNkx5W+5kErfET2lydtnsl0rFY6ae6mQai4Y8cjssssIacqak268dO9nO5i3PG5PmsWRZokVXoKcob4W9kyJW4JYUqZUzPCMbt+eN1LQRmNsb3CeXNxQNBYGdX778oPgBiOumcPAHIRjnxyGtyNIVrS8eilyT4+i7uKhlc.U+4C....PRE4DQtJDXBB" ],
					"embed" : 1,
					"id" : "obj-48",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 371.0, 263.0, 58.0, 47.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-49",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 49.0, 136.0, 51.0, 17.0 ],
					"text" : "Tx"
				}

			}
, 			{
				"box" : 				{
					"data" : [ 10940, "png", "IBkSG0fBZn....PCIgDQRA...DG....SHX....fVZh0n....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wY68lFjjcccem+tKu2KyrprV5tpduAZftarzXWf.DvBzfT1SnQiksjC4wgc3XjivAYH4vQnOHExQXINi8WHCqOnwg47AGzbF8AQaYSKZOxCkon3HIJPPfFDBPXoI.APideeqVxppLeK2683ObuurpFnAEH6FngC6aDYj0Rl46k2+uy8dN+O+Ommh+a7QSSiLZTECGNhUWaHCGNhppZZZZHDB.fRoPazTTjSm7B51sK850gd85R2dEXzlqwmrjdVAhfRqUen8k5GxwGYOwdmi55Z4xW9JblydAt7kVjKbgKwhKtHqtxpr1nZbMND.QTnzJzJCJsAkp8qnfVaPgGsRQVVN4EV5zoC851gY1zjrsssMlaSyvV15lYSaZFzJ832qR8+.D+QZb4KeY4keoCwa9FGkSdxSxJCGgyInzVJxyPqUXLFL44XM1nEmBZ+ZoTZLZMJkAkxhwnQaUXLZTJMh.hHDj.dmmppZDwSQtFalksuk441uscwcef8ybys4OxNW8QtSrp5Z4Ye1miuySeP99e+2BPSmN8nWutnsVzFCRHf2GPDY76acKtzuqM.ZTJPq0oGJLFKZsBs1f0lGuHvXHKKi77BxxxvGDBdOqtxxLXkk.fcuisxO1Cce7.O38vjS1SAfHA4iBVn2zOA133O7a9GKe0u5+IN1QOI444rycdKjmUfO3ID73EIY8DXim5sXoRsNXpTZPYR+MM5z9hqCnZL1bLZMZiAaBLsVKYYEjmWPQgk77LBAgkVXIN0oNIyN6T7XO1Cwi8XODys4M8Qh4uORbRrvBKH+e9u3eIO0S8LTj2k77B15V2JHZ7dOBABAI5pgBPDDTf.gM.nJk5p.QkVm9a5z9jwe1Xh6UZLYIPTmrHsIfLirr3i1etnSAFshu+a7ZzT0vV1xb7j+keb9I9TOVzpLHhRqtoLedSGDWXgEke0+w+S30es2fImrOgPftc6xzSOKgPfPHDARQPoTiWBUDYCdeZROqPTQfSqiNkn.Tl0ATsxDsL0ZrFMZczBTo0XsFzZKVqEiI9b6CiwPmhNnMZ9dG5kX5YlAWsmG8G6A3u8e2eZ5zoyMs4R6MqCL.duW9r+u++AuzK8xL8zyRSSCMMMn0FJKKw68DBw89ZAuVfLDDf3xqwkK0fFBRD.asH0JMXTnz5jknAEw8Gc5nEn1XvnM3bZzZOFia7RqsOasVpqan+jSBnXsUWkIlXB9tuvKiXAmyKVq4lBPdSADacH3Ye1Cx23a7+O85NI0U0iApKdwKf0lQDjVGrh+rBQBrAeZPoLDM7T3EUxRLAhZCJGPx5TqznzFzZMAsFuOtmXqkoRahKyZL3bMi2uzlYwZr3CMrzRKx7yOO0MUnLZ9y9y9dba64VupuaeHNcdy0R7O3q+MopzQmhn2fBx380N0oNAyO+7wI6fOY4wFVRUAIKJviRABZDTi+LhO7qaUlbnocewPqkXviwX.QiVGPBBRHZMarVBdMRn.Udf27MeUr5bDQv03QoBXLvS+zGjxxR487K6GfiaJfX6UpG8XGk55l3xkH38A.Aq0RHD3rm8LLwDSRud8PoTD7APE8BUDMJkPZaQTJ.kFgVORG+BGu+nN4IZ78ERWfDeNFunAqVPoCHRbYV7f0jyvUWf25zmhrrbldtMynxxqxi1SbhSv4N6441t887g9Rp2TWNcGae6LXveJ85kSddAhnATimX61cBFUNhxpQTTTPQQQzQkDUXhDR3Th1LkGTg3RlIzVqT3C9jEbbIYcxAnPBDMZMHBlP.zZTo8Bg.M00boKdNVZ4EYxImhdc6Sc0HLFKtfGHip5JN8IOAMMtaFSm2rVNMtpyG+w9376868elUFLfhhBxx6hwZQkbjQj.444D7AZpZnttFqMYow5dYZLYQqMo0BLfnTfnQTJDEDPgNHnHBfnGGsBgzRiM0fVqXDdbtnGwkkUXsFlbxYPoTTUWh0ZhV3YYTUUwgO7gY1YllsuiscSY17l5dherO1Cy912947m6rT6bTVMDUshrrLzpjiMd.R7fRbxN5cZy3POfPLVvTf8FazaynCOJDkJFlgRgIYECfu0wIAzjHH.nHuSzgFaNE4cQoU38qu2p2qv4JYwEWjAqtJh.ehm3Ine+IU+2QN1D+NN+7alst04X0UWFmyg26otphppRDZPqTXr4ImWhNyD4AM5oYVlEQZC4X8PQbt.MA+3iUzomT1LTqS+lxDCzWo0jYyIKKK5LDqSbPHHXR7rF7dpqporpDWSCc51kMu44PaT7.O3At4LUxMYGaJKKAD5TTvpMMn.lbhIXxIUTUUQYUI0UqlbhAz1LzJaJTg1EkETpT.6JFu22F4NIt+15.SqSORJTj3uavEDLJASDEw6av4pw4biSsk0ZYpo5yr6XqXzFFUVRmNYzsS9U8c6CywM0kSED7NWziQslfywZCGhQqHOSQ2o5g2KTV6ntpjx5RBARghX1.On1wYlnEjjDGcJEDBgMPGWaHJQZ7BgnyTHMDDgf2g3co8DcnTPVVNSL4jL6LyP+9SBJXs0VkpxZ5j2gt48PI2Tht.3lLHh.gZGpfjrFhdOVV0vvQ.pZxLJxzJ5lmSdlfy6ootlJmil5DiNAAQ05zhESJKEZchtsVeZ2H.JfH9wKA2x.jwXHOOmNc5vjSLESN4DzoSbORWSCW5hWfFW.iQSVVd5XjgH27Xv7lJHF7dbdG5T7bHfRGoHCQP7AF03YTvGW9KQF.PJESQfx4cDbA7AOdoNRVtDH5viBv.uCR.Z8p0lhyqnvNNLlrrHiMFshxxRVas0FycqRovlUjRokFkIxfjyeyI7B3c.hhHh5clXtO.GkUUD7AT5nERaLfwmAQCHoX5RVKQvokBtz9bnvZrHFAKgTf6P6xoQtUIxep1fVQhuz7qJ0TfhllFbtFfXBlUJvn0QPypGSLdK+rZkFuOfy6uVeE+.Y7NwI6F+GelOym4CUfbvfA3boqfUfVRwxIsfYLX8fRQDOUWU1L13iMRGmBEFU6RnL1xKB3ZTngfhPKf68wU.PiVSTA.ZMJiAaJqFZqAqwFCeIkJq1OWexq0OLFWKbx19O9JekuB.7gIPdwKdwnWehjr+jHXpzDzB3YCNpr9xYv6NS9u6QaFNZCUHLlX7HSOwinVqiL6fJAdomMQPKq0xKqMaGZZC2oc38tjm1evNZAP.9JekuxXbpUIP7G8G8GM9E+Y9LeFN+4OuHxGLtbERetW3BW.m2i26R7mlVHs8owOjDKMsmNs4T7p+buV.qRoVO9uwVmaHgwztLaK6OFris5znMQgWM9hm12+FNVQlcFcCdVZ8gHhb9ye9w.Hb03kVDQ9xe4u765M9Y+reVd5m9o4ZAj2n.2ybpSCJhrgDh.EI9MUHWE.FANAEAz7C3vq0wGJ83f1s1Mr0+3KPTwr5q0wkdUJBPKS5oKZROqY7R6uyzn2xjyJqt5087w60b8S+zOMe1O6m8c85+xe4uLhHhscYyMZp1N9s+s+s4fG7fW0xqhHxu4u4u400RtZkR4CA4W3S+Yvn0T57aXuMFagHD40brBPS6AIgPTKnp0+6iSb7FNkV2Kz02Cq0QnzKHt2GQPxneGut1yk1kDX8rizZUKRLrjkVb4eTlJFOtVyqhHxuwuwuAu8a+1uqW+W5K8kPoTpe9e9e90crQoTJQDIDB7K7K7KL9Ee3CeX9U9U9UFeUxK9huHuwa7F+Hdhl7YToUm3Xmfyb5yfnT3BdBHwGJEnUnBALJIseF.JBo.zaoP6co1s1I1TLenXrrFSmAsu31SHBPJi+APEXC6vjzzSBP0r9xna.j8I58t7kuL00MRddlJHAQ+i.yMuwa7F7BuvKjN0D4W9W9WlUVYkq507E+hewVmzF+4eMOPhHxK7Bu.ewu3W7p96O4S9j7TO0SA.6YO6ge8e8ec9QwZ7a9M+ikeq+u+sXvRKvnpRVa3PB9VszjTyluIoxMH3iAl6BA7oDHFD0XM1b0iDHph.YVVN86OECFL.HpY0VhwihkJwEqAzFczQFsEsIp4lrjzLzIQTo0ZBRKvFotapIljLqg+o+y9rru8caQqnPPd+pZbQD4y+4+7bricr207b63W7W7WjG9ge3q478OvChHh7E9BeANzgNz07+2ZR+94DEfSdxSK+V++76vy+7OGMMCwpDVZv.bt00RiOHITySPBD7BdW6+KDCKHH3jMXIdUakzd5D+aYYYzueeVd4MBh50iySGUBm0FEZr0ZwnRxwvZvZzXsYQPzZPqzHnGeDDkhtE4zuWeJ5ziO8m4uOO5i9f+Pcg80Zqr1w8ce2G+R+R+R+.mmeeekx05fba21swu1u1u164AHHhnS+um9oed4K8u92hye1yR4nAL0TSxfAKGC3WjXXFafFLDAeviDjnfo7AbIYK58dBa.DkqIHRh2yL52eJVd4kifs1NVzTqKWCUxZKpyFiVmjqnkrTbgVST3xQw7nGebChfQqY1Ylg55FN24NG+896++F+s949YXyyNkRDmnT12y442oU3FGueMRttnc6Zcf23nE.+c+p+mkO2m6eN4YVdi23Pr2aaOLX4kntNQQVJ3BDIkchXvDZklfJLdoKDIsTInQQHQU25P3UG+V5i78LlxqJqFsL7j7HkzmTz6zHyLpz90IpjheGk3EYKu7xrsssMtxUtDeg+E+K4rm8Jbnu2QFCf+fxy3eQyi+EM9KDD+AYpCvm+y+4uldpdgKbA44dtmmSe5yw+Weg+UL2bywK9hOGMtZZZpYs0VKxQZhaqwAdGOp.QPTTQ4TDkHbxiQQM14lPJv82qndV2GlDMcwXXhG6zeWoTqegzFA1MbdD4z0jtXBfntb7hfDBTUWyEt3EY6aeG7m+m+mwy7c9SXkUWku0254jO0m5wTWK.TDQ9betO264b66WhW9ABhhHxpqtJO9i+3bvCdvq4q4ZcUzAO3yKe5O8+HVc0QHRC850gyctSyYO6IY6aeGr7ZCoopAalEiIpnLsJQUVJjhf.dIfhn0oVAlD.pQgCgf3QoDBRK3e0Afq2PP5sguz95ZSj7XQFuQx.n05LZ0oPiRE2qznLDzwzagJlxKuOf2EvsxPzZMSM0z7x+4OO6eeGfuxu6+E989Z+wxS9DOLyN6LuKv33G+3umy+O9i+3r56i3OeeuA70JPz55ZdwW7Eoe+9bfCb.LFi50e8WS9E+G9Kg2A44Er1vUX942BuvK7brxfkYlYlgo5OMM0MXswZcHKOiLiAqJQtMBdeSR7vRz4FuCmG7dHD73jn5vigIrtUEoTBIHXswzJMwDSxhKrPzJSaVOMUaXewwJ8VqHKKJkeiVSlMKkYi73eyZwKgz4ifKDnooIpaVmmNcy43G6vbrieD9T+U9avi7n+3r3BWjo62g8su8yO4O4mjcu6cp7du75u9qyJqrBO7C+vjmm+tAm2mNM99dOw2Oef000x+f+AeZVd4koe+o4xW9BzoSWVYk0FK5o55lwUzjjJPFcJdt1fv0.XiYy267Qc1HsbqF2STIsKmt9my5wAxU4w5USR9U+6uyWy5T5jDdrp8m0WkUsHoy4MHODuyQcMTVMBsQ3Tm9n7i+DOIh.G5U+97VG9T7VG4Hb5yddQq0bu2689iTHZuyg9u3Wx6+wW++x2fm6fu.cK5xZqLf0Va.HA7MUzsS2Xf8dnw4vXswkiTQtHsFEFqBqQgUAFRt7qit4aTsroHwGs4Ih1L8G+onhmhNK0FGofPP0lKeFCjuy3LS9IEudQo.85+bq3k0pTg4PhvARfJ.VCipKY3vRxxJnrbMFNbM51sKU0UDB0blSed929u4+HdumM5R10y3FFH58d424e2+NTJEMMQu0ZZbTWWiVqY1Y2DgfKJIvQCSKk0JwBy330FWdYZCVQiQCZifwvXfaLUpowXZzjniN9fLdRGXbLngjSMqa4t9+qc7NmViF0sZbMQiWJehRxoFn0oLEm+BW.mKfRzjm0Em2SQR1kiJKw4Z3Ud0CwK9BuB2nziyMLP7rm4rbnC88HKyRccICVYYppFQSSCqs1pLyzyPQdW7NGdmhUVc.lLE4YYXRmEZkF63LIztGkFiVgxPRDSpwgfzFdgPaV88D79jr+WuRpZqtJDHPLi+gqRZFgMXYrd3Fs4MIDhuKm2SSRUdrgOWsJtm5BW9hr7hKkrnMrssuSL5XBs0FEiFtFMMM3cddpu8ybiZp+FGH98ei2jAKO.QBTVNh5pQTWWRY4HppJotpl4lcdb0QGVppzb4qbEDog7bKFUrryhKWIwb2kRIjUaQoronQBWE2mHqKECAOJIfl.ZEisFcN2F1CtE.8WUiYXbNKADQgj3qMdXhDOzD7z3ciqdqPvi0ponnCW9RWlKeoKl1iDldlMwsc66k5lRB9.ZcRNJ0M3cM75u9qQcc8Mj0SugowlibjiQYYI85MAqrxpiyG3vgCIKKiAqLf9S0mt85QY8HrXntzxIOwoX6acN157yGsxhdwDAlV+LRStZsNl4+TBikwUMEisLiwMpQQrV7cNG9wLBIW0UsBxXtXUpn.gacfIVUTNjjzQDhDw60twfdmhNzHdN5QNIm4TmAInPoxHO2xC8feLlbhonppFxzzT2fOcAfRAm+7KQcc0Mj49aHVh0UMxwN5QoWutr1vUXT4ZnTFBgnPiJKKooIl86srksfVaw6GF2CiI4jm4J7Vu8gYwkWFWHLNgsAjw6uEC2WGKhz2wNWRHDeHfDTDbBdeT1EMMMzTUAg.gzRgqW2idjfKFtP5+E0XSjPhllZZbtj0WMdWr76JxynSmbVd4k30doWmSchyf2GsfAg6+9tet0acOTMZD9ZG0UiXwkWfUVc.iFsFqs1prxJqvRCFdiX5+Fik3wN1IYvJCXhI6wEtvEfwpRKt+xvgCSgWTi0ZYm6b6boKt.UUkXnOV6lX4UGvfUOF8mrGyOyLL8jSh0ZQIZ7ok57IBxkPZowPzByO14DUx4lVP1e0xlPsNSOhHPPPZ4OEMMhKtWJ5ThwxPnkS0LxyyPqEFr3k47WbAtvkFPSsfnLDjFJxz7.Ov8yd269XkUVAQDxyJ3bm8TbxSdbld5oHKyhQawlky4tvB2Hl9uw.hG9vGlllFJJJv4biyjdhLMpqqY0UWk98mBmygxnYqaadFr7xrzxqRieRz14vvLr7pKvRCNAcyKXhImjI5NQTdEZMB9qZevPx6v1kUUv550Ixg1388Z8ljVlVRw+MduRbXvlbDJdAnVaGqszxpArvBULX4QLXMGUt.NImfJfVpYlomj66duG17llmKc4kPPvXsr5pC4Udk+b79ZVYkALZTIc6LA20ceebgKb4aDS+W+fXiOH+q+W8kPbd14N1Am3Dm.XijNGPafgiVCqMidcm.uO5U2j86SV2bVbgFppJAcWL1cfvzLxs.qckKiQcknXdylfbqEzpTLeD2LHDC3tEPhG1Pz4jMP9cqLJ1XRcESKXFkpQlNxTSdQF1bEdWMKrxUXs0FQiSPXZBzmFEftFb0zMG1912F6ZWaEswxEuxBPp3cztRNxa85r1vUhag3B3aJI2ZY+661XwEVjUWqTlbhqu58+5FDGLXUVXgEIzzvL8mhssssw4N24HyZG6odaRZWcski8LlhBDQnowgQaY9MmQYYMqMrlfeBxM6BSwNIHKSiaAppWlgkWAIDh40KyfUmOlQk0U.WL6BQKt3Au8ZoMl1owxWzXFmghfDXX0pnpETCU3qqQDKJaezc1CYESSvWPiqlLeEF6Hld9oXSadJJJrLbTILNYwfVIblSdbt3ENO1LKHQcr58B28ceOL+balUFrLKOXkq8D6ODiqaP7JW9JLbs0vH.9.2wd2eJP+lwAVCwHtDwyfAKQ+ollr773juOPH.41BrS4v0rFgfEU1VQauUJL4.UD7KPc4BzTcQ70WlxxQHdezgGUTJh5TuqQONmeqqTMIHDBJTs06eKkcDAesMGqsO4YSgNaVrSscjNaFuperBlaVCcXDSXVlIxE52q.sog5lQTsRXLo4ZSr0icoyeZtxktH1L8XZ6jPM6d22J+z+09Y37W7br1ZCY0Uu9ct452RbokvUWhN2hxUw7adJt665N4UNzqEWpJDEGbrMbEy7vxCVfIlXJ5zoCfBQIHRChDPaAc3JHxUPj4Qo1CpNaAI6tvlOIE13dPV2.TMKfu4JDpGPnYEBtUw2LDWvgJ3QKo8+PAXPqrnxxPm0ESVOxsSioXSn6LKltSgNeyDzShSHJWj5FTkKRl6BjYtB4rJE1gfJvpkN7NGpwkfdzR2GZXgKedVakAi01iNQwjMqfele1+lTVUFIkv64Bm+xWUxyuo.hqtxZD7dxKJHDhoF5tui8RUUEu0gOBhwPH3YLCHB.dFr5hzzLAc5zKdU5X5WhVLRH.Mm.YzowsbAhLI4SuCz8uEz81E5Y2AlIuaJlXJ5VTfsiESggrbM17.44fMQEVLTBv0H3pi0unqIfqRv23wUGHzz.UCfQCPOZArqcVjQWDBq.9kwGbT4CTKBR5Bx31Ex37b1TMhAKuHMMMXS5wAkBuWnW2t7y9y92hstkcvIO0InHOVDsKsz.D+0WL+W+N1zz.JMEYYnoCfPQQFOwi+nzqWON4oNyXuS8gPR6LQhyFMZUpqahUcTpcUtdpXUz30nBNleySydt8agCe32fK+1eW51oOUY8PULC1NyRYuMio2bX5tILcmj7rLTVMXiBA1jJRUwqigm3ZH3b3pGhezx3FtD9QKfu5JHkKCMk3CQdNCdgtcxInLQRCBodzgjHdWGSMV4ngzTNBTgn2znosD710t1E+0+q+2f+m9q9+BOy24ohrPYxR0wgeLw7+nNttAwrLKZsfwpwpKPofNcJX141D+b+M+Y369huLu4acD7dgKcoKwxCV.wEAQQKD70LbslXUHYyH5ZuFmqgsrksh0pw6EN1INM28c+vb1oOIG+DGAseDR4koYoXNDUnPYrHZSpJqhcWw19PS6pUgDCPQhAb3kljkZZk.kFeHN4eK6dOL+V1Bu5gdQTIUpGBAZHDq4eAv6nppZCbnVfnhRYb269V3Nuq6gOwS9SvesepeZVcs0X66bWbxi91X0FTBobWd80DittAwXEBYvpAQhR7apoljYmcV11N2IO3C9Pbvm+E4O8a+sYKyMKiFUyIO0IXwkV.WSSL1OhjL6pFQzASMaZSyyt28t4EdgmmYmcS7w+3ODtFE2+8+fbrieTL4E3RExhhHAzDDzRCAZ0ViFuSnQZSajDS8EsgbDSnrBEEc6Qud8.TbfCbObkqr.6YO2FUU0bOG3d36dvmMlMhzpHBw1qYK321sFEIvryNOOvC7PbG24cvm3I9w4IexOIMNHunfcu6cwEO2ogT0f0o3cmL3enwfq2OfI6OA4Y4n70nTJxKJXh9SR+9SwjSLI862m+1+u9ywS7DON+9es++3vu0aw1218yhWY.u8wOEWYoKgupFBBdwiqIBpFivllcVJJ5RmNcYKyuE17lmim5o9SYs0Vi8t28R+98iLiDf29sOByL6LT2TS4nQXyrTVVQ2tcHDDZZZnSmtHJgxQkr8crSHHL0TyPddAJsvzSMEJskkVd.2xsrKpqJ4jG+DbK25tPDOMtpnEcXCjm2l3XQnWuI3Nti8ycef6kCbfCvOwOwmj8u+8PSpYQzqaAaZyyQudSvnUWEkRwDSz65EBt9Aw4leN51oCtxX5YLVKEcmfdcmjh7dnsEzT6XO25d4W8W8Wi25MOD+weyeeNwadX19z6kSd443jm4BrvhKizTFUOi34zm5jTMph+t+c96jVlEd9+rCxy8ceV50qCSLQWJxyw0sKcJ5v8buGfImXBN1wOF2w92GEEc3bm6bryctU7dEG+3Gi8u+6lppg3cd5TzEaQNG6XGk6+AtO9tO2yRutEr5pKx12w14zm93bxSbbjfiW+0ewXuuwGRp+PkzWSToaSN4jrqctKti8cmbe2+8xS9jeB9XOxCi0XhMaIR8F.7nzYLQudTWF6EN85085EBt9AwYldZxxyvWudUEESbpASahBUpniDUNtm66g4AdfeLN5a+Zbv+j+.doW5kQEpYhdcY0gCY0UWkQCGg0jyUV3R7U+p+6Yu66N3XG6XblydZLZMaZyaiEWZAVQOfMs4Mw4N+YYSyNKKr3Bo8lTrxJqxN1wN4xW9BjYKXm6XmrvUVjQkqvt14tw4bb7i9lrisuS9Ne6uEc60iyblSyktzk30NzKFIAOzD60aZCsMJoXzBZrFK4cJXpomg8t28xi9nOB+U9TeRd3O1CSmNYzTKT4BiIaH38T2zfy6FWnpYYYicn65YbcChEcJXpolgQqNH0j6LXfjp0hIw0pMnRwCVUMhZslcru6h+d20A3m7buMO2S+L7m7TOCu5qeDtTJ69MUNxyxX4Aqxy9rOSrV5yxPj.m7DGmFmmrLKc5zk55Z50sK69VtUVZ4qvLyzmUWaMt7kOGFqFi1Bq.UU0nTvK+pu.AumLqkSbhiQccST4bjZsz5H6JY1BH.hWFKv377B51aRlat4Xe6ce7HO5iwm3I9Kw8de2CEEZZpgxQwdMmhXLpAQQcSfQipvUUhRAVigtc5vryN0MePLKyp9F+9+gx4N0wQkkn+RZkxmmfyAhGAOhzjbOTQSE3p7L4TyxO0+y+T7HOxGmW66eDdwW9U3Pu1qyQO5I4RW7JXFZwZLan2mF61F5TfzUUknTJVa3pbnC8xjmmyqbnWJJD4VchBiENUHrgpJNk4eqwPVpo6EHVp3AQAoFha2tco+Dyv7yuE1+92O2y8d+7.OvCx9229XKaYNJxsHAOkiBz1lpiGxXLuQ.rgpxFpKGhHALVKc60gst0Mc8BA2XxhwstmagW74h6aIgXVvcobzU2LhpJcTiL9VZv.k3id447LZXEhOvsrysvzS+WhG3AtGN24tHm4zmkibrSwoO2E3xW7hr3hKwnQkwbDFpv6Z1f9XhcX+n5Yhainz..fBmkDQAQ0zuCvKomTkBsNJnCkRSpv9ixhL3Pq0jmkSVdWlXhdroMuE1511A6d26h8rm8ydt08vN24NXtMMSTpk1rn2wpPLdTid8jTmxzRiCpKcTW4XT4HVasgwXM0YL2balrrrqac1biADu88vDyLKkCVj.BUMU3pqH3aFmc855Jr53Drg.FIfN3wUUQYYEiFMhl5ZHDvpsL8TSg8VLL2lmmCrxZLX4Ar3JqvhKsLKuzRrvxwamBCGMhpxZZpqw4a8Zb8R8tMEUsYuPmxZu1nIKufNc5RudcYx98Y5omlYmYSr041Jadt4XpYllImpO86OE85NAc6zk7LCMMkXzBViBgND7BgTnRs5uKjDUrqQnppjQUCYzZCntbDJTjmWvcbm21Mho+aLfXudcUe8u1WWdom6oIWEoeqtpjxgCoSQNdiFuAb5.FQi3CXHVl20kULZTEiFURUkmppnFbZIT1X.qAJJLLspG85UvVmaFFrxVX4UFPcUMqMr5puYljhjaipXqsslD2WKmNcJXpI6yDSLAcJ5vDc6RQmNTzoK4c6EEvUQN444XLZrZEFcTk5sNiHBD7Mot6gBI3Fq+mf.tl.00wDSOrZHkCGMVuOytooYG6Xq2Hl9uwowlsu8sxqnMwuXhPiyQ4nQTUjgAAqRvqC3EMJc.Wvg3qnoxS8nRpFVxvxZJqcwNHUc83L1arZrYFx7JBt.XfLqhBiBUllJqME7NuqVTRqdYrssI5zid85wlmnWTc2ItWs4FxJLjmanH2hsSA4EEQkeahkZfPTNHsJjy2Thympw.65M9HmGZZ7TV0vnQkLZ3HJqhaE.vLyLy0MSMsiaXf3N1wNX6aeabtKdQxpMTWWQSSMiJqixPDOVJPmq.cbIuPvSUiipJGUkMTVVRkK1VLc0M3qpwUUSnwgVfLkArY3DH2ZoamtnDHOK.RrQ2F6n95TFDLiqTXiIxljIYINwDSPdutzsaWxKJHqSGxyyonSGxxKnHu.aVNVcza6Pvgyqv30zzjTDNMXEMNiJ5EaHUl5g.NuhxFOk0NpFNjpUVgpgqQv2PmNErycciqsZdCCD25N1t5jG4sk+C+N+antphxxx3DRVI4FEYFgpQNTgX+GUkJpkl5FpapoptUXRAbNOd25hWp8g.iqr2tx5o+ogXF4EILN4uwN9jYcKwMzY86zoCc6jteQ0sKY4EXJxoSplKL1rww6Fa3BqqmLu2iSEalQHB0APLJBIkmqPgODnwGiSrrrggCGxZqsVpT9Bru8e6r+63VugXEB2faKX2xd2m5a8G90kC9LeGppxobznnT7UB45.VzzjH3VIfODnrpgxxFpaZhUVjK1b7bMN7tXwkttb6S42PEEcLRTU3dsAWiKl70TGWrsos21o8iMq8XKxLOOmtc6RmtcHKOm7hbzoBlIKKGaZ+SUpwtGKGqVI6GcXootFwnigjX.epLAT.dAZBvn5FVaXEqMbHM003cd1xVlmG3AumajS6236saO9e4OIG+XGgKbtyRdV59KgBL5.ZUAlflXcWFsBKKcTV5nowgyoFK0vfyeU68rtb6i5nIynQWDUelWqnooNo2zLLZCVqFaxhQahUyTLSF5DvUfMu.SdNpD3kkVBUa2PeuwjZMJhfx6QIPPoH3qQzoaWCdAWJFyVU3U6fQ0NFk5Xxtz68.2ycRmt2XuGZbCGD6zsm53u8gku1u6+dFrzxnMYwISBXBAzcsDxiG1lFGUU0TU0PciGWSrXab9X85eU0Hw33uV+20oROqGVBY4o39hVM1T62b7sSnjyNZic86.M1Xamts0mz941FRhBEJerGADzPSJgvJsBOAbJnVqISG6Qpw1VV.mKPsCZ7B00wuiNmmerO18wtu0cdCE.gOf5xh6Ye6Wsvktj76+e7+.m8rmA8baFspGVDnQQmhXCLHDDpZZv03no1QSS.muI1kobg3sYAwGK8MhZeZbdA2vwyPTc2sEbiUqQYMHpXEUoMFLYYjYsoFuP5NXSagUkTJm24I1qSboxVSR8wTUJNPAMJxz5X6YQCFsgFspcEWBnho+x4owCUImzdvG994tum67FN.Be.1pL2z7yqVakUju9+u+tbhidXD+LH85fTXv0Di0RBZpBAZpc3abz37QmYbN7dIkYcGhO1EoZCeI5vQHIxIhUN0FJzz1RtQgf38DRNAE.LYwlbaaNAS6hAAMAbfDP483aAwjrQhkTShxNEiqgeqo8llRb4WmDUzlyGXTsCBBO7G694tt265CD.D9.temNQ+9p5pJ4a8G7036+puD3aflLbYfVYw6gpPfZeTc2tPTtGQcoJI9RSOmpmBAEtjjFDHYsBsEFZq7+sgnB6z5jdc7MQuG0w+tRYP4iJ+VDGhQ.qgP.ZbMIZ61ftfDORvGSzrJVfoVigfssiTEK9UmnheuppoW+o3QdrOF6Z223WBciiOvaZs4EEJ.dl+nug7xO2SyJ0k3JroIWnz4oxEvm5qo9PffjXCosjzBRzBIvXhqiX15hqpcVpsfhChGilTl7Uf2Qf.Mzt+pMN4KwajIgfGmqEPZobUFm+Pcaw3n.uJlsCu2ftgjLEIxUZSjxsa411COzi9vzep9efBfoSoO7Fu0gdY4ke1uMW3rGGsBJr43DnNHz3iAK6SKbEEwRLOjhKDuE6Iq2C2BIBtCg1kUSAZ2NomTgsRqR2yfiudsZ8XFyyxSut3iMV.qw8WY79rlMLUEiCUO1IqVoe3cdld5Mw8+vOD6+t+fY+uq03CUPDfAKtfb3W6UXvhWgW64OHiJGgXrDTwaOBd1PWCVGyldv4SETZaeaKcOsXCpDSRjaqSbtF6KsoRyVaFW6alTdAiMZHa51NDIgUkHhHA9Q9aMqWGGrwxSn8.GWlOyZ4Nu26gG5QdD5O0TenNu9gNHtwwa9pujbgybJdqW66w4OyonIDKBEIEOmjJcaIUjLovDidAtA0k2ZI1VO8.fRij.hnq+IKnjhvs1XdJ0I.qMUUw265gazxVSqvqh+brxjyKxY5YlgsrscxcbW2I66t9fy4kePiapfX6nZzH4s9duJu328Y3DG8HLb3ZPh4kV.hj0Rqw238FSin0iN0YfAzwZYbb8XjBAwjBw.852nSF+92fUljpdp1xEGI1IOrYYLyl2D21d2G25d2K65VtElr+G7668CZ7QBPbiii7Fee4zm7Xr3UtBu1q9xTNZDqtzxoREqX7MsRnMK8sS3j3IM5zjRG6CawEXCwGJEJkk1aBlASLzf0qWD0UQxPzYGGVik98mla81uctq669312+9o2DS7Ql4tOxbhbsFkiFJKsvB75u5KQcUEm7XGkybxSxvUWkppxzspun1WiLxjZmJ116STq6NR6dlqWAUpTP9IYj3iMv8rhbL4YXMVlaKak8eW2E8lXBts8se177y+Qx4qORdR8dMjPPVYvxb729vbwKbdB9XAl9FG5U4JW7hq2T1Sf4UcGqI8YXLF51qGUUUzqWO5O0zL8ryxjSMMSM8LLyl2DSM8LLY+IoauIvXt4bKl8GlwG4OAe+L7duTW89rIFnhTkEy8ngr77+a94f+qutE19ZDG+WC.....IUjSD4pPfIH" ],
					"embed" : 1,
					"id" : "obj-50",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 478.0, 257.0, 113.0, 76.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 169.0, 111.0, 55.5, 111.0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 7 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 6 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 4 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 5 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-68", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "aka.spacenavigator.pat",
				"bootpath" : "/Users/adrian2013/CNMAT-odot/abstractions/io/aka.spacenavigator",
				"patcherrelativepath" : "./aka.spacenavigator",
				"type" : "maxb",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.helper.buttonstate.maxpat",
				"bootpath" : "/Users/adrian2013/CNMAT-odot/abstractions/io",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.pack.mxo",
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
				"name" : "o.prepend.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.collect.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.change.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.union.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
