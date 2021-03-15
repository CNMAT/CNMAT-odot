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
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 517.0, 1857.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "o.compose", "o.print", "o.route", "o.expr.codebox", "o.display" ],
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
					"patching_rect" : [ 60.0, 1798.0, 834.0, 45.75 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 1 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-6",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "advance.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -1.0, -2.0 ],
					"patching_rect" : [ 766.0, 1847.0, 195.0, 28.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-45",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 268.0, 387.5, 437.0, 33.0 ],
					"style" : "default",
					"text" : "Note the curly braces that surround the message printed by [o.print]. Those denote the beginning and end of a collection, or \"bundle\" of messages.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-43",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 160.0, 246.5, 643.0, 36.0 ],
					"style" : "default",
					"text" : "Odot data can only be operated on and displayed by odot objects. To print the contents of an [o.compose] box to the Max window, use [o.print]. Try clicking on each box below and look at the result in the Max console.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 441.5, 344.038461538461547, 91.0, 22.0 ],
					"text" : "print not-helpful"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"bubbleusescolors" : 1,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-39",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 531.5, 309.0, 74.0, 24.0 ],
					"text" : "message"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"bubbleusescolors" : 1,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-38",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 268.0, 309.0, 84.0, 24.0 ],
					"text" : "o.compose"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"bubbleusescolors" : 1,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 236.0, 1346.0, 73.0, 24.0 ],
					"text" : "o.display"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"bubbleusescolors" : 1,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-36",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 226.0, 1254.0, 84.0, 24.0 ],
					"text" : "o.compose"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"bubbleusescolors" : 1,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 205.0, 1296.0, 107.0, 24.0 ],
					"text" : "o.expr.codebox"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-15",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 69.5, 1693.0, 811.0, 36.0 ],
					"text" : "o.expr.codebox has a number of built-in functions and some nice features that simplify common tasks like list manipulation, which we'll encounter as we go",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 69.5, 1441.0, 811.0, 21.0 ],
					"text" : "o.expr.codebox operates on a copy of the input and produces that copy, containing any changes to it that its program produced.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 411.0, 1547.0, 302.0, 47.0 ],
					"text" : "You can assign a value to an address using the \"=\" operator. This creates a new message and appends it to the copy of our input"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-26",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 322.0, 1603.0, 238.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-28",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 322.0, 1554.0, 70.0, 31.0 ],
					"text" : "/foo = 10"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-29",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 322.0, 1516.0, 232.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 109, 121, 108, 105, 115, 116, 0, 44, 105, 105, 115, 115, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 97, 0, 0, 0, 98, 0, 0, 0, 64, 9, 30, -72, 81, -21, -123, 31 ],
					"saved_bundle_length" : 60,
					"text" : "/mylist : [1, 2, \"a\", \"b\", 3.14]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-30",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 322.0, 1341.0, 238.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-31",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 494.0, 1292.0, 297.0, 33.0 ],
					"text" : "Sending a bundle through an empty o.expr.compose simply produces a copy of the bundle"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-32",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 322.0, 1292.0, 142.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-33",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 322.0, 1254.0, 232.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 109, 121, 108, 105, 115, 116, 0, 44, 105, 105, 115, 115, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 97, 0, 0, 0, 98, 0, 0, 0, 64, 9, 30, -72, 81, -21, -123, 31 ],
					"saved_bundle_length" : 60,
					"text" : "/mylist : [1, 2, \"a\", \"b\", 3.14]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-34",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 69.5, 1196.0, 811.0, 36.0 ],
					"text" : "Before continuing with our tutorial, let's introduce o.expr.codebox, which allows you to write expressions that manipulate OSC data in a Javascript-like language.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-12",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 33.0, 1034.5, 903.0, 36.0 ],
					"style" : "default",
					"text" : "The Max [message] box serves two functions: creation and display. \nWhile [o.compose] can also be used to accomplish both of those tasks, its primary purpose is creation, with display being handled by [o.display].",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-8",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 342.0, 1092.0, 285.0, 36.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 47, 109, 121, 108, 105, 115, 116, 47, 49, 0, 0, 0, 44, 105, 105, 115, 115, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 97, 0, 0, 0, 98, 0, 0, 0, 64, 9, 30, -72, 81, -21, -123, 31, 0, 0, 0, 44, 47, 109, 121, 108, 105, 115, 116, 47, 50, 0, 0, 0, 44, 115, 115, 115, 0, 0, 0, 0, 97, 112, 112, 108, 101, 0, 0, 0, 111, 114, 97, 110, 103, 101, 0, 0, 103, 114, 97, 112, 101, 0, 0, 0 ],
					"saved_bundle_length" : 112,
					"text" : "/mylist/1 : [1, 2, \"a\", \"b\", 3.14],\n/mylist/2 : [\"apple\", \"orange\", \"grape\"]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 607.5, 344.038461538461547, 84.0, 22.0 ],
					"text" : "print message"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 355.0, 344.038461538461547, 81.0, 22.0 ],
					"text" : "o.print helpful"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 607.5, 309.0, 65.0, 22.0 ],
					"text" : "name data"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-25",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 355.0, 309.0, 113.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 97, 109, 101, 0, 0, 0, 44, 115, 0, 0, 100, 97, 116, 97, 0, 0, 0, 0 ],
					"saved_bundle_length" : 40,
					"text" : "/name : \"data\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 884.0, 715.5, 77.0, 20.0 ],
					"style" : "default",
					"text" : "(scroll down)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-4",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 63.5, 470.5, 838.0, 36.0 ],
					"style" : "default",
					"text" : "Unlike Max messages which can only be sent in sequence, odot can \"bundle\" messages together. When you click on the [message] box on the right, the message \"mylist1\" is sent, followed by \"mylist2\". On the left, both messages are sent \"atomically\", that is, together as a single unit.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 1 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-10",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "o.t.banner.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -4.0, -5.25 ],
					"patching_rect" : [ 11.0, 9.0, 517.0, 111.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 790.5, 47.5, 61.0, 24.0 ],
					"text" : "onecopy"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 1 ],
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
					"patching_rect" : [ 766.0, 12.0, 195.0, 28.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 596.5, 632.076923076923094, 65.0, 22.0 ],
					"text" : "print max2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 519.5, 632.076923076923094, 65.0, 22.0 ],
					"text" : "print max1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 519.5, 597.038461538461547, 173.0, 22.0 ],
					"text" : "route mylist1 mylist2"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 67.5, 714.5, 454.0, 21.0 ],
					"style" : "default",
					"text" : "Let's look closer at the similarities and differences between these two objects:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 159.0, 597.038461538461547, 83.0, 22.0 ],
					"text" : "o.route /mylist"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 159.0, 632.076923076923094, 105.0, 22.0 ],
					"text" : "o.print one_&_two"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-7",
					"linecount" : 15,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 67.5, 754.5, 834.0, 224.0 ],
					"style" : "default",
					"text" : "1. In the Max message box, the comma separates two messages, which will be output separately when the button is clicked. In o.compose, the comma also separates messages, but when clicked, o.compose outputs a single \"bundle\" which contains all of the messages. The comma also serves a second purpose in o.compose as a list item separator.\n\n2. Strings in o.compose, o.display, and o.expr.codebox, are surrounded by double-quotes.\n\n3. Lists are contained within brackets: [ to start a list, and ] to end one.  list items are separated by commas.  You can write lists inside of lists, for example [1, 2, [3, 4], 5], however, the list will be flattened to a single level: [1, 2, 3, 4, 5].\n\n4. All data (single values or a list of values) has an address (name), that is, you can't have a list or a value by itself without an address.\n\n5. We bind data to an address with the colon (:) operator.  Addresses go on the left hand side of the colon operator, and must begin with a forward-slash; values go on the right.\n\n6. o.compose and o.expr.codebox do not support argument substitutions of the form $1, $2, etc, nor do they support #0, #1, #2, etc."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 519.5, 544.0, 264.0, 22.0 ],
					"text" : "mylist1 1 2 a b 3.14, mylist2 apple orange grape"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-3",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 159.0, 544.0, 285.0, 36.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 47, 109, 121, 108, 105, 115, 116, 47, 49, 0, 0, 0, 44, 105, 105, 115, 115, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 97, 0, 0, 0, 98, 0, 0, 0, 64, 9, 30, -72, 81, -21, -123, 31, 0, 0, 0, 44, 47, 109, 121, 108, 105, 115, 116, 47, 50, 0, 0, 0, 44, 115, 115, 115, 0, 0, 0, 0, 97, 112, 112, 108, 101, 0, 0, 0, 111, 114, 97, 110, 103, 101, 0, 0, 103, 114, 97, 112, 101, 0, 0, 0 ],
					"saved_bundle_length" : 112,
					"text" : "/mylist/1 : [1, 2, \"a\", \"b\", 3.14],\n/mylist/2 : [\"apple\", \"orange\", \"grape\"]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-41",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 159.5, 813.0, 36.0 ],
					"style" : "default",
					"text" : "Odot provides a number of objects that are variations on standard Max objects you're probably familiar with. The odot equivalent of the Max [message] box is called [o.compose].",
					"textjustification" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-21", 0 ]
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
					"destination" : [ "obj-20", 0 ],
					"order" : 1,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"order" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-5", 0 ]
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
				"name" : "o.print.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.display.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
