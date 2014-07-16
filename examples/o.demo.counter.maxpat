{
    "patcher": {
        "fileversion": 1, 
        "imprint": 0, 
        "boxanimatetime": 200, 
        "devicewidth": 0.0, 
        "default_fontsize": 20.0, 
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
            "revision": 4
        }, 
        "boxes": [
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.expr /downcount = (/downcount - 1) % 8", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-11", 
                    "patching_rect": [
                        198.345001, 
                        450.675995, 
                        382.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/count : 0", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "o.message", 
                    "fontsize": 20.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-7", 
                    "patching_rect": [
                        830.552002, 
                        377.431, 
                        200.0, 
                        29.0
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
                    "id": "obj-8", 
                    "patching_rect": [
                        749.220947, 
                        437.817993, 
                        20.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/count : 6", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "o.message", 
                    "fontsize": 20.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-9", 
                    "patching_rect": [
                        748.552002, 
                        514.430969, 
                        211.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.expr /count = (/count + 1) % 8", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-10", 
                    "patching_rect": [
                        942.552002, 
                        465.431, 
                        291.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/count : 0,\n/downcount : 0", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 2, 
                    "fontsize": 20.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-2", 
                    "patching_rect": [
                        86.0, 
                        317.0, 
                        200.0, 
                        51.0
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
                    "id": "obj-3", 
                    "patching_rect": [
                        5.0, 
                        384.0, 
                        20.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/count : 5,\n/downcount : -5", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 2, 
                    "fontsize": 20.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-4", 
                    "patching_rect": [
                        7.0, 
                        513.0, 
                        211.0, 
                        51.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.expr /count = (/count + 1) % 8", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-5", 
                    "patching_rect": [
                        198.0, 
                        392.0, 
                        291.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/count : 0", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "o.message", 
                    "fontsize": 20.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-21", 
                    "patching_rect": [
                        152.0, 
                        50.0, 
                        200.0, 
                        29.0
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
                    "id": "obj-18", 
                    "patching_rect": [
                        70.0, 
                        115.0, 
                        20.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/count : 7", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "o.message", 
                    "fontsize": 20.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-6", 
                    "patching_rect": [
                        70.0, 
                        187.0, 
                        211.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.expr /count++", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-1", 
                    "patching_rect": [
                        263.0, 
                        141.0, 
                        149.0, 
                        29.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            67.0, 
            44.0, 
            1560.0, 
            864.0
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
                        "obj-6", 
                        1
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
                        "obj-4", 
                        1
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
                        "obj-6", 
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
                        "obj-4", 
                        1
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-21", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-6", 
                        1
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
                        "obj-4", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-5", 
                        0
                    ], 
                    "midpoints": [
                        16.5, 
                        575.0, 
                        637.367981, 
                        575.0, 
                        637.367981, 
                        385.0, 
                        207.5, 
                        385.0
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
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-1", 
                        0
                    ], 
                    "midpoints": [
                        79.5, 
                        248.0, 
                        481.0, 
                        248.0, 
                        481.0, 
                        116.0, 
                        272.5, 
                        116.0
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
                        "obj-9", 
                        1
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
                        "obj-9", 
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
                        "obj-10", 
                        0
                    ], 
                    "midpoints": [
                        758.052002, 
                        575.43103, 
                        1159.552002, 
                        575.43103, 
                        1159.552002, 
                        443.431, 
                        952.052002, 
                        443.431
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
                "name": "o.expr.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.message.mxo"
            }
        ]
    }
}