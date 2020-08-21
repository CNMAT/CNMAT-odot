{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 57.0, 87.0, 1000.0, 647.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 622.0, 365.0, 81.0, 22.0 ],
					"text" : "o.select /list/2"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 11.0,
					"id" : "obj-147",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 407.5, 5006.5, 100.0, 19.0 ],
					"text" : "click to pop one off"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-146",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 205.0, 6083.0, 125.0, 21.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-145",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 604.5, 5951.0, 125.0, 21.0 ],
					"text" : "mixing data types",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-144",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 276.0, 5950.0, 125.0, 21.0 ],
					"text" : "string concatenation",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-143",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 157.0, 5770.0, 696.0, 50.0 ],
					"text" : "Finally, a word on mixing data in unexpected ways:  Just as you can add strings together to concatenate the list elements pairwise, you can also add differing data types with lists (lists in ODOT are \"polymorphic\", which means they can have mixed types)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 11.0,
					"id" : "obj-139",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 133.0, 5347.5, 84.0, 19.0 ],
					"text" : "add an element"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 11.0,
					"id" : "obj-138",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 503.0, 5347.5, 137.0, 19.0 ],
					"text" : "click here to \"reset\" the list"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-135",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 426.0, 5345.0, 66.0, 24.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 11.0,
					"id" : "obj-133",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 157.0, 5534.0, 133.0, 43.0 ],
					"text" : "pushing an element onto the left of a list, using the list function"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 11.0,
					"id" : "obj-126",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 440.0, 5534.0, 151.0, 43.0 ],
					"text" : "pushing an element onto the right of a list, using the literal list form"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-125",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 397.0, 5549.0, 29.0, 22.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-124",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 397.0, 5453.0, 48.0, 22.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-122",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 106.0, 5596.0, 185.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-123",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 106.0, 5549.0, 29.0, 22.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-79",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 426.0, 5381.0, 165.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 108, 105, 115, 116, 0, 0, 0, 44, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 4 ],
					"saved_bundle_length" : 52,
					"text" : "/list : [1, 2, 3, 4]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-121",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 106.0, 5453.0, 48.0, 22.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-118",
					"linecount" : 10,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 663.0, 5447.0, 252.0, 152.0 ],
					"text" : "here are a couple of practical applications of rest() and butlast().  \n\nYou may have seen something similar to this referrred to as \"popping\" elements off of arrays in other languages.\n\nNote the use of a new object, [o.var], which stores a bundle in the right inlet, similar to [zl.reg]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-119",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 663.0, 5413.0, 167.0, 21.0 ],
					"text" : "pushing elements onto lists"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-117",
					"linecount" : 10,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 74.0, 5053.0, 252.0, 152.0 ],
					"text" : "here are a couple of practical applications of rest() and butlast().  \n\nYou may have seen something similar to this referrred to as \"popping\" elements off of arrays in other languages.\n\nNote the use of a new object, [o.var], which stores a bundle in the right inlet, similar to [zl.reg]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 11.0,
					"id" : "obj-98",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 825.5, 5097.0, 78.0, 43.0 ],
					"text" : "pop elements off from the right"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 11.0,
					"id" : "obj-96",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 533.5, 5097.0, 78.0, 43.0 ],
					"text" : "pop elements off from the left"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-95",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 74.0, 5019.0, 167.0, 21.0 ],
					"text" : "popping elements from lists"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-82",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 639.0, 5197.0, 184.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 639.0, 5147.0, 28.0, 22.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-87",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 639.0, 5059.0, 35.0, 22.0 ],
					"text" : "o.var"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-88",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 639.0, 5097.0, 169.0, 32.0 ],
					"text" : "/list = butlast(/list)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-81",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 106.0, 5409.0, 73.0, 22.0 ],
					"text" : "o.pack /new"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 106.0, 5345.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 106.0, 5381.0, 59.0, 22.0 ],
					"text" : "random 5"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-68",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 376.0, 5197.0, 184.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 376.0, 5004.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 376.0, 5147.0, 28.0, 22.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 376.0, 5059.0, 35.0, 22.0 ],
					"text" : "o.var"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 655.0, 4972.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-28",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 571.5, 4745.0, 288.0, 36.0 ],
					"text" : "this aseq() example demonstrates how to use one list's length to construct another."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-25",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 171.5, 4503.0, 288.0, 36.0 ],
					"text" : "nfill() can be useful for generating a list of a specific length with a list item for each element."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-59",
					"linecount" : 3,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 223.5, 5986.0, 223.0, 61.0 ],
					"text" : "/list/1 : [\"r\", \"g\", \"b\"],\n/list/2 : [\"a\", \"b\", \"c\"],\n/newlist : [\"ra\", \"gb\", \"bc\"]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-60",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 223.5, 5851.0, 208.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 108, 105, 115, 116, 47, 49, 0, 44, 115, 115, 115, 0, 0, 0, 0, 114, 0, 0, 0, 103, 0, 0, 0, 98, 0, 0, 0, 0, 0, 0, 28, 47, 108, 105, 115, 116, 47, 50, 0, 44, 115, 115, 115, 0, 0, 0, 0, 97, 0, 0, 0, 98, 0, 0, 0, 99, 0, 0, 0 ],
					"saved_bundle_length" : 80,
					"text" : "/list/1 : [\"r\", \"g\", \"b\"],\n/list/2 : [\"a\", \"b\", \"c\"]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-61",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 223.5, 5914.0, 212.0, 32.0 ],
					"text" : "/newlist = /list/1 + /list/2"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-72",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 397.0, 5596.0, 208.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-74",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 397.0, 5490.0, 162.0, 32.0 ],
					"text" : "/list = [/list, /new]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-75",
					"linecount" : 3,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 545.5, 5986.0, 259.0, 61.0 ],
					"text" : "/list1 : [1, 2, 3],\n/list2 : [\"a\", \"b\", \"c\"],\n/pushed : [1, 2, 3, \"a\", \"b\", \"c\"]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-76",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 545.5, 5851.0, 201.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 108, 105, 115, 116, 49, 0, 0, 44, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 28, 47, 108, 105, 115, 116, 50, 0, 0, 44, 115, 115, 115, 0, 0, 0, 0, 97, 0, 0, 0, 98, 0, 0, 0, 99, 0, 0, 0 ],
					"saved_bundle_length" : 80,
					"text" : "/list1 : [1, 2, 3],\n/list2 : [\"a\", \"b\", \"c\"]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-77",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 545.5, 5914.0, 227.0, 32.0 ],
					"text" : "/pushed = list(/list1, /list2)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-80",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 106.0, 5490.0, 191.0, 32.0 ],
					"text" : "/list = list(/new, /list)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-85",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 655.0, 5004.0, 208.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 108, 105, 115, 116, 0, 0, 0, 44, 105, 105, 105, 105, 105, 105, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 4, 0, 0, 0, 5, 0, 0, 0, 6 ],
					"saved_bundle_length" : 60,
					"text" : "/list : [1, 2, 3, 4, 5, 6]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-86",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 376.0, 5097.0, 147.0, 32.0 ],
					"text" : "/list = rest(/list)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-45",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 151.0, 4755.0, 335.0, 32.0 ],
					"text" : "/list/same/size = aseq(0, length(/list) - 1 )"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-46",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 151.0, 4710.0, 282.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 47, 108, 105, 115, 116, 0, 0, 0, 44, 105, 105, 105, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 77, 0, 0, 0, 40, 0, 0, 0, 6, -1, -1, -1, -2, 0, 0, 0, 8, 0, 0, 0, 9 ],
					"saved_bundle_length" : 72,
					"text" : "/list : [1, 1, 333, 40, 6, -2, 8, 9]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-48",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 151.0, 4807.0, 315.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 527.0, 4448.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-23",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 527.0, 4498.0, 212.0, 46.0 ],
					"text" : "/fill/int = nfill(5, 3), \n/fill/string = nfill(4, \"a\")"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 527.0, 4560.0, 265.0, 34.0 ]
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
					"patching_rect" : [ 217.5, 4272.5, 133.0, 32.0 ],
					"text" : "/list[[1]] = /sub"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-22",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 217.5, 4226.0, 188.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 108, 105, 115, 116, 0, 0, 0, 44, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 4, 0, 0, 0, 16, 47, 115, 117, 98, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 55 ],
					"saved_bundle_length" : 72,
					"text" : "/list : [1, 2, 3, 4],\n/sub : 55"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 217.5, 4332.5, 186.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-17",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 532.0, 4249.0, 288.0, 79.0 ],
					"text" : "To substitute a specific item, we use a similar technique to accessing.\nThis time the brackets are on the left side of the equals sign, which means that we are setting the value rather than getting it."
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 446.166666666666742, 4139.0, 98.0, 22.0 ],
					"text" : "Further details"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 4147.5, 960.333333333333485, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-2",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 576.666666666666742, 3572.16666666666606, 283.0, 36.0 ],
					"text" : "Le'ts take a minute to explore the formatting of a number of lists into an aggregate list.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-142",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 576.666666666666742, 3793.5, 279.0, 36.0 ],
					"text" : "Note the differences between our original list and how the order has changed.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-141",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 71.5, 3559.666666666666515, 440.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubblepoint" : 0.1,
					"bubbleside" : 2,
					"bubbletextmargin" : 15,
					"bubbleusescolors" : 1,
					"fontsize" : 11.0,
					"id" : "obj-140",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 128.5, 3389.5, 353.0, 70.0 ],
					"text" : "[o.gather] will output only the requested addresses.\nIn this case we use pattern-matching to select multiple addresses."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-134",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 71.5, 3475.0, 119.0, 24.0 ],
					"text" : "o.gather /list/* /list"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-132",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 511.166666666666742, 3672.33333333333303, 412.0, 50.0 ],
					"text" : "Here we simply collect (via [o.gather] the lists we generated in the previous example) and interleave them in a different order, so that the even indices are actually what start the sequence first. ",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"id" : "obj-130",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 419.666666666666742, 3286.0, 155.0, 22.0 ],
					"text" : "Pulling it together again"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-131",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 17.0, 3294.5, 960.333333333333485, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"id" : "obj-128",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 431.166666666666742, 2737.0, 132.0, 22.0 ],
					"text" : "Breaking a list apart"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-129",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 17.0, 2745.5, 960.333333333333485, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-127",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 71.5, 2854.0, 463.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 47, 108, 105, 115, 116, 0, 0, 0, 44, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 0, 97, 0, 0, 0, 98, 0, 0, 0, 99, 0, 0, 0, 100, 0, 0, 0, 101, 0, 0, 0, 102, 0, 0, 0, 103, 0, 0, 0, 104, 0, 0, 0, 105, 0, 0, 0, 106, 0, 0, 0 ],
					"saved_bundle_length" : 80,
					"text" : "/list : [\"a\", \"b\", \"c\", \"d\", \"e\", \"f\", \"g\", \"h\", \"i\", \"j\"]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-114",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 71.5, 3111.0, 435.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-115",
					"linecount" : 5,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 71.5, 2960.0, 255.0, 86.0 ],
					"text" : "/len/half = length(/list) / 2,\n/odd = aseq(0, /len/half + 1, 2), \n/even = aseq(1, /len/half, 2), \n/list/odd = /list[[/odd]], \n/list/even = /list[[/even]]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-116",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 401.5, 2949.0, 530.0, 108.0 ],
					"text" : "To incorporate these various ideas, let's deconstruct a list into its odd and even components and assign those results to variables.\n\nRemember - we're indexing from zero, so the zeroeth element is actually \"1\" in terms of how we might count the odd numbers, and the 1th element is actually \"2\" (even).\n \nNote the use of the length() function here to allow us to generate the lists effectively.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-113",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 183.666666666666742, 2573.0, 236.0, 65.0 ],
					"text" : "...Let's use this same function but incorporate the 3rd argument to step in increments larger than 1 (we can also use float values for this argument)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-111",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 122.5, 2454.0, 332.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-112",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 122.5, 2390.0, 176.0, 32.0 ],
					"text" : "/sequence = aseq(1, 10)"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"id" : "obj-109",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 442.166666666666742, 2278.0, 110.0, 22.0 ],
					"text" : "Generating Lists"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 17.0, 2286.5, 960.333333333333485, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-108",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 589.5, 2402.0, 222.0, 50.0 ],
					"text" : "We can use the arithmetic sequence function \"aseq()\" to generate an arithmetic sequence.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-104",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 204.083333333333371, 2014.0, 231.0, 94.0 ],
					"text" : "Here is a similar example, but instead of creating the list directly we simply pass it in as an argument for the indexing operator.\n\nThe result is identical."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-105",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 541.5, 2038.0, 155.0, 46.0 ],
					"text" : "/idx = [0, 2, 3],\n/134 = /list[[/idx]]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-106",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 541.5, 1973.0, 251.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 108, 105, 115, 116, 0, 0, 0, 44, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 12, 0, 0, 0, 112, 0, 0, 0, 93, 0, 0, 15, -55, 0, 0, 0, 100 ],
					"saved_bundle_length" : 56,
					"text" : "/list : [12, 112, 93, 4041, 100]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-107",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 541.5, 2120.0, 248.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-103",
					"linecount" : 13,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 204.083333333333371, 1655.0, 246.0, 195.0 ],
					"text" : "If we need to be more specific than that, we can either access individual elements, or create lists used to index into the list in question.  \n\nWe access list elements with the double-brackets (single brackets are reserved for lists and OSC pattern-matching) that look like this:  [[]]\n\nNote that indices are zero-based, so if we're looking for the first, we use zero, if we're looking for the third, we use 2, etc."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-100",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 541.5, 1734.0, 219.0, 46.0 ],
					"text" : "/134 = /list[[ [0, 2, 3] ]], \n/third = /list[[2]]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-101",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 541.5, 1667.0, 251.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 108, 105, 115, 116, 0, 0, 0, 44, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 12, 0, 0, 0, 112, 0, 0, 0, 93, 0, 0, 15, -55, 0, 0, 0, 100 ],
					"saved_bundle_length" : 56,
					"text" : "/list : [12, 112, 93, 4041, 100]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-102",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 541.5, 1807.0, 248.0, 34.0 ]
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
					"patching_rect" : [ 382.0, 3924.0, 560.0, 65.0 ],
					"text" : "We might like to revert to what we had quickly.  Let's try this out using the sort() function.\n\nsort() returns a list that is sorted alphanumerically.  Since our list was originally given in alphabetical order, we can rely on this to quickly revert.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-97",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 530.5, 1357.5, 273.0, 108.0 ],
					"text" : "Here are four frequently used functions  that access lists.  \n\n-  first() returns the 1st element of a list.  \n-  last() returns the last.  \n-  rest() returns all but the first\n-  butlast() returns all but the last. "
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"id" : "obj-93",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 444.666666666666742, 1219.0, 105.0, 22.0 ],
					"text" : "Accessing Lists"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 17.0, 1227.5, 960.333333333333485, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubblepoint" : 0.62,
					"bubbleside" : 0,
					"bubbleusescolors" : 1,
					"fontsize" : 10.0,
					"id" : "obj-92",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 153.5, 1001.0, 135.0, 37.0 ],
					"text" : "we can think of 5 as [5, 5, 5]",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-91",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 717.462365591397884, 755.0, 178.0, 79.0 ],
					"text" : "If one list is smaller, the returned list will be the same length as the smalllest, and elements are still evaluated piecewise.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-90",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 401.666666666666742, 769.5, 191.0, 50.0 ],
					"text" : "If two lists are of the same length, elements are evaluated piecewise.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-89",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 104.5, 747.5, 165.0, 94.0 ],
					"text" : "If we add a single <value> to a list the expression languge will expand the value to a list the size required of the calculation, using element <value>",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 419.666666666666742, 669.0, 155.0, 22.0 ],
					"text" : "List Arithmetic Behavior"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 17.0, 677.5, 960.333333333333485, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ 7 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-7",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "banner.maxpat",
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
					"id" : "obj-49",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 724.462365591397884, 1045.0, 164.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-50",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 724.462365591397884, 881.0, 174.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 108, 105, 115, 116, 47, 49, 0, 44, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 20, 47, 108, 105, 115, 116, 47, 50, 0, 44, 105, 105, 0, 0, 0, 0, 4, 0, 0, 0, 5 ],
					"saved_bundle_length" : 72,
					"text" : "/list/1 : [1, 2, 3],\n/list/2 : [4, 5]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-51",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 724.462365591397884, 967.0, 193.0, 32.0 ],
					"text" : "/list = /list/1 + /list/2"
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
					"patching_rect" : [ 410.166666666666742, 1045.0, 164.0, 34.0 ]
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
					"patching_rect" : [ 410.166666666666742, 881.0, 174.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 108, 105, 115, 116, 47, 49, 0, 44, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 28, 47, 108, 105, 115, 116, 47, 50, 0, 44, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 5, 0, 0, 0, 6 ],
					"saved_bundle_length" : 80,
					"text" : "/list/1 : [1, 2, 3],\n/list/2 : [4, 5, 6]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-54",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 410.166666666666742, 967.0, 193.0, 32.0 ],
					"text" : "/list = /list/1 + /list/2"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-55",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 114.0, 1058.5, 150.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-56",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 114.0, 895.0, 150.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 108, 105, 115, 116, 0, 0, 0, 44, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3 ],
					"saved_bundle_length" : 48,
					"text" : "/list : [1, 2, 3]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-57",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 114.0, 967.0, 133.0, 32.0 ],
					"text" : "/list = /list + 5"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 504.5, 2622.0, 365.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-11",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 504.5, 2551.0, 176.0, 46.0 ],
					"text" : "/odd = aseq(1, 20, 2), \n/even = aseq(0, 20, 2)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-36",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 71.5, 3681.33333333333303, 356.0, 32.0 ],
					"text" : "/interleaved = interleave(/list/even, /list/odd)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-38",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 71.5, 3773.999999999999545, 435.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-39",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 71.5, 3940.5, 212.0, 32.0 ],
					"text" : "/sorted = sort(/interleaved)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-41",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 71.5, 4022.5, 444.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-42",
					"linecount" : 4,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 229.166666666666742, 1364.0, 191.0, 73.0 ],
					"text" : "/first = first(/list), \n/last = last(/list), \n/butfirst = rest(/list), \n/butlast = butlast(/list)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-43",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 229.166666666666742, 1315.0, 165.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 108, 105, 115, 116, 0, 0, 0, 44, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 4 ],
					"saved_bundle_length" : 52,
					"text" : "/list : [1, 2, 3, 4]"
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
					"patching_rect" : [ 229.166666666666742, 1453.0, 179.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 539.0, 407.0, 44.0, 22.0 ],
					"text" : "0 1 2"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-19",
					"linecount" : 5,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 622.0, 407.0, 143.0, 88.0 ],
					"text" : "/list/2 : [1, {\n\t/a : 57,\n\t/b : 43,\n\t/c : 98\n}, 3]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 564.0, 325.0, 77.0, 22.0 ],
					"text" : "o.route /list/1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 436.0, 521.0, 462.0, 38.0 ],
					"text" : "a closer look at generating a list like /list/2 in the first example, but in the codebox.  Note here again that we can delete an address with delete()"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-12",
					"linecount" : 7,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 246.0, 365.0, 198.0, 115.0 ],
					"text" : "/bundle/a = {/foo : 10}, \n/bundle/a./a = 57, \n/bundle/a./b = 43, \n/bundle/a./c = 98, \n/list/2 = [1, \"\", 3], \n/list/2[[1]] = /bundle/a, \ndelete(/bundle/a)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 246.0, 521.0, 165.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-5",
					"linecount" : 7,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 564.0, 178.0, 294.0, 106.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 108, 105, 115, 116, 47, 48, 0, 44, 105, 105, 115, 115, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 97, 112, 112, 108, 101, 115, 0, 0, 111, 114, 97, 110, 103, 101, 115, 0, 0, 0, 0, 28, 47, 108, 105, 115, 116, 47, 49, 0, 44, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 92, 47, 108, 105, 115, 116, 47, 50, 0, 44, 105, 46, 105, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 97, 0, 0, 44, 105, 0, 0, 0, 0, 0, 57, 0, 0, 0, 12, 47, 98, 0, 0, 44, 105, 0, 0, 0, 0, 0, 43, 0, 0, 0, 12, 47, 99, 0, 0, 44, 105, 0, 0, 0, 0, 0, 98, 0, 0, 0, 3 ],
					"saved_bundle_length" : 188,
					"text" : "/list/0 : [1, 2, \"apples\", \"oranges\"],\n/list/1 : [0, 1, 2],\n/list/2 : [1, {\n\t/a : 57,\n\t/b : 43,\n\t/c : 98\n}, 3]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"id" : "obj-1",
					"linecount" : 11,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 71.0, 142.0, 373.0, 179.0 ],
					"text" : "As seen in part 1, the ODOT list is similar to a Max list, albeit a few key differences.  \n\n1. lists can be embedded in other lists\n2. lists can contain bundles\n3. strings are surrounded in quotes\n4. booleans (true, false) are valid data types\n5. lists can be accessed by index with o.expr.codebox using double brackets\n6. we have a host of tools for generating, manipulating, and parsing lists in o.expr.codebox"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 883.0, 604.0, 96.0, 22.0 ],
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
					"args" : [ 7 ],
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
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 0 ],
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
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"source" : [ "obj-121", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 1 ],
					"midpoints" : [ 125.5, 5581.0, 97.5, 5581.0, 97.5, 5448.0, 144.5, 5448.0 ],
					"source" : [ "obj-123", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 1 ],
					"midpoints" : [ 416.5, 5581.0, 389.5, 5581.0, 389.5, 5442.0, 435.5, 5442.0 ],
					"source" : [ "obj-125", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-127", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-141", 0 ],
					"source" : [ "obj-134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-135", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-141", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 1 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-16", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"source" : [ "obj-37", 0 ]
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
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"midpoints" : [ 394.5, 5174.0, 530.25, 5174.0, 530.25, 5060.0, 401.5, 5060.0 ],
					"source" : [ "obj-47", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-5", 0 ]
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
					"destination" : [ "obj-52", 0 ],
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
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"order" : 1,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"order" : 0,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"source" : [ "obj-74", 0 ]
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
					"destination" : [ "obj-75", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 1 ],
					"order" : 1,
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 1 ],
					"order" : 0,
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 0 ],
					"order" : 1,
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"order" : 0,
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 1 ],
					"midpoints" : [ 657.5, 5181.0, 819.25, 5181.0, 819.25, 5055.0, 664.5, 5055.0 ],
					"source" : [ "obj-84", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"order" : 1,
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 1 ],
					"order" : 0,
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-86", 0 ]
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
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
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
				"name" : "banner.maxpat",
				"bootpath" : "~/Documents/programming/git_repositories/CNMAT-builds/CNMAT-odot/patchers/tutorial",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.gather.maxpat",
				"bootpath" : "~/Documents/programming/git_repositories/CNMAT-builds/CNMAT-odot/patchers/namespace",
				"patcherrelativepath" : "../namespace",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.righttoleft.maxpat",
				"bootpath" : "~/Documents/programming/git_repositories/CNMAT-builds/CNMAT-odot/patchers/ordering",
				"patcherrelativepath" : "../ordering",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.compose.mxo",
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
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.intersection.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.collect.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.difference.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.var.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.union.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.select.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
