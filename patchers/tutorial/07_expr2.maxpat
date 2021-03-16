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
		"toolbarvisible" : 1,
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
					"args" : [ "o.compose", "o.expr.codebox", "o.display", "o.pack", "o.union" ],
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
					"patching_rect" : [ 74.5, 5882.0, 834.0, 45.75 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-157",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 346.0, 5452.5, 402.0, 50.0 ],
					"text" : "Here, we just added a variable to our input to set, and give a default value to, the length of the list we'll collect. This use of [o.pack] is also very common in odot programming. Try changing the value."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-156",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 251.0, 5467.0, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-154",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 181.0, 5374.0, 513.0, 36.0 ],
					"text" : "Let's redo our example, just to see what other versions might look like. Here, we'll make the list length changeable from the outside, and we'll collect the items in reverse order."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-143",
					"linecount" : 10,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 557.0, 5567.0, 297.0, 152.0 ],
					"text" : "Note that we added a check to make sure that /n isn't accidentally negative (or 0).\n\nWe also had to make the \"then\" field of our if() function slightly more complex---we couldn't just use rest() in place of butlast(), since we have to take into account that /n may have changed and may be smaller than it previously was, so we explictly take the values we want according to the current value of /n."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-144",
					"linecount" : 3,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 181.0, 5720.0, 298.0, 59.0 ],
					"text" : "/val : 5,\n/n : 8,\n/vals : [5, 4, 4, 4, 4, 5, 5, 5]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-145",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 181.0, 5672.0, 28.0, 22.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-147",
					"linecount" : 5,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 181.0, 5567.0, 302.0, 83.0 ],
					"text" : "/vals ??= [],\nif(/n < 1, /n = 1),\n/vals = if(length(/vals) >= /n,\n           [/vals[[aseq(1, /n - 1)]], /val],\n           [/vals, /val])"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-148",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 181.0, 5535.0, 48.0, 22.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-149",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 181.0, 5498.0, 89.0, 22.0 ],
					"text" : "o.pack /val /n 8"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-150",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 181.0, 5438.0, 119.0, 22.0 ],
					"text" : "metro 250 @active 1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-151",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 181.0, 5467.0, 55.0, 22.0 ],
					"text" : "drunk 32"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-142",
					"linecount" : 12,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 440.0, 5101.0, 380.0, 181.0 ],
					"text" : "There are a couple things to note about this example:\n\n-- the use of [trigger] and [o.union] to loop the results of computation around and store them for the next iteration is *very* common in odot programming,\n\n-- in this example, the length of our list is fixed at 8---that's fine, but we could make it dynamic,\n\n-- the list is constructed with newest items at the front, and oldest at the end---this is also fine, but it's a design decision and we could have chosen to put the newest items at the end."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-141",
					"linecount" : 11,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 440.0, 4892.0, 399.0, 166.0 ],
					"text" : "We first make sure that we have an empty list at the address where we plan to store our running history---we do this with the null-coalescing operator.\n\nThen, we check to see if our list is already 8 elements long; if it is, we remove the last (oldest) element before pushing the element onto the front of the list.\n\nFinally, we have to keep the list we just created in order to use it next time, so we loop it back around and store it in [o.union] where it will be blended in with our next new value."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-140",
					"linecount" : 2,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 121.0, 5183.0, 275.0, 46.0 ],
					"text" : "/val : 2,\n/vals : [2, 3, 2, 1, 1, 2, 3, 4]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-139",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 121.0, 5138.0, 28.0, 22.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-138",
					"linecount" : 4,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 121.0, 5041.0, 236.0, 74.0 ],
					"text" : "/vals ??= [],\n/vals = if(length(/vals) >= 8,\n           [/val, butlast(/vals)],\n           [/val, /vals])"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-137",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 121.0, 5009.0, 48.0, 22.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-136",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 121.0, 4972.0, 66.0, 22.0 ],
					"text" : "o.pack /val"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-135",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 121.0, 4912.0, 119.0, 22.0 ],
					"text" : "metro 250 @active 1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-134",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 121.0, 4941.0, 55.0, 22.0 ],
					"text" : "drunk 32"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-132",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 127.0, 4702.0, 620.0, 79.0 ],
					"text" : "If you have some process that's outputting one value at a time, and you want to collect those values into a running history of the last, say 8 values, there are a few ways to do this.\n\nMax has a built in object called [zl.stream] which does just this for Max data. \nBut let's look at a solution using only odot."
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontsize" : 13.0,
					"id" : "obj-129",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 429.166666666666742, 4615.5, 113.0, 21.0 ],
					"text" : "Accumulating lists"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-130",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 4623.5, 931.333333333333485, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-125",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 478.0, 4487.0, 199.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-126",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 478.0, 4389.0, 133.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 108, 105, 115, 116, 0, 0, 0, 44, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3 ],
					"saved_bundle_length" : 48,
					"text" : "/list : [1, 2, 3]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-127",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 478.0, 4426.0, 229.0, 31.0 ],
					"text" : "/d = rest(/list) - butlast(/list)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-128",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 208.0, 4423.5, 262.0, 36.0 ],
					"text" : "rest() and butlast() are especially useful for estimating the derivative of a list of values:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-121",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 683.0, 4247.0, 199.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-122",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 683.0, 4149.0, 133.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 108, 105, 115, 116, 0, 0, 0, 44, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3 ],
					"saved_bundle_length" : 48,
					"text" : "/list : [1, 2, 3]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-123",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 683.0, 4186.0, 176.0, 44.0 ],
					"text" : "/rest = rest(/list), \n/butlast = butlast(/list)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-124",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 535.0, 4165.0, 132.0, 65.0 ],
					"text" : "Similarly, sometimes you need a list with the first or last element removed:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-120",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 293.0, 4149.0, 153.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-119",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 513.0, 3926.0, 266.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-117",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 293.0, 4037.0, 133.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 108, 105, 115, 116, 0, 0, 0, 44, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3 ],
					"saved_bundle_length" : 48,
					"text" : "/list : [1, 2, 3]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-118",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 293.0, 4088.0, 150.0, 44.0 ],
					"text" : "/last = last(/list), \n/first = first(/list)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-116",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 124.0, 4051.0, 156.0, 79.0 ],
					"text" : "However, there is a builtin function for this called last(), as well as one called first() that will return the first element:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-115",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 513.0, 3845.0, 133.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 108, 105, 115, 116, 0, 0, 0, 44, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3 ],
					"saved_bundle_length" : 48,
					"text" : "/list : [1, 2, 3]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-114",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 513.0, 3882.0, 236.0, 31.0 ],
					"text" : "/last = /list[[length(/list) - 1]]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-113",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 148.0, 3887.0, 348.0, 21.0 ],
					"text" : "When you need the last element of the list, you could write:"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontsize" : 13.0,
					"id" : "obj-107",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 441.5, 3723.5, 83.0, 21.0 ],
					"text" : "First and last"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 3731.5, 938.0, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-104",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 59.0, 2915.0, 850.0, 50.0 ],
					"text" : "It's often the case that we want to sort a list that has some implicit structure, for example, a list of pairs or triples that are interleaved together. In that case, we use a different function, sortidx(), which doesn't sort the list, but rather returns a list of indexes that can be used to sort that list, and any other.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-103",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 233.0, 2557.0, 578.0, 36.0 ],
					"text" : "The sort() function sorts a list in ascending order, and the reverse() function reverses the order. Note that both of these functions operate on copies, leaving their input unaffected."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-99",
					"linecount" : 3,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 233.0, 2770.0, 324.0, 59.0 ],
					"text" : "/list : [7, 8, 5, 1, 4, 6, 3, 2],\n/list/sorted : [1, 2, 3, 4, 5, 6, 7, 8],\n/list/sorted/desc : [2, 3, 6, 4, 1, 5, 8, 7]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-98",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 233.0, 2708.0, 236.0, 44.0 ],
					"text" : "/list/sorted = sort(/list),\n/list/sorted/desc = reverse(/list)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-97",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 233.0, 2661.0, 244.0, 33.0 ],
					"text" : "/list : [7, 3, 8, 4, 2, 1, 6, 5]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 128.5, 161.0, 65.0, 20.0 ],
									"text" : "o.pack /list"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 118.0, 30.0, 126.0, 20.0 ],
									"text" : "metro 1000 @active 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 128.5, 205.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 128.5, 126.0, 69.0, 20.0 ],
									"text" : "zl.scramble"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 128.5, 92.0, 51.0, 20.0 ],
									"text" : "zl.group"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 118.0, 58.0, 40.0, 20.0 ],
									"text" : "uzi 8"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 233.0, 2629.0, 78.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p random-list"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-95",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 544.0, 3474.0, 322.0, 21.0 ],
					"text" : "Now that they're sorted, we can interleave them again."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-94",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 59.0, 3529.0, 501.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-93",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 59.0, 3469.0, 335.0, 31.0 ],
					"text" : "/partials/sorted/freq = interleave(/freqs, /amps)"
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
					"patching_rect" : [ 59.0, 3352.0, 425.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-91",
					"linecount" : 3,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 59.0, 3274.0, 269.0, 57.0 ],
					"text" : "/idxs/sorted = sortidx(/freqs),\n/freqs/sorted = /freqs[[/idxs/sorted]],\n/amps/sorted = /amps[[/idxs/sorted]]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-90",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 544.0, 3270.0, 355.0, 65.0 ],
					"text" : "Now that they're separated, we can sort the frequencies in ascending order using sortidx() which produces a list of indices that can be used to sort the original list in ascending order."
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
					"patching_rect" : [ 544.0, 3098.0, 353.0, 94.0 ],
					"text" : "Here, we have a single list that contains frequencies at the even indexes, and amplitudes at the odd indexes, but they're unordered. If we wanted to order the list by frequencies or amplitudes, the first step is to deinterleave the two, that is, to separate the frequencies from the amplitudes."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-85",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 59.0, 3054.0, 418.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 47, 112, 97, 114, 116, 105, 97, 108, 115, 0, 0, 0, 44, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 64, -101, -128, 0, 0, 0, 0, 0, 63, -64, 0, 0, 0, 0, 0, 0, 64, 123, -128, 0, 0, 0, 0, 0, 63, -16, 0, 0, 0, 0, 0, 0, 64, -108, -96, 0, 0, 0, 0, 0, 63, -48, 0, 0, 0, 0, 0, 0, 64, -117, -128, 0, 0, 0, 0, 0, 63, -32, 0, 0, 0, 0, 0, 0 ],
					"saved_bundle_length" : 108,
					"text" : "/partials : [1760., 0.125, 440., 1., 1320., 0.25, 880., 0.5]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-86",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 59.0, 3117.0, 381.0, 44.0 ],
					"text" : "/freqs = /partials[[aseq(0, length(/partials) - 1, 2)]],\n/amps = /partials[[aseq(1, length(/partials) - 1, 2)]]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-87",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 59.0, 3189.0, 425.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 12.0,
					"id" : "obj-84",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 560.0, 2202.0, 331.0, 33.0 ],
					"text" : "Note: length() returns the length of a list, and is used here to write general code that will work on a list of any length."
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontsize" : 13.0,
					"id" : "obj-82",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 400.166666666666742, 2483.5, 171.0, 21.0 ],
					"text" : "Sorting and interleaving lists"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 2491.5, 935.333333333333485, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-79",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 327.166666666666742, 2313.0, 322.0, 21.0 ],
					"text" : "nfill(<n>, <item>) creates a list of <n> copies of <item>"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-80",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 125.5, 2308.0, 176.0, 31.0 ],
					"text" : "/list1 = nfill(10, \"ten\")"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-81",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 125.5, 2362.0, 316.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-73",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 576.0, 1954.0, 290.0, 21.0 ],
					"text" : "aseq() is especially useful for deinterleaving lists:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-72",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 512.0, 1992.0, 418.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 47, 112, 97, 114, 116, 105, 97, 108, 115, 0, 0, 0, 44, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 64, 123, -128, 0, 0, 0, 0, 0, 63, -16, 0, 0, 0, 0, 0, 0, 64, -117, -128, 0, 0, 0, 0, 0, 63, -32, 0, 0, 0, 0, 0, 0, 64, -108, -96, 0, 0, 0, 0, 0, 63, -48, 0, 0, 0, 0, 0, 0, 64, -101, -128, 0, 0, 0, 0, 0, 63, -64, 0, 0, 0, 0, 0, 0 ],
					"saved_bundle_length" : 108,
					"text" : "/partials : [440., 1., 880., 0.5, 1320., 0.25, 1760., 0.125]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-70",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 512.0, 2048.0, 381.0, 44.0 ],
					"text" : "/freqs = /partials[[aseq(0, length(/partials) - 1, 2)]],\n/amps = /partials[[aseq(1, length(/partials) - 1, 2)]]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-71",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 512.0, 2122.0, 425.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-69",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 156.5, 2048.0, 181.0, 94.0 ],
					"text" : "aseq(<start>, <end>, <step>) creates an arithmetic sequence starting at <start> and ending at <end>, counting by 1, or <step> if it's included."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-68",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 189.166666666666742, 1884.0, 598.0, 21.0 ],
					"text" : "Aside from typing list directly, we can create them programatically using the functions aseq() and nfill():"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-112",
					"linecount" : 3,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 125.5, 1975.0, 169.0, 57.0 ],
					"text" : "/list1 = aseq(1, 10), \n/list2 = aseq(1, 10, 2),\n/list3 = aseq(1, 10, 3)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-111",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 125.5, 2160.0, 314.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontsize" : 13.0,
					"id" : "obj-109",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 436.666666666666742, 1816.5, 103.0, 21.0 ],
					"text" : "Generating Lists"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 1824.5, 928.333333333333485, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 597.0, 1549.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 324.0, 1549.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-59",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 597.0, 1629.0, 236.0, 31.0 ],
					"text" : "assign_to_index(/list, 3, \"three\")"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-60",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 597.0, 1583.0, 232.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 108, 105, 115, 116, 0, 0, 0, 44, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 12, 0, 0, 0, 112, 0, 0, 0, 93, 0, 0, 15, -55, 0, 0, 0, 100 ],
					"saved_bundle_length" : 56,
					"text" : "/list : [12, 112, 93, 4041, 100]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-61",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 597.0, 1681.0, 262.0, 33.0 ],
					"text" : "/list : [12, 112, 93, \"three\", 100]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-62",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 324.0, 1629.0, 163.0, 31.0 ],
					"text" : "/second = nth(/list, 1)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-63",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 324.0, 1583.0, 232.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 108, 105, 115, 116, 0, 0, 0, 44, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 12, 0, 0, 0, 112, 0, 0, 0, 93, 0, 0, 15, -55, 0, 0, 0, 100 ],
					"saved_bundle_length" : 56,
					"text" : "/list : [12, 112, 93, 4041, 100]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-64",
					"linecount" : 2,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 324.0, 1681.0, 229.0, 46.0 ],
					"text" : "/list : [12, 112, 93, 4041, 100],\n/second : 112"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 577.0, 279.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 139.0, 279.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-54",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 91.0, 1583.0, 186.0, 79.0 ],
					"text" : "The double-square-bracket notation is really \"syntactic sugar\" for their functional equivalents nth() and assign_to_index()"
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
					"patching_rect" : [ 418.5, 1336.0, 282.0, 31.0 ],
					"text" : "/list[[ /idxs ]] = [\"zero\", \"two\", \"one\"]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-53",
					"linecount" : 2,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 418.5, 1382.0, 289.0, 46.0 ],
					"text" : "/list : [\"zero\", \"one\", \"two\", 4041, 100],\n/idxs : [0, 2, 1]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 84.0, 1239.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-48",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 418.5, 1243.0, 192.0, 65.0 ],
					"text" : "Lists may be used inside double-square-bracket notation to access multiple locations at once."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-49",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 84.0, 1336.0, 189.0, 31.0 ],
					"text" : "/sublist = /list[[ /idxs ]]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-50",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 84.0, 1269.0, 239.0, 36.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 108, 105, 115, 116, 0, 0, 0, 44, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 12, 0, 0, 0, 112, 0, 0, 0, 93, 0, 0, 15, -55, 0, 0, 0, 100, 0, 0, 0, 28, 47, 105, 100, 120, 115, 0, 0, 0, 44, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1 ],
					"saved_bundle_length" : 88,
					"text" : "/list : [12, 112, 93, 4041, 100],\n/idxs : [0, 2, 1]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-51",
					"linecount" : 3,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 84.0, 1382.0, 229.0, 59.0 ],
					"text" : "/list : [12, 112, 93, 4041, 100],\n/idxs : [0, 2, 1],\n/sublist : [12, 93, 112]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 55.0, 958.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 365.0, 520.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-41",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 689.0, 1055.0, 203.0, 31.0 ],
					"text" : "/list[[3]] = [\"three\", \"one\"]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-42",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 689.0, 1009.0, 232.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 108, 105, 115, 116, 0, 0, 0, 44, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 12, 0, 0, 0, 112, 0, 0, 0, 93, 0, 0, 15, -55, 0, 0, 0, 100 ],
					"saved_bundle_length" : 56,
					"text" : "/list : [12, 112, 93, 4041, 100]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-43",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 689.0, 1107.0, 242.0, 33.0 ],
					"text" : "/list : [12, 112, 93, \"three\", 100]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-40",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 37.0, 850.0, 908.0, 36.0 ],
					"text" : "Lists may also be used inside double-square-brackets on the lefthand side of an assignment, but the behavior depends on what's on the right side of the assignment and follows the same rules as described in the \"scalar expansion\" area of the previous tutorial:",
					"textjustification" : 1
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
					"patching_rect" : [ 375.0, 1055.0, 222.0, 31.0 ],
					"text" : "/list[[3, 1]] = [\"three\", \"one\"]"
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
					"patching_rect" : [ 375.0, 1009.0, 232.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 108, 105, 115, 116, 0, 0, 0, 44, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 12, 0, 0, 0, 112, 0, 0, 0, 93, 0, 0, 15, -55, 0, 0, 0, 100 ],
					"saved_bundle_length" : 56,
					"text" : "/list : [12, 112, 93, 4041, 100]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-35",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 375.0, 1107.0, 256.0, 33.0 ],
					"text" : "/list : [12, \"one\", 93, \"three\", 100]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-31",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 620.0, 580.5, 198.0, 65.0 ],
					"text" : "Lists may be used inside double-square-bracket notation to access multiple locations at once."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-22",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 55.0, 1055.0, 163.0, 31.0 ],
					"text" : "/list[[3, 1]] = \"three\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-23",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 55.0, 1009.0, 232.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 108, 105, 115, 116, 0, 0, 0, 44, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 12, 0, 0, 0, 112, 0, 0, 0, 93, 0, 0, 15, -55, 0, 0, 0, 100 ],
					"saved_bundle_length" : 56,
					"text" : "/list : [12, 112, 93, 4041, 100]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-24",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 55.0, 1107.0, 269.0, 33.0 ],
					"text" : "/list : [12, \"three\", 93, \"three\", 100]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-26",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 365.0, 596.0, 203.0, 31.0 ],
					"text" : "/sublist = /list[[ 0, 2, 1 ]]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-27",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 365.0, 550.0, 232.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 108, 105, 115, 116, 0, 0, 0, 44, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 12, 0, 0, 0, 112, 0, 0, 0, 93, 0, 0, 15, -55, 0, 0, 0, 100 ],
					"saved_bundle_length" : 56,
					"text" : "/list : [12, 112, 93, 4041, 100]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-28",
					"linecount" : 2,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 365.0, 648.0, 229.0, 46.0 ],
					"text" : "/list : [12, 112, 93, 4041, 100],\n/sublist : [12, 93, 112]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 12.0,
					"id" : "obj-9",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 312.5, 358.0, 130.0, 33.0 ],
					"text" : "Note: list indexes start counting from 0"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-4",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 577.0, 219.0, 255.0, 50.0 ],
					"text" : "The same notation may be used on the lefthand side of an assignment operator to assign a value to a position in a list:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-5",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 577.0, 359.0, 156.0, 31.0 ],
					"text" : "/list[[ 3 ]] = \"three\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-6",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 577.0, 313.0, 232.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 108, 105, 115, 116, 0, 0, 0, 44, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 12, 0, 0, 0, 112, 0, 0, 0, 93, 0, 0, 15, -55, 0, 0, 0, 100 ],
					"saved_bundle_length" : 56,
					"text" : "/list : [12, 112, 93, 4041, 100]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-8",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 577.0, 411.0, 242.0, 33.0 ],
					"text" : "/list : [12, 112, 93, \"three\", 100]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-3",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 139.0, 226.0, 254.0, 36.0 ],
					"text" : "Individual values of lists may be accessed using double-square-bracket notation:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-100",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 139.0, 359.0, 156.0, 31.0 ],
					"text" : "/second = /list[[ 1 ]]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-101",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 139.0, 313.0, 232.0, 23.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 108, 105, 115, 116, 0, 0, 0, 44, 105, 105, 105, 105, 105, 0, 0, 0, 0, 0, 12, 0, 0, 0, 112, 0, 0, 0, 93, 0, 0, 15, -55, 0, 0, 0, 100 ],
					"saved_bundle_length" : 56,
					"text" : "/list : [12, 112, 93, 4041, 100]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-102",
					"linecount" : 2,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 139.0, 411.0, 229.0, 46.0 ],
					"text" : "/list : [12, 112, 93, 4041, 100],\n/second : 112"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 11.0, 162.0, 941.0, 21.0 ],
					"text" : "In this tutorial, we will look at some of the things [o.expr.codebox] can do to manipulate the contents and structure of lists.",
					"textjustification" : 1
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
					"id" : "obj-13",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "advance.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -1.0, -2.0 ],
					"patching_rect" : [ 766.0, 5929.75, 195.0, 28.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-146",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 711.0, 5942.0, 125.0, 21.0 ],
					"textjustification" : 1
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
					"fontface" : 2,
					"fontsize" : 12.0,
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
					"patching_rect" : [ 766.0, 12.0, 195.0, 28.0 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
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
					"destination" : [ "obj-111", 0 ],
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
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
					"destination" : [ "obj-118", 0 ],
					"source" : [ "obj-117", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 0 ],
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"source" : [ "obj-127", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"source" : [ "obj-134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 0 ],
					"source" : [ "obj-135", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 0 ],
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 0 ],
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 1 ],
					"midpoints" : [ 139.5, 5170.0, 389.0, 5170.0, 389.0, 4999.0, 159.5, 4999.0 ],
					"source" : [ "obj-139", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"source" : [ "obj-145", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 1 ],
					"midpoints" : [ 199.5, 5700.0, 519.0, 5700.0, 519.0, 5530.0, 219.5, 5530.0 ],
					"source" : [ "obj-145", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 0 ],
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"source" : [ "obj-148", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 0 ],
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"source" : [ "obj-150", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 1 ],
					"source" : [ "obj-156", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
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
					"destination" : [ "obj-35", 0 ],
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
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"order" : 2,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"order" : 1,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"order" : 0,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"order" : 1,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"order" : 0,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"source" : [ "obj-70", 0 ]
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
					"destination" : [ "obj-81", 0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"source" : [ "obj-87", 0 ]
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
					"destination" : [ "obj-93", 0 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"source" : [ "obj-98", 0 ]
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
				"name" : "o.compose.mxo",
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
				"name" : "o.union.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
