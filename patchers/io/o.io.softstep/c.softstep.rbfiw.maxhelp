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
            10.0, 
            10.0
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
            "revision": 4
        }, 
        "boxes": [
            {
                "box": {
                    "fontname": "Arial", 
                    "numinlets": 1, 
                    "maximum": 127, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "int", 
                        "bang"
                    ], 
                    "maxclass": "number", 
                    "minimum": 0, 
                    "fontsize": 12.0, 
                    "parameter_enable": 0, 
                    "id": "obj-15", 
                    "patching_rect": [
                        189.0, 
                        40.0, 
                        50.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/rawlist : [0, 0, 0, \"$1\"]", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "o.message", 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-1", 
                    "patching_rect": [
                        189.0, 
                        70.0, 
                        136.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "prepend move", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-10", 
                    "patching_rect": [
                        79.0, 
                        400.0, 
                        87.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "always_draw_circles": 1, 
                    "fontname": "Arial", 
                    "always_draw_labels": 1, 
                    "line_width": 0.0, 
                    "color": [
                        1.0, 
                        1.0, 
                        1.0, 
                        1.0
                    ], 
                    "numinlets": 1, 
                    "numoutlets": 5, 
                    "outlettype": [
                        "", 
                        "", 
                        "", 
                        "", 
                        ""
                    ], 
                    "maxclass": "rbfi", 
                    "spaces": [
                        "space", 
                        4, 
                        -1.0, 
                        1.0, 
                        "a", 
                        0.75, 
                        0.375, 
                        0.1875, 
                        0.0, 
                        3.321928, 
                        20985.923828, 
                        0.05, 
                        0.2, 
                        0, 
                        1.0, 
                        1.0, 
                        "b", 
                        0.75, 
                        0.5625, 
                        0.1875, 
                        0.0, 
                        3.321928, 
                        20985.923828, 
                        0.05, 
                        0.2, 
                        0, 
                        -1.0, 
                        -1.0, 
                        "c", 
                        0.75, 
                        0.75, 
                        0.1875, 
                        0.0, 
                        3.321928, 
                        20985.923828, 
                        0.05, 
                        0.2, 
                        0, 
                        1.0, 
                        -1.0, 
                        "d", 
                        0.5625, 
                        0.75, 
                        0.1875, 
                        0.0, 
                        3.321928, 
                        20985.923828, 
                        0.05, 
                        0.2, 
                        0
                    ], 
                    "fontsize": 10.0, 
                    "parameter_enable": 0, 
                    "xmin": -1.0, 
                    "ymin": -1.0, 
                    "id": "obj-9", 
                    "patching_rect": [
                        79.0, 
                        440.0, 
                        90.0, 
                        90.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.route /1/cursor", 
                    "numinlets": 2, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-8", 
                    "patching_rect": [
                        79.0, 
                        360.0, 
                        99.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "always_draw_circles": 1, 
                    "fontname": "Arial", 
                    "always_draw_labels": 1, 
                    "line_width": 0.0, 
                    "color": [
                        1.0, 
                        1.0, 
                        1.0, 
                        1.0
                    ], 
                    "numinlets": 1, 
                    "numoutlets": 5, 
                    "outlettype": [
                        "", 
                        "", 
                        "", 
                        "", 
                        ""
                    ], 
                    "maxclass": "rbfi", 
                    "spaces": [
                        "space", 
                        4, 
                        -1.0, 
                        1.0, 
                        "a", 
                        0.75, 
                        0.375, 
                        0.1875, 
                        0.0, 
                        3.321928, 
                        20985.923828, 
                        0.05, 
                        0.2, 
                        0, 
                        1.0, 
                        1.0, 
                        "b", 
                        0.75, 
                        0.5625, 
                        0.1875, 
                        0.0, 
                        3.321928, 
                        20985.923828, 
                        0.05, 
                        0.2, 
                        0, 
                        -1.0, 
                        -1.0, 
                        "c", 
                        0.75, 
                        0.75, 
                        0.1875, 
                        0.0, 
                        3.321928, 
                        20985.923828, 
                        0.05, 
                        0.2, 
                        0, 
                        1.0, 
                        -1.0, 
                        "d", 
                        0.5625, 
                        0.75, 
                        0.1875, 
                        0.0, 
                        3.321928, 
                        20985.923828, 
                        0.05, 
                        0.2, 
                        0
                    ], 
                    "fontsize": 10.0, 
                    "parameter_enable": 0, 
                    "xmin": -1.0, 
                    "ymin": -1.0, 
                    "id": "obj-6", 
                    "patching_rect": [
                        79.0, 
                        140.0, 
                        90.0, 
                        90.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/1/rawlist : [90, 13, 17, 6],\n/1/normlist : [0.708661, 0.102362, 0.133858, 0.0472441],\n/1/xy : [-0.692913, 0.629921],\n/1/pressure : 0.248031,\n/1/horizontal : -0.692913,\n/1/vertical : 0.629921,\n/1/button : [true, true, true, true],\n/1/cursor : [-0.444444, 0.377778]", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 8, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-3", 
                    "patching_rect": [
                        229.0, 
                        370.0, 
                        310.0, 
                        114.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/rawlist : [0, 0, 0, 50]", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "o.message", 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-7", 
                    "patching_rect": [
                        289.0, 
                        200.0, 
                        136.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/rawlist : [0, 127, 0, 0]", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "o.message", 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-5", 
                    "patching_rect": [
                        289.0, 
                        140.0, 
                        136.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/rawlist : [127, 0, 0, 0]", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "o.message", 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-4", 
                    "patching_rect": [
                        289.0, 
                        110.0, 
                        136.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/rawlist : [0, 0, 127, 0]", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "o.message", 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-2", 
                    "patching_rect": [
                        289.0, 
                        170.0, 
                        136.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "c.softstep.rbfiw /1", 
                    "numinlets": 2, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-11", 
                    "patching_rect": [
                        205.0, 
                        280.0, 
                        104.0, 
                        20.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            39.0, 
            96.0, 
            593.0, 
            597.0
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
                        "obj-11", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-10", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-9", 
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
                        "obj-3", 
                        1
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
                        "obj-8", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-15", 
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
                        "obj-2", 
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
                        "obj-4", 
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
                        "obj-11", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-6", 
                        3
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-11", 
                        1
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-6", 
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
                        "obj-7", 
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
                        "obj-8", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-10", 
                        0
                    ]
                }
            }
        ], 
        "statusbarvisible": 2, 
        "gridsnaponopen": 0, 
        "bglocked": 0, 
        "dependency_cache": [
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "c.softstep.rbfiw.maxpat", 
                "bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/git/CNMAT-odot/abstractions/io/o.io.softstep"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "c.softstep.pad.maxpat", 
                "bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/git/CNMAT-odot/abstractions/io/o.io.softstep"
            }, 
            {
                "type": "iLaX", 
                "name": "o.route.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.prepend.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.var.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.message.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.pack.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.expr.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.union.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "rbfi.mxo"
            }
        ]
    }
}