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
		"rect" : [ 100.0, 100.0, 813.0, 781.0 ],
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
					"id" : "obj-2",
					"maxclass" : "bpatcher",
					"name" : "o.io.tablet.display.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 239.0, 183.0, 558.0, 341.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-5",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 440.607391, 9.115921, 156.0, 60.0 ],
					"text" : "Relies on s2m.wacom and s2m.wacomtouch objects, downloadable at maxobjects.com"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-7",
					"linecount" : 13,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 531.0, 541.0, 220.0, 181.0 ],
					"text" : "The display:\nIf the pen is sensed by the wacom a red blog appears. The larger the blog, the more pressure applied by the pen.  The red cylinder on the left of the display represents the tilt of the pen. (If the pen tilt display doesn't work, then open its inspector and name it 'place'.)\n\nIf touch(s) is sensed yellowish blogs appear.  The sizes of the blobs corresponds to the surface area of the touch. "
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 48.0,
					"frgb" : 0.0,
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.397188, 20.447449, 396.0, 60.0 ],
					"text" : "o.io.tablet"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.397188, 80.447449, 397.0, 20.0 ],
					"text" : "OSC-Wrapper for touch and pen Wacom tablets.  "
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.629254, 1.0, 0.743511, 1.0 ],
					"border" : 5,
					"bordercolor" : [ 0.133558, 0.8, 0.0, 1.0 ],
					"grad1" : [ 0.325952, 0.929412, 0.424782, 1.0 ],
					"grad2" : [ 0.696938, 0.721569, 0.680295, 1.0 ],
					"id" : "obj-28",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5.186983, 9.115921, 424.42041, 118.884079 ],
					"rounded" : 70
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"linecount" : 32,
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5.186983, 183.0, 203.0, 435.0 ],
					"text" : "/pen/position 0.34454 0.646276\n/pen/pressure 0.\n/pen/tilt -0.0468764 -0.109378\n/pen/proximity \"true\"\n/pen/contact \"false\"\n/pen/situated/as \"writer\"\n/pen/button/pressed \"up\" \"up\"\n/pen/rotation\n/pen/Z-position -1\n/pen/tangential/pressure\n/details/ID/vendor 1386\n/details/ID/tablet 791\n/details/ID/fromOS/tablet 1\n/details/serialnumber/pen 931189726\n/details/serialnumber/tablet \"8805614146526\"\n/details/code 6087\n/capabilities/code 6087\n/capabilities/deviceId true\n/capabilities/absX true\n/capabilities/absY true\n/capabilities/vendor1 false\n/capabilities/vendor2 false\n/capabilities/vendor3 false\n/capabilities/buttons false\n/capabilities/tiltX true\n/capabilities/tiltY true\n/capabilities/absZ true\n/capabilities/pressure true\n/capabilities/tangential/pressure true\n/capabilities/orientation false\n/capabilities/rotation true",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 217.0, 138.0, 63.0, 20.0 ],
					"text" : "o.io.tablet"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.io.tablet.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.tablet",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "recycleFingersIDs.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/maxliB/s2m.wacomtouchV1.0",
				"patcherrelativepath" : "../../../../../../maxliB/s2m.wacomtouchV1.0",
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
				"name" : "o.io.tablet.helper.encode.touch.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.tablet",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.tablet.display.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.tablet",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "wacom-intuos-5-tablet.jpg",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.tablet",
				"patcherrelativepath" : ".",
				"type" : "JPEG",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.tablet.display.helper.touch.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.tablet",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.tablet.display.helper.pen.xyz.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.tablet",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.tablet.display.helper.pen.tilt.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.tablet",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.gl.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/maxliB/CNMAT_Externals/odot/abstractions/io/graphics",
				"patcherrelativepath" : "../../../../../../maxliB/CNMAT_Externals/odot/abstractions/io/graphics",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.gl.platohelper.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/maxliB/CNMAT_Externals/odot/abstractions/io/graphics",
				"patcherrelativepath" : "../../../../../../maxliB/CNMAT_Externals/odot/abstractions/io/graphics",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.tablet.display.helper.pen.button.maxpat",
				"bootpath" : "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.tablet",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.prepend.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "s2m.wacomtouch.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.collect.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "s2m.wacom.mxo",
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
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.select.mxo",
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
				"name" : "o.if.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
