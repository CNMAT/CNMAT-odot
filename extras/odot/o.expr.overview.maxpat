{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 11.0, 54.0, 1474.0, 839.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 11.0,
		"default_fontface" : 0,
		"default_fontname" : "Helvetica",
		"gridonopen" : 2,
		"gridsize" : [ 10.0, 10.0 ],
		"gridsnaponopen" : 2,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 0,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
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
		"subpatcher_template" : "gridded",
		"boxes" : [ 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 18.0,
					"id" : "obj-319",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1066.0, 450.0, 99.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1067.0, 453.0, 99.0, 24.0 ],
					"text" : "Constants",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"underline" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 18.0,
					"id" : "obj-318",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 50.0, 99.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 50.0, 99.0, 24.0 ],
					"text" : "Functions",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"underline" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 18.0,
					"id" : "obj-317",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 450.0, 99.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 450.0, 99.0, 24.0 ],
					"text" : "Operators",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"underline" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-316",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 330.0, 559.0, 122.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 479.0, 122.0, 17.0 ],
					"text" : "Aggregate construction",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-315",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 330.0, 600.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 522.0, 130.0, 20.0 ],
					"text" : "{}",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[246]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-313",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 330.0, 481.0, 45.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 274.0, 481.0, 45.0, 17.0 ],
					"text" : "Lookup",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-312",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 810.0, 481.0, 69.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 481.0, 69.0, 17.0 ],
					"text" : "Conditionals",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-311",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 650.0, 480.0, 35.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.0, 480.0, 35.0, 17.0 ],
					"text" : "Logic",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-310",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.0, 481.0, 68.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 481.0, 68.0, 17.0 ],
					"text" : "Comparison",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-309",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 170.0, 480.0, 66.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 480.0, 66.0, 17.0 ],
					"text" : "Assignment",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-308",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 479.5, 57.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 479.5, 57.0, 17.0 ],
					"text" : "Arithmetic",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-275",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 170.0, 610.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 610.0, 130.0, 20.0 ],
					"text" : "-=",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[208]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-276",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 522.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 522.0, 130.0, 20.0 ],
					"text" : "-",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[213]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-277",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 650.0, 564.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.0, 566.0, 130.0, 20.0 ],
					"text" : "||",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[217]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-278",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 650.0, 544.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.0, 544.0, 130.0, 20.0 ],
					"text" : "|",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[218]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-279",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 810.0, 522.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 522.0, 130.0, 20.0 ],
					"text" : "??",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[219]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-280",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 810.0, 500.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 500.0, 130.0, 20.0 ],
					"text" : "??=",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[220]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-281",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 330.0, 500.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 274.0, 500.0, 130.0, 20.0 ],
					"text" : "[[]]",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[221]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-282",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 610.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 610.0, 130.0, 20.0 ],
					"text" : "!",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[222]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-283",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 490.0, 522.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 522.0, 130.0, 20.0 ],
					"text" : "!=",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[223]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-284",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 170.0, 632.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 632.0, 130.0, 20.0 ],
					"text" : "*=",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[224]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-285",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 544.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 544.0, 130.0, 20.0 ],
					"text" : "*",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[225]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-286",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 170.0, 676.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 676.0, 130.0, 20.0 ],
					"text" : "%=",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[226]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-287",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 588.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 588.0, 130.0, 20.0 ],
					"text" : "%",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[227]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-288",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 490.0, 566.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 566.0, 130.0, 20.0 ],
					"text" : "<",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[228]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-289",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 330.0, 580.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 500.0, 130.0, 20.0 ],
					"text" : "[]",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[229]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-290",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 490.0, 610.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 610.0, 130.0, 20.0 ],
					"text" : "<=",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[230]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-291",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 170.0, 544.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 544.0, 130.0, 20.0 ],
					"text" : "++",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[231]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-292",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 810.0, 544.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 544.0, 130.0, 20.0 ],
					"text" : "?:",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[232]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-293",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 490.0, 544.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 544.0, 130.0, 20.0 ],
					"text" : ">",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[233]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-294",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 330.0, 520.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 274.0, 522.0, 130.0, 20.0 ],
					"text" : ".",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[234]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-295",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 490.0, 588.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 588.0, 130.0, 20.0 ],
					"text" : ">=",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[235]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-296",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 490.0, 500.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 500.0, 130.0, 20.0 ],
					"text" : "==",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[236]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-297",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 170.0, 654.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 654.0, 130.0, 20.0 ],
					"text" : "/=",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[237]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-298",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 566.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 566.0, 130.0, 20.0 ],
					"text" : "/",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[238]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-299",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 170.0, 566.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 566.0, 130.0, 20.0 ],
					"text" : "—",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[239]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-300",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 170.0, 522.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 522.0, 130.0, 20.0 ],
					"text" : "[[]]=",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[240]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-301",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 170.0, 500.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 500.0, 130.0, 20.0 ],
					"text" : "=",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[241]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-302",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 650.0, 522.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.0, 522.0, 130.0, 20.0 ],
					"text" : "&&",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[242]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-303",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 650.0, 500.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.0, 500.0, 130.0, 20.0 ],
					"text" : "&",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[243]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-304",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 170.0, 588.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 588.0, 130.0, 20.0 ],
					"text" : "+=",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[244]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-305",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 500.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 500.0, 130.0, 20.0 ],
					"text" : "+",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[245]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-258",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 808.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 808.0, 130.0, 20.0 ],
					"text" : "twopi",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[200]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-259",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 786.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 786.0, 130.0, 20.0 ],
					"text" : "twooverpi",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[201]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-260",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 764.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 764.0, 130.0, 20.0 ],
					"text" : "sqrttwo",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[202]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-261",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 742.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 742.0, 130.0, 20.0 ],
					"text" : "sqrthalf",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[203]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-262",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 720.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 720.0, 130.0, 20.0 ],
					"text" : "radtodeg",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[204]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-263",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 698.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 698.0, 130.0, 20.0 ],
					"text" : "quarterpi",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[205]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-264",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 676.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 676.0, 130.0, 20.0 ],
					"text" : "pi",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[206]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-265",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 654.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 654.0, 130.0, 20.0 ],
					"text" : "oneoverpi",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[207]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-267",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 632.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 632.0, 130.0, 20.0 ],
					"text" : "logtwoe",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[209]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-268",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 610.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 610.0, 130.0, 20.0 ],
					"text" : "logtene",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[210]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-269",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 588.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 588.0, 130.0, 20.0 ],
					"text" : "lntwo",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[211]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-270",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 566.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 566.0, 130.0, 20.0 ],
					"text" : "lnten",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[212]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-272",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 544.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 544.0, 130.0, 20.0 ],
					"text" : "halfpi",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[214]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-273",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 522.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 522.0, 130.0, 20.0 ],
					"text" : "e",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[215]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-274",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 500.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 500.0, 130.0, 20.0 ],
					"text" : "degtorad",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[216]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 500.0, 819.0, 77.0, 19.0 ],
					"text" : "route symbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 500.0, 780.0, 50.5, 19.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0
					}
,
					"text" : "coll"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-242",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 84.0, 129.0, 1802.0, 872.0 ],
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
						"subpatcher_template" : "gridded",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1330.0, 290.0, 77.0, 20.0 ],
									"text" : "route symbol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 1330.0, 251.0, 50.5, 20.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}
,
									"text" : "coll"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-35",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1171.0, 509.0, 130.0, 20.0 ],
									"text" : "-=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[30]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-36",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1171.0, 487.0, 130.0, 20.0 ],
									"text" : "-",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[31]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-37",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1171.0, 465.0, 130.0, 20.0 ],
									"text" : "||",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[32]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-21",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1039.0, 751.0, 130.0, 20.0 ],
									"text" : "|",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[16]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-22",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1039.0, 729.0, 130.0, 20.0 ],
									"text" : "??",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[17]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-23",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1039.0, 707.0, 130.0, 20.0 ],
									"text" : "??=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[18]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-24",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1039.0, 685.0, 130.0, 20.0 ],
									"text" : "[[]]",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[19]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-25",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1039.0, 663.0, 130.0, 20.0 ],
									"text" : "!",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[20]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-26",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1039.0, 641.0, 130.0, 20.0 ],
									"text" : "!=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[21]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-27",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1039.0, 619.0, 130.0, 20.0 ],
									"text" : "*=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[22]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-28",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1039.0, 597.0, 130.0, 20.0 ],
									"text" : "*",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[23]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-29",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1039.0, 575.0, 130.0, 20.0 ],
									"text" : "%=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[24]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-30",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1039.0, 553.0, 130.0, 20.0 ],
									"text" : "%",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[25]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-31",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1039.0, 531.0, 130.0, 20.0 ],
									"text" : "<",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[26]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-32",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1039.0, 509.0, 130.0, 20.0 ],
									"text" : "[]",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[27]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-33",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1039.0, 487.0, 130.0, 20.0 ],
									"text" : "<=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[28]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-34",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1039.0, 465.0, 130.0, 20.0 ],
									"text" : "++",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[29]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-2",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 907.0, 751.0, 130.0, 20.0 ],
									"text" : "?:",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[2]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-3",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 907.0, 729.0, 130.0, 20.0 ],
									"text" : ">",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[3]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-4",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 907.0, 707.0, 130.0, 20.0 ],
									"text" : ".",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[4]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-5",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 907.0, 685.0, 130.0, 20.0 ],
									"text" : ">=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[5]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-6",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 907.0, 663.0, 130.0, 20.0 ],
									"text" : "==",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[6]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-7",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 907.0, 641.0, 130.0, 20.0 ],
									"text" : "/=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[7]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-10",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 907.0, 619.0, 130.0, 20.0 ],
									"text" : "/",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[8]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-11",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 907.0, 597.0, 130.0, 20.0 ],
									"text" : "—",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[9]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-12",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 907.0, 575.0, 130.0, 20.0 ],
									"text" : "[[]]=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[10]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-13",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 907.0, 553.0, 130.0, 20.0 ],
									"text" : "=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[11]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-15",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 907.0, 531.0, 130.0, 20.0 ],
									"text" : "&&",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[12]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-16",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 907.0, 509.0, 130.0, 20.0 ],
									"text" : "&",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[13]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-17",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 907.0, 487.0, 130.0, 20.0 ],
									"text" : "+=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[14]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-20",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 907.0, 465.0, 130.0, 20.0 ],
									"text" : "+",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[15]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 748.0, 144.0, 438.0, 20.0 ],
									"text" : "+ += & && = [[]]= {} — / /= == >= . > ?: ++ <= [] < % %= * *= != ! [[]] ??= ?? | || - -="
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-115",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 530.0, 130.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-114",
									"maxclass" : "newobj",
									"numinlets" : 15,
									"numoutlets" : 15,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 530.0, 290.0, 208.0, 20.0 ],
									"text" : "route 1 2 3 4 5 6 7 8 9 10 11 12 13 14"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-113",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 530.0, 260.0, 53.0, 20.0 ],
									"text" : "prepend"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-112",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 550.0, 230.0, 72.0, 20.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-110",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 530.0, 170.0, 41.0, 20.0 ],
									"text" : "uzi 14"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-96",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 626.0, 130.0, 20.0 ],
									"text" : ">",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[1]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-97",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 604.0, 130.0, 20.0 ],
									"text" : ".",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[44]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-98",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 582.0, 130.0, 20.0 ],
									"text" : ">=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[45]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-99",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 560.0, 130.0, 20.0 ],
									"text" : "==",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[46]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-100",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 538.0, 130.0, 20.0 ],
									"text" : "/=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[47]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-101",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 516.0, 130.0, 20.0 ],
									"text" : "/",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[48]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-102",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 494.0, 130.0, 20.0 ],
									"text" : "—",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[49]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-103",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 472.0, 130.0, 20.0 ],
									"text" : "{}",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[50]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-104",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 450.0, 130.0, 20.0 ],
									"text" : "[[]]=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[51]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-105",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 428.0, 130.0, 20.0 ],
									"text" : "=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[52]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-106",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 406.0, 130.0, 20.0 ],
									"text" : "&&",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[53]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-107",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 384.0, 130.0, 20.0 ],
									"text" : "&",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[54]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-108",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 362.0, 130.0, 20.0 ],
									"text" : "+=",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[55]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
									"id" : "obj-109",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 340.0, 130.0, 20.0 ],
									"text" : "+",
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "150-button[56]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 818.5, 200.0, 43.0, 20.0 ],
									"text" : "zlclear"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 700.0, 260.0, 75.0, 20.0 ],
									"text" : "prepend text"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 658.5, 190.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 700.0, 230.0, 54.0, 20.0 ],
									"text" : "zl.queue"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"linecount" : 6,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 700.0, 45.0, 1093.0, 80.0 ],
									"text" : "abs acos acosh add and andalso apply aseq asin asinh assign assign_to_index assigntobundlemember atan atan2 atanh avg bitand bitor blob bool bound bundle butlast cast cbrt ceil char clip cos cosh cross cumsum degtorad delete det div dot e emptybundle eq erf erfc eval exists exp expm1 extrema first float32 float64 floattotime floor fmod ftom gamma ge getaddresses getbundlemember getmsgcount gettimetag gt halfpi hton32 hton64 hypot identity if ilogb imu int16 int32 int64 int8 interleave j0 j1 jn join l2norm lambda last le length lgamma list lnten lntwo log log10 logb logtene logtwoe lreduce lt map match max mean median min minus1 mod mod mtof mul ne nextafter nfill not nth ntoh32 ntoh64 oneoverpi or orelse pi plus1 pow product prog1 prog2 progn quarterpi quickhull quote radtodeg range readstring remainder rest rev reverse round rreduce scale settimetag sign sin sinh sort sortidx split sqrt sqrthalf sqrttwo strchar strcmp strfind string strlen strtotime sub sum tan tanh tokenize twooverpi twopi typetags uint16 uint32 uint64 uint8 value y0 y1 yn"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 0 ],
									"source" : [ "obj-110", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-110", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"source" : [ "obj-112", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-114", 0 ],
									"source" : [ "obj-113", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"source" : [ "obj-114", 9 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-101", 0 ],
									"source" : [ "obj-114", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-102", 0 ],
									"source" : [ "obj-114", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-103", 0 ],
									"source" : [ "obj-114", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"source" : [ "obj-114", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 0 ],
									"source" : [ "obj-114", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-114", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-107", 0 ],
									"source" : [ "obj-114", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-108", 0 ],
									"source" : [ "obj-114", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-109", 0 ],
									"source" : [ "obj-114", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"source" : [ "obj-114", 13 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"source" : [ "obj-114", 12 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-98", 0 ],
									"source" : [ "obj-114", 11 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 0 ],
									"source" : [ "obj-114", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-110", 0 ],
									"source" : [ "obj-115", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-15", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-17", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-20", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-21", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-22", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-23", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-24", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-25", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-26", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-27", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-28", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-29", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-30", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-31", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-32", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-33", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-34", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-35", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-36", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-37", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-6", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1690.0, 252.0, 65.0, 19.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p johnnasty"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-228",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1462.0, 376.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1330.0, 310.0, 130.0, 20.0 ],
					"text" : "yn",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[169]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-229",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1462.0, 354.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1330.0, 288.0, 130.0, 20.0 ],
					"text" : "y1",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[170]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-230",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1462.0, 332.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1330.0, 266.0, 130.0, 20.0 ],
					"text" : "y0",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[171]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-231",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1462.0, 310.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1330.0, 244.0, 130.0, 20.0 ],
					"text" : "value",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[172]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-232",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1462.0, 288.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1330.0, 222.0, 130.0, 20.0 ],
					"text" : "uint8",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[173]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-233",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1462.0, 266.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1330.0, 200.0, 130.0, 20.0 ],
					"text" : "uint64",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[174]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-234",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1462.0, 244.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1330.0, 178.0, 130.0, 20.0 ],
					"text" : "uint32",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[175]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-235",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1462.0, 222.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1330.0, 156.0, 130.0, 20.0 ],
					"text" : "uint16",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[176]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-236",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1462.0, 200.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1330.0, 134.0, 130.0, 20.0 ],
					"text" : "typetags",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[177]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-239",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1462.0, 134.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1330.0, 112.0, 130.0, 20.0 ],
					"text" : "tokenize",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[180]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-240",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1462.0, 112.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1330.0, 90.0, 130.0, 20.0 ],
					"text" : "tanh",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[181]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-241",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1462.0, 90.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1198.0, 376.0, 130.0, 20.0 ],
					"text" : "tan",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[182]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-214",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1330.0, 376.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1198.0, 354.0, 130.0, 20.0 ],
					"text" : "sum",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[155]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-215",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1330.0, 354.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1198.0, 332.0, 130.0, 20.0 ],
					"text" : "sub",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[156]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-216",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1330.0, 332.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1198.0, 310.0, 130.0, 20.0 ],
					"text" : "strtotime",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[157]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-217",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1330.0, 310.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1198.0, 288.0, 130.0, 20.0 ],
					"text" : "strlen",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[158]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-218",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1330.0, 288.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1198.0, 266.0, 130.0, 20.0 ],
					"text" : "string",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[159]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-219",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1330.0, 266.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1198.0, 244.0, 130.0, 20.0 ],
					"text" : "strfind",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[160]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-220",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1330.0, 244.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1198.0, 222.0, 130.0, 20.0 ],
					"text" : "strcmp",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[161]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-221",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1330.0, 222.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1198.0, 200.0, 130.0, 20.0 ],
					"text" : "strchar",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[162]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-224",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1330.0, 156.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1198.0, 178.0, 130.0, 20.0 ],
					"text" : "sqrt",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[165]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-225",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1330.0, 134.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1198.0, 156.0, 130.0, 20.0 ],
					"text" : "split",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[166]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-226",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1330.0, 112.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1198.0, 134.0, 130.0, 20.0 ],
					"text" : "sortidx",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[167]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-227",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1330.0, 90.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1198.0, 112.0, 130.0, 20.0 ],
					"text" : "sort",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[168]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-200",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1198.0, 376.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1198.0, 90.0, 130.0, 20.0 ],
					"text" : "sinh",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[141]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-201",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1198.0, 354.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 376.0, 130.0, 20.0 ],
					"text" : "sin",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[142]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-202",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1198.0, 332.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 354.0, 130.0, 20.0 ],
					"text" : "sign",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[143]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-203",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1198.0, 310.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 332.0, 130.0, 20.0 ],
					"text" : "settimetag",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[144]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-204",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1198.0, 288.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 310.0, 130.0, 20.0 ],
					"text" : "scale",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[145]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-205",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1198.0, 266.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 288.0, 130.0, 20.0 ],
					"text" : "rreduce",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[146]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-206",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1198.0, 244.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 266.0, 130.0, 20.0 ],
					"text" : "round",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[147]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-207",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1198.0, 222.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 244.0, 130.0, 20.0 ],
					"text" : "reverse",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[148]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-208",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1198.0, 200.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 222.0, 130.0, 20.0 ],
					"text" : "rev",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[149]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-209",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1198.0, 178.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 200.0, 130.0, 20.0 ],
					"text" : "rest",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[150]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-210",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1198.0, 156.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 178.0, 130.0, 20.0 ],
					"text" : "remainder",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[151]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-211",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1198.0, 134.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 156.0, 130.0, 20.0 ],
					"text" : "readstring",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[152]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-212",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1198.0, 112.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 134.0, 130.0, 20.0 ],
					"text" : "range",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[153]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-186",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 376.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 112.0, 130.0, 20.0 ],
					"text" : "quote",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[127]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-187",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 354.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1066.0, 90.0, 130.0, 20.0 ],
					"text" : "quickhull",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[128]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-189",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 310.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 934.0, 376.0, 130.0, 20.0 ],
					"text" : "progn",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[130]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-190",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 288.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 934.0, 354.0, 130.0, 20.0 ],
					"text" : "prog2",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[131]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-191",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 266.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 934.0, 332.0, 130.0, 20.0 ],
					"text" : "prog1",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[132]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-192",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 244.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 934.0, 310.0, 130.0, 20.0 ],
					"text" : "product",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[133]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-193",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 222.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 934.0, 288.0, 130.0, 20.0 ],
					"text" : "pow",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[134]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-194",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 200.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 934.0, 266.0, 130.0, 20.0 ],
					"text" : "plus1",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[135]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-196",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 156.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 934.0, 244.0, 130.0, 20.0 ],
					"text" : "orelse",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[137]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-197",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 134.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 934.0, 222.0, 130.0, 20.0 ],
					"text" : "or",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[138]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-199",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 90.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 934.0, 200.0, 130.0, 20.0 ],
					"text" : "ntoh64",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[140]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-172",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 934.0, 376.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 934.0, 178.0, 130.0, 20.0 ],
					"text" : "ntoh32",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[113]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-173",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 934.0, 354.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 934.0, 156.0, 130.0, 20.0 ],
					"text" : "nth",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[114]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-174",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 934.0, 332.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 934.0, 134.0, 130.0, 20.0 ],
					"text" : "not",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[115]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-175",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 934.0, 310.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 934.0, 112.0, 130.0, 20.0 ],
					"text" : "nfill",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[116]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-176",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 934.0, 288.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 934.0, 90.0, 130.0, 20.0 ],
					"text" : "nextafter",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[117]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-177",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 934.0, 266.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 376.0, 130.0, 20.0 ],
					"text" : "ne",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[118]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-178",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 934.0, 244.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 354.0, 130.0, 20.0 ],
					"text" : "mul",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[119]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-179",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 934.0, 222.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 332.0, 130.0, 20.0 ],
					"text" : "mtof",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[120]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-181",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 934.0, 178.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 310.0, 130.0, 20.0 ],
					"text" : "mod",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[122]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-182",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 934.0, 156.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 288.0, 130.0, 20.0 ],
					"text" : "minus1",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[123]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-183",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 934.0, 134.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 266.0, 130.0, 20.0 ],
					"text" : "min",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[124]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-184",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 934.0, 112.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 244.0, 130.0, 20.0 ],
					"text" : "median",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[125]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-185",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 934.0, 90.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 222.0, 130.0, 20.0 ],
					"text" : "mean",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[126]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-158",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 802.0, 376.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 200.0, 130.0, 20.0 ],
					"text" : "max",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[99]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-159",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 802.0, 354.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 178.0, 130.0, 20.0 ],
					"text" : "match",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[100]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-160",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 802.0, 332.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 156.0, 130.0, 20.0 ],
					"text" : "map",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[101]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-161",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 802.0, 310.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 134.0, 130.0, 20.0 ],
					"text" : "lt",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[102]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-162",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 802.0, 288.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 112.0, 130.0, 20.0 ],
					"text" : "lreduce",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[103]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-165",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 802.0, 222.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 90.0, 130.0, 20.0 ],
					"text" : "logb",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[106]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-166",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 802.0, 200.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 376.0, 130.0, 20.0 ],
					"text" : "log10",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[107]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-167",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 802.0, 178.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 354.0, 130.0, 20.0 ],
					"text" : "log",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[108]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-170",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 802.0, 112.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 332.0, 130.0, 20.0 ],
					"text" : "int32",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[111]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-171",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 802.0, 90.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 310.0, 130.0, 20.0 ],
					"text" : "lgamma",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[112]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-144",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 376.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 288.0, 130.0, 20.0 ],
					"text" : "length",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[85]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-145",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 354.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 266.0, 130.0, 20.0 ],
					"text" : "le",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[86]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-146",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 332.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 244.0, 130.0, 20.0 ],
					"text" : "last",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[87]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-147",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 310.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 222.0, 130.0, 20.0 ],
					"text" : "lambda",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[88]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-148",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 288.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 200.0, 130.0, 20.0 ],
					"text" : "l2norm",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[89]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-149",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 266.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 178.0, 130.0, 20.0 ],
					"text" : "join",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[90]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-150",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 244.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 156.0, 130.0, 20.0 ],
					"text" : "jn",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[91]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-151",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 222.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 134.0, 130.0, 20.0 ],
					"text" : "j1",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[92]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-152",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 200.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 112.0, 130.0, 20.0 ],
					"text" : "j0",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[93]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-153",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 178.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 90.0, 130.0, 20.0 ],
					"text" : "interleave",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[94]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-154",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 156.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.0, 376.0, 130.0, 20.0 ],
					"text" : "int8",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[95]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-155",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 134.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.0, 354.0, 130.0, 20.0 ],
					"text" : "int64",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[96]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-156",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 112.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.0, 332.0, 130.0, 20.0 ],
					"text" : "int32",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[97]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-157",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.0, 90.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.0, 310.0, 130.0, 20.0 ],
					"text" : "int16",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[98]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-131",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 538.0, 354.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.0, 288.0, 130.0, 20.0 ],
					"text" : "ilogb",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[72]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-132",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 538.0, 332.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.0, 266.0, 130.0, 20.0 ],
					"text" : "if",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[73]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-133",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 538.0, 310.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.0, 244.0, 130.0, 20.0 ],
					"text" : "identity",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[74]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-134",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 538.0, 288.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.0, 222.0, 130.0, 20.0 ],
					"text" : "hypot",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[75]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-135",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 538.0, 266.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.0, 200.0, 130.0, 20.0 ],
					"text" : "hton64",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[76]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-136",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 538.0, 244.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.0, 178.0, 130.0, 20.0 ],
					"text" : "hton32",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[77]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-138",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 538.0, 200.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.0, 156.0, 130.0, 20.0 ],
					"text" : "gt",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[79]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-139",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 538.0, 178.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.0, 134.0, 130.0, 20.0 ],
					"text" : "gettimetag",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[80]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-140",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 538.0, 156.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.0, 112.0, 130.0, 20.0 ],
					"text" : "getmsgcount",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[81]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-141",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 538.0, 134.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.0, 90.0, 130.0, 20.0 ],
					"text" : "getbundlemember",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[82]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-142",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 538.0, 112.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 376.0, 130.0, 20.0 ],
					"text" : "getaddresses",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[83]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-143",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 538.0, 90.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 354.0, 130.0, 20.0 ],
					"text" : "ge",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[84]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-116",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 406.0, 376.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 332.0, 130.0, 20.0 ],
					"text" : "gamma",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[57]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-117",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 406.0, 354.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 310.0, 130.0, 20.0 ],
					"text" : "ftom",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[58]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-118",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 406.0, 332.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 288.0, 130.0, 20.0 ],
					"text" : "fmod",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[59]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-119",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 406.0, 310.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 266.0, 130.0, 20.0 ],
					"text" : "floor",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[60]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-120",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 406.0, 288.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 244.0, 130.0, 20.0 ],
					"text" : "floattotime",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[61]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-121",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 406.0, 266.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 222.0, 130.0, 20.0 ],
					"text" : "float64",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[62]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-122",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 406.0, 244.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 200.0, 130.0, 20.0 ],
					"text" : "float32",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[63]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-123",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 406.0, 222.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 178.0, 130.0, 20.0 ],
					"text" : "first",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[64]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-124",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 406.0, 200.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 156.0, 130.0, 20.0 ],
					"text" : "extrema",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[65]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-125",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 406.0, 178.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 134.0, 130.0, 20.0 ],
					"text" : "expm1",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[66]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-126",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 406.0, 156.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 112.0, 130.0, 20.0 ],
					"text" : "exp",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[67]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-127",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 406.0, 134.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 90.0, 130.0, 20.0 ],
					"text" : "exists",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[68]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-128",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 406.0, 112.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 274.0, 376.0, 130.0, 20.0 ],
					"text" : "eval",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[69]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-129",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 406.0, 90.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 274.0, 354.0, 130.0, 20.0 ],
					"text" : "erfc",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[70]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-95",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 274.0, 376.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 274.0, 332.0, 130.0, 20.0 ],
					"text" : "erf",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[43]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-94",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 274.0, 354.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 274.0, 310.0, 130.0, 20.0 ],
					"text" : "eq",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[42]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-93",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 274.0, 332.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 274.0, 288.0, 130.0, 20.0 ],
					"text" : "emptybundle",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[41]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-91",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 274.0, 288.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 274.0, 266.0, 130.0, 20.0 ],
					"text" : "dot",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[39]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-90",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 274.0, 266.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 274.0, 244.0, 130.0, 20.0 ],
					"text" : "div",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[38]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-89",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 274.0, 244.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 274.0, 222.0, 130.0, 20.0 ],
					"text" : "det",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[37]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-88",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 274.0, 222.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 274.0, 200.0, 130.0, 20.0 ],
					"text" : "delete",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[36]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-86",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 274.0, 178.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 274.0, 178.0, 130.0, 20.0 ],
					"text" : "cumsum",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[34]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-85",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 274.0, 156.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 274.0, 156.0, 130.0, 20.0 ],
					"text" : "cross",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[33]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-84",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 274.0, 134.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 274.0, 134.0, 130.0, 20.0 ],
					"text" : "cosh",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[32]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-83",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 274.0, 112.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 274.0, 112.0, 130.0, 20.0 ],
					"text" : "cos",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[31]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-82",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 274.0, 90.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 274.0, 90.0, 130.0, 20.0 ],
					"text" : "clip",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[30]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-81",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 142.0, 376.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 376.0, 130.0, 20.0 ],
					"text" : "char",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[15]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-80",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 142.0, 354.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 354.0, 130.0, 20.0 ],
					"text" : "ceil",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[14]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-79",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 142.0, 332.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 332.0, 130.0, 20.0 ],
					"text" : "cbrt",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[13]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-78",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 142.0, 310.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 310.0, 130.0, 20.0 ],
					"text" : "cast",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[12]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-77",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 142.0, 288.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 288.0, 130.0, 20.0 ],
					"text" : "butlast",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[11]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-76",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 142.0, 266.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 266.0, 130.0, 20.0 ],
					"text" : "bundle",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[10]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-75",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 142.0, 244.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 244.0, 130.0, 20.0 ],
					"text" : "bound",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[9]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-74",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 142.0, 222.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 222.0, 130.0, 20.0 ],
					"text" : "bool",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[8]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-73",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 142.0, 200.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 200.0, 130.0, 20.0 ],
					"text" : "blob",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[7]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-72",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 142.0, 178.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 178.0, 130.0, 20.0 ],
					"text" : "bitor",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[6]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-71",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 142.0, 156.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 156.0, 130.0, 20.0 ],
					"text" : "bitand",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[5]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-70",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 142.0, 134.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 134.0, 130.0, 20.0 ],
					"text" : "avg",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[4]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-69",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 142.0, 112.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 112.0, 130.0, 20.0 ],
					"text" : "atanh",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[3]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-68",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 142.0, 90.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 90.0, 130.0, 20.0 ],
					"text" : "atan2",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[2]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-53",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 376.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 376.0, 130.0, 20.0 ],
					"text" : "atan",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[16]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-54",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 354.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 354.0, 130.0, 20.0 ],
					"text" : "assigntobundlemember",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[17]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-55",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 332.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 332.0, 130.0, 20.0 ],
					"text" : "assign_to_index",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[18]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-56",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 310.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 310.0, 130.0, 20.0 ],
					"text" : "assign",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[19]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-57",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 288.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 288.0, 130.0, 20.0 ],
					"text" : "asinh",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[20]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-58",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 266.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 266.0, 130.0, 20.0 ],
					"text" : "asin",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[21]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-59",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 244.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 244.0, 130.0, 20.0 ],
					"text" : "aseq",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[22]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-60",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 222.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 222.0, 130.0, 20.0 ],
					"text" : "apply",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[23]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-61",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 200.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 200.0, 130.0, 20.0 ],
					"text" : "andalso",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[24]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-62",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 178.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 178.0, 130.0, 20.0 ],
					"text" : "and",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[25]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-63",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 156.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 156.0, 130.0, 20.0 ],
					"text" : "add",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[26]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-64",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 134.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 134.0, 130.0, 20.0 ],
					"text" : "acosh",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[27]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-65",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 112.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 112.0, 130.0, 20.0 ],
					"text" : "acos",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[28]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.562441, 0.591367, 0.533516, 1.0 ],
					"id" : "obj-66",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 90.0, 130.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 90.0, 130.0, 20.0 ],
					"text" : "abs",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "150-button[29]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
						"subpatcher_template" : "gridded",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-16",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 1,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 84.0, 129.0, 1196.0, 702.0 ],
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
										"subpatcher_template" : "gridded",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 780.0, 190.0, 110.0, 20.0 ],
													"text" : "routepass min max"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "stop" ],
													"patching_rect" : [ 585.0, 289.0, 47.0, 20.0 ],
													"text" : "t s stop"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 675.0, 349.0, 69.0, 20.0 ],
													"text" : "zl.reg"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 675.0, 319.0, 35.0, 20.0 ],
													"text" : "del 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "bang", "" ],
													"patching_rect" : [ 625.5, 90.0, 118.0, 20.0 ],
													"text" : "t s b s"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 585.0, 259.0, 77.0, 20.0 ],
													"text" : "route symbol"
												}

											}
, 											{
												"box" : 												{
													"coll_data" : 													{
														"count" : 21,
														"data" : [ 															{
																"key" : "#",
																"value" : [ "comment" ]
															}
, 															{
																"key" : "+",
																"value" : [ "add" ]
															}
, 															{
																"key" : "-",
																"value" : [ "sub" ]
															}
, 															{
																"key" : "/",
																"value" : [ "div" ]
															}
, 															{
																"key" : "*",
																"value" : [ "mul" ]
															}
, 															{
																"key" : "*=",
																"value" : [ "mul_assign" ]
															}
, 															{
																"key" : "+=",
																"value" : [ "add_assign" ]
															}
, 															{
																"key" : "-=",
																"value" : [ "sub_assign" ]
															}
, 															{
																"key" : "/=",
																"value" : [ "div_assign" ]
															}
, 															{
																"key" : "<",
																"value" : [ "lt" ]
															}
, 															{
																"key" : "<=",
																"value" : [ "lteq" ]
															}
, 															{
																"key" : "==",
																"value" : [ "eq" ]
															}
, 															{
																"key" : "!=",
																"value" : [ "neq" ]
															}
, 															{
																"key" : ">=",
																"value" : [ "gteq" ]
															}
, 															{
																"key" : ">",
																"value" : [ "gt" ]
															}
, 															{
																"key" : "&&",
																"value" : [ "and" ]
															}
, 															{
																"key" : "&",
																"value" : [ "andb" ]
															}
, 															{
																"key" : "||",
																"value" : [ "or" ]
															}
, 															{
																"key" : "??=",
																"value" : [ "null_coalescing_operator" ]
															}
, 															{
																"key" : "?",
																"value" : [ "ternary_operator" ]
															}
, 															{
																"key" : "[[]]",
																"value" : [ "element" ]
															}
 ]
													}
,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 585.0, 229.0, 89.0, 20.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1
													}
,
													"text" : "coll @embed 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-611",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 675.0, 480.0, 53.0, 20.0 ],
													"text" : "pcontrol"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-610",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 740.0, 550.0, 183.0, 20.0 ],
													"text" : "load odot-length.maxhelp"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-511",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 675.0, 420.0, 168.0, 20.0 ],
													"text" : "sprintf load odot-%s.maxhelp",
													"varname" : "loader"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-511", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-511", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-12", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-610", 1 ],
													"order" : 0,
													"source" : [ "obj-511", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-611", 0 ],
													"order" : 1,
													"source" : [ "obj-511", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-6", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-511", 0 ],
													"source" : [ "obj-6", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-511", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 1 ],
													"source" : [ "obj-8", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-8", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 50.0, 130.0, 76.0, 19.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p prev_loader"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 1,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 84.0, 129.0, 1327.0, 794.0 ],
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
										"subpatcher_template" : "gridded",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 1,
															"revision" : 1,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 109.0, 154.0, 640.0, 480.0 ],
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
														"subpatcher_template" : "gridded",
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-3",
																	"linecount" : 5,
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 100.0, 305.0, 68.0 ],
																	"text" : "# + - * / pow sqrt += -= *= /= aseq nfill [[]] length sum max min rev scale clip ceil round floor mtof ftom if < <= == >= > && || progn map lambda quote assign getaddresses value bound exists ??= delete typetags float32 int32 ?"
																}

															}
 ],
														"lines" : [  ]
													}
,
													"patching_rect" : [ 590.0, 340.0, 57.0, 20.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p prevlist"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-13",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 265.0, 340.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 235.0, 290.0, 100.0, 20.0 ],
													"text" : "&",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "32-button[1]"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-14",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 265.0, 365.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 235.0, 316.0, 100.0, 20.0 ],
													"text" : "|",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "33-button[1]"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-5",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 45.0, 390.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 15.0, 340.0, 100.0, 20.0 ],
													"text" : "cast",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "35-button[1]"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-4",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 265.0, 207.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 235.0, 165.0, 100.0, 20.0 ],
													"text" : "!=",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "29-button[1]"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-1",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 45.0, 359.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 15.0, 316.0, 100.0, 20.0 ],
													"text" : "?",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "47-button[1]"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "bang", "" ],
													"patching_rect" : [ 625.5, 90.0, 118.0, 20.0 ],
													"text" : "t s b s"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-513",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 45.0, 54.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 15.0, 15.0, 100.0, 20.0 ],
													"text" : "#",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "0-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-515",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 45.0, 79.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 15.0, 40.0, 100.0, 20.0 ],
													"text" : "+",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "1-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-517",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 45.0, 104.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 15.0, 65.0, 100.0, 20.0 ],
													"text" : "-",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "2-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-519",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 45.0, 129.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 15.0, 90.0, 100.0, 20.0 ],
													"text" : "*",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "3-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-521",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 45.0, 154.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 15.0, 115.0, 100.0, 20.0 ],
													"text" : "/",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "4-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-523",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 45.0, 179.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 15.0, 140.0, 100.0, 20.0 ],
													"text" : "pow",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "5-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-525",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 45.0, 204.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 15.0, 165.0, 100.0, 20.0 ],
													"text" : "sqrt",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "6-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-527",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 45.0, 229.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 15.0, 190.0, 100.0, 20.0 ],
													"text" : "+=",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "7-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-529",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 45.0, 254.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 15.0, 215.0, 100.0, 20.0 ],
													"text" : "-=",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "8-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-531",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 45.0, 279.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 15.0, 240.0, 100.0, 20.0 ],
													"text" : "*=",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "9-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-533",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 45.0, 304.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 15.0, 265.0, 100.0, 20.0 ],
													"text" : "/=",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "10-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-535",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 45.0, 329.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 15.0, 290.0, 100.0, 20.0 ],
													"text" : "aseq",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "11-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-537",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 155.0, 54.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 125.0, 15.0, 100.0, 20.0 ],
													"text" : "nfill",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "12-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-539",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 155.0, 79.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 125.0, 40.0, 100.0, 20.0 ],
													"text" : "lists",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "13-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-541",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 155.0, 104.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 125.0, 65.0, 100.0, 20.0 ],
													"text" : "length",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "14-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-543",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 155.0, 129.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 125.0, 90.0, 100.0, 20.0 ],
													"text" : "sum",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "15-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-545",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 155.0, 154.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 125.0, 115.0, 100.0, 20.0 ],
													"text" : "max",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "16-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-547",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 155.0, 179.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 125.0, 140.0, 100.0, 20.0 ],
													"text" : "min",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "17-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-549",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 155.0, 204.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 125.0, 165.0, 100.0, 20.0 ],
													"text" : "rev",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "18-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-551",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 155.0, 229.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 125.0, 190.0, 100.0, 20.0 ],
													"text" : "scale",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "19-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-553",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 155.0, 254.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 125.0, 215.0, 100.0, 20.0 ],
													"text" : "clip",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "20-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-555",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 155.0, 279.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 125.0, 240.0, 100.0, 20.0 ],
													"text" : "ceil",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "21-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-557",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 155.0, 304.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 125.0, 265.0, 100.0, 20.0 ],
													"text" : "round",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "22-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-559",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 155.0, 329.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 125.0, 290.0, 100.0, 20.0 ],
													"text" : "floor",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "23-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-561",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 265.0, 54.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 235.0, 15.0, 100.0, 20.0 ],
													"text" : "mtof",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "24-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-563",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 265.0, 79.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 235.0, 40.0, 100.0, 20.0 ],
													"text" : "ftom",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "25-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-565",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 265.0, 104.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 235.0, 65.0, 100.0, 20.0 ],
													"text" : "if",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "26-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-567",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 265.0, 129.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 235.0, 90.0, 100.0, 20.0 ],
													"text" : "<",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "27-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-569",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 265.0, 154.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 235.0, 115.0, 100.0, 20.0 ],
													"text" : "<=",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "28-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-571",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 265.0, 179.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 235.0, 140.0, 100.0, 20.0 ],
													"text" : "==",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "29-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-573",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 265.0, 234.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 235.0, 190.0, 100.0, 20.0 ],
													"text" : ">=",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "30-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-575",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 265.0, 259.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 235.0, 215.0, 100.0, 20.0 ],
													"text" : ">",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "31-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-577",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 265.0, 284.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 235.0, 240.0, 100.0, 20.0 ],
													"text" : "&&",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "32-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-579",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 265.0, 309.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 235.0, 265.0, 100.0, 20.0 ],
													"text" : "||",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "33-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-581",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 265.0, 390.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 235.0, 340.0, 100.0, 20.0 ],
													"text" : "progn",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "34-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-583",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 265.0, 420.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 235.0, 365.0, 100.0, 20.0 ],
													"text" : "map",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "35-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-585",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 375.0, 54.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 345.0, 15.0, 100.0, 20.0 ],
													"text" : "lambda",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "36-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-587",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 375.0, 79.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 345.0, 40.0, 100.0, 20.0 ],
													"text" : "quote",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "37-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-589",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 375.0, 104.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 345.0, 65.0, 100.0, 20.0 ],
													"text" : "assign",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "38-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-591",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 375.0, 129.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 345.0, 90.0, 100.0, 20.0 ],
													"text" : "getaddresses",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "39-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-593",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 375.0, 154.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 345.0, 115.0, 100.0, 20.0 ],
													"text" : "value",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "40-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-595",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 375.0, 179.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 345.0, 140.0, 100.0, 20.0 ],
													"text" : "bound",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "41-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-597",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 375.0, 204.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 345.0, 165.0, 100.0, 20.0 ],
													"text" : "exists",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "42-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-599",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 375.0, 229.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 345.0, 190.0, 100.0, 20.0 ],
													"text" : "??=",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "43-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-601",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 375.0, 254.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 345.0, 215.0, 100.0, 20.0 ],
													"text" : "delete",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "44-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-603",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 375.0, 279.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 345.0, 240.0, 100.0, 20.0 ],
													"text" : "typetags",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "45-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-605",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 375.0, 304.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 345.0, 265.0, 100.0, 20.0 ],
													"text" : "float32",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "46-button"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.580674, 0.592157, 0.578846, 1.0 ],
													"id" : "obj-607",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 375.0, 329.0, 100.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 345.0, 290.0, 100.0, 20.0 ],
													"text" : "int32",
													"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"varname" : "47-button"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-1", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-13", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-14", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-4", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-5", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-513", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-515", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-517", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-519", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-521", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-523", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-525", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-527", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-529", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-531", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-533", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-535", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-535", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-537", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-539", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-541", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-543", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-545", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-547", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-549", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-551", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-553", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-555", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-557", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-559", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-561", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-563", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-565", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-567", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-569", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-571", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-573", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-575", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-577", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-579", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-581", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-583", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-585", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-587", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-589", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-591", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-593", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-595", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-597", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-599", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-601", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-603", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-605", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-607", 1 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 50.0, 100.0, 42.0, 19.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p temp"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 110.0, 160.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 220.0, 270.0, 50.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-412",
									"items" : [ "remove", ",", "create", ",", "connect" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 230.0, 150.0, 100.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-613",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 137.5, 330.0, 69.0, 19.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-612",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 1,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 282.0, 104.0, 874.0, 626.0 ],
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
										"subpatcher_template" : "gridded",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 451.0, 181.0, 65.0, 20.0 ],
													"text" : "o.pack /list"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 451.0, 242.0, 86.0, 20.0 ],
													"text" : "o.route /sorted"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-5",
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 451.0, 205.0, 162.0, 32.0 ],
													"text" : "/sorted = sort(/list)"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 182.0, 521.0, 23.0, 23.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 494.0, 391.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 317.0, 223.0, 30.0, 20.0 ],
													"text" : "t l b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 182.0, 242.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 50.0, 71.0, 119.0, 20.0 ],
													"text" : "route int bang active"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-4",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.0, 31.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 330.0, 474.0, 72.0, 20.0 ],
													"text" : "gate"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-510",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 1,
															"revision" : 1,
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
														"subpatcher_template" : "gridded",
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-17",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 50.0, 100.0, 100.0, 22.0 ],
																	"text" : "zl.slice 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-15",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 228.0, 195.0, 22.0 ],
																	"text" : "script connect $1-button 1 loader 0"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-408",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-409",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 323.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-409", 0 ],
																	"source" : [ "obj-15", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-15", 0 ],
																	"source" : [ "obj-17", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-17", 0 ],
																	"source" : [ "obj-408", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 293.0, 370.0, 107.0, 20.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p connect_objects"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-413",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.0, 157.0, 29.5, 20.0 ],
													"text" : "+ 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-411",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 1,
															"revision" : 1,
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
														"subpatcher_template" : "gridded",
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-17",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 50.0, 100.0, 100.0, 22.0 ],
																	"text" : "zl.slice 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-15",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 228.0, 129.0, 22.0 ],
																	"text" : "script delete $1-button"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-408",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-409",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 323.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-409", 0 ],
																	"source" : [ "obj-15", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-15", 0 ],
																	"source" : [ "obj-17", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-17", 0 ],
																	"source" : [ "obj-408", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 50.0, 370.0, 105.0, 20.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p remove_objects"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-410",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 1,
															"revision" : 1,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 188.0, 198.0, 466.0, 347.0 ],
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
														"subpatcher_template" : "gridded",
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-12",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 8,
																			"minor" : 1,
																			"revision" : 1,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 59.0, 104.0, 792.0, 596.0 ],
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
																		"subpatcher_template" : "gridded",
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-35",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 154.5, 374.0, 29.5, 22.0 ],
																					"text" : "i"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-32",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"outlettype" : [ "int", "bang" ],
																					"patching_rect" : [ 50.0, 356.0, 30.0, 22.0 ],
																					"text" : "t i b"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-18",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 50.0, 299.0, 32.0, 22.0 ],
																					"text" : "* 25"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-14",
																					"maxclass" : "newobj",
																					"numinlets" : 3,
																					"numoutlets" : 3,
																					"outlettype" : [ "", "", "" ],
																					"patching_rect" : [ 62.0, 100.0, 86.0, 22.0 ],
																					"text" : "route list bang"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-2",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 62.0, 458.0, 100.0, 22.0 ],
																					"text" : "join"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-202",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 3,
																					"outlettype" : [ "int", "int", "int" ],
																					"patching_rect" : [ 62.0, 180.0, 257.0, 22.0 ],
																					"text" : "t i i i"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-201",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 300.0, 317.0, 100.0, 22.0 ],
																					"text" : "join"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-19",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 133.0, 416.0, 100.0, 22.0 ],
																					"text" : "join"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-17",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 62.0, 142.0, 100.0, 22.0 ],
																					"text" : "zl.slice 1"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-20",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 160.0, 335.0, 38.0, 22.0 ],
																					"text" : "* 110"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-22",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 220.0, 261.0, 29.5, 22.0 ],
																					"text" : "1"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-5",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "bang", "" ],
																					"patching_rect" : [ 160.0, 274.0, 36.0, 22.0 ],
																					"text" : "sel 0"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "newobj",
																					"numinlets" : 5,
																					"numoutlets" : 4,
																					"outlettype" : [ "int", "", "", "int" ],
																					"patching_rect" : [ 160.0, 306.0, 84.0, 22.0 ],
																					"text" : "counter"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-1",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 160.0, 216.0, 36.0, 22.0 ],
																					"text" : "% 15"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-9",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 62.0, 40.0, 30.0, 30.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-11",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 62.0, 540.0, 30.0, 30.0 ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-18", 0 ],
																					"order" : 1,
																					"source" : [ "obj-1", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 0 ],
																					"order" : 0,
																					"source" : [ "obj-1", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-17", 0 ],
																					"source" : [ "obj-14", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-22", 0 ],
																					"source" : [ "obj-14", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-201", 1 ],
																					"source" : [ "obj-17", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-202", 0 ],
																					"source" : [ "obj-17", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-32", 0 ],
																					"source" : [ "obj-18", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 1 ],
																					"source" : [ "obj-19", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-11", 0 ],
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-35", 1 ],
																					"source" : [ "obj-20", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-19", 1 ],
																					"source" : [ "obj-201", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 0 ],
																					"source" : [ "obj-202", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-201", 0 ],
																					"source" : [ "obj-202", 2 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 2 ],
																					"source" : [ "obj-22", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-32", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-35", 0 ],
																					"source" : [ "obj-32", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-19", 0 ],
																					"source" : [ "obj-35", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-20", 0 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-5", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-14", 0 ],
																					"source" : [ "obj-9", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 41.0, 92.0, 168.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"description" : "",
																		"digest" : "",
																		"globalpatchername" : "",
																		"tags" : ""
																	}
,
																	"text" : "p align_matrix_format_strings"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-16",
																	"linecount" : 4,
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 239.0, 40.0, 150.0, 60.0 ],
																	"text" : "1 y\n2 x\n3 id\n4 text string"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"linecount" : 3,
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 41.0, 131.0, 420.0, 49.0 ],
																	"text" : "script newdefault $3-button $2 $1 textbutton @text $4 @textoncolor 1. 1. 1. 1. @bgcolor 0.562441 0.591367 0.533516 1. @presentation 1 @presentation_position $2 $1"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-408",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 41.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-409",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 41.0, 271.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"source" : [ "obj-12", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-409", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-12", 0 ],
																	"source" : [ "obj-408", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 171.5, 370.0, 95.0, 20.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p make_objects"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 317.0, 272.0, 68.0, 20.0 ],
													"text" : "listfunnel 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-400",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 50.0, 317.0, 262.0, 20.0 ],
													"text" : "gate 3"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-16",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 521.0, 23.0, 23.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-104",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 330.0, 513.0, 98.0, 20.0 ],
													"text" : "print instructions"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"linecount" : 10,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 258.0, 17.0, 591.0, 128.0 ],
													"text" : "ceil l2norm andalso sign ntoh32 hton32 product lt string sinh y0 gt blob2 orelse or bound progn bitand median interleave int32 atan acosh y1 list_element erfc sqrttwo butlast emptybundle lntwo assign_to_index mean tern_op oneoverpi cross length cos [] hypot decrement null_coalescing log10 acos gettimetag getmsgcount round nth if lnten mul strchar settimetag sum lambda typetags assigntobundlemember max first tan eq j0 cbrt cosh neq eval rest quickhull identity quarterpi logb gteq j1 map mtof asinh getaddresses rev rreduce assign mod tanh gamma fmod sqrt strtotime scale floattotime sin log typetags halfpi cast lgamma nfill split erf float64 join min twopi lteq clip strcmp cumsum strfind dot-op twooverpi mul_assign pi e logtene prog1 atan2 radtodeg mod_assign sort bool ilogb apply floor value div_assign sqrthalf delete nextafter expm1 abs add_assign add not div sortidx logtwoe ftom last dot increment degtorad and sub_assign bitor pow det avg aseq jn exp quote comment extrema remainder float32 asin getbundlemember strlen range sub match lreduce exists blob atanh"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-104", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-400", 1 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-410", 0 ],
													"source" : [ "obj-14", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-410", 0 ],
													"source" : [ "obj-400", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-411", 0 ],
													"source" : [ "obj-400", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-510", 0 ],
													"source" : [ "obj-400", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 1 ],
													"order" : 0,
													"source" : [ "obj-410", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"order" : 1,
													"source" : [ "obj-410", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 1 ],
													"order" : 0,
													"source" : [ "obj-411", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"order" : 1,
													"source" : [ "obj-411", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"order" : 0,
													"source" : [ "obj-413", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-400", 0 ],
													"order" : 1,
													"source" : [ "obj-413", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 1 ],
													"order" : 0,
													"source" : [ "obj-510", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"order" : 1,
													"source" : [ "obj-510", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-8", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-413", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 149.0, 220.0, 46.0, 19.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p build"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-612", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-612", 0 ],
									"source" : [ "obj-412", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-612", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-613", 0 ],
									"source" : [ "obj-612", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1690.0, 220.0, 58.0, 19.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p jeffnasty"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-611",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1500.0, 1040.0, 53.0, 19.0 ],
					"text" : "pcontrol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-610",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1585.0, 1040.0, 183.0, 19.0 ],
					"text" : "load odot-e.maxhelp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-511",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1500.0, 980.0, 168.0, 19.0 ],
					"text" : "sprintf load odot-%s.maxhelp",
					"varname" : "loader"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-116", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-117", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-118", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-119", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-120", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-121", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-122", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-123", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-124", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-125", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-126", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-127", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-128", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-129", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-131", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-132", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-133", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-134", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-135", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-136", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-138", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-139", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-140", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-141", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-142", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-143", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-144", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-145", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-146", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-147", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-148", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-149", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-150", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-151", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-152", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-153", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-154", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-155", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-156", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-157", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-158", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-159", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-160", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-161", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-162", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-165", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-166", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-167", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-170", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-171", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-172", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-173", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-174", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-175", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-176", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-177", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-178", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-179", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-181", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-182", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-183", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-184", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-185", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-186", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-187", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-189", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-190", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-191", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-192", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-193", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-194", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-196", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-197", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-199", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-200", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-201", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-202", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-203", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-204", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-205", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-206", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-207", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-208", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-209", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-210", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-211", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-212", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-214", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-215", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-216", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-217", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-218", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-219", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-220", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-221", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-224", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-225", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-226", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-227", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-228", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-229", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-230", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-231", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-232", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-233", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-234", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-235", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-236", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-239", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-240", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-241", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-258", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-259", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-260", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-261", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-262", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-263", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-264", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-265", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-267", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-268", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-269", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-270", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-272", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-273", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-274", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-275", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-276", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-277", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-278", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-279", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-280", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-281", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-282", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-283", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-284", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-285", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-286", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-287", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-288", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-289", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-290", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-291", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-292", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-293", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-294", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-295", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-296", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-297", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-298", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-299", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-300", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-301", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-302", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-303", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-304", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-305", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-315", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-610", 1 ],
					"order" : 1,
					"source" : [ "obj-511", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-611", 0 ],
					"order" : 0,
					"source" : [ "obj-511", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-53", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-54", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-55", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-56", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-57", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-58", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-59", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-60", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-61", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-62", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-63", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-64", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-65", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-66", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-68", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-69", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-70", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-71", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-72", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-73", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-74", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-75", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-76", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-77", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-78", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-79", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-80", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-81", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-82", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-83", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-84", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-85", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-86", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-88", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-89", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-90", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-91", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-93", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-94", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-511", 0 ],
					"source" : [ "obj-95", 1 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ]
	}

}
