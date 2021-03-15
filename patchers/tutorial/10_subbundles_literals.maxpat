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
		"rect" : [ 8.0, 52.0, 972.0, 748.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
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
					"fontsize" : 13.0,
					"id" : "obj-24",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 357.0, 2335.0, 382.0, 36.0 ],
					"presentation_linecount" : 2,
					"text" : "Let's say we want to iterate over each voice, and convert the frequencies and amplitudes to MIDI values.",
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-20",
					"linecount" : 8,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 331.0, 2071.0, 113.0, 113.0 ],
					"presentation_linecount" : 8,
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 47, 115, 121, 110, 116, 104, 47, 49, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 102, 114, 101, 113, 0, 0, 0, 44, 105, 0, 0, 0, 0, 1, -72, 0, 0, 0, 16, 47, 97, 109, 112, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 80, 47, 115, 121, 110, 116, 104, 47, 50, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 102, 114, 101, 113, 0, 0, 0, 44, 105, 0, 0, 0, 0, 3, 112, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -32, 0, 0, 0, 0, 0, 0 ],
					"saved_bundle_length" : 180,
					"text" : "/synth/1 : {\n  /freq : 440,\n  /amp : 1\n},\n/synth/2 : {\n  /freq : 880,\n  /amp : 0.5\n}"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-19",
					"linecount" : 4,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 470.0, 2088.0, 153.0, 62.0 ],
					"presentation_linecount" : 4,
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 121, 110, 116, 104, 47, 49, 47, 102, 114, 101, 113, 0, 0, 0, 44, 105, 0, 0, 0, 0, 1, -72, 0, 0, 0, 24, 47, 115, 121, 110, 116, 104, 47, 49, 47, 97, 109, 112, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 24, 47, 115, 121, 110, 116, 104, 47, 50, 47, 102, 114, 101, 113, 0, 0, 0, 44, 105, 0, 0, 0, 0, 3, 112, 0, 0, 0, 28, 47, 115, 121, 110, 116, 104, 47, 50, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -32, 0, 0, 0, 0, 0, 0 ],
					"saved_bundle_length" : 132,
					"text" : "/synth/1/freq : 440,\n/synth/1/amp : 1,\n/synth/2/freq : 880,\n/synth/2/amp : 0.5"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 408.0, 1496.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontsize" : 13.0,
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 370.5, 3859.0, 231.0, 21.0 ],
					"presentation_linecount" : 2,
					"text" : "A few more ways to create subbundles"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 23.0, 3866.25, 926.0, 6.5 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontsize" : 13.0,
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 424.5, 3337.0, 123.0, 21.0 ],
					"text" : "Flatten and explode"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 23.0, 3344.25, 926.0, 6.5 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontsize" : 13.0,
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 415.5, 1911.0, 157.0, 21.0 ],
					"text" : "Subbundles vs addresses"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 1918.25, 926.0, 6.5 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontsize" : 13.0,
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 357.5, 1397.0, 255.0, 21.0 ],
					"presentation_linecount" : 2,
					"text" : "Working with subbundles programmatically"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 22.0, 1404.25, 926.0, 6.5 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontsize" : 13.0,
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 367.0, 763.0, 238.0, 21.0 ],
					"text" : "Accessing messages inside subbundles"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 23.0, 770.25, 926.0, 6.5 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 445.389266304347814, 632.0, 40.0, 21.0 ],
					"style" : "default",
					"text" : "same"
				}

			}
, 			{
				"box" : 				{
					"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"downarrow" : 0,
					"id" : "obj-4",
					"ignoreclick" : 1,
					"leftarrow" : 0,
					"maxclass" : "live.arrows",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 501.278532608695627, 635.0, 17.5, 15.0 ],
					"uparrow" : 0
				}

			}
, 			{
				"box" : 				{
					"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"downarrow" : 0,
					"id" : "obj-3",
					"ignoreclick" : 1,
					"maxclass" : "live.arrows",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 412.0, 635.0, 17.5, 15.0 ],
					"rightarrow" : 0,
					"uparrow" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 12.0,
					"id" : "obj-119",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 402.5, 3714.5, 167.0, 47.0 ],
					"text" : "Note that o.flatten and o.explode both operate on all levels of the hierarchy.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-113",
					"linecount" : 10,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 641.0, 3659.0, 147.0, 149.0 ],
					"text" : "/synth : {\n  /1 : {\n    /freq : 440,\n    /amp : 1\n  },\n  /2 : {\n    /freq : 880,\n    /amp : 0.5\n  }\n}"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-114",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 641.0, 3610.0, 61.0, 22.0 ],
					"text" : "o.explode"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-115",
					"linecount" : 4,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 641.0, 3528.0, 153.0, 62.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 121, 110, 116, 104, 47, 49, 47, 102, 114, 101, 113, 0, 0, 0, 44, 105, 0, 0, 0, 0, 1, -72, 0, 0, 0, 24, 47, 115, 121, 110, 116, 104, 47, 49, 47, 97, 109, 112, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 24, 47, 115, 121, 110, 116, 104, 47, 50, 47, 102, 114, 101, 113, 0, 0, 0, 44, 105, 0, 0, 0, 0, 3, 112, 0, 0, 0, 28, 47, 115, 121, 110, 116, 104, 47, 50, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -32, 0, 0, 0, 0, 0, 0 ],
					"saved_bundle_length" : 132,
					"text" : "/synth/1/freq : 440,\n/synth/1/amp : 1,\n/synth/2/freq : 880,\n/synth/2/amp : 0.5"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-112",
					"linecount" : 4,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 185.5, 3719.0, 147.0, 72.0 ],
					"text" : "/synth/1/freq : 440,\n/synth/1/amp : 1,\n/synth/2/freq : 880,\n/synth/2/amp : 0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 185.5, 3670.0, 51.0, 22.0 ],
					"text" : "o.flatten"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-110",
					"linecount" : 8,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 185.5, 3537.0, 113.0, 113.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 47, 115, 121, 110, 116, 104, 47, 49, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 102, 114, 101, 113, 0, 0, 0, 44, 105, 0, 0, 0, 0, 1, -72, 0, 0, 0, 16, 47, 97, 109, 112, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 80, 47, 115, 121, 110, 116, 104, 47, 50, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 102, 114, 101, 113, 0, 0, 0, 44, 105, 0, 0, 0, 0, 3, 112, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -32, 0, 0, 0, 0, 0, 0 ],
					"saved_bundle_length" : 180,
					"text" : "/synth/1 : {\n  /freq : 440,\n  /amp : 1\n},\n/synth/2 : {\n  /freq : 880,\n  /amp : 0.5\n}"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-109",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 148.5, 3421.0, 675.0, 50.0 ],
					"text" : "As we just saw, subbundles and addresses are ways of structuring a bundle that each offer different affordances for working with their contents, and it's sometimes the case that you will want to move between those different representations. We did it manually above, but we can also use o.flatten and o.explode:",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"id" : "obj-106",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 367.0, 2589.0, 126.0, 60.0 ],
					"text" : "Note the use of map to produce a list that is then iterated over by another map!"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-105",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 136.5, 2830.0, 260.0, 79.0 ],
					"presentation_linecount" : 5,
					"text" : "Here, we make a list of all the subbundles and iterate over that. Note that because lambda-bound variables are readonly copies, we make a new bundle containing all the messages:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-104",
					"linecount" : 20,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 419.0, 2996.25, 252.0, 277.0 ],
					"text" : "/synth/1 : {\n  /freq : 440,\n  /amp : 1,\n  /note : 69.,\n  /vel : 127\n},\n/synth/2 : {\n  /freq : 880,\n  /amp : 0.5,\n  /note : 81.,\n  /vel : 63\n},\n/addrs : [\"/synth/1\", \"/synth/2\"],\n/bndls : [{\n  /freq : 440,\n  /amp : 1\n}, {\n  /freq : 880,\n  /amp : 0.5\n}]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-103",
					"linecount" : 10,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 419.0, 2830.0, 355.0, 147.0 ],
					"text" : "/addrs = getaddresses(),\n/bndls = map(value, /addrs),\nmap(assign,\n    /addrs,\n    map(lambda(bndl, {/freq : bndl./freq, \n                      /amp : bndl./amp,\n                      /note : ftom(bndl./freq),\n                      /vel : int32(bndl./amp * 127.)\n                     }), \n        /bndls))"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-102",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 357.0, 2395.0, 444.0, 36.0 ],
					"text" : "Here, we make a list of voice numbers using aseq, and iterate over that list, assembling the addresses to look up and assign to dynamically:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-101",
					"linecount" : 9,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 185.0, 2589.0, 163.0, 136.0 ],
					"text" : "/synth/1/freq : 440,\n/synth/1/amp : 1,\n/synth/2/freq : 880,\n/synth/2/amp : 0.5,\n/nvoices : 2,\n/synth/1/note : 69.,\n/synth/1/vel : 127,\n/synth/2/note : 81.,\n/synth/2/vel : 63"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-100",
					"linecount" : 7,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 185.0, 2455.0, 587.0, 108.0 ],
					"text" : "/nvoices = 2,\nmap(\n  lambda(voice, \n    assign(\"/synth/\" + voice + \"/note\", ftom(value(\"/synth/\" + voice + \"/freq\"))),\n    assign(\"/synth/\" + voice + \"/vel\", int32(value(\"/synth/\" + voice + \"/amp\") * 127.))\n  ), aseq(1, /nvoices)\n)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-99",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 287.5, 2205.0, 382.0, 65.0 ],
					"text" : "Which one of these you should choose, depends on what you're doing at the moment. For example, if you need to iterate over all the elements of each synthesizer, these two options each present different affordances. ",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-98",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 2003.0, 926.0, 50.0 ],
					"text" : "Although structurally different, these two ways of addressing our synthesizer reflect the same organization. \nThey both reflect the idea that we have two instances of a class (voices 1 and 2 of our synthesizer), which has methods for setting its internal state (its frequency and amplitude).",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-97",
					"linecount" : 4,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 185.0, 2355.0, 153.0, 62.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 121, 110, 116, 104, 47, 49, 47, 102, 114, 101, 113, 0, 0, 0, 44, 105, 0, 0, 0, 0, 1, -72, 0, 0, 0, 24, 47, 115, 121, 110, 116, 104, 47, 49, 47, 97, 109, 112, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 24, 47, 115, 121, 110, 116, 104, 47, 50, 47, 102, 114, 101, 113, 0, 0, 0, 44, 105, 0, 0, 0, 0, 3, 112, 0, 0, 0, 28, 47, 115, 121, 110, 116, 104, 47, 50, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -32, 0, 0, 0, 0, 0, 0 ],
					"saved_bundle_length" : 132,
					"text" : "/synth/1/freq : 440,\n/synth/1/amp : 1,\n/synth/2/freq : 880,\n/synth/2/amp : 0.5"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-96",
					"linecount" : 8,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 419.0, 2697.0, 113.0, 113.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 47, 115, 121, 110, 116, 104, 47, 49, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 102, 114, 101, 113, 0, 0, 0, 44, 105, 0, 0, 0, 0, 1, -72, 0, 0, 0, 16, 47, 97, 109, 112, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 80, 47, 115, 121, 110, 116, 104, 47, 50, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 102, 114, 101, 113, 0, 0, 0, 44, 105, 0, 0, 0, 0, 3, 112, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -32, 0, 0, 0, 0, 0, 0 ],
					"saved_bundle_length" : 180,
					"text" : "/synth/1 : {\n  /freq : 440,\n  /amp : 1\n},\n/synth/2 : {\n  /freq : 880,\n  /amp : 0.5\n}"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-92",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 596.0, 1766.0, 295.0, 65.0 ],
					"text" : "Above, we manage to reshape a subbundle, assigning all of its messages to the parent bundle, without needing to know what any of the addresses actually were."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-91",
					"linecount" : 6,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 408.0, 1766.0, 147.0, 97.0 ],
					"text" : "/synth/1 : {\n  /freq : 440,\n  /amp : 1.\n},\n/synth/1/freq : 440,\n/synth/1/amp : 1."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-90",
					"linecount" : 6,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 408.0, 1643.0, 494.0, 95.0 ],
					"text" : "map(lambda(addr,\n           map(lambda(subbndladdr,\n                      assign(addr + subbndladdr,\n                             getbundlemember(value(addr), subbndladdr))),\n               getaddresses(value(addr)))),\n    getaddresses())"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-89",
					"linecount" : 4,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 408.0, 1544.0, 113.0, 62.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 47, 115, 121, 110, 116, 104, 47, 49, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 102, 114, 101, 113, 0, 0, 0, 44, 105, 0, 0, 0, 0, 1, -72, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -16, 0, 0, 0, 0, 0, 0 ],
					"saved_bundle_length" : 100,
					"text" : "/synth/1 : {\n  /freq : 440,\n  /amp : 1.\n}"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-88",
					"linecount" : 5,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 78.0, 1716.0, 187.0, 85.0 ],
					"text" : "/synth/1 : {\n  /freq : 440,\n  /amp : 1.\n},\n/addrs : [\"/freq\", \"/amp\"]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-87",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 78.0, 1643.0, 216.0, 31.0 ],
					"text" : "/addrs = getaddresses(/synth/1)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-86",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 78.0, 1483.0, 275.0, 94.0 ],
					"text" : "As we saw in an earlier tutorial, sometimes we need to work with the contents of a bundle, but we don't know the addresses of the messages it contains. In this case, we can use getaddresses() to produce a list of addresses (strings) in a subbundle.",
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"id" : "obj-82",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 601.5, 4317.5, 182.0, 47.0 ],
					"text" : "Note, however, that o.collect \"unpacks\" the bundle and adds each message individually."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-81",
					"linecount" : 2,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 521.5, 4393.0, 66.0, 46.0 ],
					"text" : "/a : 1,\n/b : 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 521.5, 4254.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 521.5, 4330.0, 53.0, 22.0 ],
					"text" : "o.collect"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-78",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 209.0, 4228.5, 187.0, 50.0 ],
					"text" : "Sending a bundle into one of the inlets of o.pack will make a subbundle at that address:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-77",
					"linecount" : 4,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 408.0, 4393.0, 78.0, 72.0 ],
					"text" : "/bndl : {\n  /a : 1,\n  /b : 2\n}"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 408.0, 4330.0, 73.0, 22.0 ],
					"text" : "o.pack /bndl"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-75",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 408.0, 4254.5, 67.0, 36.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 97, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 12, 47, 98, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2 ],
					"saved_bundle_length" : 48,
					"text" : "/a : 1,\n/b : 2"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-74",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 685.0, 4097.0, 71.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-73",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 333.0, 4097.0, 71.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-72",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 521.5, 3972.5, 152.0, 65.0 ],
					"text" : "If you assign to a subbundle address, but the subbundle doesn't exist, it will be created:"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-71",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 169.0, 3972.5, 152.0, 65.0 ],
					"text" : "A common way to create a subbundle is to make an empty one, and fill it with messages:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-69",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 685.0, 4014.5, 97.0, 44.0 ],
					"text" : "/bndl./a = 1,\n/bndl./b = 2"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-68",
					"linecount" : 3,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 333.0, 4008.0, 97.0, 57.0 ],
					"text" : "/bndl = {},\n/bndl./a = 1,\n/bndl./b = 2"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-65",
					"linecount" : 8,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 428.0, 1167.0, 236.0, 123.0 ],
					"text" : "The dot operator can also be used as the target of an assignment, to change the value of a message in a subbundle.\n\nWhen on the lefthand side of an assignment, the dot operator is equivalent to the function assigntobundlemember()."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-59",
					"linecount" : 6,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 119.0, 1232.0, 147.0, 97.0 ],
					"text" : "/synth/1 : {\n  /freq : 880.,\n  /amp : 0.5\n},\n/synth/1/freq : 440,\n/synth/1/amp : 440"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-58",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 119.0, 1167.0, 275.0, 44.0 ],
					"text" : "/synth/1./freq = /synth/1./freq * 2.,\nassigntobundlemember(/synth/1, /amp, .5)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-56",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 524.0, 1072.0, 355.0, 44.0 ],
					"text" : "/synths = nfill(10, {/freq : 440, /amp : 1.}),\n/synth/3/freq = getbundlemember(/synths[[2]], /freq)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"id" : "obj-55",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 521.5, 994.0, 360.0, 60.0 ],
					"text" : "Note: unless specified explicitly, the dot operator and getbundlemember() both assume that the subbundle is the first element of the message. If this is not true, you have to be specfic, for example:"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-54",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 264.0, 846.0, 427.0, 94.0 ],
					"text" : "o.expr's dot operator '.' can be used to lookup a message by its address in a subbundle. The address to the left is the address of the message that contains the subbundle, and the address to the right is the address inside the subbundle that you're interested in.\n\nThe dot operator is equivalent to the function getbundlemember()."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-52",
					"linecount" : 6,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 119.0, 1046.0, 147.0, 97.0 ],
					"text" : "/synth/1 : {\n  /freq : 440,\n  /amp : 1.\n},\n/synth/1/freq : 440,\n/synth/1/amp : 440"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-51",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 119.0, 979.0, 322.0, 44.0 ],
					"text" : "/synth/1/freq = /synth/1./freq,\n/synth/1/amp = getbundlemember(/synth/1, /freq)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-50",
					"linecount" : 4,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 119.0, 878.0, 113.0, 62.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 47, 115, 121, 110, 116, 104, 47, 49, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 102, 114, 101, 113, 0, 0, 0, 44, 105, 0, 0, 0, 0, 1, -72, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -16, 0, 0, 0, 0, 0, 0 ],
					"saved_bundle_length" : 100,
					"text" : "/synth/1 : {\n  /freq : 440,\n  /amp : 1.\n}"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 298.5, 351.0, 58.0, 22.0 ],
					"text" : "loadbang"
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
					"patching_rect" : [ 542.5, 618.5, 90.0, 46.0 ],
					"text" : "/freq : 440,\n/amp : 1."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-42",
					"linecount" : 4,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 298.5, 497.0, 113.0, 72.0 ],
					"text" : "/synth/1 : {\n  /freq : 440,\n  /amp : 1.\n}"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-39",
					"linecount" : 2,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 298.5, 620.0, 90.0, 46.0 ],
					"text" : "/freq : 440,\n/amp : 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 298.5, 584.0, 91.0, 22.0 ],
					"text" : "o.route /synth/1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-26",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 678.5, 412.0, 194.0, 79.0 ],
					"style" : "default",
					"text" : "...while this o.compose will produce a bundle containing two messages (the same messages as the subbundle on the left)."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-25",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 96.5, 410.5, 155.0, 79.0 ],
					"style" : "default",
					"text" : "This o.compose will produce a bundle containing one message that has a subbundle with two messages...",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-23",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 542.5, 432.0, 100.0, 36.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 102, 114, 101, 113, 0, 0, 0, 44, 105, 0, 0, 0, 0, 1, -72, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -16, 0, 0, 0, 0, 0, 0 ],
					"saved_bundle_length" : 60,
					"text" : "/freq : 440,\n/amp : 1."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 137.5, 253.5, 696.0, 21.0 ],
					"style" : "default",
					"text" : "A subbundle literal is a list of message bindings, just like you would type in an o.compose box, enclosed in curly braces."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-21",
					"linecount" : 4,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 298.5, 419.0, 113.0, 62.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 47, 115, 121, 110, 116, 104, 47, 49, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 102, 114, 101, 113, 0, 0, 0, 44, 105, 0, 0, 0, 0, 1, -72, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -16, 0, 0, 0, 0, 0, 0 ],
					"saved_bundle_length" : 100,
					"text" : "/synth/1 : {\n  /freq : 440,\n  /amp : 1.\n}"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "o.compose", "o.expr.codebox", "o.display" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-5",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "o.t.objects-covered.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -5.5, -1.0 ],
					"patching_rect" : [ 86.0, 4544.0, 834.0, 45.75 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 10 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-2",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "advance.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -1.0, -2.0 ],
					"patching_rect" : [ 766.0, 4591.75, 195.0, 28.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-41",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 172.5, 931.0, 36.0 ],
					"style" : "default",
					"text" : "Subbundles – bundles contained in a message – can be a powerful way to organize the contents of your bundle. \nWe've seen them in earlier tutorials, but let's take a moment to go over them in detail.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 10 ],
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
					"patching_rect" : [ 11.0, 9.0, 517.0, 111.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 720.5, 4606.75, 150.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 884.0, 715.5, 77.0, 20.0 ],
					"text" : "(scroll down)"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 781.0, 42.0, 61.0, 22.0 ],
					"text" : "onecopy"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 10 ],
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
					"patching_rect" : [ 766.0, 12.0, 195.0, 28.0 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"order" : 1,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"order" : 0,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"order" : 1,
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"order" : 0,
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"order" : 1,
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"order" : 0,
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"source" : [ "obj-97", 0 ]
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
				"name" : "o.compose.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.display.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
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
				"name" : "o.flatten.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.explode.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
