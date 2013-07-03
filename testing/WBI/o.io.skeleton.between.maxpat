{
	"boxes" : [ 		{
			"box" : 			{
				"maxclass" : "comment",
				"text" : "What does I2norm does?",
				"patching_rect" : [ 123.0, 143.0, 150.0, 20.0 ],
				"id" : "obj-7",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 0,
				"frgb" : 0.0,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "comment",
				"text" : "What does bound do?",
				"patching_rect" : [ 449.0, 36.0, 150.0, 20.0 ],
				"id" : "obj-5",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 0,
				"frgb" : 0.0,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "inlet",
				"patching_rect" : [ 38.0, 31.0, 25.0, 25.0 ],
				"outlettype" : [ "" ],
				"id" : "obj-6",
				"numinlets" : 0,
				"numoutlets" : 1,
				"comment" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "outlet",
				"patching_rect" : [ 38.0, 150.0, 25.0, 25.0 ],
				"id" : "obj-4",
				"numinlets" : 1,
				"numoutlets" : 0,
				"comment" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "o.expr #3/value = l2norm( #1/position/value - #2/position/value )\\; #3/quality = #1/quality * #2/quality; #3/space = \"R1\"; #3/units = \"mm\"",
				"patching_rect" : [ 38.0, 101.0, 1129.0, 20.0 ],
				"outlettype" : [ "FullPacket" ],
				"id" : "obj-3",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 1,
				"fontname" : "Arial"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "o.if bound( #1/position/value ) && bound( #2/position/value )",
				"patching_rect" : [ 38.0, 69.0, 1144.0, 20.0 ],
				"outlettype" : [ "FullPacket", "FullPacket" ],
				"id" : "obj-2",
				"fontsize" : 12.0,
				"numinlets" : 1,
				"numoutlets" : 2,
				"fontname" : "Arial"
			}

		}
 ],
	"lines" : [ 		{
			"patchline" : 			{
				"source" : [ "obj-6", 0 ],
				"destination" : [ "obj-2", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-3", 0 ],
				"destination" : [ "obj-4", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-2", 1 ],
				"destination" : [ "obj-4", 0 ],
				"hidden" : 0,
				"midpoints" : [ 1172.5, 136.0, 47.5, 136.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-2", 0 ],
				"destination" : [ "obj-3", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
 ],
	"appversion" : 	{
		"major" : 6,
		"minor" : 0,
		"revision" : 8
	}

}
