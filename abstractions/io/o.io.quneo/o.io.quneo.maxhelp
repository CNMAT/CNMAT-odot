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
		"rect" : [ 44.0, 44.0, 1325.0, 972.0 ],
		"bgcolor" : [ 1.0, 0.885413, 0.933963, 1.0 ],
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
					"id" : "obj-4",
					"linecount" : 8,
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 52.896057, 299.812622, 690.0, 114.0 ],
					"text" : "/pad/b/4/velocity 0.\n/pad/b/4/pressure 0.\n/pad/b/4/x 0.645669\n/pad/b/4/y 0.897638\n/instructions \"first tap 'mode' button, then tap 'pad /a/1' to enable preset 1. Ok to change the velocity settings within preset 1, using the QuNeo Editor.\"\n/manufactuer \"KESUMO, LLC.\" \"Keith McMillen\"\n/product \"Quneo, #K-707\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-31",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1027.342285, 519.562256, 140.0, 33.0 ],
					"text" : "The gesture trace display helper"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/4" ],
					"id" : "obj-22",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.pad.gesture.trace.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1009.416809, 552.562256, 136.0, 128.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 354.135498, 205.361298, 253.422226, 20.0 ],
					"text" : "<< drag between 0. and 1. Look at Device."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"linecount" : 2,
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 315.897186, 253.361298, 150.0, 33.0 ],
					"text" : "/led/rotor/linear.position/red/a 0.",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
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
					"patching_rect" : [ 306.135498, 205.361298, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 306.135498, 225.361298, 198.0, 20.0 ],
					"text" : "o.pak /led/rotor/linear.position/red/a"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-19",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 425.607391, 99.248489, 156.0, 33.0 ],
					"text" : "(Shrink this patch with command minus)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-30",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1017.842285, 299.812622, 159.0, 60.0 ],
					"text" : "Name the sensor domain in the bpatcher inspector, with an argument, such as /a/4/pad."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 938.90094, 1251.366211, 202.0, 20.0 ],
					"text" : "configured by Dave DeFilippo 2013"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 176.187012, 1216.487061, 150.0, 20.0 ],
					"text" : "<< Resulting Bundle"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-17",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 775.144104, 211.361298, 353.0, 74.0 ],
					"text" : "Sensor domains exist as separate patches (to be opened as bpatchers), for building new relations between existing and non-existing sensor domains.  Compose new assemblages of interactivity, distribute the device across patchers or reconfigure the device completely. (for example)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"linecount" : 4,
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 801.916443, 559.122498, 150.0, 60.0 ],
					"text" : "/pad/a/4/velocity 0.\n/pad/a/4/pressure 0.\n/pad/a/4/x 1.\n/pad/a/4/y 0.",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/4" ],
					"id" : "obj-14",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.pad.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 892.916443, 416.016968, 118.336945, 104.867409 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/pad/a/4" ],
					"id" : "obj-9",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.helper.pad.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 892.916443, 299.812622, 118.336945, 104.867409 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"frgb" : 0.0,
					"id" : "obj-13",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 752.18042, 633.562256, 189.0, 47.0 ],
					"text" : "* o.io.quneo.display\nWhat Things Mean"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Unicode MS",
					"fontsize" : 18.0,
					"frgb" : 0.0,
					"id" : "obj-93",
					"linecount" : 10,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 738.155273, 680.562256, 543.0, 248.0 ],
					"text" : "'Redness' represents velocity.\n\n'Blueness' represents pressure.\n\n'Green things' act in the touch of the device, in the case of range (only on the longSlider) and position ( only on the sliders and pads).\n\n'Yellow things' are the color of 'user interface handles,' responding to click and drag of the mouse.  (green things can't be moused)\n"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-7",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 171.212128, 131.361298, 453.367859, 87.0 ],
					"text" : "First Inlet: The object recognizes any QuNeo by a locational identity as  assigned (by user or OS) to available usb ports. Takes an osc message to specify 'the' usb port 'a' physical QuNeo connects.\n\nSecond Inlet: Takes osc messages to control leds on the physical QuNeo, open object to see mapping."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-25",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.135496, 46.36441, 333.0, 33.0 ],
					"text" : "OSC encoding of Keith McMillen's QuNeo controller  for prototyping and design of related algorithms."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-26",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.135496, 84.695938, 397.0, 33.0 ],
					"text" : "Provides graphical representation of sensor activity, as well as a  namespace encoding for gesture derivation and LED control."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 24.0,
					"frgb" : 0.0,
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.135496, 13.364412, 241.0, 33.0 ],
					"text" : "o.io.quneo",
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.87451, 0.933333, 1.0, 1.0 ],
					"border" : 5,
					"bordercolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"id" : "obj-28",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1.186984, 13.364412, 424.42041, 118.884079 ],
					"rounded" : 70
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"linecount" : 31,
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 26.187012, 1165.366211, 150.0, 422.0 ],
					"text" : "/pad/b/3/velocity 0.\n/pad/b/3/pressure 0.\n/pad/b/3/x 0.496063\n/pad/b/3/y 0.496063\n/pad/c/3/velocity 0.\n/pad/c/3/pressure 0.\n/pad/c/3/x 0.496063\n/pad/c/3/y 0.496063\n/pad/a/2/velocity 0.\n/pad/a/2/pressure 0.\n/pad/a/2/x 0.496063\n/pad/a/2/y 0.496063\n/pad/c/4/velocity 0.\n/pad/c/4/pressure 0.\n/pad/c/4/x 0.496063\n/pad/c/4/y 0.496063\n/pad/a/4/velocity 0.\n/pad/a/4/pressure 0.\n/pad/a/4/x 0.76378\n/pad/a/4/y 0.480315\n/pad/a/3/velocity 0.\n/pad/a/3/pressure 0.\n/pad/a/3/x 0.645669\n/pad/a/3/y 0.692913\n/pad/b/4/velocity 0.\n/pad/b/4/pressure 0.\n/pad/b/4/x 0.874016\n/pad/b/4/y 1.\n/time/happened 2013-11-18T16:25:08.687919Z",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.212135, 169.361298, 150.0, 20.0 ],
					"text" : "/port \"QUNEO\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 24.135496, 265.361298, 67.0, 20.0 ],
					"text" : "o.io.quneo"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 2183.121826, 1476.573608, 32.5, 20.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 2183.121826, 1449.573608, 50.0, 20.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "bpatcher",
					"name" : "o.io.quneo.display.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1.186984, 429.562256, 736.968262, 581.374939 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 2206.121826, 1509.573608, 2241.871826, 1509.573608, 2241.871826, 1430.573608, 2223.621826, 1430.573608 ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
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
				"name" : "o.io.quneo.display.helper.rotor.maxpat",
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
				"name" : "o.collectwithtimeout.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/maxliB/lib",
				"patcherrelativepath" : "../../../../../../maxliB/lib",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.helper.encode.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.quneo.display.helper.pad.gesture.trace.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.quneo",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.pak.mxo",
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
, 			{
				"name" : "o.union.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.prepend.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.message.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
