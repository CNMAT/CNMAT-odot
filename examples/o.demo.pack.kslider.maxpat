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
                    "text": "adrian freed\n2013 2014", 
                    "numinlets": 1, 
                    "linecount": 2, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-10", 
                    "patching_rect": [
                        225.0, 
                        236.0, 
                        150.0, 
                        33.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/midi/pitch : 53,\n/frequency : 174.614,\n/midi/velocity : 40,\n/velocity : 0.314961", 
                    "numinlets": 1, 
                    "maxclass": "o.display", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 4, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-8", 
                    "patching_rect": [
                        25.0, 
                        209.0, 
                        150.0, 
                        74.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/ 127.", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "float"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-7", 
                    "patching_rect": [
                        356.0, 
                        125.0, 
                        48.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "t i i", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "int", 
                        "int"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-6", 
                    "patching_rect": [
                        246.0, 
                        87.0, 
                        129.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "mtof", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-5", 
                    "patching_rect": [
                        135.0, 
                        113.0, 
                        36.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /midi/pitch 69 /frequency 440. /midi/velocity 0 /velocity 0.", 
                    "numinlets": 4, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-4", 
                    "patching_rect": [
                        25.0, 
                        155.0, 
                        348.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "t i i", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "int", 
                        "int"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-3", 
                    "patching_rect": [
                        25.0, 
                        78.0, 
                        129.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "presentation_rect": [
                        15.0, 
                        15.0, 
                        180.0, 
                        53.0
                    ], 
                    "numinlets": 2, 
                    "range": 25, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "int", 
                        "int"
                    ], 
                    "maxclass": "kslider", 
                    "parameter_enable": 0, 
                    "id": "obj-2", 
                    "patching_rect": [
                        27.0, 
                        16.0, 
                        180.0, 
                        53.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            25.0, 
            69.0, 
            510.0, 
            352.0
        ], 
        "lines": [
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-2", 
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
                        "obj-2", 
                        1
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-6", 
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
                        "obj-4", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-3", 
                        1
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-5", 
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
                        "obj-8", 
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
                        "obj-4", 
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
                        "obj-4", 
                        2
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-6", 
                        1
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
                        "obj-7", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-4", 
                        3
                    ]
                }
            }
        ], 
        "statusbarvisible": 2, 
        "gridsnaponopen": 0, 
        "bglocked": 0, 
        "dependency_cache": [
            {
                "type": "iLaX", 
                "name": "o.pack.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.display.mxo"
            }
        ]
    }
}