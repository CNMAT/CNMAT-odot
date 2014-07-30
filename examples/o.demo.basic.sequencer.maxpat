{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 6,
			"architecture" : "x64"
		}
,
		"rect" : [ 58.0, 49.0, 1211.0, 782.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Helvetica Neue",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
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
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-14",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 210.0, 711.0, 150.0, 34.0 ],
					"text" : "Basic Sequencer\nIlya Adrian 2014"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 785.5, 87.0, 219.0, 33.0 ],
					"text" : "eval(/command), delete(/command)",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-42",
					"linecount" : 265,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 629.0, 403.5, 280.0, 3723.0 ],
					"text" : "/recording : false,\n/record/end/time : 2014-07-30T20:15:44.154478Z,\n/event : {\n\t/event/value : 0,\n\t/event/time : 2014-07-30T20:15:42.656941Z\n},\n/record/start/time : 2014-07-30T20:15:39.105005Z,\n/sequence : [{\n\t/event/value : 22,\n\t/event/time : 2014-07-30T20:15:39.552920Z\n}, {\n\t/event/value : 22,\n\t/event/time : 2014-07-30T20:15:39.609206Z\n}, {\n\t/event/value : 23,\n\t/event/time : 2014-07-30T20:15:39.618994Z\n}, {\n\t/event/value : 26,\n\t/event/time : 2014-07-30T20:15:39.634313Z\n}, {\n\t/event/value : 28,\n\t/event/time : 2014-07-30T20:15:39.651361Z\n}, {\n\t/event/value : 30,\n\t/event/time : 2014-07-30T20:15:39.675600Z\n}, {\n\t/event/value : 33,\n\t/event/time : 2014-07-30T20:15:39.692917Z\n}, {\n\t/event/value : 34,\n\t/event/time : 2014-07-30T20:15:39.872814Z\n}, {\n\t/event/value : 33,\n\t/event/time : 2014-07-30T20:15:39.961771Z\n}, {\n\t/event/value : 25,\n\t/event/time : 2014-07-30T20:15:39.982419Z\n}, {\n\t/event/value : 15,\n\t/event/time : 2014-07-30T20:15:40.010981Z\n}, {\n\t/event/value : 0,\n\t/event/time : 2014-07-30T20:15:40.080129Z\n}, {\n\t/event/value : 0,\n\t/event/time : 2014-07-30T20:15:40.097176Z\n}, {\n\t/event/value : 9,\n\t/event/time : 2014-07-30T20:15:40.097898Z\n}, {\n\t/event/value : 23,\n\t/event/time : 2014-07-30T20:15:40.154129Z\n}, {\n\t/event/value : 57,\n\t/event/time : 2014-07-30T20:15:40.193961Z\n}, {\n\t/event/value : 63,\n\t/event/time : 2014-07-30T20:15:40.238421Z\n}, {\n\t/event/value : 58,\n\t/event/time : 2014-07-30T20:15:40.258257Z\n}, {\n\t/event/value : 54,\n\t/event/time : 2014-07-30T20:15:40.302896Z\n}, {\n\t/event/value : 50,\n\t/event/time : 2014-07-30T20:15:40.356130Z\n}, {\n\t/event/value : 82,\n\t/event/time : 2014-07-30T20:15:40.362927Z\n}, {\n\t/event/value : 92,\n\t/event/time : 2014-07-30T20:15:40.372155Z\n}, {\n\t/event/value : 93,\n\t/event/time : 2014-07-30T20:15:40.393869Z\n}, {\n\t/event/value : 78,\n\t/event/time : 2014-07-30T20:15:40.466940Z\n}, {\n\t/event/value : 52,\n\t/event/time : 2014-07-30T20:15:40.487044Z\n}, {\n\t/event/value : 48,\n\t/event/time : 2014-07-30T20:15:40.487488Z\n}, {\n\t/event/value : 47,\n\t/event/time : 2014-07-30T20:15:40.496741Z\n}, {\n\t/event/value : 51,\n\t/event/time : 2014-07-30T20:15:40.568322Z\n}, {\n\t/event/value : 88,\n\t/event/time : 2014-07-30T20:15:40.580683Z\n}, {\n\t/event/value : 86,\n\t/event/time : 2014-07-30T20:15:40.615835Z\n}, {\n\t/event/value : 78,\n\t/event/time : 2014-07-30T20:15:40.643201Z\n}, {\n\t/event/value : 73,\n\t/event/time : 2014-07-30T20:15:40.687123Z\n}, {\n\t/event/value : 70,\n\t/event/time : 2014-07-30T20:15:40.718530Z\n}, {\n\t/event/value : 79,\n\t/event/time : 2014-07-30T20:15:40.752750Z\n}, {\n\t/event/value : 87,\n\t/event/time : 2014-07-30T20:15:40.791569Z\n}, {\n\t/event/value : 56,\n\t/event/time : 2014-07-30T20:15:40.861541Z\n}, {\n\t/event/value : 45,\n\t/event/time : 2014-07-30T20:15:40.905085Z\n}, {\n\t/event/value : 48,\n\t/event/time : 2014-07-30T20:15:40.931942Z\n}, {\n\t/event/value : 79,\n\t/event/time : 2014-07-30T20:15:40.970844Z\n}, {\n\t/event/value : 94,\n\t/event/time : 2014-07-30T20:15:41.004505Z\n}, {\n\t/event/value : 90,\n\t/event/time : 2014-07-30T20:15:41.043025Z\n}, {\n\t/event/value : 73,\n\t/event/time : 2014-07-30T20:15:41.052756Z\n}, {\n\t/event/value : 68,\n\t/event/time : 2014-07-30T20:15:41.053483Z\n}, {\n\t/event/value : 71,\n\t/event/time : 2014-07-30T20:15:41.149399Z\n}, {\n\t/event/value : 97,\n\t/event/time : 2014-07-30T20:15:41.149982Z\n}, {\n\t/event/value : 102,\n\t/event/time : 2014-07-30T20:15:41.156845Z\n}, {\n\t/event/value : 105,\n\t/event/time : 2014-07-30T20:15:41.227852Z\n}, {\n\t/event/value : 103,\n\t/event/time : 2014-07-30T20:15:41.242941Z\n}, {\n\t/event/value : 114,\n\t/event/time : 2014-07-30T20:15:41.317701Z\n}, {\n\t/event/value : 126,\n\t/event/time : 2014-07-30T20:15:41.324097Z\n}, {\n\t/event/value : 127,\n\t/event/time : 2014-07-30T20:15:41.340965Z\n}, {\n\t/event/value : 127,\n\t/event/time : 2014-07-30T20:15:41.382128Z\n}, {\n\t/event/value : 122,\n\t/event/time : 2014-07-30T20:15:41.397094Z\n}, {\n\t/event/value : 110,\n\t/event/time : 2014-07-30T20:15:41.410665Z\n}, {\n\t/event/value : 100,\n\t/event/time : 2014-07-30T20:15:41.430054Z\n}, {\n\t/event/value : 92,\n\t/event/time : 2014-07-30T20:15:41.473937Z\n}, {\n\t/event/value : 94,\n\t/event/time : 2014-07-30T20:15:41.563789Z\n}, {\n\t/event/value : 104,\n\t/event/time : 2014-07-30T20:15:41.569709Z\n}, {\n\t/event/value : 105,\n\t/event/time : 2014-07-30T20:15:41.574306Z\n}, {\n\t/event/value : 104,\n\t/event/time : 2014-07-30T20:15:41.609621Z\n}, {\n\t/event/value : 98,\n\t/event/time : 2014-07-30T20:15:41.642104Z\n}, {\n\t/event/value : 93,\n\t/event/time : 2014-07-30T20:15:41.732733Z\n}, {\n\t/event/value : 100,\n\t/event/time : 2014-07-30T20:15:41.759168Z\n}, {\n\t/event/value : 108,\n\t/event/time : 2014-07-30T20:15:41.759871Z\n}, {\n\t/event/value : 110,\n\t/event/time : 2014-07-30T20:15:41.764089Z\n}, {\n\t/event/value : 93,\n\t/event/time : 2014-07-30T20:15:41.831650Z\n}, {\n\t/event/value : 86,\n\t/event/time : 2014-07-30T20:15:41.843612Z\n}, {\n\t/event/value : 81,\n\t/event/time : 2014-07-30T20:15:41.860888Z\n}, {\n\t/event/value : 78,\n\t/event/time : 2014-07-30T20:15:41.881951Z\n}, {\n\t/event/value : 74,\n\t/event/time : 2014-07-30T20:15:42.007319Z\n}, {\n\t/event/value : 69,\n\t/event/time : 2014-07-30T20:15:42.031463Z\n}, {\n\t/event/value : 58,\n\t/event/time : 2014-07-30T20:15:42.078851Z\n}, {\n\t/event/value : 55,\n\t/event/time : 2014-07-30T20:15:42.166165Z\n}, {\n\t/event/value : 56,\n\t/event/time : 2014-07-30T20:15:42.195895Z\n}, {\n\t/event/value : 59,\n\t/event/time : 2014-07-30T20:15:42.215492Z\n}, {\n\t/event/value : 58,\n\t/event/time : 2014-07-30T20:15:42.268079Z\n}, {\n\t/event/value : 47,\n\t/event/time : 2014-07-30T20:15:42.332870Z\n}, {\n\t/event/value : 41,\n\t/event/time : 2014-07-30T20:15:42.372056Z\n}, {\n\t/event/value : 37,\n\t/event/time : 2014-07-30T20:15:42.416192Z\n}, {\n\t/event/value : 25,\n\t/event/time : 2014-07-30T20:15:42.468647Z\n}, {\n\t/event/value : 0,\n\t/event/time : 2014-07-30T20:15:42.518587Z\n}, {\n\t/event/value : 0,\n\t/event/time : 2014-07-30T20:15:42.570107Z\n}, {\n\t/event/value : 0,\n\t/event/time : 2014-07-30T20:15:42.619583Z\n}, {\n\t/event/value : 0,\n\t/event/time : 2014-07-30T20:15:42.656941Z\n}, {\n\t/event/value : 0,\n\t/event/time : 2014-07-30T20:15:42.656941Z\n}]",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 560.0, 335.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 153.5, 554.5, 24.0, 20.0 ],
					"text" : "t 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 94.5, 240.0, 83.0, 20.0 ],
					"text" : "o.pack /value"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-20",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 94.5, 185.0, 181.0, 46.0 ],
					"text" : "/event/time = /record/end/time,\n/event/endplayback = true",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 940.5, 163.5, 154.0, 20.0 ],
					"text" : "o.timetag /record/end/time"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 629.0, 183.5, 84.0, 20.0 ],
					"text" : "o.pack /event"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "clear" ],
					"patching_rect" : [ 86.0, 374.0, 44.0, 20.0 ],
					"text" : "t clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-51",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 475.0, 105.5, 113.0, 46.0 ],
					"text" : "eval(/command), \ndelete(/command)",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 475.0, 70.5, 108.0, 20.0 ],
					"text" : "o.pack /command"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-53",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"outputmode" : 0,
					"parameter_enable" : 1,
					"patching_rect" : [ 431.152344, 35.5, 106.695312, 22.523438 ],
					"presentation" : 1,
					"presentation_rect" : [ 25.652344, 20.0, 106.695312, 22.523438 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "textbutton[5]",
							"parameter_shortname" : "textbutton",
							"parameter_type" : 3,
							"parameter_invisible" : 1
						}

					}
,
					"text" : "/playing = false",
					"texton" : "/playing = true",
					"varname" : "textbutton[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 475.0, 169.5, 104.0, 20.0 ],
					"text" : "o.if /playing!=true"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 785.5, 60.0, 108.0, 20.0 ],
					"text" : "o.pack /command"
				}

			}
, 			{
				"box" : 				{
					"fontlink" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-38",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"outputmode" : 0,
					"parameter_enable" : 1,
					"patching_rect" : [ 652.304688, 11.5, 119.695312, 22.523438 ],
					"presentation" : 1,
					"presentation_rect" : [ 186.152344, 20.0, 119.695312, 22.523438 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "textbutton[4]",
							"parameter_shortname" : "textbutton",
							"parameter_type" : 3,
							"parameter_invisible" : 1
						}

					}
,
					"text" : "/recording  = false",
					"texton" : "/recording = true",
					"varname" : "textbutton[4]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 52.0, 554.5, 75.0, 20.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 785.5, 131.5, 174.0, 20.0 ],
					"text" : "o.if /recording==true"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 629.0, 218.5, 50.0, 20.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 629.0, 245.5, 120.0, 20.0 ],
					"text" : "o.if /recording==true"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 52.0, 439.5, 78.0, 32.0 ],
					"text" : "/late = false",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-7",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 171.0, 439.5, 74.0, 32.0 ],
					"text" : "/late = true",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-4",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 801.0, 189.5, 107.0, 34.0 ],
					"text" : "erases previously\nstored sequence"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-68",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 28.0, 606.0, 420.0, 76.0 ],
					"text" : "The time of the playback event starts from /play/start/time - the difference between /evant/time and /record/start/time tells us how long to wait from /play/ started until the scheduling of the event. A small delay is added to make sure there is time for o.schedule to set up the schedule without missing any early events."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-67",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 118.0, 277.0, 286.0, 20.0 ],
					"text" : "Ensure that /play/started is included in each bundle"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-66",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 215.5, 132.0, 201.0, 48.0 ],
					"text" : "Enumerate all  the sub-bundles of /sequence, i.e. all the recorded events to be scheduled"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-64",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 431.152344, 453.0, 152.5, 48.0 ],
					"text" : "Save a copy of the last recorded sequence for future playback"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-60",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 684.5, 287.5, 169.0, 34.0 ],
					"text" : "Append the new event to the\n existing sequence."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "FullPacket" ],
					"patching_rect" : [ 52.0, 522.5, 227.0, 20.0 ],
					"text" : "o.route /event/value /event/endplayback"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 52.0, 493.5, 84.0, 20.0 ],
					"text" : "o.route /value"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 52.0, 83.0, 146.0, 20.0 ],
					"text" : "o.timetag /play/start/time"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-39",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 52.0, 306.0, 260.0, 46.0 ],
					"text" : "/play/event/time = /play/start/time +\n (/value./event/time - /record/start/time) + 0.1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "FullPacket", "FullPacket", "FullPacket", "FullPacket" ],
					"patching_rect" : [ 52.0, 403.5, 159.0, 20.0 ],
					"text" : "o.schedule /play/event/time"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 52.0, 277.0, 57.0, 20.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "FullPacket" ],
					"patching_rect" : [ 52.0, 114.0, 312.695312, 20.0 ],
					"text" : "o.select /sequence /record/end/time"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 785.5, 163.5, 158.0, 20.0 ],
					"text" : "o.timetag /record/start/time"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 560.0, 389.0, 50.0, 20.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 52.0, 146.0, 153.0, 20.0 ],
					"text" : "o.listenumerate /sequence"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 629.0, 335.0, 240.0, 32.0 ],
					"text" : "/sequence = [ /sequence ?? list(), /event ] ",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 629.0, 118.5, 116.0, 20.0 ],
					"text" : "o.pack /event/value"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 629.0, 150.5, 125.0, 20.0 ],
					"text" : "o.timetag /event/time"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 629.0, 70.5, 135.0, 30.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 25.652344, 74.0, 280.195312, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.815686, 1.0, 1.0, 1.0 ],
					"color" : [ 0.8, 0.839216, 0.709804, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 629.0, 294.5, 50.0, 20.0 ],
					"text" : "o.union"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-18", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-2", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 638.5, 380.5, 887.0, 380.5, 887.0, 286.5, 669.5, 286.5 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-40", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 569.5, 440.0, 458.0, 440.0, 458.0, 70.0, 61.5, 70.0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 950.0, 273.5, 638.5, 273.5 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-2", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 795.0, 285.5, 669.5, 285.5 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 104.0, 261.0, 61.5, 261.0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.8, 0.8, 1.0 ],
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 163.0, 582.0, 409.0, 582.0, 409.0, 30.0, 440.652344, 30.0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 795.0, 120.0, 765.0, 120.0, 765.0, 213.0, 669.5, 213.0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 208.347656, 177.0, 104.0, 177.0 ],
					"source" : [ "obj-31", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-32", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 355.195312, 267.0, 99.5, 267.0 ],
					"source" : [ "obj-31", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 61.5, 585.0, 32.0, 585.0, 32.0, 21.0, 638.5, 21.0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 108.166667, 435.0, 180.5, 435.0 ],
					"source" : [ "obj-37", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-44", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 165.5, 542.0, 163.0, 542.0 ],
					"source" : [ "obj-44", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-54", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-53", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-36", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 569.5, 309.0, 569.5, 309.0 ],
					"source" : [ "obj-54", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 0.9 ],
					"destination" : [ "obj-56", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 484.5, 369.0, 95.5, 369.0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 95.5, 396.0, 61.5, 396.0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-61", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 180.5, 486.0, 61.5, 486.0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-53" : [ "textbutton[5]", "textbutton", 0 ],
			"obj-38" : [ "textbutton[4]", "textbutton", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "o.union.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.timetag.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.listenumerate.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.select.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.schedule.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.if.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.display.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
