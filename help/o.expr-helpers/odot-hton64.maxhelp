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
		"rect" : [ 70.0, 97.0, 975.0, 571.0 ],
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
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 19.0, 144.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-4",
					"linecount" : 11,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 390.0, 924.0, 161.0 ],
					"text" : "/hexdigits : [\"0\", \"1\", \"2\", \"3\", \"4\", \"5\", \"6\", \"7\", \"8\", \"9\", \"a\", \"b\", \"c\", \"d\", \"e\", \"f\"],\n/int2bytes : \"lambda(i, [bitand(i, 0xFF00000000000000) / 0x100000000000000, bitand(i, 0xFF000000000000) / 0x1000000000000, bitand(i, 0xFF0000000000) / 0x10000000000, bitand(i, 0xFF00000000) / 0x100000000, bitand(i, 0xFF000000) / 0x1000000, bitand(i, 0xFF0000) / 0x10000, bitand(i, 0xFF00) / 0x100, bitand(i, 0xFF)])\",\n/byte2hex : \"lambda(b, /hexdigits[[bitand(b, 240) / 16]] + /hexdigits[[bitand(b, 15)]])\",\n/int2hex : \"lambda(i, \\\"0x\\\" + lreduce(add, map(/byte2hex, /int2bytes(i))))\",\n/num : 81985529216486895,\n/n : 17279655951921914625,\n/h : 81985529216486895,\n/bytes/h : \"0x0123456789abcdef\",\n/bytes/n : \"0xefcdab8967452301\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-5",
					"linecount" : 13,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 19.0, 184.5, 924.0, 185.0 ],
					"text" : "# some functions to display an int as a hexadecimal string\n/hexdigits = [\"0\", \"1\", \"2\", \"3\", \"4\", \"5\", \"6\", \"7\", \"8\", \"9\", \"a\", \"b\", \"c\", \"d\", \"e\", \"f\"],\n/int2bytes = \"lambda(i, [bitand(i, 0xFF00000000000000) / 0x100000000000000, bitand(i, 0xFF000000000000) / 0x1000000000000, bitand(i, 0xFF0000000000) / 0x10000000000, bitand(i, 0xFF00000000) / 0x100000000, bitand(i, 0xFF000000) / 0x1000000, bitand(i, 0xFF0000) / 0x10000, bitand(i, 0xFF00) / 0x100, bitand(i, 0xFF)])\",\n/byte2hex = \"lambda(b, /hexdigits[[bitand(b, 240) / 16]] + /hexdigits[[bitand(b, 15)]])\",\n/int2hex = \"lambda(i, \\\"0x\\\" + lreduce(add, map(/byte2hex, /int2bytes(i))))\",\n\n/num = 0x0123456789ABCDEF, # hexadecimal representation of an int\n/n = ntoh64(/num), # swap from network order to host order\n/h = hton64(/n),   # swap from host order to network order\n/bytes/h = /int2hex(/h), # display the host ordered int in hexadecimal\n/bytes/n = /int2hex(/n)  # display the network ordered int in hexadecimal"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.0, 16.0, 110.0, 20.0 ],
					"text" : "hton64(), ntoh64()"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.0, 51.0, 669.0, 74.0 ],
					"text" : "Host to network and network to host byte swapping. \n\nhton64 swaps a 64-bit integer from host to network order if host and network order are different, and does nothing otherwise.\n\nntoh64 swaps a 64-bit integer from network to host order, if host and network order are different, and does nothing otherwise"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-5", 0 ]
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
