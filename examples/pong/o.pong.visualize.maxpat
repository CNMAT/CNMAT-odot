{
    "patcher": {
        "fileversion": 1, 
        "imprint": 0, 
        "boxanimatetime": 200, 
        "devicewidth": 0.0, 
        "default_fontsize": 12.0, 
        "toolbarvisible": 1, 
        "default_fontname": "Arial", 
        "digest": "", 
        "gridsize": [
            15.0, 
            15.0
        ], 
        "openinpresentation": 0, 
        "enablehscroll": 1, 
        "description": "", 
        "tags": "", 
        "enablevscroll": 1, 
        "appversion": {
            "major": 6, 
            "architecture": "x86", 
            "minor": 1, 
            "revision": 6
        }, 
        "boxes": [
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "the score", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-6", 
                    "patching_rect": [
                        274.0, 
                        350.0, 
                        150.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.expr assigntobundlemember(/displaylist[[4]]\\, /text\\, /ball/right/phase[[0]] / pi())", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-3", 
                    "patching_rect": [
                        79.386963, 
                        427.586792, 
                        423.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.expr assigntobundlemember(/displaylist[[5]]\\, /text\\, /ball/left/phase[[0]] / pi())", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-1", 
                    "patching_rect": [
                        77.386963, 
                        385.586792, 
                        416.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.out @name main", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-18", 
                    "patching_rect": [
                        71.374901, 
                        687.453003, 
                        112.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.in @name main", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-17", 
                    "patching_rect": [
                        72.877533, 
                        256.198334, 
                        105.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "The bats", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-16", 
                    "patching_rect": [
                        288.504883, 
                        553.718994, 
                        150.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "The ball", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-15", 
                    "patching_rect": [
                        282.494354, 
                        486.851959, 
                        150.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.expr assigntobundlemember(/displaylist[[2]]\\, /from\\, [/bat/right[[0]]*/court[[0]]\\, (/bat/right[[1]] - /bat/halfheight)*/court[[1]] \\, 0 ])\\; assigntobundlemember(/displaylist[[2]]\\, /to\\, [/bat/right[[0]]*/court[[0]]\\, (/bat/right[[1]] +/bat/halfheight)*/court[[1]]\\, 0] )", 
                    "numinlets": 1, 
                    "maxclass": "newobj", 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "linecount": 3, 
                    "fontsize": 12.0, 
                    "id": "obj-7", 
                    "patching_rect": [
                        71.761833, 
                        634.099915, 
                        541.0, 
                        47.0
                    ]
                }
            }, 
            {
                "box": {
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "bang"
                    ], 
                    "maxclass": "button", 
                    "id": "obj-5", 
                    "patching_rect": [
                        236.549957, 
                        135.879044, 
                        20.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.expr assigntobundlemember(/displaylist[[1]]\\, /from\\, [/bat/left[[0]]*/court[[0]]\\, (/bat/left[[1]] - /bat/halfheight)*/court[[1]] \\, 0 ])\\; assigntobundlemember(/displaylist[[1]]\\, /to\\, [/bat/left[[0]]*/court[[0]]\\, (/bat/left[[1]] +/bat/halfheight)*/court[[1]]\\, 0] )", 
                    "numinlets": 1, 
                    "maxclass": "newobj", 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "linecount": 3, 
                    "fontsize": 12.0, 
                    "id": "obj-2", 
                    "patching_rect": [
                        72.269722, 
                        576.851257, 
                        600.0, 
                        47.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.expr assigntobundlemember(/displaylist[[0]]\\, /position\\, /court * /ball/position)", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-11", 
                    "patching_rect": [
                        71.386932, 
                        527.586792, 
                        421.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.union", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-13", 
                    "patching_rect": [
                        73.635612, 
                        302.59729, 
                        50.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "loadbang", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "bang"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-12", 
                    "patching_rect": [
                        236.30127, 
                        163.847488, 
                        60.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/displaylist : [{\n\t/position : [0, 0, 0],\n\t/color : [0.9, 0.3, 0.1],\n\t/radius : 0.04,\n\t/shape : \"sphere\"\n}, {\n\t/color : [0.9, 0., 0.9],\n\t/from : [0, 0],\n\t/to : [0, 0],\n\t/shape : \"line\"\n}, {\n\t/color : [0., 0.9, 0.9],\n\t/from : [0, 0],\n\t/to : [0, 0],\n\t/shape : \"line\"\n}, {\n\t/color : [0., 0.6, 0.],\n\t/position : [0, 0, -1.],\n\t/scale : 0.9,\n\t/shape : \"cube\"\n}, {\n\t/position : [-0.2, 0.6],\n\t/color : [0.9, 0.9, 0.9],\n\t/text : \"0\",\n\t/shape : \"text\"\n}, {\n\t/position : [0.2, 0.6],\n\t/color : [0.9, 0.9, 0.9],\n\t/text : \"0\",\n\t/shape : \"text\"\n}],\n/court : [0.9, 0.9],\n/ball/position : [-0.94594, -0.764669],\n/bat/halfheight : 0.05,\n/game/start : false,\n/bat/right : [0.9, -0.102041],\n/bat/left : [-0.9, -0.183673],\n/court : [0.9, 0.9]", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 38, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-9", 
                    "patching_rect": [
                        737.052612, 
                        157.075134, 
                        234.365891, 
                        516.0
                    ]
                }
            }, 
            {
                "box": {
                    "comment": "", 
                    "numinlets": 0, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "inlet", 
                    "id": "obj-20", 
                    "patching_rect": [
                        79.392189, 
                        137.374176, 
                        25.0, 
                        25.0
                    ]
                }
            }, 
            {
                "box": {
                    "comment": "", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "outlet", 
                    "id": "obj-21", 
                    "patching_rect": [
                        71.148766, 
                        715.793396, 
                        25.0, 
                        25.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            100.0, 
            86.0, 
            1409.0, 
            742.0
        ], 
        "lines": [
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-1", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-3", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-11", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-2", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-12", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-9", 
                        0
                    ], 
                    "midpoints": [
                        245.80127, 
                        195.0, 
                        723.0, 
                        195.0, 
                        723.0, 
                        153.0, 
                        746.552612, 
                        153.0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-13", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-1", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-17", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-13", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-18", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-21", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-2", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-7", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-20", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-17", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-3", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-11", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-5", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-12", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-7", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-18", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-9", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-13", 
                        1
                    ], 
                    "midpoints": [
                        746.552612, 
                        675.0, 
                        684.0, 
                        675.0, 
                        684.0, 
                        297.0, 
                        114.135612, 
                        297.0
                    ]
                }
            }
        ], 
        "statusbarvisible": 2, 
        "gridsnaponopen": 0, 
        "bglocked": 0
    }
}