{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 167.0, 125.0, 1280.0, 667.0 ],
		"bglocked" : 0,
		"defrect" : [ 167.0, 125.0, 1280.0, 667.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
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
					"maxclass" : "o.message",
					"text" : "/left/raw/x 1203 \n/left/raw/y 3338 \n/left/raw/z 4048 \n/right/raw/x 557 \n/right/raw/y 709 \n/right/raw/z 4056 \n/left/z 0.0114774 \n/right/z 0.00952381 \n/left/x 0.293773 \n/right/x 0.13602 \n/left/y 0.81514 \n/right/y 0.173138 \n",
					"linecount" : 12,
					"numoutlets" : 1,
					"id" : "obj-5",
					"fontname" : "Arial",
					"patching_rect" : [ 733.0, 288.0, 150.0, 172.0 ],
					"outlettype" : [ "" ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.expr /meters/left/z = 2. * /left/z \\; /meters/right/z = 2. * /right/z",
					"numoutlets" : 1,
					"id" : "obj-27",
					"fontname" : "Arial",
					"patching_rect" : [ 27.0, 588.0, 340.0, 20.0 ],
					"outlettype" : [ "FullPacket" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.expr /degrees/right/x = 30. * /right/x \\; /degrees/right/y = 30. * /right/y",
					"numoutlets" : 1,
					"id" : "obj-17",
					"fontname" : "Arial",
					"patching_rect" : [ 27.0, 561.0, 381.0, 20.0 ],
					"outlettype" : [ "FullPacket" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.expr /degrees/left/x = 30. * /left/x \\; /degrees/left/y = 30. * /left/y",
					"numoutlets" : 1,
					"id" : "obj-16",
					"fontname" : "Arial",
					"patching_rect" : [ 29.0, 535.0, 352.0, 20.0 ],
					"outlettype" : [ "FullPacket" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.expr /left/y = /left/raw/y / 4095. \\; /right/y = /right/raw/y / 4095.",
					"numoutlets" : 1,
					"id" : "obj-11",
					"fontname" : "Arial",
					"patching_rect" : [ 30.0, 196.0, 343.0, 20.0 ],
					"outlettype" : [ "FullPacket" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.expr /left/x = /left/raw/x / 4095. \\; /right/x = /right/raw/x / 4095.",
					"numoutlets" : 1,
					"id" : "obj-6",
					"fontname" : "Arial",
					"patching_rect" : [ 31.0, 173.0, 343.0, 20.0 ],
					"outlettype" : [ "FullPacket" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Debug",
					"numoutlets" : 0,
					"id" : "obj-45",
					"fontname" : "Arial",
					"patching_rect" : [ 460.0, 1046.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gswitch",
					"numoutlets" : 1,
					"id" : "obj-43",
					"patching_rect" : [ 344.0, 1048.0, 41.0, 32.0 ],
					"outlettype" : [ "" ],
					"numinlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "o.message",
					"text" : "/right/raw/x 557 \n/right/raw/y 709 \n/right/raw/z 4056 \n/right/z 0.00952381 \n/right/x 0.13602 \n/right/y 0.173138 \n/degrees/left/x 8.81319 \n/degrees/left/y 24.4542 \n/degrees/right/x 4.08059 \n/degrees/right/y 5.19414 \n/meters/left/z 0.0229548 \n/meters/right/z 0.0190476 \n/left/window/radius 0.293285 0.29304 0.293773 0.29304 0.293773 \n/left/was/orientation 0.345779 \n/left/raw/x 1203 \n/left/raw/y 3338 \n/left/raw/z 4048 \n/left/z 0.0114774 \n/left/x 0.293773 \n/left/y 0.81514 \n/left/radius 0.293773 \n/left/orientation 0.345906 \n/left/delta/orientation 0.000126806 \n/left/anticlockwise true \n/left/clockwise false \n/left/radius/delta -1.22921e-08 \n/left/pluck/upper/threshhold 0.05 \n/left/pluck/lower/threshhold -0.05 \n/left/pluck false \n",
					"linecount" : 30,
					"numoutlets" : 1,
					"id" : "obj-42",
					"fontname" : "Arial",
					"patching_rect" : [ 245.0, 1091.0, 247.0, 420.0 ],
					"outlettype" : [ "" ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-40",
					"patching_rect" : [ 40.0, 1047.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.prepend /left",
					"numoutlets" : 1,
					"id" : "obj-39",
					"fontname" : "Arial",
					"patching_rect" : [ 32.0, 933.0, 87.0, 20.0 ],
					"outlettype" : [ "FullPacket" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Aggregate",
					"numoutlets" : 0,
					"id" : "obj-37",
					"fontname" : "Arial",
					"patching_rect" : [ 149.0, 1020.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b l",
					"numoutlets" : 2,
					"id" : "obj-35",
					"fontname" : "Arial",
					"patching_rect" : [ 33.0, 957.0, 32.5, 20.0 ],
					"outlettype" : [ "bang", "" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.collect",
					"numoutlets" : 1,
					"id" : "obj-33",
					"fontname" : "Arial",
					"patching_rect" : [ 39.0, 995.0, 82.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Threshhold",
					"numoutlets" : 0,
					"id" : "obj-32",
					"fontname" : "Arial",
					"patching_rect" : [ 601.0, 897.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Flag detected features\n\n\n",
					"linecount" : 3,
					"numoutlets" : 0,
					"id" : "obj-30",
					"fontname" : "Arial",
					"patching_rect" : [ 403.0, 935.0, 150.0, 48.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"id" : "obj-23",
					"patching_rect" : [ 321.0, 983.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "select 1",
					"numoutlets" : 2,
					"id" : "obj-25",
					"fontname" : "Arial",
					"patching_rect" : [ 312.0, 951.0, 52.0, 20.0 ],
					"outlettype" : [ "bang", "" ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"id" : "obj-19",
					"patching_rect" : [ 240.0, 984.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "select 1",
					"numoutlets" : 2,
					"id" : "obj-22",
					"fontname" : "Arial",
					"patching_rect" : [ 235.0, 951.0, 52.0, 20.0 ],
					"outlettype" : [ "bang", "" ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"id" : "obj-18",
					"patching_rect" : [ 168.0, 983.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "select 1",
					"numoutlets" : 2,
					"id" : "obj-15",
					"fontname" : "Arial",
					"patching_rect" : [ 157.0, 950.0, 52.0, 20.0 ],
					"outlettype" : [ "bang", "" ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.route /pluck /anticlockwise /clockwise",
					"numoutlets" : 4,
					"id" : "obj-14",
					"fontname" : "Arial",
					"patching_rect" : [ 157.0, 925.0, 218.0, 20.0 ],
					"outlettype" : [ "", "", "", "FullPacket" ],
					"fontsize" : 12.0,
					"numinlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.expr /radius/delta = /radius - median(/window/radius)",
					"numoutlets" : 1,
					"id" : "obj-7",
					"fontname" : "Arial",
					"patching_rect" : [ 27.0, 810.0, 300.0, 20.0 ],
					"outlettype" : [ "FullPacket" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.callpatch /radius [zl stream 5] @as /window/radius",
					"numoutlets" : 2,
					"id" : "obj-3",
					"fontname" : "Arial",
					"patching_rect" : [ 26.0, 782.0, 257.0, 20.0 ],
					"outlettype" : [ "FullPacket", "" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numoutlets" : 1,
					"id" : "obj-10",
					"fontname" : "Arial",
					"patching_rect" : [ 339.0, 781.0, 103.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "o.message",
					"text" : "/pluck/upper/threshhold 0.05 \n/pluck/lower/threshhold -0.05",
					"linecount" : 2,
					"numoutlets" : 1,
					"id" : "obj-9",
					"fontname" : "Arial",
					"patching_rect" : [ 339.0, 806.0, 321.0, 34.0 ],
					"outlettype" : [ "" ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.multisliders /pluck/upper/threshhold 0. 0.2 /pluck/lower/threshhold 0. -0.2",
					"numoutlets" : 1,
					"id" : "obj-80",
					"fontname" : "Arial",
					"patching_rect" : [ 339.0, 845.0, 405.0, 20.0 ],
					"outlettype" : [ "FullPacket" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Novelty Detection\n\n\n\n\n",
					"linecount" : 5,
					"numoutlets" : 0,
					"id" : "obj-75",
					"fontname" : "Arial",
					"patching_rect" : [ 768.0, 806.0, 150.0, 75.0 ],
					"fontsize" : 12.0,
					"bgcolor" : [ 0.192157, 0.67451, 0.360784, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.union",
					"numoutlets" : 1,
					"id" : "obj-68",
					"fontname" : "Arial",
					"patching_rect" : [ 29.0, 863.0, 50.0, 20.0 ],
					"outlettype" : [ "FullPacket" ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.expr /pluck = (/radius/delta > /pluck/upper/threshhold) || (/radius/delta < /pluck/lower/threshhold)",
					"numoutlets" : 1,
					"id" : "obj-70",
					"fontname" : "Arial",
					"patching_rect" : [ 31.0, 899.0, 527.0, 20.0 ],
					"outlettype" : [ "FullPacket" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Feature\nDetection\n\n\n\n\n",
					"linecount" : 6,
					"numoutlets" : 0,
					"id" : "obj-67",
					"fontname" : "Arial",
					"patching_rect" : [ 478.0, 690.0, 73.0, 89.0 ],
					"fontsize" : 12.0,
					"bgcolor" : [ 0.192157, 0.67451, 0.360784, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Gestural Input Device Signal flow demonstration\nfrom 2011 NIME paper\n",
					"linecount" : 3,
					"numoutlets" : 0,
					"id" : "obj-65",
					"fontname" : "Arial",
					"patching_rect" : [ 66.0, 5.0, 150.0, 48.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Identify and Source",
					"numoutlets" : 0,
					"id" : "obj-63",
					"fontname" : "Arial",
					"patching_rect" : [ 403.0, 58.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"bgcolor" : [ 0.192157, 0.67451, 0.360784, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.expr (/anticlockwise = /orientation > 0.001)\\; (/clockwise = /orientation < -0.001)",
					"numoutlets" : 1,
					"id" : "obj-20",
					"fontname" : "Arial",
					"patching_rect" : [ 25.0, 754.0, 437.0, 20.0 ],
					"outlettype" : [ "FullPacket" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Select",
					"numoutlets" : 0,
					"id" : "obj-59",
					"fontname" : "Arial",
					"patching_rect" : [ 440.0, 591.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"bgcolor" : [ 0.192157, 0.67451, 0.360784, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.route /left",
					"numoutlets" : 2,
					"id" : "obj-57",
					"fontname" : "Arial",
					"patching_rect" : [ 27.0, 616.0, 71.0, 20.0 ],
					"outlettype" : [ "", "FullPacket" ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "unit delay",
					"numoutlets" : 0,
					"id" : "obj-2",
					"fontname" : "Arial",
					"patching_rect" : [ 187.0, 700.0, 76.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.expr /delta/orientation = /orientation - /was/orientation",
					"numoutlets" : 1,
					"id" : "obj-55",
					"fontname" : "Arial",
					"patching_rect" : [ 26.0, 728.0, 304.0, 20.0 ],
					"outlettype" : [ "FullPacket" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.remember /orientation",
					"numoutlets" : 1,
					"id" : "obj-56",
					"fontname" : "Arial",
					"patching_rect" : [ 26.0, 699.0, 138.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Fuse by conversion to polar coordinates",
					"linecount" : 2,
					"numoutlets" : 0,
					"id" : "obj-54",
					"fontname" : "Arial",
					"patching_rect" : [ 438.0, 613.0, 150.0, 34.0 ],
					"fontsize" : 12.0,
					"bgcolor" : [ 0.192157, 0.67451, 0.360784, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.expr /orientation = atan2(/x\\,/y)",
					"numoutlets" : 1,
					"id" : "obj-50",
					"fontname" : "Arial",
					"patching_rect" : [ 32.0, 672.0, 184.0, 20.0 ],
					"outlettype" : [ "FullPacket" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.expr /radius = l2norm(concat(/x \\, y) )",
					"numoutlets" : 1,
					"id" : "obj-41",
					"fontname" : "Arial",
					"patching_rect" : [ 26.0, 642.0, 217.0, 20.0 ],
					"outlettype" : [ "FullPacket" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Model\nDisplay and simulate interaction using direct manipulation substitution\nof the original",
					"linecount" : 5,
					"numoutlets" : 0,
					"id" : "obj-34",
					"fontname" : "Arial",
					"patching_rect" : [ 426.0, 323.0, 147.0, 75.0 ],
					"fontsize" : 12.0,
					"bgcolor" : [ 0.192157, 0.67451, 0.360784, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Neutralize\n with respect to vendor numerical encoding \n(0-4095) i.e. 12-bit",
					"linecount" : 4,
					"numoutlets" : 0,
					"id" : "obj-26",
					"fontname" : "Arial",
					"patching_rect" : [ 418.0, 154.0, 150.0, 62.0 ],
					"fontsize" : 12.0,
					"bgcolor" : [ 0.192157, 0.67451, 0.360784, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.expr /left/z = 1. - /left/raw/z / 4095. \\; /right/z = 1. - /right/raw/z / 4095.",
					"numoutlets" : 1,
					"id" : "obj-24",
					"fontname" : "Arial",
					"patching_rect" : [ 29.0, 148.0, 384.0, 20.0 ],
					"outlettype" : [ "FullPacket" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Situate\n with respect to the performer \n(note OS/X specific HID numbers, use o.io.gametrak for PC)",
					"linecount" : 3,
					"numoutlets" : 0,
					"id" : "obj-21",
					"fontname" : "Arial",
					"patching_rect" : [ 508.0, 96.0, 397.0, 48.0 ],
					"fontsize" : 12.0,
					"bgcolor" : [ 0.192157, 0.67451, 0.360784, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.pack /left/raw/x 0 /left/raw/y 0 /left/raw/z 0 /right/raw/x 0 /right/raw/y 0 /right/raw/z 0",
					"numoutlets" : 1,
					"id" : "obj-12",
					"fontname" : "Arial",
					"patching_rect" : [ 29.0, 118.0, 456.0, 20.0 ],
					"outlettype" : [ "FullPacket" ],
					"fontsize" : 12.0,
					"numinlets" : 6
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.route /15 /16 /17 /18 /19 /20",
					"numoutlets" : 7,
					"id" : "obj-8",
					"fontname" : "Arial",
					"patching_rect" : [ 30.0, 88.0, 381.0, 20.0 ],
					"outlettype" : [ "", "", "", "", "", "", "FullPacket" ],
					"fontsize" : 12.0,
					"numinlets" : 7
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 1,
					"id" : "obj-4",
					"patching_rect" : [ 29.0, 230.0, 322.0, 298.0 ],
					"outlettype" : [ "" ],
					"args" : [  ],
					"name" : "o.io.gametrak.display.maxpat",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "o.io.hid \"Game-Trak V1.3\"",
					"numoutlets" : 1,
					"id" : "obj-1",
					"fontname" : "Arial",
					"patching_rect" : [ 29.0, 58.0, 149.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Calibrate to a \nfamiliar norm: degrees\nand meters",
					"linecount" : 3,
					"numoutlets" : 0,
					"id" : "obj-38",
					"fontname" : "Arial",
					"patching_rect" : [ 469.0, 525.0, 155.0, 48.0 ],
					"fontsize" : 12.0,
					"bgcolor" : [ 0.172549, 0.556863, 0.305882, 0.0 ],
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 2 ],
					"destination" : [ "obj-12", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 3 ],
					"destination" : [ "obj-12", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 4 ],
					"destination" : [ "obj-12", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 5 ],
					"destination" : [ "obj-12", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-68", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 88.5, 615.0, 13.0, 607.0, 6.0, 1004.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-43", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 2 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
