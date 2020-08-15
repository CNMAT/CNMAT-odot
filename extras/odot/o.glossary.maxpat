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
		"rect" : [ 23.0, 71.0, 1173.0, 849.0 ],
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
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 559.0, 4272.0, 150.0, 20.0 ]
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
					"patching_rect" : [ 15.0, 38.0, 121.0, 21.0 ],
					"text" : "Adrian Freed 2014"
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.29, 0.31, 0.302, 0.0 ],
					"id" : "obj-84",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 840.0, 1348.0, 315.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 104, 101, 108, 112, 47, 112, 97, 116, 99, 104, 0, 44, 115, 0, 0, 111, 46, 100, 105, 115, 112, 108, 97, 121, 0, 0, 0 ],
					"saved_bundle_length" : 48,
					"text" : "/help/patch : \"o.display\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 840.0, 1380.0, 105.0, 22.0 ],
					"text" : "send #0.urllaunch"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-82",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1298.0, 1087.207030999999915, 105.0, 22.0 ],
					"text" : "send #0.urllaunch"
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.29, 0.31, 0.302, 0.0 ],
					"id" : "obj-83",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 840.0, 1086.207030999999915, 315.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 104, 101, 108, 112, 47, 112, 97, 116, 99, 104, 0, 44, 115, 0, 0, 111, 46, 101, 120, 112, 114, 46, 99, 111, 100, 101, 98, 111, 120, 0, 0 ],
					"saved_bundle_length" : 52,
					"text" : "/help/patch : \"o.expr.codebox\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 840.0, 161.5, 105.0, 22.0 ],
					"text" : "send #0.urllaunch"
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 0.0 ],
					"id" : "obj-81",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 840.0, 131.5, 315.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 104, 101, 108, 112, 47, 112, 97, 116, 99, 104, 0, 44, 115, 0, 0, 111, 46, 99, 111, 109, 112, 111, 115, 101, 0, 0, 0 ],
					"saved_bundle_length" : 48,
					"text" : "/help/patch : \"o.compose\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 0.0 ],
					"id" : "obj-78",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 840.0, 99.0, 315.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 119, 105, 107, 105, 112, 101, 100, 105, 97, 0, 0, 44, 115, 0, 0, 65, 115, 115, 111, 99, 105, 97, 116, 105, 118, 101, 95, 97, 114, 114, 97, 121, 0, 0, 0 ],
					"saved_bundle_length" : 56,
					"text" : "/wikipedia : \"Associative_array\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 20.0,
					"id" : "obj-128",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 15.0, 140.0, 29.0 ],
					"text" : "odot glossary"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-126",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 843.0, 3799.0, 105.0, 22.0 ],
					"text" : "send #0.urllaunch"
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.29, 0.31, 0.302, 0.0 ],
					"id" : "obj-127",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 843.0, 3768.829268292683082, 312.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 119, 105, 107, 105, 112, 101, 100, 105, 97, 0, 0, 44, 115, 0, 0, 70, 117, 110, 99, 116, 105, 111, 110, 95, 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 0, 0, 0, 0 ],
					"saved_bundle_length" : 60,
					"text" : "/wikipedia : \"Function_application\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.29, 0.31, 0.302, 0.0 ],
					"id" : "obj-125",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 843.0, 3738.414634146341541, 312.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 119, 105, 107, 105, 112, 101, 100, 105, 97, 0, 0, 44, 115, 0, 0, 87, 114, 97, 112, 112, 101, 114, 95, 102, 117, 110, 99, 116, 105, 111, 110, 0, 0, 0, 0 ],
					"saved_bundle_length" : 56,
					"text" : "/wikipedia : \"Wrapper_function\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.29, 0.31, 0.302, 0.0 ],
					"id" : "obj-123",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 843.0, 3708.0, 312.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 119, 105, 107, 105, 112, 101, 100, 105, 97, 0, 0, 44, 115, 0, 0, 76, 97, 109, 98, 100, 97, 95, 102, 117, 110, 99, 116, 105, 111, 110, 0 ],
					"saved_bundle_length" : 52,
					"text" : "/wikipedia : \"Lambda_function\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-120",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 843.0, 2754.0, 105.0, 22.0 ],
					"text" : "send #0.urllaunch"
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.29, 0.31, 0.302, 0.0 ],
					"id" : "obj-121",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 843.0, 2722.0, 312.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 47, 119, 105, 107, 105, 112, 101, 100, 105, 97, 0, 0, 44, 115, 0, 0, 67, 111, 109, 109, 101, 110, 116, 95, 40, 99, 111, 109, 112, 117, 116, 101, 114, 95, 112, 114, 111, 103, 114, 97, 109, 109, 105, 110, 103, 41, 0, 0 ],
					"saved_bundle_length" : 68,
					"text" : "/wikipedia : \"Comment_(computer_programming)\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-118",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 843.0, 2414.5, 105.0, 22.0 ],
					"text" : "send #0.urllaunch"
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.29, 0.31, 0.302, 0.0 ],
					"id" : "obj-119",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 843.0, 2381.0, 312.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 119, 105, 107, 105, 112, 101, 100, 105, 97, 0, 0, 44, 115, 0, 0, 65, 117, 103, 109, 101, 110, 116, 101, 100, 95, 97, 115, 115, 105, 103, 110, 109, 101, 110, 116, 0, 0, 0, 0 ],
					"saved_bundle_length" : 60,
					"text" : "/wikipedia : \"Augmented_assignment\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-116",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 843.0, 2139.5, 105.0, 22.0 ],
					"text" : "send #0.urllaunch"
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.29, 0.31, 0.302, 0.0 ],
					"id" : "obj-117",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 843.0, 2108.0, 312.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 119, 105, 107, 105, 112, 101, 100, 105, 97, 0, 0, 44, 115, 0, 0, 83, 116, 114, 117, 99, 116, 117, 114, 101, 100, 95, 112, 114, 111, 103, 114, 97, 109, 109, 105, 110, 103, 0, 0 ],
					"saved_bundle_length" : 60,
					"text" : "/wikipedia : \"Structured_programming\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-114",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 843.0, 1866.5, 105.0, 22.0 ],
					"text" : "send #0.urllaunch"
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.29, 0.31, 0.302, 0.0 ],
					"id" : "obj-115",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 843.0, 1832.0, 312.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 119, 105, 107, 105, 112, 101, 100, 105, 97, 0, 0, 44, 115, 0, 0, 68, 97, 116, 97, 102, 108, 111, 119, 95, 112, 114, 111, 103, 114, 97, 109, 109, 105, 110, 103, 0, 0, 0, 0 ],
					"saved_bundle_length" : 60,
					"text" : "/wikipedia : \"Dataflow_programming\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-112",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 840.0, 1602.707030999999915, 105.0, 22.0 ],
					"text" : "send #0.urllaunch"
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.29, 0.31, 0.302, 0.0 ],
					"id" : "obj-113",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 840.0, 1571.0, 315.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 119, 105, 107, 105, 112, 101, 100, 105, 97, 0, 0, 44, 115, 0, 0, 69, 118, 97, 108, 0, 0, 0, 0 ],
					"saved_bundle_length" : 44,
					"text" : "/wikipedia : \"Eval\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-110",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 840.0, 1234.5, 105.0, 22.0 ],
					"text" : "send #0.urllaunch"
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.29, 0.31, 0.302, 0.0 ],
					"id" : "obj-111",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 840.0, 1201.0, 315.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 119, 105, 107, 105, 112, 101, 100, 105, 97, 0, 0, 44, 115, 0, 0, 68, 97, 116, 97, 102, 108, 111, 119, 95, 112, 114, 111, 103, 114, 97, 109, 109, 105, 110, 103, 0, 0, 0, 0 ],
					"saved_bundle_length" : 60,
					"text" : "/wikipedia : \"Dataflow_programming\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 840.0, 1120.707030999999915, 105.0, 22.0 ],
					"text" : "send #0.urllaunch"
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.29, 0.31, 0.302, 0.0 ],
					"id" : "obj-109",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 840.0, 1059.207030999999915, 315.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 47, 119, 105, 107, 105, 112, 101, 100, 105, 97, 0, 0, 44, 115, 0, 0, 69, 120, 112, 114, 101, 115, 115, 105, 111, 110, 95, 40, 99, 111, 109, 112, 117, 116, 101, 114, 95, 115, 99, 105, 101, 110, 99, 101, 41, 0, 0, 0 ],
					"saved_bundle_length" : 68,
					"text" : "/wikipedia : \"Expression_(computer_science)\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 840.0, 878.5, 105.0, 22.0 ],
					"text" : "send #0.urllaunch"
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.29, 0.31, 0.302, 0.0 ],
					"id" : "obj-107",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 840.0, 845.036496350365269, 315.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 119, 105, 107, 105, 112, 101, 100, 105, 97, 0, 0, 44, 115, 0, 0, 83, 99, 105, 101, 110, 116, 105, 102, 105, 99, 95, 110, 111, 116, 97, 116, 105, 111, 110, 0 ],
					"saved_bundle_length" : 56,
					"text" : "/wikipedia : \"Scientific_notation\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.29, 0.31, 0.302, 0.0 ],
					"id" : "obj-105",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 840.0, 751.259124087591317, 315.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 119, 105, 107, 105, 112, 101, 100, 105, 97, 0, 0, 44, 115, 0, 0, 70, 108, 111, 97, 116, 105, 110, 103, 95, 112, 111, 105, 110, 116, 0, 0 ],
					"saved_bundle_length" : 52,
					"text" : "/wikipedia : \"Floating_point\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.29, 0.31, 0.302, 0.0 ],
					"id" : "obj-103",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 840.0, 813.777372262773952, 315.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 47, 119, 105, 107, 105, 112, 101, 100, 105, 97, 0, 0, 44, 115, 0, 0, 73, 110, 116, 101, 103, 101, 114, 95, 40, 99, 111, 109, 112, 117, 116, 101, 114, 95, 115, 99, 105, 101, 110, 99, 101, 41, 0, 0 ],
					"saved_bundle_length" : 64,
					"text" : "/wikipedia : \"Integer_(computer_science)\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.29, 0.31, 0.302, 0.0 ],
					"id" : "obj-101",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 840.0, 720.0, 315.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 119, 105, 107, 105, 112, 101, 100, 105, 97, 0, 0, 44, 115, 0, 0, 85, 110, 105, 116, 95, 116, 121, 112, 101, 0, 0, 0 ],
					"saved_bundle_length" : 48,
					"text" : "/wikipedia : \"Unit_type\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.29, 0.31, 0.302, 0.0 ],
					"id" : "obj-99",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 840.0, 782.518248175182634, 315.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 119, 105, 107, 105, 112, 101, 100, 105, 97, 0, 0, 44, 115, 0, 0, 66, 111, 111, 108, 101, 97, 110, 0 ],
					"saved_bundle_length" : 44,
					"text" : "/wikipedia : \"Boolean\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 840.0, 611.0, 105.0, 22.0 ],
					"text" : "send #0.urllaunch"
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.29, 0.31, 0.302, 0.0 ],
					"id" : "obj-97",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 840.0, 572.0, 315.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 47, 119, 105, 107, 105, 112, 101, 100, 105, 97, 0, 0, 44, 115, 0, 0, 104, 116, 116, 112, 58, 47, 47, 101, 110, 46, 119, 105, 107, 105, 112, 101, 100, 105, 97, 46, 111, 114, 103, 47, 119, 105, 107, 105, 47, 78, 97, 109, 101, 95, 98, 105, 110, 100, 105, 110, 103, 0, 0, 0 ],
					"saved_bundle_length" : 80,
					"text" : "/wikipedia : \"http://en.wikipedia.org/wiki/Name_binding\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.29, 0.31, 0.302, 0.0 ],
					"id" : "obj-95",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 840.0, 546.0, 315.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 47, 119, 105, 107, 105, 112, 101, 100, 105, 97, 0, 0, 44, 115, 0, 0, 83, 116, 114, 105, 110, 103, 95, 40, 99, 111, 109, 112, 117, 116, 101, 114, 95, 115, 99, 105, 101, 110, 99, 101, 41, 0, 0, 0 ],
					"saved_bundle_length" : 64,
					"text" : "/wikipedia : \"String_(computer_science)\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 840.0, 432.0, 105.0, 22.0 ],
					"text" : "send #0.urllaunch"
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.29, 0.31, 0.302, 0.0 ],
					"id" : "obj-93",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 840.0, 401.0, 315.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 47, 119, 105, 107, 105, 112, 101, 100, 105, 97, 0, 0, 44, 115, 0, 0, 76, 105, 115, 116, 95, 40, 97, 98, 115, 116, 114, 97, 99, 116, 95, 100, 97, 116, 97, 95, 116, 121, 112, 101, 41, 0, 0, 0 ],
					"saved_bundle_length" : 64,
					"text" : "/wikipedia : \"List_(abstract_data_type)\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.29, 0.31, 0.302, 0.0 ],
					"id" : "obj-91",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 840.0, 249.0, 315.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 119, 105, 107, 105, 112, 101, 100, 105, 97, 0, 0, 44, 115, 0, 0, 78, 111, 116, 104, 105, 110, 103, 0 ],
					"saved_bundle_length" : 44,
					"text" : "/wikipedia : \"Nothing\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 840.0, 306.0, 105.0, 22.0 ],
					"text" : "send #0.urllaunch"
				}

			}
, 			{
				"box" : 				{
					"background_color" : [ 0.435294117647059, 0.67843137254902, 0.847058823529412, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frame_color" : [ 0.29, 0.31, 0.302, 0.0 ],
					"id" : "obj-85",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 840.0, 275.5, 315.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 119, 105, 107, 105, 112, 101, 100, 105, 97, 0, 0, 44, 115, 0, 0, 65, 116, 116, 114, 105, 98, 117, 116, 101, -30, -128, -109, 118, 97, 108, 117, 101, 95, 112, 97, 105, 114, 0, 0 ],
					"saved_bundle_length" : 60,
					"text" : "/wikipedia : \"Attribute–value_pair\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-80",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 485.0, 15.0, 243.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 47, 118, 105, 115, 105, 116, 0, 0, 44, 115, 0, 0, 104, 116, 116, 112, 115, 58, 47, 47, 119, 119, 119, 46, 99, 110, 109, 97, 116, 46, 98, 101, 114, 107, 101, 108, 101, 121, 46, 101, 100, 117, 0, 0 ],
					"saved_bundle_length" : 64,
					"text" : "/visit : \"https://www.cnmat.berkeley.edu\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 63.0, 184.0, 640.0, 480.0 ],
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
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-10",
									"linecount" : 2,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 404.0, 57.0, 155.0, 37.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 104, 101, 108, 112, 47, 112, 97, 116, 99, 104, 0, 44, 115, 0, 0, 111, 46, 99, 111, 109, 112, 111, 115, 101, 0, 0, 0 ],
									"saved_bundle_length" : 48,
									"text" : "/help/patch : \"o.compose\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 326.0, 249.0, 53.0, 20.0 ],
									"text" : "pcontrol"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 326.0, 214.0, 81.0, 20.0 ],
									"text" : "prepend load"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 319.0, 110.0, 269.0, 32.0 ],
									"text" : "/help = /help/patch + \".maxhelp\""
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 1,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 326.0, 176.0, 77.0, 20.0 ],
									"text" : "o.route /help"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 47.0, 130.0, 20.0 ],
									"text" : "o.if bound(/help/patch)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-84",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 100.0, 124.0, 20.0 ],
									"text" : "o.if bound(/wikipedia)"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-83",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 142.0, 269.0, 32.0 ],
									"text" : "/visit = \"http://en.wikipedia.org/wiki/\" + /wikipedia"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-82",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 57.0, 244.0, 106.0, 25.0 ],
									"text" : ";\rmax launch_browser $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 1,
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 57.0, 208.0, 75.0, 20.0 ],
									"text" : "o.route /visit"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-88",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 2.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-2", 0 ]
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
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"hidden" : 1,
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-84", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 581.0, 72.0, 70.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p launcher"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-87",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 612.0, 39.0, 83.0, 22.0 ],
					"text" : "r #0.urllaunch"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-75",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 162.75, 3709.5, 30.75, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-74",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 396.0, 3709.5, 43.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-73",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 61.25, 3709.5, 88.25, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-72",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 76.75, 2724.5, 66.5, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-71",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 70.25, 2475.5, 20.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-70",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 152.0, 2111.0, 89.25, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-69",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 233.0, 1833.75, 52.25, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-68",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 86.25, 1587.0, 59.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-67",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 57.5, 1350.0, 52.5, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-66",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 369.0, 1202.5, 50.5, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-65",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 487.5, 1061.707030999999915, 116.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-64",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 339.0, 1061.707030999999915, 68.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-63",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 83.5, 777.5, 98.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-62",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 239.0, 748.5, 74.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-61",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 170.0, 748.5, 47.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-60",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 132.5, 722.0, 50.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-59",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 97.0, 722.0, 16.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-58",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 44.0, 722.0, 29.5, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-57",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 17.0, 722.0, 25.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-56",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 230.0, 572.0, 51.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-55",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 342.0, 546.0, 51.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-54",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 226.000000059604645, 429.333333373069763, 19.333333224058151, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-53",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 147.0, 264.0, 47.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-52",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 94.0, 250.0, 40.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-42",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 253.0, 263.0, 32.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 312.0, 113.5, 63.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.45 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 69.5, 101.0, 46.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-48",
					"linecount" : 10,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 4074.0, 936.0, 156.0 ],
					"text" : "/pitch/numbers : [22, 69, 80],\n/concert/pitch : 440.,\n/MIDI/A440 : 69,\n/equal/temperament : \"lambda([pitchnumber,octaveratio, intervals ],  \n                              /concert/pitch * pow(octaveratio ,\n                                     float32(pitchnumber- /MIDI/A440 )  /  intervals))\",\n/twelvetone/equal/temperament : \"lambda([pitchnumber],  apply( readstring(/equal/temperament) , pitchnumber, 2.0, 12.0 ))\",\n/Bohlen/Pierce/equal/temperament : \"lambda([pitchnumber],  apply( readstring(/equal/temperament) ,  pitchnumber, 3.0, 13.0 ))\",\n/equal/tempered/frequencies/Bohlen/Pierce : [29.1352, 440., 830.609],\n/twelvetone/frequencies/ : [8.2885, 440., 1114.73]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"frame_color" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 0.0 ],
					"id" : "obj-49",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 3753.0, 233.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 112, 105, 116, 99, 104, 47, 110, 117, 109, 98, 101, 114, 115, 0, 0, 44, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 0, 69, 0, 0, 0, 80 ],
					"saved_bundle_length" : 56,
					"text" : "/pitch/numbers : [22, 69, 80]",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-50",
					"linecount" : 14,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 38.0, 3829.0, 951.0, 209.0 ],
					"text" : "/concert/pitch = 440.0,  # concert pitch (the frequency of the A above middle C)\n/MIDI/A440 = 69,         # MIDI  note numbers  count semitones with 69 for A440\n/equal/temperament = \"lambda([pitchnumber,octaveratio, intervals ],  \n                              /concert/pitch * pow(octaveratio ,\n                                     float32(pitchnumber- /MIDI/A440 )  /  intervals))\",\n\n# 12 ratiometrically equal intervals of the octave\n/twelvetone/equal/temperament =  \"lambda([pitchnumber],  apply( readstring(/equal/temperament) , pitchnumber, 2.0, 12.0 ))\" ,\n\n# 13 ratiometrically equal intervals of the tritave\n/Bohlen/Pierce/equal/temperament =  \"lambda([pitchnumber],  apply( readstring(/equal/temperament) ,  pitchnumber, 3.0, 13.0 ))\" ,\n\n/equal/tempered/frequencies/Bohlen/Pierce =  /twelvetone/equal/temperament( /pitch/numbers),\n/twelvetone/frequencies/ =  apply( readstring(/Bohlen/Pierce/equal/temperament), /pitch/numbers )"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-51",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 3708.0, 536.0, 20.0 ],
					"text" : "Use the lambda function to wrap expressions into functions that can be applied in different contexts"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-45",
					"linecount" : 6,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 3524.0, 576.0, 102.0 ],
					"text" : "/pitch/numbers : [22, 69, 80],\n/octave/ratio : 3,\n/concert/pitch : 440.,\n/MIDI/A440 : 69,\n/intervals : 13,\n/equal/tempered/frequencies/Bohlen/Pierce : [8.2885, 440., 1114.73]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"frame_color" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 0.0 ],
					"id" : "obj-46",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 3315.0, 233.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 112, 105, 116, 99, 104, 47, 110, 117, 109, 98, 101, 114, 115, 0, 0, 44, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 0, 69, 0, 0, 0, 80 ],
					"saved_bundle_length" : 56,
					"text" : "/pitch/numbers : [22, 69, 80]",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-47",
					"linecount" : 8,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 38.0, 3369.0, 977.0, 127.0 ],
					"text" : "/octave/ratio = 3,      # the frequency ratio  of the tritave:\n/concert/pitch = 440.0, # concert pitch (the frequency of the A above middle C)\n/MIDI/A440 = 69,        # MIDI  note numbers  count semitones with 69 for A440\n/intervals = 13,        # the octave is divided into 13 intervals\n# the power function pow() satisfies the requirement that successive intervals be equal ratios\n# 32-bit IEEE floating point numbers provide acceptable resolution for the approximation that pow() provides \n\n/equal/tempered/frequencies/Bohlen/Pierce = /concert/pitch * pow(/octave/ratio , float32(/pitch/numbers - /MIDI/A440 )  / /intervals)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-38",
					"linecount" : 7,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 3065.0, 486.0, 116.0 ],
					"text" : "/pitch/numbers : [22, 69, 80],\n/equal/tempered/frequencies : [29.1352, 440., 830.609],\n/octave/ratio : 2,\n/concert/pitch : 440.,\n/MIDI/A440 : 69,\n/intervals : 12,\n/equal/tempered/frequencies2 : [29.1352, 440., 830.609]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"frame_color" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 0.0 ],
					"id" : "obj-25",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 2772.0, 233.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 112, 105, 116, 99, 104, 47, 110, 117, 109, 98, 101, 114, 115, 0, 0, 44, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 0, 69, 0, 0, 0, 80 ],
					"saved_bundle_length" : 56,
					"text" : "/pitch/numbers : [22, 69, 80]",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-32",
					"linecount" : 16,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 38.0, 2811.0, 884.0, 236.0 ],
					"text" : "# equal temperament was introduced in the West in the late seventeenth century\n# \n# the following formula converts pitch numbers into frequencies:\n\n/equal/tempered/frequencies = 440.0 * pow(2.0 , (/pitch/numbers - 69)  / 12.0),\n\n# the formula is based on the  following social conventions and standards:\n\n/octave/ratio = 2,      # the frequency ratio  of the octave\n/concert/pitch = 440.0, # concert pitch (the frequency of the A above middle C)\n/MIDI/A440 = 69,        # MIDI  note numbers  count semitones with 69 for A440\n/intervals = 12,        # the octave is divided into 12 intervals\n# the power function pow() satisfies the requirement that successive intervals be equal ratios\n# 32-bit IEEE floating point numbers provide acceptable resolution for the approximation that pow() provides \n\n/equal/tempered/frequencies2 = /concert/pitch * pow(/octave/ratio , float32(/pitch/numbers - /MIDI/A440 )  / /intervals)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 2722.0, 471.0, 33.0 ],
					"text" : "Prefix your annotations with  the hash symbol  (#).\nAnnotations in an expression box are conveniently carried with the code they annotate:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"frame_color" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 0.0 ],
					"id" : "obj-13",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 2420.0, 68.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 97, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2 ],
					"saved_bundle_length" : 32,
					"text" : "/a : 2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 2563.0, 98.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-20",
					"linecount" : 4,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 38.0, 2464.0, 248.0, 73.0 ],
					"text" : "/a  +=  2,   # add 2 to /a\n/a  *=   6,  # multiply /a by 6\n/a++,        # increment /a\n/a--         # decrement /a"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 2381.0, 539.0, 20.0 ],
					"text" : "Use these variations of the \"gets\" operator to  change a value and retain its address (e.g. /a below):"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"frame_color" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 0.0 ],
					"id" : "obj-1",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 2146.0, 68.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 97, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2 ],
					"saved_bundle_length" : 32,
					"text" : "/a : 2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 2256.0, 105.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-5",
					"linecount" : 2,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 38.0, 2189.0, 109.0, 50.0 ],
					"text" : "/a = /a + 2,\n/a = /a * 6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 2108.0, 379.0, 20.0 ],
					"text" : "Break computations  into sequential parts using commas:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"frame_color" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 0.0 ],
					"id" : "obj-40",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 1897.0, 83.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 97, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2, 0, 0, 0, 12, 47, 98, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2 ],
					"saved_bundle_length" : 48,
					"text" : "/a : 2,\n/b : 2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
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
					"patching_rect" : [ 38.0, 1996.0, 216.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-43",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 3233.0, 694.0, 47.0 ],
					"text" : "Use your freedom to choose address names to annotate values directly.\nFor example, the expression developed above can now be used to explore other temperaments.\nHere is an interpretation of Bohlen–Pierce equal temperament based on dividing the tritave into 13 ratiometrically equal intervals:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-44",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 38.0, 1949.0, 137.0, 32.0 ],
					"text" : "/result = /a + /b"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"frame_color" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 0.0 ],
					"id" : "obj-39",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 1645.0, 146.0, 24.0 ],
					"saved_bundle_data" : [  ],
					"saved_bundle_length" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-34",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 1734.0, 108.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-36",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 1832.0, 494.0, 33.0 ],
					"text" : "Use expressions to modify a copy of the incoming bundle.\nThis is why /a and /b appear in the resultant bundle (shown in the o.display box):"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-37",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 38.0, 1684.0, 115.0, 32.0 ],
					"text" : "/result = 2 +2"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-33",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 1454.0, 144.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-31",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 1571.0, 504.0, 60.0 ],
					"text" : "Click on an expression box to send an empty bundle into the box.\nThis triggers evaluation of the expression and produces an output bundle.\nClick on the expression box below to confirm this. \nClick on the empty bundle of the o.compose box:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 38.0, 1407.0, 115.0, 32.0 ],
					"text" : "/result = 2 +2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-29",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 1348.0, 371.0, 33.0 ],
					"text" : "Use an o.display box to see the contents of a bundle that came in.\nUse the \"D\" keyboard shortcut  to make o.display boxes:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-26",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 38.0, 1246.0, 115.0, 32.0 ],
					"text" : "/result = 2 +2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 1201.0, 466.0, 20.0 ],
					"text" : "Use the \"=\" symbol (helpfully read as \"gets\") to put values into the outgoing bundle"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 1059.207030999999915, 598.0, 33.0 ],
					"text" : "odot bundles are transformed into new bundles according to expressions you write in an expression code box.\nUse the \"e\" keyboard shortcut to make one:"
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
					"patching_rect" : [ 38.0, 1114.707030999999915, 144.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"frame_color" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 0.0 ],
					"id" : "obj-19",
					"linecount" : 4,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 938.0, 751.0, 65.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -60, 47, 118, 97, 114, 105, 111, 117, 115, 47, 99, 111, 110, 115, 116, 97, 110, 116, 115, 0, 0, 44, 105, 100, 100, 46, 84, 78, 70, 0, 0, 0, 0, 0, 0, 0, 33, -64, 9, -103, -103, -103, -103, -103, -102, 62, -8, 30, 3, -9, 5, -123, 123, 0, 0, 0, -116, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 47, 100, 97, 121, 115, 47, 111, 102, 47, 116, 104, 101, 47, 119, 101, 101, 107, 0, 0, 0, 44, 115, 115, 115, 115, 115, 115, 115, 0, 0, 0, 0, 109, 111, 110, 100, 97, 121, 0, 0, 116, 117, 101, 115, 100, 97, 121, 0, 119, 101, 100, 110, 101, 115, 100, 97, 121, 0, 0, 0, 116, 104, 117, 114, 115, 100, 97, 121, 0, 0, 0, 0, 102, 114, 105, 100, 97, 121, 0, 0, 115, 97, 116, 117, 114, 100, 97, 121, 0, 0, 0, 0, 115, 117, 110, 100, 97, 121, 0, 0, 0, 0, 0, 16, 47, 108, 101, 97, 112, 47, 121, 101, 97, 114, 0, 0, 44, 84, 0, 0 ],
					"saved_bundle_length" : 216,
					"text" : "/various/constants : [33, -3.2, 2.3e-05, {\n\t/days/of/the/week : [\"monday\", \"tuesday\", \"wednesday\", \"thursday\", \"friday\", \"saturday\", \"sunday\"],\n\t/leap/year : true\n}, true, nil, false]",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 891.079102000000034, 334.0, 20.0 ],
					"text" : "Bundles themselves can be values. Use curly braces for this:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"frame_color" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 0.0 ],
					"id" : "obj-16",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 825.0, 514.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 47, 118, 97, 114, 105, 111, 117, 115, 47, 99, 111, 110, 115, 116, 97, 110, 116, 115, 0, 0, 44, 115, 105, 100, 100, 84, 78, 70, 0, 0, 0, 0, 109, 111, 110, 100, 97, 121, 0, 0, 0, 0, 0, 33, -64, 9, -103, -103, -103, -103, -103, -102, 62, -8, 30, 3, -9, 5, -123, 123 ],
					"saved_bundle_length" : 80,
					"text" : "/various/constants : [\"monday\", 33, -3.2, 2.3e-05, true, nil, false]",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 720.0, 404.0, 74.0 ],
					"text" : "true, false and nil are constant values\n\nNumerical constants include integers and floating-point numbers. Floating-point numbers have a decimal point and can optionally use the letter \"e\" for scientific notation."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"frame_color" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 0.0 ],
					"id" : "obj-12",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 611.0, 745.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 47, 100, 97, 121, 115, 47, 111, 102, 47, 116, 104, 101, 47, 119, 101, 101, 107, 0, 0, 0, 44, 115, 115, 115, 115, 115, 115, 115, 0, 0, 0, 0, 109, 111, 110, 100, 97, 121, 0, 0, 116, 117, 101, 115, 100, 97, 121, 0, 119, 101, 100, 110, 101, 115, 100, 97, 121, 0, 0, 0, 116, 104, 117, 114, 115, 100, 97, 121, 0, 0, 0, 0, 102, 114, 105, 100, 97, 121, 0, 0, 115, 97, 116, 117, 114, 100, 97, 121, 0, 0, 0, 0, 115, 117, 110, 100, 97, 121, 0, 0, 0, 0, 0, 16, 47, 108, 101, 97, 112, 47, 121, 101, 97, 114, 0, 0, 44, 84, 0, 0 ],
					"saved_bundle_length" : 140,
					"text" : "/days/of/the/week : [\"monday\", \"tuesday\", \"wednesday\", \"thursday\", \"friday\", \"saturday\", \"sunday\"],\n/leap/year : true",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-11",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 546.0, 388.0, 47.0 ],
					"text" : "Use commas to separate values in a list. Use quotes around \"strings\".\n\nUse commas to separate address/value bindings:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"frame_color" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 0.0 ],
					"id" : "obj-10",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 466.0, 730.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 47, 100, 97, 121, 115, 47, 111, 102, 47, 116, 104, 101, 47, 119, 101, 101, 107, 0, 0, 0, 44, 115, 115, 115, 115, 115, 115, 115, 0, 0, 0, 0, 109, 111, 110, 100, 97, 121, 0, 0, 116, 117, 101, 115, 100, 97, 121, 0, 119, 101, 100, 110, 101, 115, 100, 97, 121, 0, 0, 0, 116, 104, 117, 114, 115, 100, 97, 121, 0, 0, 0, 0, 102, 114, 105, 100, 97, 121, 0, 0, 115, 97, 116, 117, 114, 100, 97, 121, 0, 0, 0, 0, 115, 117, 110, 100, 97, 121, 0, 0 ],
					"saved_bundle_length" : 120,
					"text" : "/days/of/the/week : [\"monday\", \"tuesday\", \"wednesday\", \"thursday\", \"friday\", \"saturday\", \"sunday\"]",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-9",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 401.0, 495.0, 47.0 ],
					"text" : "Addresses start with the backslash character. Colons ( : ) separate addresses from values.\nUse a  space before the colon.\nUse square brackets when a value is a list of values:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"frame_color" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 0.0 ],
					"id" : "obj-7",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 295.0, 118.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 97, 100, 100, 114, 101, 115, 115, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 33 ],
					"saved_bundle_length" : 40,
					"text" : "/address : 33",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 249.0, 280.0, 33.0 ],
					"text" : "That bundle is empty.\nThis bundle contains an address bound to a value:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"frame_color" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 0.0 ],
					"id" : "obj-4",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 193.0, 146.0, 24.0 ],
					"saved_bundle_data" : [  ],
					"saved_bundle_length" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 17.0, 99.0, 497.0, 74.0 ],
					"text" : "Use odot bundles to organize information\nCreate bundles by typing a description of them into the o.compose box. \n\nIn Max/MSP use the \"C\" keyboard to make an o.compose box appear  in an unlocked patcher:"
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
					"destination" : [ "obj-106", 0 ],
					"hidden" : 1,
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"hidden" : 1,
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"hidden" : 1,
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"hidden" : 1,
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"hidden" : 1,
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 0 ],
					"hidden" : 1,
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"hidden" : 1,
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"hidden" : 1,
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"hidden" : 1,
					"source" : [ "obj-117", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"hidden" : 1,
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"hidden" : 1,
					"source" : [ "obj-121", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"hidden" : 1,
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"hidden" : 1,
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"hidden" : 1,
					"source" : [ "obj-127", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"hidden" : 1,
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"hidden" : 1,
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"hidden" : 1,
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"hidden" : 1,
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"hidden" : 1,
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"hidden" : 1,
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"hidden" : 1,
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"hidden" : 1,
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"hidden" : 1,
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"hidden" : 1,
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.compose.mxo",
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
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.if.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
