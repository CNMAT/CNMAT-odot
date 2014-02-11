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
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 3,
							"architecture" : "x86"
						}
,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-4",
									"linecount" : 41,
									"maxclass" : "o.message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 155.0, 556.0 ],
									"text" : "/total/count 0\n/touch/2/state \"retracted\"\n/touch/2/position 0.598389 0.516602\n/touch/2/size 0.010498 0.0212402\n/touch/1/state \"retracted\"\n/touch/1/position 0.401367 0.499268\n/touch/1/size 0.010498 0.0212402\n/touch/4/state \"retracted\"\n/touch/4/position 0.596191 0.397217\n/touch/4/size 0.010498 0.0212402\n/details/ID/vendor 1386\n/details/ID/tablet 791\n/details/ID/fromOS/tablet 1\n/details/serialnumber/pen 931189726\n/details/serialnumber/tablet \"8805614146526\"\n/details/code 6087\n/capabilities/code 6087\n/capabilities/deviceId true\n/capabilities/absX true\n/capabilities/absY true\n/capabilities/vendor1 false\n/capabilities/vendor2 false\n/capabilities/vendor3 false\n/capabilities/buttons false\n/capabilities/tiltX true\n/capabilities/tiltY true\n/capabilities/absZ true\n/capabilities/pressure true\n/capabilities/tangential/pressure true\n/capabilities/orientation false\n/capabilities/rotation true",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-13",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 186.0, 40.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 20.794376, 299.5, 95.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p messages out"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 3,
							"architecture" : "x86"
						}
,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-10",
									"linecount" : 41,
									"maxclass" : "o.message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 150.0, 556.0 ],
									"text" : "/total/count 0\n/touch/2/state \"retracted\"\n/touch/2/position 0.598389 0.516602\n/touch/2/size 0.010498 0.0212402\n/touch/1/state \"retracted\"\n/touch/1/position 0.401367 0.499268\n/touch/1/size 0.010498 0.0212402\n/touch/4/state \"retracted\"\n/touch/4/position 0.596191 0.397217\n/touch/4/size 0.010498 0.0212402\n/details/ID/vendor 1386\n/details/ID/tablet 791\n/details/ID/fromOS/tablet 1\n/details/serialnumber/pen 931189726\n/details/serialnumber/tablet \"8805614146526\"\n/details/code 6087\n/capabilities/code 6087\n/capabilities/deviceId true\n/capabilities/absX true\n/capabilities/absY true\n/capabilities/vendor1 false\n/capabilities/vendor2 false\n/capabilities/vendor3 false\n/capabilities/buttons false\n/capabilities/tiltX true\n/capabilities/tiltY true\n/capabilities/absZ true\n/capabilities/pressure true\n/capabilities/tangential/pressure true\n/capabilities/orientation false\n/capabilities/rotation true",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-11",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 181.0, 40.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 236.0, 606.0, 95.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p messages out"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "bpatcher",
					"name" : "o.io.tablet.display.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 214.0, 190.0, 562.0, 340.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 105.186981, 170.0, 92.0, 20.0 ],
					"text" : "/pen \"nopoll\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 103.789795, 144.0, 77.397186, 20.0 ],
					"text" : "/pen \"poll\"",
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
					"patching_rect" : [ 9.794376, 170.0, 92.0, 20.0 ],
					"text" : "/touch \"nopoll\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8.397188, 144.0, 77.397186, 20.0 ],
					"text" : "/touch \"poll\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
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
					"linecount" : 14,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 531.0, 541.0, 220.0, 194.0 ],
					"text" : "The display:\nIf the pen is sensed by the wacom a red blog appears. The larger the blog, the more pressure applied by the pen.  The red cylinder on the left of the display represents the tilt of the pen. (If the pen tilt display doesn't work, then open its inspector and name it 'tilt.disp'.)\n\nIf touch(s) is sensed yellowish blogs appear.  The sizes of the blobs corresponds to the surface area of the touch. "
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 36.0,
					"frgb" : 0.0,
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.397188, 20.447449, 453.0, 48.0 ],
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
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.794376, 227.0, 63.0, 20.0 ],
					"text" : "o.io.tablet"
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
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
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
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
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
				"name" : "o.io.tablet.helper.encode.touch.maxpat",
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
				"name" : "o.collect.mxo",
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
				"name" : "o.prepend.mxo",
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
				"name" : "s2m.wacomtouch.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "s2m.wacom.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.select.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.cond.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.iterate.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.if.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
