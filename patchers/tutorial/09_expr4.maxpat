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
		"rect" : [ 15.0, 61.0, 992.0, 640.0 ],
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
		"lefttoolbarpinned" : 2,
		"toptoolbarpinned" : 2,
		"righttoolbarpinned" : 2,
		"bottomtoolbarpinned" : 2,
		"toolbars_unpinned_last_save" : 15,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 0,
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
					"id" : "obj-113",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 545.0, 5284.0, 135.0, 24.0 ],
					"text" : "o.synthesizer.basic~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 492.0, 5311.0, 135.0, 24.0 ],
					"text" : "o.synthesizer.basic~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 439.0, 5338.0, 135.0, 24.0 ],
					"text" : "o.synthesizer.basic~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 386.0, 5449.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 386.0, 5391.0, 45.0, 47.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "FullPacket" ],
					"patching_rect" : [ 386.0, 5236.0, 231.0, 24.0 ],
					"text" : "o.route /0 /1 /2 /3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 386.0, 5206.0, 93.0, 24.0 ],
					"text" : "o.route /synth"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 386.0, 5365.0, 135.0, 24.0 ],
					"text" : "o.synthesizer.basic~"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-102",
					"linecount" : 4,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 65.0, 4785.0, 312.0, 62.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 47, 115, 121, 110, 116, 104, 47, 48, 47, 112, 108, 97, 121, 0, 0, 0, 44, 100, 100, 100, 115, 0, 0, 0, 64, 123, -128, 0, 0, 0, 0, 0, 63, -16, 0, 0, 0, 0, 0, 0, 64, 8, 0, 0, 0, 0, 0, 0, 115, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 56, 47, 115, 121, 110, 116, 104, 47, 49, 47, 112, 108, 97, 121, 0, 0, 0, 44, 100, 100, 100, 115, 0, 0, 0, 64, 124, 16, 0, 0, 0, 0, 0, 63, -26, 102, 102, 102, 102, 102, 102, 64, 24, 0, 0, 0, 0, 0, 0, 115, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 60, 47, 115, 121, 110, 116, 104, 47, 50, 47, 112, 108, 97, 121, 0, 0, 0, 44, 100, 100, 100, 115, 0, 0, 0, 64, -119, 0, 0, 0, 0, 0, 0, 63, -29, 51, 51, 51, 51, 51, 51, 64, 16, 0, 0, 0, 0, 0, 0, 116, 114, 105, 97, 110, 103, 108, 101, 0, 0, 0, 0, 0, 0, 0, 60, 47, 115, 121, 110, 116, 104, 47, 51, 47, 112, 108, 97, 121, 0, 0, 0, 44, 100, 100, 100, 115, 0, 0, 0, 64, -119, 72, 0, 0, 0, 0, 0, 63, -32, 0, 0, 0, 0, 0, 0, 64, 20, 0, 0, 0, 0, 0, 0, 116, 114, 105, 97, 110, 103, 108, 101, 0, 0, 0, 0 ],
					"saved_bundle_length" : 264,
					"text" : "/synth/0/play : [440., 1., 3., \"sine\"],\n/synth/1/play : [449., 0.7, 6., \"sine\"],\n/synth/2/play : [800., 0.6, 4., \"triangle\"],\n/synth/3/play : [809., 0.5, 5., \"triangle\"]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-99",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 65.0, 5206.0, 243.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-100",
					"linecount" : 19,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 65.0, 4873.0, 560.0, 262.0 ],
					"text" : "# This time, we assume that getaddresses() will produce a list\n/addrs = getaddresses(), \n\n# The outer map iterates over the list of addresses\nmap(lambda(addr,\n           # get the voice number and values for the current address (addr).\n           /tmp/voice = split(\"/\", addr)[[1]],\n           /tmp/vals = value(addr),\n\n           # Now, just like in the example above, iterate over each value.\n           # and name, constructing addresses and assigning to them for each one.\n           map(lambda([val, name],\n                      assign(\"/synth/\" + /tmp/voice + name,\n                             val)),\n               /tmp/vals,\n               [\"/frequency\", \"/env/amplitude\", \"/env/duration/sec\", \"/waveform\"]),\n           map(delete, [addr, \"/tmp/voice\", \"/tmp/vals\"])),\n    /addrs),\ndelete(/addrs)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 65.0, 4752.0, 771.0, 22.0 ],
					"text" : "Now, let's revise the code above so that it will work on any number of addresses, as long as they are all the same structure."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"id" : "obj-97",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 750.0, 4161.5, 222.0, 85.0 ],
					"text" : "Note that we assume here that there's one, and only address! (In the next example, we'll generalize a step further to support more than one address...)."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-95",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 130.0, 4587.0, 243.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-94",
					"linecount" : 28,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 130.0, 4116.0, 487.0, 377.0 ],
					"text" : "# Get a list of the addresses in the bundle (assume there's only one)\n/addr = getaddresses(), \n\n# Split the address into its component parts and store the voice num\n/voice = split(\"/\", /addr)[[1]], \n\n# Store a copy of the values associated with the address\n/vals = value(/addr), \n\n# Now, we map over the values, and a list of names that corresponds\n# to each element in the values list. For each pass, [val, name] \n# will take on the following values:\n# Pass 1: [440, \"/frequency\"]\n# Pass 2: [1, \"/env/amplitude\"]\n# Pass 3: [3, \"/env/duration/sec\"]\n# Pass 4: [\"sine\", \"/waveform\"]\nmap(lambda([val, name],\n           assign(\"/synth/\" + /voice + name,\n                  val)),\n    /vals,\n    [\"/frequency\", \"/env/amplitude\", \"/env/duration/sec\", \"/waveform\"]),\n\n# Finally, delete any unwanted messages. Note the first two \n# elements of the list: /addr and \"/addr\". Because the first one is\n# an address and not a string, it will be looked up, and will\n# produce the value of /addr, which itself is an address, and that\n# will be deleted. Then, we delete /addr itself.\nmap(delete, [/addr, \"/addr\", \"/voice\", \"/vals\"])"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 152.0, 4064.0, 546.0, 53.0 ],
					"text" : "However, this only does the job for voice 0. If we want a more general solution, we'll need to actually get a hold of the address, find out which voice it is, and then use that information to construct new addresses. Here's a more general solution:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-92",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 209.0, 3975.0, 243.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-91",
					"linecount" : 5,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 209.0, 3867.0, 322.0, 83.0 ],
					"text" : "/synth/0/frequency = /synth/0/play[[0]],\n/synth/0/env/amplitude = /synth/0/play[[1]],\n/synth/0/env/duration/sec = /synth/0/play[[2]],\n/synth/0/waveform = /synth/0/play[[3]],\ndelete(/synth/0/play)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-90",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 130.0, 3794.0, 266.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 47, 115, 121, 110, 116, 104, 47, 48, 47, 112, 108, 97, 121, 0, 0, 0, 44, 105, 100, 100, 115, 0, 0, 0, 0, 0, 1, -72, 63, -16, 0, 0, 0, 0, 0, 0, 64, 8, 0, 0, 0, 0, 0, 0, 115, 105, 110, 101, 0, 0, 0, 0 ],
					"saved_bundle_length" : 72,
					"text" : "/synth/0/play : [440, 1., 3., \"sine\"]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 226.0, 3831.0, 388.0, 38.0 ],
					"text" : "If we know exactly what's in the original bundle, it's easy enough to produce the structure we want:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-88",
					"linecount" : 4,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 130.0, 3697.0, 226.0, 62.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 115, 121, 110, 116, 104, 47, 48, 47, 102, 114, 101, 113, 117, 101, 110, 99, 121, 0, 0, 44, 105, 0, 0, 0, 0, 1, -72, 0, 0, 0, 36, 47, 115, 121, 110, 116, 104, 47, 48, 47, 101, 110, 118, 47, 97, 109, 112, 108, 105, 116, 117, 100, 101, 0, 0, 44, 100, 0, 0, 63, -16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 115, 121, 110, 116, 104, 47, 48, 47, 101, 110, 118, 47, 100, 117, 114, 97, 116, 105, 111, 110, 47, 115, 101, 99, 0, 0, 0, 44, 100, 0, 0, 64, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 115, 121, 110, 116, 104, 47, 48, 47, 119, 97, 118, 101, 102, 111, 114, 109, 0, 0, 0, 44, 115, 0, 0, 115, 105, 110, 101, 0, 0, 0, 0 ],
					"saved_bundle_length" : 168,
					"text" : "/synth/0/frequency : 440,\n/synth/0/env/amplitude : 1.,\n/synth/0/env/duration/sec : 3.,\n/synth/0/waveform : \"sine\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 130.0, 3655.0, 740.0, 38.0 ],
					"text" : "and we want to send it to our multivoice o.synthesizer.basic~ module that we've used in the past, which expects each item of data to have its own address, like this:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-86",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 130.0, 3621.0, 266.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 47, 115, 121, 110, 116, 104, 47, 48, 47, 112, 108, 97, 121, 0, 0, 0, 44, 105, 100, 100, 115, 0, 0, 0, 0, 0, 1, -72, 63, -16, 0, 0, 0, 0, 0, 0, 64, 8, 0, 0, 0, 0, 0, 0, 115, 105, 110, 101, 0, 0, 0, 0 ],
					"saved_bundle_length" : 72,
					"text" : "/synth/0/play : [440, 1., 3., \"sine\"]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 130.0, 3592.0, 740.0, 22.0 ],
					"text" : "Let's imagine that we have a bundle with a single message like this:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 130.0, 3484.0, 740.0, 100.0 ],
					"text" : "All of the examples above worked because we knew what was in the incoming bundle, however, in practice this is not always the case. Often, we want to get a list of addresses and operate on that using the techniques described above. There are two functions for this: getaddresses(), which returns a list of all addresses in the bundle as strings, and the more powerful match(), which behaves similarly to o.select. \n\nIn this final section, we'll introduce getaddresses() and use it to dynamically rearrange the structure of a bundle."
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"id" : "obj-81",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 439.0, 3445.0, 122.0, 22.0 ],
					"text" : "Getting addresses"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 62.0, 3452.25, 876.0, 5.5 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-77",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 514.0, 3258.0, 198.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-78",
					"linecount" : 3,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 514.0, 3109.0, 153.0, 49.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 121, 110, 116, 104, 47, 48, 47, 102, 114, 101, 113, 0, 0, 0, 44, 105, 0, 0, 0, 0, 1, -72, 0, 0, 0, 24, 47, 115, 121, 110, 116, 104, 47, 49, 47, 102, 114, 101, 113, 0, 0, 0, 44, 105, 0, 0, 0, 0, 1, -64, 0, 0, 0, 24, 47, 115, 121, 110, 116, 104, 47, 50, 47, 102, 114, 101, 113, 0, 0, 0, 44, 105, 0, 0, 0, 0, 2, 38 ],
					"saved_bundle_length" : 100,
					"text" : "/synth/0/freq : 440,\n/synth/1/freq : 448,\n/synth/2/freq : 550"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-79",
					"linecount" : 3,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 514.0, 3179.0, 355.0, 57.0 ],
					"text" : "/freqs = map(lambda(i, \n                    value(\"/synth/\" + i + \"/freq\")),\n             aseq(0, 2))"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 514.0, 3047.0, 358.0, 53.0 ],
					"text" : "And this use of value is particularly useful when you know what the addresses in a bundle are and you want to access them programmatically:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-76",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 57.0, 3258.0, 198.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-75",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 57.0, 3109.0, 179.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 102, 114, 101, 113, 115, 0, 0, 44, 105, 105, 105, 0, 0, 0, 0, 0, 0, 1, -72, 0, 0, 1, -64, 0, 0, 2, 38 ],
					"saved_bundle_length" : 48,
					"text" : "/freqs : [440, 448, 550]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-74",
					"linecount" : 4,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 57.0, 3158.0, 328.0, 70.0 ],
					"text" : "map(lambda([f, i], \n           assign(\"/synth/\" + i + \"/freq\", f)), \n    /freqs, # f\n    aseq(0, length(/freqs) - 1)) # i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 57.0, 3047.0, 358.0, 53.0 ],
					"text" : "This use of assign is particularly useful if you want to loop over a series of values and construct addresses to assign them to as part of the process:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-69",
					"linecount" : 3,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 466.0, 2696.0, 153.0, 49.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 121, 110, 116, 104, 47, 48, 47, 102, 114, 101, 113, 0, 0, 0, 44, 105, 0, 0, 0, 0, 1, -72, 0, 0, 0, 24, 47, 115, 121, 110, 116, 104, 47, 49, 47, 102, 114, 101, 113, 0, 0, 0, 44, 105, 0, 0, 0, 0, 1, -64, 0, 0, 0, 24, 47, 115, 121, 110, 116, 104, 47, 50, 47, 102, 114, 101, 113, 0, 0, 0, 44, 105, 0, 0, 0, 0, 2, 38 ],
					"saved_bundle_length" : 100,
					"text" : "/synth/0/freq : 440,\n/synth/1/freq : 448,\n/synth/2/freq : 550"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-70",
					"linecount" : 6,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 466.0, 2849.0, 143.0, 97.0 ],
					"text" : "/synth/0/freq : 440,\n/synth/1/freq : 448,\n/synth/2/freq : 550,\n/freq1 : 440,\n/freq2 : 448,\n/freq3 : 550"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 466.0, 2662.0, 66.0, 24.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-72",
					"linecount" : 3,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 466.0, 2769.0, 348.0, 57.0 ],
					"text" : "/freq1 = /synth/0/freq,\n/freq2 = value(\"/synth/1/freq\"),\n/freq3 = value(\"/\" + join(\"/\", \"synth\", 2, \"freq\"))"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 466.0, 2557.0, 471.0, 100.0 ],
					"text" : "Similarly, when you write an address in an odot expression, it will be automatically looked up in the working bundle (unless it's on the lefthand side of an assignment or as part of a handful of special functions that suppress lookup like the first argument of assign()). There are times, however, when you want to be able to assemble a string programmatically and look it up, which you can do with the value() function:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-67",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 57.0, 2662.0, 93.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 112, 102, 120, 0, 0, 0, 0, 44, 115, 0, 0, 47, 97, 0, 0 ],
					"saved_bundle_length" : 36,
					"text" : "/pfx : \"/a\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-66",
					"linecount" : 4,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 57.0, 2781.0, 110.0, 72.0 ],
					"text" : "/pfx : \"/a\",\n/foo : 10,\n/bar : 3.14159,\n/a/bloo : true"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 57.0, 2628.0, 66.0, 24.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-64",
					"linecount" : 3,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 57.0, 2701.0, 196.0, 57.0 ],
					"text" : "assign(/foo, 10),\nassign(\"/bar\", pi()),\nassign(/pfx + \"/bloo\", true)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 57.0, 2557.0, 345.0, 69.0 ],
					"text" : "While the lefthand side of the assignment operator '=' must be an address, the first argument to the assign() function may be a string, or even an expression that constructs a string:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 187.5, 2497.0, 615.0, 38.0 ],
					"text" : "One reason we want to be able to put together and take apart strings in a structured way is that we can use them to lookup up and assign values dynamically. "
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"id" : "obj-59",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 389.5, 2433.0, 211.0, 22.0 ],
					"text" : "Dynamic assignment and lookup"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 57.0, 2440.25, 876.0, 5.5 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 532.5, 2184.0, 66.0, 24.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-57",
					"linecount" : 3,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 532.5, 2292.0, 269.0, 59.0 ],
					"text" : "/list : [127, 0, 0, 1],\n/bignum : \"127001\",\n/chars : ['1', '2', '7', '0', '0', '1']"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-56",
					"linecount" : 3,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 532.5, 2217.0, 189.0, 57.0 ],
					"text" : "/list = [127, 0, 0, 1],\n/bignum = join(\"\", /list),\n/chars = split(\"\", /bignum)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 74.0, 2219.0, 453.0, 69.0 ],
					"text" : "When we omit the separator from the join() function by passing the empty string \"\", it simply concatenates the substrings together, while when we omit it from split, it will return a list of each individual character:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-51",
					"linecount" : 5,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 599.5, 1958.0, 216.0, 85.0 ],
					"text" : "/dest : \"synth\",\n/voice : 3,\n/cmd : \"play\",\n/addr : \"/synth/3/play\",\n/parts : [\"synth\", \"3\", \"play\"]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-52",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 599.5, 1913.0, 183.0, 31.0 ],
					"text" : "/parts = split(\"/\", /addr)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-53",
					"linecount" : 3,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 74.0, 2036.0, 222.0, 59.0 ],
					"text" : "/addr : [192, 168, 0, 1],\n/str : \"192.168.0.1\",\n/strs : [\"192\", \"168\", \"0\", \"1\"]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-54",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 74.0, 1991.0, 169.0, 31.0 ],
					"text" : "/strs = split(\".\", /str)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 113.0, 1913.0, 453.0, 69.0 ],
					"text" : "The split() function does the opposite of join(): it takes a separator and splits a string into substrings wherever that separator is found.\n\nHere are some examples:"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"id" : "obj-48",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 438.5, 1457.0, 105.0, 22.0 ],
					"text" : "join() and split()"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 58.0, 1464.25, 876.0, 5.5 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 449.0, 1172.0, 447.0, 38.0 ],
					"text" : "When applied to address strings, this is a powerful way to dynamically design an address space."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-45",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 432.0, 1211.0, 358.0, 36.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 47, 97, 100, 100, 114, 115, 0, 0, 44, 115, 115, 115, 0, 0, 0, 0, 47, 102, 114, 101, 113, 117, 101, 110, 99, 121, 0, 0, 47, 97, 109, 112, 108, 105, 116, 117, 100, 101, 0, 0, 47, 100, 117, 114, 97, 116, 105, 111, 110, 0, 0, 0, 0, 0, 0, 24, 47, 112, 102, 120, 0, 0, 0, 0, 44, 115, 0, 0, 47, 115, 121, 110, 116, 104, 47, 49, 0, 0, 0, 0 ],
					"saved_bundle_length" : 100,
					"text" : "/addrs : [\"/frequency\", \"/amplitude\", \"/duration\"],\n/pfx : \"/synth/1\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-43",
					"linecount" : 2,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 432.0, 1326.0, 507.0, 46.0 ],
					"text" : "/addrs : [\"/frequency/synth/1\", \"/amplitude/synth/1\", \"/duration/synth/1\"],\n/pfx : \"/synth/1\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-44",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 432.0, 1273.0, 103.0, 31.0 ],
					"text" : "/addrs += /pfx"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 432.0, 1017.0, 66.0, 24.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-39",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 449.0, 1098.0, 408.0, 33.0 ],
					"text" : "/things : [\"Fruit: apples\", \"Fruit: oranges\", \"Fruit: fish\"]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-38",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 449.0, 1051.0, 348.0, 31.0 ],
					"text" : "/things = \"Fruit: \" + [\"apples\", \"oranges\", \"fish\"]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 432.0, 963.0, 447.0, 53.0 ],
					"text" : "The addition operator's scalar expansion behavior that we've seen earlier also applies here and can be leveraged in interesting ways, for example, to apply a prefix to a list of strings:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"id" : "obj-28",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 556.0, 1775.0, 381.0, 53.0 ],
					"text" : "Note: join only puts the separator (first arg) *between* each substring, not at the beginning or end of the resulting string, so if you want it there, you have to put it there yourself."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-25",
					"linecount" : 3,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 341.5, 1661.0, 126.0, 49.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 100, 101, 115, 116, 0, 0, 0, 44, 115, 0, 0, 115, 121, 110, 116, 104, 0, 0, 0, 0, 0, 0, 16, 47, 118, 111, 105, 99, 101, 0, 0, 44, 105, 0, 0, 0, 0, 0, 3, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 112, 108, 97, 121, 0, 0, 0, 0 ],
					"saved_bundle_length" : 84,
					"text" : "/dest : \"synth\",\n/voice : 3,\n/cmd : \"play\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-26",
					"linecount" : 4,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 341.5, 1775.0, 163.0, 72.0 ],
					"text" : "/dest : \"synth\",\n/voice : 3,\n/cmd : \"play\",\n/addr : \"/synth/3/play\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-27",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 341.5, 1730.0, 302.0, 31.0 ],
					"text" : "/addr = \"/\" + join(\"/\", /dest, /voice, /cmd)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-24",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 74.0, 1661.0, 179.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 97, 100, 100, 114, 0, 0, 0, 44, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, -64, 0, 0, 0, -88, 0, 0, 0, 0, 0, 0, 0, 1 ],
					"saved_bundle_length" : 52,
					"text" : "/addr : [192, 168, 0, 1]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-19",
					"linecount" : 2,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 74.0, 1775.0, 176.0, 46.0 ],
					"text" : "/addr : [192, 168, 0, 1],\n/str : \"192.168.0.1\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 74.0, 1627.0, 66.0, 24.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-23",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 74.0, 1730.0, 163.0, 31.0 ],
					"text" : "/str = join(\".\", /addr)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 139.0, 1542.0, 714.0, 69.0 ],
					"text" : "The addition operator isn't the only way to concatenate strings; the join() function also performs that operation, and takes a separator as its first argument that will be placed between every substring. \n\nHere are some examples:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-21",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 66.0, 1080.0, 428.0, 33.0 ],
					"text" : "/strings : [\"one 1\", \"two 2.3\", \"true true\", \"fake news false\"]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 66.0, 932.0, 66.0, 24.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-17",
					"linecount" : 4,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 66.0, 973.0, 229.0, 70.0 ],
					"text" : "/strings = [\"one \" + 1,\n            \"two \" + 2.3,\n            \"true \" + true,\n            \"fake news \" + false]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 66.0, 889.0, 543.0, 38.0 ],
					"text" : "The rules of type promotion apply to the '+' operator even when a string is involved--in fact, strings are at the top of the ladder, and everything else gets promoted to them."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleusescolors" : 1,
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 303.0, 766.0, 470.0, 26.0 ],
					"text" : "'+' is overloaded to mean concatenation when its arguments are strings."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleusescolors" : 1,
					"id" : "obj-13",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 562.0, 812.0, 400.0, 42.0 ],
					"text" : "'+' is the only operator that's overloaded for use with strings. This use of muitiplication will produce an error"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-12",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 329.0, 814.0, 183.0, 31.0 ],
					"text" : "/res = \"Hello \" * \"world!\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 66.0, 730.0, 66.0, 24.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 66.0, 358.0, 66.0, 24.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-8",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 66.0, 761.0, 183.0, 31.0 ],
					"text" : "/res = \"Hello \" + \"world!\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 66.0, 702.0, 729.0, 22.0 ],
					"text" : "The addition operator is special because it also works on strings, while the other mathematical operators do not. "
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-5",
					"linecount" : 2,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 66.0, 552.0, 236.0, 46.0 ],
					"text" : "/numbers : [11, 6.28, 2.5, 2, 2.],\n/types : ['i', 'd', 'd', 'i', 'd']"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-4",
					"linecount" : 7,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 66.0, 395.0, 567.0, 108.0 ],
					"text" : "/numbers = [10 + 1,             # int32 + int32 => int32 ('i')\n            3.14 * 2,           # float64 * int32 => float64 ('d')\n            float32(2.0) + .5,  # float32 + float64 => float64 ('d')\n            true * 2,           # true * int32 => int32 ('i') (true becomes 1)\n            false + 2.],        # false + float64 => float64 ('f') (false becomes 0)\n\n/types = typetags(/numbers)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 66.0, 266.0, 729.0, 85.0 ],
					"text" : "Throughout these tutorials, we've seen that the arithmetic operators have the ability to do \"type reconcilliation\" when their operands are of different types. They do this by \"promoting\" the type of one of the operands to the type of the other in a way that minimizes loss of information. For example, since double-precision floats can represent all the 32-bit signed and unsigned integers, the latter are promoted to the former, and an operation that mixes doubles and 32-bit ints will produce a double. Here are some examples:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 156.0, 161.0, 659.0, 38.0 ],
					"text" : "In this tutorial, we'll look at odot's support for string manipulation, and discuss techniques for dynamically inspecting and altering the structure of a bundle by working with its addresses programatically."
				}

			}
, 			{
				"box" : 				{
					"args" : [ "o.compose", "o.expr.codebox", "o.display", "o.pack", "o.union", "o.route" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-14",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "o.t.objects-covered.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -5.5, -1.0 ],
					"patching_rect" : [ 71.0, 5529.0, 834.0, 45.75 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 9 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-9",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "advance.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -1.0, -2.0 ],
					"patching_rect" : [ 710.0, 5576.75, 195.0, 28.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 679.0, 5591.75, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ 9 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-7",
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
					"fontsize" : 14.0,
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 873.0, 604.0, 96.0, 22.0 ],
					"text" : "( scroll down )"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 781.0, 42.0, 61.0, 24.0 ],
					"text" : "onecopy"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 9 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-30",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "advance.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -1.0, -2.0 ],
					"patching_rect" : [ 781.0, 14.0, 195.0, 28.0 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"order" : 0,
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"order" : 1,
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 1 ],
					"order" : 0,
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"order" : 1,
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"order" : 1,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"order" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"order" : 0,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"order" : 1,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"source" : [ "obj-84", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"source" : [ "obj-84", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"source" : [ "obj-84", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"order" : 0,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"order" : 1,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"source" : [ "obj-94", 0 ]
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
				"name" : "o.t.objects-covered.maxpat",
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
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.display.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.compose.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
