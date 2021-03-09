{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 10,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 9.0, 55.0, 883.0, 821.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 14.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 0,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 15,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "Untitled5_template",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"args" : [ 3 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-41",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "advance.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -1.0, -2.0 ],
					"patching_rect" : [ 654.5, 1835.0, 195.0, 28.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "o.compose", "o.pack", "o.route" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-39",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "o.t.objects-covered.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -5.5, -1.0 ],
					"patching_rect" : [ 15.5, 1786.0, 834.0, 45.75 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 627.0, 1852.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"id" : "obj-38",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 775.0, 790.5, 88.0, 22.0 ],
					"style" : "default",
					"text" : "(scroll down)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 77.0, 115.5, 764.0, 21.0 ],
					"style" : "default",
					"text" : "Let's take a look at a practical example built from what we've seen so far...",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-36",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 226.5, 1014.5, 165.0, 60.0 ],
					"style" : "default",
					"text" : "When you find combinations of parameters you like, simply copy this bundle for future use."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbletextmargin" : 15,
					"bubbleusescolors" : 1,
					"fontsize" : 12.0,
					"id" : "obj-35",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 1281.5, 225.0, 98.0 ],
					"style" : "default",
					"text" : "Here, this bundle contains all of the necessary information for both synths in one place, to be separated out by the cascading o.route objects below."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-34",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 67.0, 1149.5, 764.0, 36.0 ],
					"style" : "default",
					"text" : "When we have multiple synths, or multiple voices of the same synth, we can leverage the heirarchical nature of odot addresses to specify which synth / voice the different parts of a message should go to.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-33",
					"linecount" : 6,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 412.0, 998.5, 186.0, 87.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 102, 114, 101, 113, 117, 101, 110, 99, 121, 0, 0, 44, 100, 0, 0, 64, 127, -96, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 119, 97, 118, 101, 102, 111, 114, 109, 0, 0, 0, 44, 115, 0, 0, 115, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 32, 47, 108, 111, 119, 112, 97, 115, 115, 47, 102, 114, 101, 113, 117, 101, 110, 99, 121, 0, 0, 44, 100, 0, 0, 64, 87, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 108, 111, 119, 112, 97, 115, 115, 47, 113, 0, 0, 44, 100, 0, 0, 64, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 101, 110, 118, 47, 97, 109, 112, 108, 105, 116, 117, 100, 101, 0, 0, 44, 100, 0, 0, 64, 38, 51, 51, 64, 0, 0, 0, 0, 0, 0, 32, 47, 101, 110, 118, 47, 100, 117, 114, 97, 116, 105, 111, 110, 47, 115, 101, 99, 0, 0, 0, 44, 100, 0, 0, 63, -61, 51, 51, 64, 0, 0, 0 ],
					"saved_bundle_length" : 204,
					"text" : "/frequency : 506.,\n/waveform : \"sine\",\n/lowpass/frequency : 92.,\n/lowpass/q : 27.,\n/env/amplitude : 11.1,\n/env/duration/sec : 0.15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 134.0, 860.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 205.0, 850.0, 555.0, 20.0 ],
					"style" : "default",
					"text" : "We can also experiment with the value of the different parameters by building the bundle using o.pack."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-29",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 787.0, 888.5, 49.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-28",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 656.399999999999977, 888.5, 49.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-27",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 525.799999999999955, 888.5, 49.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-26",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 395.199999999999989, 888.5, 49.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 300.200000000000045, 888.5, 48.0, 22.0 ],
					"text" : "triangle"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 264.600000000000023, 888.5, 31.0, 22.0 ],
					"text" : "sine"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-22",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 134.0, 892.5, 49.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 134.0, 936.5, 672.0, 22.0 ],
					"text" : "o.pack /frequency 440. /waveform triangle /lowpass/frequency 1700. /lowpass/q 2.2 /env/amplitude 0.9 /env/duration/sec 0.3"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleusescolors" : 1,
					"fontface" : 2,
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 438.0, 632.0, 384.0, 24.0 ],
					"style" : "default",
					"text" : "double click to see how odot data is converted to Max/MSP values"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-21",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 77.0, 158.5, 764.0, 36.0 ],
					"style" : "default",
					"text" : "In the example below, we have a relatively simple synthesizer that takes a number of parameters to control its behavior. Using the o.compose box, we can encapsulate all the parameters together and send them atomically to the synth.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 350.5, 421.5, 115.0, 20.0 ],
					"style" : "default",
					"text" : "...now, try this one..."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 301.0, 728.5, 71.0, 20.0 ],
					"style" : "default",
					"text" : "audio on/off"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-9",
					"linecount" : 6,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 351.5, 444.5, 199.0, 87.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 102, 114, 101, 113, 117, 101, 110, 99, 121, 0, 0, 44, 100, 0, 0, 64, 118, 32, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 119, 97, 118, 101, 102, 111, 114, 109, 0, 0, 0, 44, 115, 0, 0, 116, 114, 105, 97, 110, 103, 108, 101, 0, 0, 0, 0, 0, 0, 0, 32, 47, 108, 111, 119, 112, 97, 115, 115, 47, 102, 114, 101, 113, 117, 101, 110, 99, 121, 0, 0, 44, 100, 0, 0, 64, -102, -112, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 108, 111, 119, 112, 97, 115, 115, 47, 113, 0, 0, 44, 100, 0, 0, 64, 1, -103, -103, -103, -103, -103, -102, 0, 0, 0, 28, 47, 101, 110, 118, 47, 97, 109, 112, 108, 105, 116, 117, 100, 101, 0, 0, 44, 100, 0, 0, 63, -20, -52, -52, -52, -52, -52, -51, 0, 0, 0, 32, 47, 101, 110, 118, 47, 100, 117, 114, 97, 116, 105, 111, 110, 47, 115, 101, 99, 0, 0, 0, 44, 100, 0, 0, 63, -45, 51, 51, 51, 51, 51, 51 ],
					"saved_bundle_length" : 208,
					"text" : "/frequency : 354.,\n/waveform : \"triangle\",\n/lowpass/frequency : 1700.,\n/lowpass/q : 2.2,\n/env/amplitude : 0.9,\n/env/duration/sec : 0.3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 301.0, 680.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "spectroscope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 405.400000000000091, 680.0, 320.0, 80.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 301.0, 632.0, 126.0, 23.0 ],
					"text" : "o.synthesizer.basic~"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 12.0,
					"id" : "obj-4",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 29.0, 475.5, 259.0, 100.0 ],
					"style" : "default",
					"text" : "Let's try turning the audio on and listening to what a bundle might cause MSP to do.\n\nGo ahead and click the compose box above after turning the audio in this patch on.  \n\nYou should hear a sound..."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbletextmargin" : 15,
					"bubbleusescolors" : 1,
					"fontsize" : 12.0,
					"id" : "obj-1",
					"linecount" : 10,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 528.0, 247.0, 296.0, 165.0 ],
					"style" : "default",
					"text" : "Here is a bundle that contains the values of a synthesizer.  \n\nNote that since the values are received atomically, that is, all at the same time, the order that they appear in the bundle doesn't necessarily matter--the implementation of the synthesizer should extract the values from the bundle in the order that makes the most sense given its implementation."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-3",
					"linecount" : 6,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 301.0, 283.5, 199.0, 87.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 102, 114, 101, 113, 117, 101, 110, 99, 121, 0, 0, 44, 100, 0, 0, 64, 123, -128, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 119, 97, 118, 101, 102, 111, 114, 109, 0, 0, 0, 44, 115, 0, 0, 115, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 32, 47, 108, 111, 119, 112, 97, 115, 115, 47, 102, 114, 101, 113, 117, 101, 110, 99, 121, 0, 0, 44, 100, 0, 0, 64, -94, -64, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 108, 111, 119, 112, 97, 115, 115, 47, 113, 0, 0, 44, 100, 0, 0, 64, 28, -52, -52, -52, -52, -52, -51, 0, 0, 0, 28, 47, 101, 110, 118, 47, 97, 109, 112, 108, 105, 116, 117, 100, 101, 0, 0, 44, 100, 0, 0, 63, -39, -103, -103, -103, -103, -103, -102, 0, 0, 0, 32, 47, 101, 110, 118, 47, 100, 117, 114, 97, 116, 105, 111, 110, 47, 115, 101, 99, 0, 0, 0, 44, 100, 0, 0, 63, -13, 51, 51, 51, 51, 51, 51 ],
					"saved_bundle_length" : 204,
					"text" : "/frequency : 440.,\n/waveform : \"sine\",\n/lowpass/frequency : 2400.,\n/lowpass/q : 7.2,\n/env/amplitude : 0.4,\n/env/duration/sec : 1.2"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 189.0, 1710.5, 71.0, 20.0 ],
					"style" : "default",
					"text" : "audio on/off"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 189.0, 1662.0, 41.0, 41.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "spectroscope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 420.0, 1630.5, 305.0, 85.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "FullPacket" ],
					"patching_rect" : [ 189.0, 1533.0, 389.0, 22.0 ],
					"text" : "o.route /1 /2"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 189.0, 1500.0, 81.0, 22.0 ],
					"text" : "o.route /voice"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-20",
					"linecount" : 12,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 189.0, 1243.5, 252.0, 164.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 118, 111, 105, 99, 101, 47, 49, 47, 102, 114, 101, 113, 117, 101, 110, 99, 121, 0, 0, 44, 100, 0, 0, 64, 123, -128, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 118, 111, 105, 99, 101, 47, 49, 47, 119, 97, 118, 101, 102, 111, 114, 109, 0, 0, 0, 44, 115, 0, 0, 115, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 40, 47, 118, 111, 105, 99, 101, 47, 49, 47, 108, 111, 119, 112, 97, 115, 115, 47, 102, 114, 101, 113, 117, 101, 110, 99, 121, 0, 0, 44, 100, 0, 0, 64, -94, -64, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 118, 111, 105, 99, 101, 47, 49, 47, 108, 111, 119, 112, 97, 115, 115, 47, 113, 0, 0, 44, 100, 0, 0, 64, 28, -52, -52, -52, -52, -52, -51, 0, 0, 0, 36, 47, 118, 111, 105, 99, 101, 47, 49, 47, 101, 110, 118, 47, 97, 109, 112, 108, 105, 116, 117, 100, 101, 0, 0, 44, 100, 0, 0, 63, -39, -103, -103, -103, -103, -103, -102, 0, 0, 0, 40, 47, 118, 111, 105, 99, 101, 47, 49, 47, 101, 110, 118, 47, 100, 117, 114, 97, 116, 105, 111, 110, 47, 115, 101, 99, 0, 0, 0, 44, 100, 0, 0, 63, -13, 51, 51, 51, 51, 51, 51, 0, 0, 0, 32, 47, 118, 111, 105, 99, 101, 47, 50, 47, 102, 114, 101, 113, 117, 101, 110, 99, 121, 0, 0, 44, 100, 0, 0, 64, 118, 32, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 118, 111, 105, 99, 101, 47, 50, 47, 119, 97, 118, 101, 102, 111, 114, 109, 0, 0, 0, 44, 115, 0, 0, 116, 114, 105, 97, 110, 103, 108, 101, 0, 0, 0, 0, 0, 0, 0, 40, 47, 118, 111, 105, 99, 101, 47, 50, 47, 108, 111, 119, 112, 97, 115, 115, 47, 102, 114, 101, 113, 117, 101, 110, 99, 121, 0, 0, 44, 100, 0, 0, 64, -102, -112, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 118, 111, 105, 99, 101, 47, 50, 47, 108, 111, 119, 112, 97, 115, 115, 47, 113, 0, 0, 44, 100, 0, 0, 64, 1, -103, -103, -103, -103, -103, -102, 0, 0, 0, 36, 47, 118, 111, 105, 99, 101, 47, 50, 47, 101, 110, 118, 47, 97, 109, 112, 108, 105, 116, 117, 100, 101, 0, 0, 44, 100, 0, 0, 63, -20, -52, -52, -52, -52, -52, -51, 0, 0, 0, 40, 47, 118, 111, 105, 99, 101, 47, 50, 47, 101, 110, 118, 47, 100, 117, 114, 97, 116, 105, 111, 110, 47, 115, 101, 99, 0, 0, 0, 44, 100, 0, 0, 63, -45, 51, 51, 51, 51, 51, 51 ],
					"saved_bundle_length" : 492,
					"text" : "/voice/1/frequency : 440.,\n/voice/1/waveform : \"sine\",\n/voice/1/lowpass/frequency : 2400.,\n/voice/1/lowpass/q : 7.2,\n/voice/1/env/amplitude : 0.4,\n/voice/1/env/duration/sec : 1.2,\n/voice/2/frequency : 354.,\n/voice/2/waveform : \"triangle\",\n/voice/2/lowpass/frequency : 1700.,\n/voice/2/lowpass/q : 2.2,\n/voice/2/env/amplitude : 0.9,\n/voice/2/env/duration/sec : 0.3"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 374.0, 1568.0, 117.0, 22.0 ],
					"text" : "o.synthesizer.basic~"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 189.0, 1568.0, 117.0, 22.0 ],
					"text" : "o.synthesizer.basic~"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 3 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-14",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "o.t.banner.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -4.0, -5.0 ],
					"patching_rect" : [ 18.0, 9.0, 645.0, 91.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 802.0, 41.5, 61.0, 24.0 ],
					"text" : "onecopy"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 3 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-12",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "advance.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -1.0, -2.0 ],
					"patching_rect" : [ 668.0, 9.0, 195.0, 28.0 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 1 ],
					"midpoints" : [ 143.5, 991.0, 588.5, 991.0 ],
					"order" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 143.5, 979.5, 125.0, 979.5, 125.0, 621.0, 310.5, 621.0 ],
					"order" : 1,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"order" : 1,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"order" : 2,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"order" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 2 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 3 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 4 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 5 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"order" : 1,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"order" : 2,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"order" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"order" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"midpoints" : [ 310.5, 680.0, 336.5, 680.0 ],
					"order" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 2,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "advance.maxpat",
				"bootpath" : "~/Documents/programming/git_repositories/CNMAT-builds/CNMAT-odot/patchers/tutorial",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "filelist.txt",
				"bootpath" : "~/Documents/programming/git_repositories/CNMAT-builds/CNMAT-odot/patchers/tutorial",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "close_parent.js",
				"bootpath" : "~/Documents/programming/git_repositories/CNMAT-builds/CNMAT-odot/patchers/tutorial",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "o.t.banner.maxpat",
				"bootpath" : "~/Documents/programming/git_repositories/CNMAT-builds/CNMAT-odot/patchers/tutorial",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.synthesizer.basic~.maxpat",
				"bootpath" : "~/Documents/programming/git_repositories/CNMAT-builds/CNMAT-odot/patchers/tutorial",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.t.objects-covered.maxpat",
				"bootpath" : "~/Documents/programming/git_repositories/CNMAT-builds/CNMAT-odot/patchers/tutorial",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.compose.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
