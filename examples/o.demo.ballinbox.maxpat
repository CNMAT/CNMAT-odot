{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 6,
			"architecture" : "x86"
		}
,
		"rect" : [ 152.0, 69.0, 835.0, 534.0 ],
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
					"frgb" : 0.0,
					"id" : "obj-3",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 308.0, 375.0, 150.0, 33.0 ],
					"text" : "Bouncing Ball\nAdrian Freed 2014"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"linecount" : 8,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 152.0, 33.0, 470.0, 127.0 ],
					"text" : "/ball/position ??= [0., 0. ,0.], \n/ball/step ??= [0.07, 0.025, 0.035],\n/ball/reflected ??= [false ,false ,false],\n/bound/lower ??= [-0.5, -0.5 , -0.5],\n/bound/upper ??= [ 0.5, 0.5, 0.5],\n/ball/position += /ball/step,\n/ball/reflected = (/ball/position > /bound/upper) || (/ball/position < /bound/lower),\n/ball/step *= /ball/reflected ? -1 : 1,",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"linecount" : 15,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 9.0, 241.0, 259.0, 222.0 ],
					"text" : "/interval : 0.05,\n/metro/started : 2014-07-19T20:37:28.528231Z,\n/n : 260,\n/metro/next : 2014-07-19T20:37:41.478231Z,\n/rate : 20.,\n/bpm : 1200.,\n/units/interval : \"Seconds\",\n/units/bpm : \"Beats Per Minute\",\n/units/rate : \"Hertz (cycles per second)\",\n/ball/position : [0.42, 0.05, -0.28],\n/ball/step : [0.07, -0.025, -0.035],\n/ball/reflected : [false, false, false],\n/bound/lower : [-0.5, -0.5, -0.5],\n/bound/upper : [0.5, 0.5, 0.5]",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 42.0, 177.0, 129.0, 20.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"linecount" : 4,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 282.5, 225.0, 209.0, 73.0 ],
					"text" : "/position = /ball/position?? [0,0,0],\n/color ??= [ 0.9, 0.3 ,0.1 ],\n/radius ??= 0.04 ,\n/shape ??= \"sphere\",",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 282.5, 311.0, 105.0, 20.0 ],
					"text" : "o.pack /displaylist"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"idlemouse" : 1,
					"maxclass" : "jit.pwindow",
					"name" : "o.demo.bouncingball",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 500.0, 218.5, 246.0, 237.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 282.5, 348.0, 144.0, 20.0 ],
					"text" : "o.gl o.demo.bouncingball"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 42.0, 140.0, 95.0, 20.0 ],
					"text" : "o.metro /rate 20"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 51.5, 202.0, 28.0, 202.0, 28.0, 15.0, 161.5, 15.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-13", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.metro.maxpat",
				"bootpath" : "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/time",
				"patcherrelativepath" : "../patchers/time",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.arguments.maxpat",
				"bootpath" : "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.righttoleft.maxpat",
				"bootpath" : "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/core",
				"patcherrelativepath" : "../patchers/core",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.in.maxpat",
				"bootpath" : "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/core",
				"patcherrelativepath" : "../patchers/core",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.port.maxpat",
				"bootpath" : "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/core",
				"patcherrelativepath" : "../patchers/core",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.aspect.joinpoint.maxpat",
				"bootpath" : "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/aspect",
				"patcherrelativepath" : "../patchers/aspect",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.out.maxpat",
				"bootpath" : "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/core",
				"patcherrelativepath" : "../patchers/core",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.init.maxpat",
				"bootpath" : "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/core",
				"patcherrelativepath" : "../patchers/core",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.recurse.maxpat",
				"bootpath" : "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.gl.maxpat",
				"bootpath" : "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/graphics",
				"patcherrelativepath" : "../patchers/graphics",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "thru.maxpat",
				"bootpath" : "/Applications/Max 6.1/patches/m4l-patches/Pluggo for Live resources/patches",
				"patcherrelativepath" : "../../../../../../../Applications/Max 6.1/patches/m4l-patches/Pluggo for Live resources/patches",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.gl.platohelper.maxpat",
				"bootpath" : "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/graphics",
				"patcherrelativepath" : "../patchers/graphics",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.gl.texthelper.maxpat",
				"bootpath" : "/Users/adrian2013/Documents/Max/Packages/CNMAT-odot/patchers/graphics",
				"patcherrelativepath" : "../patchers/graphics",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.collect.mxo",
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
				"name" : "o.if.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.var.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.select.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.context.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.prepend.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.cond.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.message.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.timetag.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.schedule.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.when.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.messageiterate.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.listenumerate.mxo",
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
 ]
	}

}
