{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 4,
			"architecture" : "x64"
		}
,
		"rect" : [ -1364.0, 82.0, 1275.0, 885.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 8.0, 8.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 880.0, 736.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 787.0, 728.0, 44.0, 20.0 ],
					"text" : "o.print"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 787.0, 696.0, 93.0, 20.0 ],
					"text" : "o.if bound(/self)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-11",
					"linecount" : 6,
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 752.0, 208.0, 508.0, 87.0 ],
					"text" : "/AA7C6866-3995-4D41-B14E-AF957F87E3D6/characteristic/peripheral/name/iRig-BlueBoard/characteristic/6b872736-f93e-4176-b3b1-143636cabb01 \"blob(0,\" \"0,\" \"0,\" \"0)\"\n/self \"/AA7C6866-3995-4D41-B14E-AF957F87E3D6\"\n/AA7C6866-3995-4D41-B14E-AF957F87E3D6/peripheral/name \"iRig BlueBoard\"\n/AA7C6866-3995-4D41-B14E-AF957F87E3D6/characteristic/uuid \"6b872736-f93e-4176-b3b1-143636cabb01\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 338.0, 688.0, 114.0, 20.0 ],
					"text" : "o.expr /notify = true"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"linecount" : 19,
					"maxclass" : "newobj",
					"numinlets" : 10,
					"numoutlets" : 10,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "FullPacket" ],
					"patching_rect" : [ 338.0, 392.0, 596.0, 261.0 ],
					"text" : "o.select /discover/characteristic/peripheral/name/iRig-BlueBoard/service/uuid/6b872736-f93e-4176-b3b1-143636cabb00/characteristic/uuid/6b872736-f93e-4176-b3b1-143636cabb01 /discover/characteristic/peripheral/name/iRig-BlueBoard/service/uuid/6b872736-f93e-4176-b3b1-143636cabb00/characteristic/uuid/6b872736-f93e-4176-b3b1-143636cabb02 /discover/characteristic/peripheral/name/iRig-BlueBoard/service/uuid/6b872736-f93e-4176-b3b1-143636cabb00/characteristic/uuid/6b872736-f93e-4176-b3b1-143636cabb03 /discover/characteristic/peripheral/name/iRig-BlueBoard/service/uuid/6b872736-f93e-4176-b3b1-143636cabb00/characteristic/uuid/6b872736-f93e-4176-b3b1-143636cabb04 /discover/characteristic/peripheral/name/iRig-BlueBoard/service/uuid/6b872736-f93e-4176-b3b1-143636cabb00/characteristic/uuid/6b872736-f93e-4176-b3b1-143636cabb05 /discover/characteristic/peripheral/name/iRig-BlueBoard/service/uuid/6b872736-f93e-4176-b3b1-143636cabb00/characteristic/uuid/6b872736-f93e-4176-b3b1-143636cabb06 /discover/characteristic/peripheral/name/iRig-BlueBoard/service/uuid/6b872736-f93e-4176-b3b1-143636cabb00/characteristic/uuid/6b872736-f93e-4176-b3b1-143636cabb07 /discover/characteristic/peripheral/name/iRig-BlueBoard/service/uuid/6b872736-f93e-4176-b3b1-143636cabb00/characteristic/uuid/6b872736-f93e-4176-b3b1-143636cabb08 /discover/characteristic/peripheral/name/iRig-BlueBoard/service/uuid/6b872736-f93e-4176-b3b1-143636cabb00/characteristic/uuid/6b872736-f93e-4176-b3b1-143636cabb09"
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
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 144.0, 320.0, 210.0, 20.0 ],
					"text" : "o.expr /discover/characteristics = true"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-19",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 144.0, 272.0, 570.0, 33.0 ],
					"text" : "o.select /discover/service/peripheral/name/iRig-BlueBoard/service/uuid/6b872736-f93e-4176-b3b1-143636cabb00"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 144.0, 152.0, 177.0, 20.0 ],
					"text" : "o.expr /discover/services = true"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "FullPacket" ],
					"patching_rect" : [ 144.0, 112.0, 752.0, 20.0 ],
					"text" : "o.select /discover/peripheral/name/iRig-BlueBoard /discover/service/peripheral/name/iRig-BlueBoard/service/uuid/1800"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 144.0, 80.0, 87.0, 20.0 ],
					"text" : "nothing o.print"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 144.0, 32.0, 92.0, 20.0 ],
					"text" : "o.io.bluetoothle"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 62.0, 421.0, 4.0, 348.0, 114.0, 95.0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 153.5, 199.0, 111.0, 199.0, 68.0, 98.0, 136.0, 13.0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 347.5, 705.0, 118.0, 450.0, 94.0, 282.0, 57.0, 68.0, 153.5, 8.0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "nothing.maxpat",
				"bootpath" : "/Users/john/Development/CNMAT/CNMAT/CNMAT-MMJ-Depot/modules/basic_programming",
				"patcherrelativepath" : "../../CNMAT-MMJ-Depot/modules/basic_programming",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "uc_license.maxpat",
				"bootpath" : "/Users/john/Development/CNMAT/CNMAT/CNMAT-MMJ-Depot/modules/depot_support",
				"patcherrelativepath" : "../../CNMAT-MMJ-Depot/modules/depot_support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cnmat_blue.gif",
				"bootpath" : "/Users/john/Development/CNMAT/CNMAT/CNMAT-MMJ-Depot/modules/depot_support",
				"patcherrelativepath" : "../../CNMAT-MMJ-Depot/modules/depot_support",
				"type" : "GIFf",
				"implicit" : 1
			}
, 			{
				"name" : "o.io.bluetoothle.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.select.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.message.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.if.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.print.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
