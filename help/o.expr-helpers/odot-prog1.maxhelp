{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 56.0, 96.0, 612.0, 545.0 ],
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
		"subpatcher_template" : "Default Max 7",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"bubble" : 1,
					"bubblepoint" : 0.21,
					"bubbleside" : 0,
					"bubbleusescolors" : 1,
					"id" : "obj-11",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 36.5, 180.5, 207.0, 146.0 ],
					"presentation_linecount" : 11,
					"text" : "At first glance, you might think that /y would be 11 since that is literally what happens in the second expression slot.  \n\nIn fact, /y is equal to the result of the FIRST expression, rather than what you might think from glancing at the code.  "
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubblepoint" : 0.32,
					"bubbleusescolors" : 1,
					"fontsize" : 11.0,
					"id" : "obj-10",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 117.5, 401.5, 122.0, 84.0 ],
					"text" : "post fix increment operator (look at the max window for what this syntacitc sugar actually evaluates to)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 36.5, 382.5, 48.0, 21.0 ],
					"text" : "post-ast"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-3",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 36.5, 417.5, 70.0, 31.0 ],
					"text" : "/x = /x++"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 79.5, 31.5, 103.0, 20.0 ],
					"text" : "post-fix operation"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-2",
					"linecount" : 2,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 36.5, 120.5, 70.0, 45.0 ],
					"text" : "/x : 10,\n/y : 10"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 11.0,
					"id" : "obj-9",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 36.5, 57.5, 189.0, 43.0 ],
					"presentation_linecount" : 2,
					"text" : "/x = 10,\n/y = prog1(/x, /y = /x + 1)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"linecount" : 23,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 274.0, 155.5, 310.0, 315.0 ],
					"presentation_linecount" : 23,
					"text" : "prog1() demonstrates what is referred to in LISP as a \"side effect\":\n\nIn functional programming, anything that is outside of the scope of a normal \"pure\" function (mathematical), might be considered a side effect.  \n\nA mathematical function maps the arguments to a return value, whereas a side effect might have some other influence over that answer, or produce an aspect that is not direclty related to the return value.  Normally mathematical functions are time independent - that is, they only depend on the arguments they require.\n\nRegardless, every time you call prog1() with an expression in the 2nd argument slot, something happens.  Maybe something is written to a file, or gets sent over a network to be stored to a database, or printed to the screen.\nA side effect of function is not time independent - it might require that you wait for something or check on it separately from the return value, as it's not explicitly represented in the return value."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 274.0, 19.5, 52.0, 20.0 ],
					"text" : "prog1()"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 274.0, 50.5, 310.0, 87.0 ],
					"text" : "Perfrom a series of comma separated expressions and return the value of the first one.\n\narguments:\n\n<variable>:  comma separated expressions to evaluate"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
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
