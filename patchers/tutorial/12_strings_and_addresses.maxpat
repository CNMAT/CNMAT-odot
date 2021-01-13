{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 8,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 17.0, 57.0, 992.0, 645.0 ],
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
					"args" : [ "o.compose", "o.expr.codebox", "o.display", "o.select", "o.explode", "o.flatten" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-60",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "o.t.objects-covered.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -5.5, -1.0 ],
					"patching_rect" : [ 78.0, 5393.0, 834.0, 45.75 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-55",
					"linecount" : 8,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 465.0, 3243.0, 202.0, 114.0 ],
					"text" : "Here's a situation from tutorial 8 that we might be careful about.  The address \"/p\" has a list of bundle literals bound to it.  Because these bundle literals do not have particular addresses associated with them, all but the last literal are discarded when the bundle is flattened."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-56",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 308.0, 3375.0, 107.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 308.0, 3332.0, 58.0, 24.0 ],
					"text" : "o.flatten"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-59",
					"linecount" : 7,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 308.0, 3199.0, 93.0, 106.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -128, 47, 112, 0, 0, 44, 46, 46, 0, 0, 0, 0, 56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 0, 0, 44, 100, 0, 0, 63, -71, -103, -103, -103, -103, -103, -102, 0, 0, 0, 16, 47, 121, 0, 0, 44, 100, 0, 0, 63, -55, -103, -103, -103, -103, -103, -102, 0, 0, 0, 56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 0, 0, 44, 100, 0, 0, -65, -45, 51, 51, 51, 51, 51, 51, 0, 0, 0, 16, 47, 121, 0, 0, 44, 100, 0, 0, 63, -39, -103, -103, -103, -103, -103, -102 ],
					"saved_bundle_length" : 148,
					"text" : "/p : [{\n\t/x : 0.1,\n\t/y : 0.2\n}, {\n\t/x : -0.3,\n\t/y : 0.4\n}]"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"bubbletextmargin" : 15,
					"bubbleusescolors" : 1,
					"fontsize" : 12.0,
					"id" : "obj-19",
					"linecount" : 12,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 215.0, 2581.5, 209.0, 191.0 ],
					"text" : "[o.explode] looks at all redundancies as potential hierarchies in a bundle and formats a nested bundles from it.  For every redundancy found, it attempts to group the items falling into that redundacy under a single address (category).  In this example, the groups found are \"/body\", \"/arm\", \"/neck\", \"/hand\", and \"/head\"."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"bubbletextmargin" : 15,
					"bubbleusescolors" : 1,
					"fontsize" : 12.0,
					"id" : "obj-23",
					"linecount" : 16,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 215.0, 2830.0, 210.0, 245.0 ],
					"text" : "[o.flatten] takes an odot with hierarchy in place and flattens it into an address space, complete with all redundancies.  In other words, if \"/hand\" has two members \"/finger\" and \"/thumb\", there will be two addresses generated with \"/hand/finger\" and \"/hand/thumb\".  Note that in our example, since we have a subbundle with the name \"/body\", this also gets prepended to the address space for each of the addresses."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-44",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.0, 3000.5, 250.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-45",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.0, 2704.0, 156.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 465.0, 2948.0, 51.0, 22.0 ],
					"text" : "o.flatten"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 465.0, 2666.0, 61.0, 22.0 ],
					"text" : "o.explode"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-51",
					"linecount" : 4,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.0, 2579.0, 280.0, 65.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 98, 111, 100, 121, 47, 97, 114, 109, 47, 104, 97, 110, 100, 47, 102, 105, 110, 103, 101, 114, 0, 0, 0, 44, 115, 0, 0, 112, 111, 105, 110, 116, 0, 0, 0, 0, 0, 0, 36, 47, 98, 111, 100, 121, 47, 97, 114, 109, 47, 104, 97, 110, 100, 47, 116, 104, 117, 109, 98, 0, 0, 0, 0, 44, 115, 0, 0, 112, 114, 101, 115, 115, 0, 0, 0, 0, 0, 0, 36, 47, 98, 111, 100, 121, 47, 110, 101, 99, 107, 47, 104, 101, 97, 100, 47, 101, 97, 114, 115, 0, 0, 0, 0, 44, 115, 0, 0, 104, 101, 97, 114, 0, 0, 0, 0, 0, 0, 0, 32, 47, 98, 111, 100, 121, 47, 110, 101, 99, 107, 47, 104, 101, 97, 100, 47, 101, 121, 101, 115, 0, 0, 0, 0, 44, 115, 0, 0, 115, 101, 101, 0 ],
					"saved_bundle_length" : 172,
					"text" : "/body/arm/hand/finger : \"point\",\n/body/arm/hand/thumb : \"press\",\n/body/neck/head/ears : \"hear\",\n/body/neck/head/eyes : \"see\""
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-18",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 208.0, 2450.0, 549.0, 36.0 ],
					"text" : "There are two objects of interest here:\n[o.explode] and [o.flatten]",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 208.0, 2425.0, 549.0, 21.0 ],
					"text" : "Along the lines of address mangling, formatting, and interrogation, is address type conversion."
				}

			}
, 			{
				"box" : 				{
					"args" : [ 12 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-37",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "advance.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -1.0, -2.0 ],
					"patching_rect" : [ 717.0, 5440.75, 195.0, 28.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-35",
					"linecount" : 12,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 172.0, 4828.5, 275.0, 167.0 ],
					"text" : "Here's the solution.\nAgain, when we break a list up into a character array, those elements are technically not strings – they are signed utf-8 bytes.  We can see that in the return of split() with both these cases.\n\nBecause of this, we need to be cognizant of which type we are using when programming when dealing with straings.\n\nWe use map to look for the characters in a split string, as there is no built-in function for this."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 511.0, 4964.0, 306.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-11",
					"linecount" : 3,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 511.0, 4766.5, 165.0, 51.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 119, 111, 114, 100, 0, 0, 0, 44, 115, 0, 0, 98, 101, 114, 114, 105, 101, 115, 0, 0, 0, 0, 20, 47, 114, 101, 112, 108, 97, 99, 101, 0, 0, 0, 0, 44, 99, 0, 0, 0, 0, 0, 110, 0, 0, 0, 20, 47, 108, 111, 111, 107, 102, 111, 114, 0, 0, 0, 0, 44, 99, 0, 0, 0, 0, 0, 114 ],
					"saved_bundle_length" : 88,
					"text" : "/word : \"berries\",\n/replace : 'n',\n/lookfor : 'r'"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-8",
					"linecount" : 7,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 511.0, 4833.0, 349.0, 114.0 ],
					"text" : "/w = split(\"\", /word), \nmap(\n  lambda([i], \n    if(/w[[i]] == /lookfor, /w[[i]] = /replace)\n  ), aseq(0, length(/w)-1)\n), \n/word/new = join(\"\", /w)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-5",
					"linecount" : 12,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 543.0, 4430.5, 281.0, 167.0 ],
					"text" : "Let's replace a character in a string.  We'll turn \"coat\" into \"cost\".  We could write an expression to find the 'a' but since we already know where it is, we try a simple replacement first.  \n\nThe zero-based location of 'a' is 2.  We can note this in our input bundle, as well as the replacement character.  Note the single quotes in the character vs the double quotes when defining a string.\n\nWe split the word with /w to get a list, then use list access to do the replacement."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-83",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 504.0, 5188.0, 285.0, 108.0 ],
					"text" : "match() returns a bundle describing the match state of a bundle that it interrogates\n\nThe basic idea is that if you have a full match, it will be bound to the address \"/full\". so accessing that will involve the dot slash notation."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-82",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 504.0, 5128.0, 293.0, 50.0 ],
					"text" : "Another function that deals with strings is match().  We'll touch on this briefly here, and will see more of it in a future tutorial."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-63",
									"maxclass" : "o.display",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 454.0, 336.0, 131.0, 34.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-60",
									"linecount" : 2,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 269.0, 522.0, 46.0 ],
									"text" : "/numitems = 3,\n/smallest = min(map(value, \"/\" + /look/for + \"/\" + aseq(1, /numitems)))"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 180.0, 100.0, 66.0, 24.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-46",
									"linecount" : 6,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 180.0, 127.0, 107.0, 92.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 97, 47, 49, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, -125, 0, 0, 0, 16, 47, 97, 47, 50, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 1, 77, 0, 0, 0, 16, 47, 97, 47, 51, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 113, 0, 0, 0, 16, 47, 98, 47, 49, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 1, 55, 0, 0, 0, 16, 47, 98, 47, 50, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 11, 0, 0, 0, 16, 47, 98, 47, 51, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 60, -61 ],
									"saved_bundle_length" : 136,
									"text" : "/a/1 : 131,\n/a/2 : 333,\n/a/3 : 113,\n/b/1 : 311,\n/b/2 : 11,\n/b/3 : 15555"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-56",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 87.0, 145.0, 27.0, 22.0 ],
									"text" : "b"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-55",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 145.0, 27.0, 22.0 ],
									"text" : "a"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 181.0, 90.0, 22.0 ],
									"text" : "o.pack /look/for"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 232.0, 149.0, 22.0 ],
									"text" : "o.union"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 1 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 571.0, 2067.0, 137.0, 24.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"fontsize" : 14.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p expansion_on_this"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "o.display",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 226.0, 329.0, 229.0, 34.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-35",
									"linecount" : 6,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 226.0, 215.0, 421.0, 100.0 ],
									"text" : "assign(/a + /b + \"/something\", 123),\nmap(\n  lambda([i], \n    assign(\"/\" + /prefix + \"/\" + i + \"/\" + /suffix, /val)\n  ), aseq(0, /numthings - 1)\n)"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-37",
									"linecount" : 6,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 226.0, 100.0, 157.0, 92.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 114, 101, 102, 105, 120, 0, 44, 115, 0, 0, 98, 101, 97, 114, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 117, 102, 102, 105, 120, 0, 44, 115, 0, 0, 99, 101, 114, 101, 97, 108, 0, 0, 0, 0, 0, 20, 47, 110, 117, 109, 116, 104, 105, 110, 103, 115, 0, 0, 44, 105, 0, 0, 0, 0, 0, 4, 0, 0, 0, 16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 97, 0, 0, 44, 115, 0, 0, 47, 103, 114, 101, 101, 110, 0, 0, 0, 0, 0, 16, 47, 98, 0, 0, 44, 115, 0, 0, 47, 98, 108, 117, 101, 0, 0, 0 ],
									"saved_bundle_length" : 148,
									"text" : "/prefix : \"bear\",\n/suffix : \"cereal\",\n/numthings : 4,\n/val : 100,\n/a : \"/green\",\n/b : \"/blue\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 181.5, 150.0, 38.0 ],
									"text" : "more assign() examples?"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 611.0, 1518.0, 176.0, 24.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"fontsize" : 14.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p more_assign_examples?"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-77",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 125.5, 4187.5, 355.0, 100.0 ],
					"text" : "The opposite of split() is join().\njoin() will generate a string from a list, with a defined separator.\n\nThe separator we define for the address \"/string/new\" is two dashes: \"--\".  This is what will be used in between each list element.  Again, the int is coerced into a string before the operation is executed.  "
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-76",
					"linecount" : 11,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 533.5, 3920.5, 315.0, 154.0 ],
					"text" : "Note that we can also split with an empty string \"\".  What this translates to in ODOT is that we'd like to break the character list (string) up into a list of individual character components.  Because this returns a list, we can access a particular element and extract a single character from it.\n\nThis is precisely what \"/character/1\" and \"/character/4\" return.\nThe address \"/elem\" here simply gives us a way to be more explicit in the bundle about which element we're interested in."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-75",
					"linecount" : 13,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 143.5, 3629.0, 327.0, 181.0 ],
					"text" : "split() splits a string based on a separator.\nThe first argument is the separator character you would like to match to do the splitting.  In the address \"/mystring\", the string is delineated with slash characters.\n\nIn generating the address \"/broken\", we split using this slash, and pass our address name in as the second argument.\n\nRegarding the address \"/first\":  Similarly to the example we saw above with getaddresses(), we can use list indexing notation to grab the first element that is returned from the split."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-73",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 608.5, 1918.0, 196.0, 56.0 ],
					"text" : "This example illustrates a way to get functionality out of ODOT without generating many addresses along the way..."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 13.0,
					"id" : "obj-72",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 425.0, 509.0, 412.0, 79.0 ],
					"style" : "default",
					"text" : "There are now quite a few addresses in this bundle.  \nWe can put all these address names into a single list with the function getaddresses(), we we might use for further string mangling.\n\nWhat other words can we construct with this set?"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-70",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 445.5, 2221.5, 356.0, 87.0 ],
					"text" : "While we're on this topic, we can access a single element in the returned list from getaddresses(), like so.\n\nWe may need to know what that first element is, as ODOT bundles can frequently change in order based on the processing that may happen further up the chain of events."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-66",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 46.0, 3533.0, 900.0, 21.0 ],
					"text" : "Let's look at two codebox functions that deal with strings in ODOT:  split() and join()",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-65",
					"linecount" : 20,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 86.5, 1806.0, 371.0, 275.0 ],
					"text" : "We can think about this from the needs pertaining to the innermost parenthesis and work outwards:\n\n1. we need a list of names representing what is in the bundle, so we call getaddresses()\n2. we need to know the number of items in our bundle.  For this, we calculate the length of the return value of getaddresses()\n3. we need an arithmetic sequence moving from 1 to the number of elements, accomplished with aseq().\n4. we can use this arithmetic sequence, by coercing the int to a string with string concatenation.  \n5. for min(), we'd like pass in a list of values, but we don't want to do this by hand:  Instead, we can employ map()\n6. we pass the value function name to the first argument of map().  \n7. value() takes one argument, requiring a valid address name.  We pass in our concatenated string for each element we've built up in the map()\n8. the return of map is a list of all values in our bundle, in sequence, based on the return of getaddresses()\n9. we take the minimum of this list and assign it to \"/min\"."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-64",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 86.5, 1674.5, 395.0, 94.0 ],
					"text" : "Let's build up an address dynamically, and then use the value() function to look up the values in a bundle.\n\nWe might want to find the address with the lowest value, in a bundle that contains similarly named addresses.  In this case, all addresses have a prefix of \"/a\" and an int."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-62",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 100.0, 887.5, 420.0, 79.0 ],
					"text" : "In tutorial 9, we saw that concatenation can format an address name.  \nWe typically do this with strings in ODOT, but we'll mention a couple of ways to manipulate address spaces later.\n\nLet's review:"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 90.0, 716.0, 65.0, 22.0 ],
					"text" : "o.select /w"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 13.0,
					"id" : "obj-40",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 295.0, 766.0, 489.0, 36.0 ],
					"style" : "default",
					"text" : "here we leverage the fact that the correct syllables existed to make a second word, which we bind to address \"/w\"."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-53",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 180.0, 5114.5, 136.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 101, 108, 101, 109, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 108, 105, 115, 116, 0, 0, 0, 44, 115, 0, 0, 47, 102, 111, 111, 47, 98, 0, 0 ],
					"saved_bundle_length" : 60,
					"text" : "/elem : 0,\n/list : \"/foo/b\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-54",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 180.0, 5190.0, 291.0, 46.0 ],
					"text" : "/matched = match(\"/foo/*a\", \"/foo/a\"), \n/full = /matched./full"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-57",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 180.0, 5259.0, 162.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-48",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 199.0, 2193.5, 136.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 101, 108, 101, 109, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 108, 105, 115, 116, 0, 0, 0, 44, 115, 0, 0, 102, 111, 111, 98, 97, 114, 0, 0 ],
					"saved_bundle_length" : 60,
					"text" : "/elem : 0,\n/list : \"foobar\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-50",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 199.0, 2249.0, 212.0, 32.0 ],
					"text" : "/addys = getaddresses()[[0]]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-52",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 199.0, 2300.0, 136.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-42",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 472.0, 1918.0, 111.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-39",
					"linecount" : 3,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 472.0, 1806.0, 100.0, 51.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 97, 47, 49, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, -125, 0, 0, 0, 16, 47, 97, 47, 50, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 1, 77, 0, 0, 0, 16, 47, 97, 47, 51, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 13 ],
					"saved_bundle_length" : 76,
					"text" : "/a/1 : 131,\n/a/2 : 333,\n/a/3 : 13"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 469.0, 1255.0, 444.0, 38.0 ],
					"text" : "we might be more explicit about what we intend to use as a prefix and suffix."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-36",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 175.0, 1460.0, 174.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-33",
					"linecount" : 5,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 175.0, 1365.0, 421.0, 86.0 ],
					"text" : "map(\n  lambda([i], \n    assign(\"/\" + /prefix + \"/\" + i + \"/\" + /suffix, /val)\n  ), aseq(0, /numthings - 1)\n)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-26",
					"linecount" : 4,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 175.0, 1278.0, 157.0, 65.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 114, 101, 102, 105, 120, 0, 44, 115, 0, 0, 98, 101, 97, 114, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 117, 102, 102, 105, 120, 0, 44, 115, 0, 0, 99, 101, 114, 101, 97, 108, 0, 0, 0, 0, 0, 20, 47, 110, 117, 109, 116, 104, 105, 110, 103, 115, 0, 0, 44, 105, 0, 0, 0, 0, 0, 4, 0, 0, 0, 16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100 ],
					"saved_bundle_length" : 108,
					"text" : "/prefix : \"bear\",\n/suffix : \"cereal\",\n/numthings : 4,\n/val : 100"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 472.0, 1862.0, 464.0, 32.0 ],
					"text" : "/min = min(map(value, \"/a/\" + aseq(1, length(getaddresses()))))"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-24",
					"linecount" : 12,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 255.0, 980.5, 245.0, 167.0 ],
					"text" : "In the slot of the first argument, we build up an address with four string components:  \n\n1. the leading slash\n2. the first name\n3. a secondary slash\n4. the second name\n\nThere can be many variations on this theme - for example, the first string might contain the leading slash, or both a leading and trailing slash, etc."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-13",
					"linecount" : 3,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 543.0, 893.5, 165.0, 51.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 102, 105, 114, 115, 116, 0, 0, 44, 115, 0, 0, 97, 115, 115, 105, 103, 110, 101, 100, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 101, 99, 111, 110, 100, 0, 44, 115, 0, 0, 100, 97, 116, 97, 0, 0, 0, 0, 0, 0, 0, 16, 47, 100, 97, 116, 97, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100 ],
					"saved_bundle_length" : 88,
					"text" : "/first : \"assigned\",\n/second : \"data\",\n/data : 100"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 543.0, 962.0, 330.0, 32.0 ],
					"text" : "assign(\"/\" + /first + \"/\" + /second, /data)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-16",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 543.0, 1003.0, 265.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 766.0, 187.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 90.0, 661.0, 349.0, 32.0 ],
					"text" : "/w = /e + /d + /f + /a + /g + /c + /h + /a + /i"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-74",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 419.0, 178.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-69",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 90.0, 357.0, 284.0, 46.0 ],
					"text" : "/state = /b + /c + /d + /a + /c + /e, \n/addys = getaddresses()"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-21",
					"linecount" : 9,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 197.0, 100.0, 133.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 97, 0, 0, 44, 115, 0, 0, 110, 0, 0, 0, 0, 0, 0, 12, 47, 98, 0, 0, 44, 115, 0, 0, 99, 97, 108, 0, 0, 0, 0, 12, 47, 99, 0, 0, 44, 115, 0, 0, 105, 0, 0, 0, 0, 0, 0, 12, 47, 100, 0, 0, 44, 115, 0, 0, 102, 111, 114, 0, 0, 0, 0, 12, 47, 101, 0, 0, 44, 115, 0, 0, 97, 0, 0, 0, 0, 0, 0, 12, 47, 102, 0, 0, 44, 115, 0, 0, 109, 101, 0, 0, 0, 0, 0, 12, 47, 103, 0, 0, 44, 115, 0, 0, 116, 0, 0, 0, 0, 0, 0, 12, 47, 104, 0, 0, 44, 115, 0, 0, 111, 0, 0, 0, 0, 0, 0, 12, 47, 105, 0, 0, 44, 115, 0, 0, 101, 100, 0, 0 ],
					"saved_bundle_length" : 160,
					"text" : "/a : \"n\",\n/b : \"cal\",\n/c : \"i\",\n/d : \"for\",\n/e : \"a\",\n/f : \"me\",\n/g : \"t\",\n/h : \"o\",\n/i : \"ed\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 13.0,
					"id" : "obj-43",
					"linecount" : 8,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 425.0, 357.0, 495.0, 123.0 ],
					"style" : "default",
					"text" : "We've seen string concatenation earlier.\n\nLet's take a look at a simple example, and introduce a new function in the process.  We might take a number of syllables and construct a word from that.  Here, the various addresses representing our syllables are concatenated (adding strings) together to form a word.  We assign this result to the address \"/state\".\n\nClick on the [o.compose] box to see evidence of this."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-41",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 74.0, 127.5, 840.0, 38.0 ],
					"style" : "default",
					"text" : "Let's take a look at string operations.  There are many things we can do with strings, including convert to and from them.  Below we'll try to capture some use cases that deliver the essentials.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 12 ],
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
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-22",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 533.5, 4265.5, 279.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 533.5, 4221.5, 250.0, 32.0 ],
					"text" : "/string/new = join(\"--\", /string)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-20",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 533.5, 4181.5, 275.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 115, 116, 114, 105, 110, 103, 0, 44, 115, 115, 105, 115, 0, 0, 0, 97, 98, 99, 0, 100, 101, 102, 0, 0, 0, 0, 11, 103, 104, 105, 0 ],
					"saved_bundle_length" : 52,
					"text" : "/string : [\"abc\", \"def\", 11, \"ghi\"]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-3",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 134.0, 3908.5, 136.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 101, 108, 101, 109, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 108, 105, 115, 116, 0, 0, 0, 44, 115, 0, 0, 102, 111, 111, 98, 97, 114, 0, 0 ],
					"saved_bundle_length" : 60,
					"text" : "/elem : 0,\n/list : \"foobar\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-31",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 134.0, 3955.0, 306.0, 46.0 ],
					"text" : "/character/1 = split(\"\", /list)[[/elem]],\n/character/4 = split(\"\", /list)[[3]]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-32",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 134.0, 4015.0, 157.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 560.5, 3748.5, 284.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 560.5, 3628.5, 251.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 109, 121, 115, 116, 114, 105, 110, 103, 0, 0, 0, 44, 115, 0, 0, 47, 112, 111, 105, 110, 116, 47, 111, 102, 47, 105, 110, 116, 101, 114, 101, 115, 116, 0, 0 ],
					"saved_bundle_length" : 56,
					"text" : "/mystring : \"/point/of/interest\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-9",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 560.5, 3673.5, 263.0, 46.0 ],
					"text" : "/broken = split(\"/\", /mystring),\n/first = split(\"/\", /mystring)[[0]]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 416.0, 5456.75, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 880.0, 608.0, 96.0, 22.0 ],
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
					"args" : [ 12 ],
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
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-25",
					"linecount" : 3,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 277.0, 4388.5, 129.0, 51.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 119, 111, 114, 100, 0, 0, 0, 44, 115, 0, 0, 99, 111, 97, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 114, 101, 112, 108, 97, 99, 101, 0, 0, 0, 0, 44, 99, 0, 0, 0, 0, 0, 115, 0, 0, 0, 16, 47, 108, 111, 99, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2 ],
					"saved_bundle_length" : 84,
					"text" : "/word : \"coat\",\n/replace : 's',\n/loc : 2"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-27",
					"linecount" : 3,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 277.0, 4478.0, 183.0, 59.0 ],
					"text" : "/w = split(\"\", /word), \n/w[[/loc]] = /replace,\n/word/new = join(\"\", /w)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 277.0, 4578.0, 198.0, 34.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-10", 0 ]
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
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-21", 0 ]
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
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-54", 0 ]
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
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-61", 0 ]
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
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
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
				"name" : "o.t.objects-covered.maxpat",
				"bootpath" : "~/Documents/programming/git_repositories/CNMAT-builds/CNMAT-odot/patchers/tutorial",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
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
				"name" : "o.compose.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.select.mxo",
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
				"name" : "o.explode.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.flatten.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
