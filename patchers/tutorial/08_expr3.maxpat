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
		"rect" : [ 41.0, 92.0, 1000.0, 647.0 ],
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
					"id" : "obj-83",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 519.0, 4403.0, 297.0, 33.0 ],
					"text" : "Here is one final example illustrating the div operator.\nCan you figure out what is happening?"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-82",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.0, 3965.0, 348.0, 127.0 ],
					"text" : "rreduce() is precisely the opposite.  It will reduce a list of values starting from the right side of the list and working to the left.  \n\nIn the example below, the operation is again subtraction.  \n\nWe start with the first two values on the right:\n3 is subtracted from 4, resulting in 1.\n2 is then subtracted from 1, resulting in -1.  \n1 is then subtracted from -1, resulting in -2 (the final result)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-81",
					"linecount" : 10,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 61.0, 3957.5, 367.0, 141.0 ],
					"text" : "lreduce() will reduce a list of values starting from the left side of the list and working to the right.  The accumulated result is calculated until there is nothing remaining in the list.\n\nIn the example below, the operation is defined as subtraction.  \n\nWe start with the first two values on the left:\n2 is subtracted from 1, resulting in -1.\n-3 is then subtracted from -1, resulting in -4.  \n4 is then subtracted from -4, resulting in -8 (the final result)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-80",
					"linecount" : 8,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 258.0, 3778.0, 495.0, 123.0 ],
					"text" : "map() and apply() are higher order functions.  \nLet's look at two other higher order functions included in the expression language, specifically lreduce(), rreduce().\n\nBoth functions require an operation to be specified as the first argument.  \nThis operation will most commonly be one of the following:  sub (subtraction), add (addition), div (division), or mul (multiplication).\nThat being said, we can reduce() a list with any operation which requires two args.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-14",
					"linecount" : 17,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 93.0, 3435.0, 340.0, 253.0 ],
					"text" : "Let's try taking this same function and wrapping it with our own name.  We'll call the function /f2c in this example, since we're converting fahrenheit to celsius.  \n\nThe first step is assigning a string to the address \"/f2c\".\nThis string is literally everything we would do with the function if we called it in-place, except one detail:  We surround it in quotes.  You can think of this as a function definition, although technically it's only a string until it gets applied.\n\nWe apply this function by using the address in-place – as in /f2c(<our input>) – which calls apply() behind the scenes.  \n\nIn this case, we'll use the input of /c that we pass in from a float in Max."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-7",
					"linecount" : 17,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 508.0, 3029.0, 340.0, 253.0 ],
					"text" : "Let's try taking this same function and wrapping it with our own name.  We'll call the function /f2c in this example, since we're converting fahrenheit to celsius.  \n\nThe first step is assigning a string to the address \"/f2c\".\nThis string is literally everything we would do with the function if we called it in-place, except one detail:  We surround it in quotes.  You can think of this as a function definition, although technically it's only a string until it gets applied.\n\nWe apply this function by using the address in-place – as in /f2c(<our input>) – which calls apply() behind the scenes.  \n\nIn this case, we'll use the input of /c that we pass in from a float in Max."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-52",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 500.0, 3454.0, 403.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 99, 0, 0, 44, 105, 0, 0, 0, 0, 0, 40, 0, 0, 0, 52, 47, 109, 121, 102, 117, 110, 99, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 99, 93, 44, 32, 47, 102, 32, 61, 32, 40, 57, 46, 48, 32, 47, 32, 53, 41, 32, 42, 32, 99, 32, 43, 32, 51, 50, 41, 0, 0, 0, 0 ],
					"saved_bundle_length" : 88,
					"text" : "/c : 40,\n/myfunc : \"lambda([c], /f = (9.0 / 5) * c + 32)\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-35",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 500.0, 3581.0, 376.0, 34.0 ]
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
					"patching_rect" : [ 500.0, 3518.0, 90.0, 32.0 ],
					"text" : "/myfunc(/c)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-27",
					"linecount" : 16,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 69.0, 2663.0, 367.0, 239.0 ],
					"text" : "aseq() in mapping:\n\nNote the use of aseq() here to generate a list of indices to be used in function mapping.\n\nThe first calculation is done with index 0 from the arithmetic sequence we generate, which is zero (0).\nIt translates to:  /c[[0]] = (5.0 / 9) * (/f[[0]] - 32)\nThe value from /f that is used is 100\n\nThe second calculation is done with index 1 from the arithmetic sequence, which is one (1).\nIt translates to: /c[[1]] = (5.0 / 9) * (/f[[1]] - 32)\nthe value from /f that is used is 92.4\n\n...and so on..."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-1",
					"linecount" : 16,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 69.0, 2409.0, 374.0, 239.0 ],
					"text" : "Let's modify this same function to accept and operate on list of values.  So this time, we'll call map() instead of apply()\n\nWe'll call nfill() to generate a list that is the same size as /f, and similarly to the example above, we'll call map() inplace rather than assigning it to anything.  This form may read more like a traditional for() loop.\n\nJust to review, when we call map, we do so as:\n\nmap( function( [arg1, arg2, arg3, ...], function-expression ), mapArg1, mapArg2\n\nGaze deeply into the parentheses, brackets, and commas...  and recognize your future.  You are now beholden to the power of map()."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-64",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 501.0, 2465.0, 195.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 102, 0, 0, 44, 105, 100, 105, 105, 0, 0, 0, 0, 0, 0, 100, 64, 87, 25, -103, -103, -103, -103, -102, 0, 0, 0, 68, 0, 0, 0, 99 ],
					"saved_bundle_length" : 52,
					"text" : "/f : [100, 92.4, 68, 99]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-65",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 501.0, 2711.0, 330.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-67",
					"linecount" : 7,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 501.0, 2546.0, 244.0, 106.0 ],
					"text" : "/c = nfill(length(/f), 0),\nmap(\n  lambda([f, i], \n    /c[[i]] = (5.0 / 9) * (f - 32)\n  ), \n  /f, aseq(0, length(/f) - 1)\n)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-75",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 501.0, 2140.0, 402.0, 108.0 ],
					"text" : "Here's slightly different example.  \n\nIn this case we'll calculate the celsius value from a value input in fahrenheit.  \n\nNotice that we don't have to use the return value if we perform assignment from within the function body."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 12.0,
					"id" : "obj-74",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 723.0, 1823.5, 214.0, 47.0 ],
					"text" : "Since the bundle is unchanged so far, let's assign the result, and watch for differences..."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubblepoint" : 0.69,
					"bubbleside" : 3,
					"bubbletextmargin" : 15,
					"bubbleusescolors" : 1,
					"fontsize" : 13.0,
					"id" : "obj-73",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 69.0, 1846.5, 345.0, 132.0 ],
					"text" : "Okay, this makes more sense.\nNow we can see that the result of the function application was bound to an address \"/result\", and that the comparison of the two values (\"/sphere\" and \"/cylinder\") is false.  \n\nWhich is of course what we would expect."
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
					"patching_rect" : [ 458.0, 1917.5, 390.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-63",
					"linecount" : 5,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 458.0, 1805.5, 234.0, 86.0 ],
					"text" : "/result = apply(\n  lambda([a, b], \n    a == b\n  ), /shapes[[0]], /shapes[[1]]\n)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 12.0,
					"id" : "obj-62",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 723.0, 1554.0, 227.0, 127.0 ],
					"text" : "Click the [o.compose] box above.  \nWhat went wrong?\n\nOur function was applied, but we don't see anything new in the bundle.  We did not assign it to anything.  \n\nUntil we store the result somewhere, we will not see it appear in the bundle."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-54",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 458.0, 1710.5, 390.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-38",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 458.0, 1483.5, 381.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 47, 115, 104, 97, 112, 101, 115, 0, 44, 115, 115, 115, 0, 0, 0, 0, 47, 115, 112, 104, 101, 114, 101, 0, 47, 99, 121, 108, 105, 110, 100, 101, 114, 0, 0, 0, 47, 115, 113, 117, 97, 114, 101, 0, 0, 0, 0, 52, 47, 112, 114, 111, 112, 101, 114, 116, 105, 101, 115, 0, 44, 115, 115, 115, 0, 0, 0, 0, 114, 111, 117, 110, 100, 0, 0, 0, 116, 117, 98, 117, 108, 97, 114, 0, 112, 114, 111, 112, 111, 114, 116, 105, 111, 110, 97, 108, 0, 0, 0, 0 ],
					"saved_bundle_length" : 120,
					"text" : "/shapes : [\"/sphere\", \"/cylinder\", \"/square\"],\n/properties : [\"round\", \"tubular\", \"proportional\"]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-44",
					"linecount" : 5,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 458.0, 1574.5, 234.0, 86.0 ],
					"text" : "apply(\n  lambda([a, b], \n    a == b\n  ), /shapes[[0]], /shapes[[1]]\n)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-36",
					"linecount" : 21,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 49.0, 1463.0, 371.0, 311.0 ],
					"text" : "Let's make our own function for apply(), and apply it.\nThere is more than one way to type this, but let's start by examining a special function called \"lambda\".\n\nlambda() defines an anonymous function, a function written inplace that has no function definition.  It's the way in ODOT to abstract some expressions from the rest of our code, without giving it a name.  lambda() takes arguments, similarly to all other functions, but we define its arguments with brackets.  The values inside of these brackets do not require leading slashes as other addresses in ODOT.  These values are used inside of the function and are local to it.\n\nBTW:  We'll start indenting expressions in the codebox here, since it can be easier to read and debug, but note that you don't have to.  \nThe syntax to the right could be written as...\n\napply(lambda([a, b], a == b), /shapes, /properties)\n\n...and is identical."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-26",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 280.0, 1310.0, 390.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-25",
					"linecount" : 17,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 338.0, 1005.0, 506.0, 253.0 ],
					"text" : "Let's try something similar.\nThis time, instead of assigning a single property, let's assign all of them in one go.\n\nTo do this, we will call map().  Note that three things changed:\n\n1. we pass in the entire list \"/shapes\"\n2. we pass in the entire list \"/properties\"\n3. we change the name \"apply\" to \"map\"\n\nmap() takes three or more arguments, similarly to apply().  \nThe difference is that it expects the arguments you pass to be lists, and that the lists have identical length.  \nmap() will go down the list of items for each argument slot and do the function application you have specified, each item at a time.  If you are familiar with a for() loop in other languages, you'll notice similarities.\n\nClick the compose box to see a result below."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-21",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 280.0, 873.0, 381.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 47, 115, 104, 97, 112, 101, 115, 0, 44, 115, 115, 115, 0, 0, 0, 0, 47, 115, 112, 104, 101, 114, 101, 0, 47, 99, 121, 108, 105, 110, 100, 101, 114, 0, 0, 0, 47, 115, 113, 117, 97, 114, 101, 0, 0, 0, 0, 52, 47, 112, 114, 111, 112, 101, 114, 116, 105, 101, 115, 0, 44, 115, 115, 115, 0, 0, 0, 0, 114, 111, 117, 110, 100, 0, 0, 0, 116, 117, 98, 117, 108, 97, 114, 0, 112, 114, 111, 112, 111, 114, 116, 105, 111, 110, 97, 108, 0, 0, 0, 0 ],
					"saved_bundle_length" : 120,
					"text" : "/shapes : [\"/sphere\", \"/cylinder\", \"/square\"],\n/properties : [\"round\", \"tubular\", \"proportional\"]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 280.0, 934.0, 248.0, 32.0 ],
					"text" : "map(assign, /shapes, /properties)"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbletextmargin" : 15,
					"bubbleusescolors" : 1,
					"fontsize" : 12.0,
					"id" : "obj-19",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 579.0, 674.5, 331.0, 84.0 ],
					"text" : "Here is the result of our application:  \n\n1. An address with the name \"/sphere\" was generated\n2. The value \"round\" was bound to it"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-16",
					"linecount" : 17,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 270.0, 345.0, 671.0, 234.0 ],
					"text" : "Take a look at our compose box above.  There are two lists - one of shapes, and one of properties.  Let's generate a new address to represent a link between the shape of a sphere and the property \"round\".\n\nWe'll call the apply() function for this, which performs function application (it applies a function with arguments that you pass it).\n\napply() takes three or more arguments:\n\n1. the name of the function to use for application\n2. a list of one or more elements that represent first argument to the function\n3. a list of one or more elements that represent the second argument to the function\n4. etc. ... \n\nIn our particular case, the function we're interested in is named \"assign\", and it takes two arguments.\n\n1. a list of one or more strings, representing the address name that will be generated\n2. a list of one or more values (any data type), representing the data to be bound to the aforementioned addresses"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-11",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 221.0, 236.0, 381.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 47, 115, 104, 97, 112, 101, 115, 0, 44, 115, 115, 115, 0, 0, 0, 0, 47, 115, 112, 104, 101, 114, 101, 0, 47, 99, 121, 108, 105, 110, 100, 101, 114, 0, 0, 0, 47, 115, 113, 117, 97, 114, 101, 0, 0, 0, 0, 52, 47, 112, 114, 111, 112, 101, 114, 116, 105, 101, 115, 0, 44, 115, 115, 115, 0, 0, 0, 0, 114, 111, 117, 110, 100, 0, 0, 0, 116, 117, 98, 117, 108, 97, 114, 0, 112, 114, 111, 112, 111, 114, 116, 105, 111, 110, 97, 108, 0, 0, 0, 0 ],
					"saved_bundle_length" : 120,
					"text" : "/shapes : [\"/sphere\", \"/cylinder\", \"/square\"],\n/properties : [\"round\", \"tubular\", \"proportional\"]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 221.0, 287.0, 335.0, 32.0 ],
					"text" : "apply(assign, /shapes[[0]], /properties[[0]])"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-8",
					"linecount" : 4,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 221.0, 679.0, 345.0, 75.0 ],
					"text" : "/shapes : [\"/sphere\", \"/cylinder\", \"/square\"],\n/properties : [\"round\", \"tubular\", \"proportional\"],\n/sphere : \"round\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 150.0, 815.0, 38.0 ],
					"text" : "Let's take some time to look at function application and function mapping in ODOT.  \nWe'll cover the basics of how to apply and map functions, as well as details on what the implications of these practices are.",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ 8 ],
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
					"offset" : [ -4.0, -5.0 ],
					"patching_rect" : [ 18.0, 9.0, 645.0, 91.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubblepoint" : 0.16,
					"bubbleside" : 2,
					"bubbletextmargin" : 10,
					"bubbleusescolors" : 1,
					"fontsize" : 11.0,
					"id" : "obj-46",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 269.0, 2982.0, 125.0, 60.0 ],
					"text" : "pre-defining a function, then using it"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-47",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 164.0, 2988.0, 86.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 164.0, 3025.0, 65.0, 24.0 ],
					"text" : "o.pack /c"
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
					"patching_rect" : [ 164.0, 3194.0, 229.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-50",
					"linecount" : 4,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 164.0, 3066.0, 192.0, 69.0 ],
					"text" : "/f2c = \"lambda([c], \n    /f = (9.0 / 5) * c + 32\n  )\",\n/f2c(/c)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-68",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 183.0, 2062.0, 112.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 183.0, 2099.0, 58.0, 22.0 ],
					"text" : "o.pack /f"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-70",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 183.0, 2279.0, 147.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-71",
					"linecount" : 5,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 183.0, 2151.0, 234.0, 86.0 ],
					"text" : "apply(\n  lambda([f], \n    /c = (5.0 / 9.) * (f - 32.)\n  ), /f\n)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.0, 4448.0, 164.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.0, 4373.0, 167.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 118, 101, 99, 0, 0, 0, 0, 44, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 0, 2 ],
					"saved_bundle_length" : 52,
					"text" : "/vec : [20, 2, 2, 2]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-23",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 270.0, 4403.0, 214.0, 32.0 ],
					"text" : "/result = lreduce(div, /vec)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-33",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 359.0, 4198.5, 56.0, 43.0 ],
					"text" : "1 - 2 = -1\n-1 - 3 = -4\n-4 - 4 = -8",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-37",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 813.0, 4198.5, 56.0, 43.0 ],
					"text" : "4 - 3 = 1\n1 - 2 = -1\n-1 - 1 = -2",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-39",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 582.0, 4249.0, 164.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-40",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 582.0, 4149.0, 159.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 118, 101, 99, 0, 0, 0, 0, 44, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 4 ],
					"saved_bundle_length" : 52,
					"text" : "/vec : [1, 2, 3, 4]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-41",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 582.0, 4204.0, 214.0, 32.0 ],
					"text" : "/result = rreduce(sub, /vec)"
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
					"patching_rect" : [ 128.0, 4249.0, 164.0, 34.0 ]
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
					"patching_rect" : [ 128.0, 4149.0, 159.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 118, 101, 99, 0, 0, 0, 0, 44, 105, 105, 105, 105, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 4 ],
					"saved_bundle_length" : 52,
					"text" : "/vec : [1, 2, 3, 4]"
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
					"patching_rect" : [ 128.0, 4204.0, 214.0, 32.0 ],
					"text" : "/result = lreduce(sub, /vec)"
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
					"patching_rect" : [ 539.0, 5288.0, 279.0, 34.0 ]
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
					"patching_rect" : [ 539.0, 5213.0, 250.0, 32.0 ],
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
					"patching_rect" : [ 539.0, 5168.0, 275.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 115, 116, 114, 105, 110, 103, 0, 44, 115, 115, 115, 115, 0, 0, 0, 97, 0, 0, 0, 98, 99, 100, 0, 101, 0, 0, 0, 100, 111, 103, 115, 0, 0, 0, 0 ],
					"saved_bundle_length" : 56,
					"text" : "/string : [\"a\", \"bcd\", \"e\", \"dogs\"]"
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
					"patching_rect" : [ 134.0, 5166.5, 231.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 101, 108, 101, 109, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 3, 0, 0, 0, 20, 47, 108, 105, 115, 116, 0, 0, 0, 44, 115, 0, 0, 102, 111, 111, 98, 97, 114, 0, 0 ],
					"saved_bundle_length" : 60,
					"text" : "/elem : 3,\n/list : \"foobar\""
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
					"patching_rect" : [ 134.0, 5213.0, 330.0, 46.0 ],
					"text" : "/list/filtered = split(\"\", /list)[[/elem]],\n/list/elem/michelle = split(\"\", /list)[[2]]"
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
					"patching_rect" : [ 134.0, 5273.0, 265.0, 34.0 ]
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
					"patching_rect" : [ 344.0, 5063.0, 229.0, 34.0 ]
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
					"patching_rect" : [ 344.0, 4943.0, 224.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 109, 121, 115, 116, 114, 105, 110, 103, 0, 0, 0, 44, 115, 0, 0, 47, 97, 115, 100, 102, 47, 102, 100, 115, 97, 47, 100, 115, 97, 0, 0 ],
					"saved_bundle_length" : 52,
					"text" : "/mystring : \"/asdf/fdsa/dsa\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 344.0, 4988.0, 214.0, 32.0 ],
					"text" : "/res = split('/', /mystring)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 13.0,
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 598.0, 89.0, 21.0 ],
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
					"args" : [ 8 ],
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
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-11", 0 ]
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
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-18", 0 ]
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
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-24", 0 ]
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
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-38", 0 ]
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
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-47", 0 ]
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
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-51", 0 ]
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
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-68", 0 ]
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
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-71", 0 ]
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
				"bootpath" : "~/Documents/Max 8/Packages/ODOT-tutorials/patchers/tutorial",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "filelist.txt",
				"bootpath" : "~/Documents/Max 8/Packages/ODOT-tutorials/patchers/tutorial",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "close_parent.js",
				"bootpath" : "~/Documents/Max 8/Packages/ODOT-tutorials/patchers/tutorial",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "o.t.banner.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/ODOT-tutorials/patchers/tutorial",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
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
				"name" : "o.display.mxo",
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
