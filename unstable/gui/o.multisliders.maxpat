{
    "patcher": {
        "fileversion": 1, 
        "imprint": 0, 
        "boxanimatetime": 200, 
        "devicewidth": 0.0, 
        "default_fontsize": 12.0, 
        "toolbarvisible": 0, 
        "default_fontname": "Arial", 
        "digest": "", 
        "gridsize": [
            15.0, 
            15.0
        ], 
        "openinpresentation": 1, 
        "enablehscroll": 0, 
        "description": "", 
        "tags": "", 
        "enablevscroll": 0, 
        "appversion": {
            "major": 6, 
            "architecture": "x86", 
            "minor": 1, 
            "revision": 7
        }, 
        "boxes": [
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "thispatcher", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "save": [
                        "#N", 
                        "thispatcher", 
                        ";", 
                        "#Q", 
                        "end", 
                        ";"
                    ], 
                    "id": "obj-5", 
                    "patching_rect": [
                        435.0, 
                        555.0, 
                        69.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
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
                            "revision": 7
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "print unmatched", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-16", 
                                    "patching_rect": [
                                        780.0, 
                                        255.0, 
                                        97.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl iter 1", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-15", 
                                    "patching_rect": [
                                        735.0, 
                                        195.0, 
                                        49.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "print", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-12", 
                                    "patching_rect": [
                                        735.0, 
                                        255.0, 
                                        34.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/foo /bar -1. 1.", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 12.0, 
                                    "id": "obj-10", 
                                    "patching_rect": [
                                        735.0, 
                                        150.0, 
                                        85.0, 
                                        18.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "regexp ^/.+", 
                                    "numinlets": 1, 
                                    "numoutlets": 5, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "", 
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-8", 
                                    "patching_rect": [
                                        735.0, 
                                        225.0, 
                                        73.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "outlet", 
                                    "id": "obj-18", 
                                    "patching_rect": [
                                        287.0, 
                                        529.5, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t b b", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "bang", 
                                        "bang"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-17", 
                                    "patching_rect": [
                                        346.0, 
                                        254.0, 
                                        34.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "outlet", 
                                    "id": "obj-7", 
                                    "patching_rect": [
                                        420.0, 
                                        519.5, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t b l b", 
                                    "numinlets": 1, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "bang", 
                                        "", 
                                        "bang"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        434.0, 
                                        281.0, 
                                        46.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl slice 1", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-3", 
                                    "patching_rect": [
                                        430.0, 
                                        317.0, 
                                        57.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/a : 2,\n/b : 3", 
                                    "numinlets": 2, 
                                    "maxclass": "o.message", 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "linecount": 2, 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-4", 
                                    "patching_rect": [
                                        447.0, 
                                        203.0, 
                                        178.0, 
                                        35.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.atomize", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-6", 
                                    "patching_rect": [
                                        435.0, 
                                        254.0, 
                                        61.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t b l b", 
                                    "numinlets": 1, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "bang", 
                                        "", 
                                        "bang"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-44", 
                                    "patching_rect": [
                                        153.0, 
                                        291.0, 
                                        46.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl reg", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-39", 
                                    "patching_rect": [
                                        373.0, 
                                        415.0, 
                                        40.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "0. 1.", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 12.0, 
                                    "id": "obj-38", 
                                    "patching_rect": [
                                        257.0, 
                                        397.0, 
                                        34.0, 
                                        18.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl reg", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-36", 
                                    "patching_rect": [
                                        310.0, 
                                        403.0, 
                                        40.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl join 1", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-33", 
                                    "patching_rect": [
                                        287.0, 
                                        451.0, 
                                        51.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl join", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-32", 
                                    "patching_rect": [
                                        231.0, 
                                        424.0, 
                                        41.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t b l l l", 
                                    "numinlets": 1, 
                                    "numoutlets": 4, 
                                    "outlettype": [
                                        "bang", 
                                        "", 
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-30", 
                                    "patching_rect": [
                                        188.0, 
                                        355.0, 
                                        59.5, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "0. 1. 1", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 12.0, 
                                    "id": "obj-25", 
                                    "patching_rect": [
                                        185.0, 
                                        416.0, 
                                        44.0, 
                                        18.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl join", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-22", 
                                    "patching_rect": [
                                        134.0, 
                                        453.0, 
                                        41.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl slice 1", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-21", 
                                    "patching_rect": [
                                        149.0, 
                                        327.0, 
                                        57.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "select 0 1 2 3", 
                                    "numinlets": 5, 
                                    "numoutlets": 5, 
                                    "outlettype": [
                                        "bang", 
                                        "bang", 
                                        "bang", 
                                        "bang", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-14", 
                                    "patching_rect": [
                                        267.0, 
                                        340.0, 
                                        82.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl len", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-13", 
                                    "patching_rect": [
                                        223.0, 
                                        327.0, 
                                        39.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t b l b l", 
                                    "numinlets": 1, 
                                    "numoutlets": 4, 
                                    "outlettype": [
                                        "bang", 
                                        "", 
                                        "bang", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-11", 
                                    "patching_rect": [
                                        217.0, 
                                        62.0, 
                                        59.5, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/a : 2,\n/b : 3", 
                                    "numinlets": 2, 
                                    "maxclass": "o.message", 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "linecount": 2, 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        120.0, 
                                        210.0, 
                                        178.0, 
                                        35.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.atomize", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-1", 
                                    "patching_rect": [
                                        154.0, 
                                        264.0, 
                                        61.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 0, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "inlet", 
                                    "id": "obj-56", 
                                    "patching_rect": [
                                        140.0, 
                                        12.0, 
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
                                    "id": "obj-57", 
                                    "patching_rect": [
                                        134.0, 
                                        537.5, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            448.0, 
                            44.0, 
                            968.0, 
                            606.0
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
                                        "obj-44", 
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
                                        "obj-15", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-11", 
                                        2
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
                                        "obj-11", 
                                        3
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
                                        "obj-11", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-5", 
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
                                        "obj-5", 
                                        0
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
                                        "obj-14", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-14", 
                                        3
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-36", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-14", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-38", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-14", 
                                        2
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-39", 
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
                                        "obj-8", 
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
                                        "obj-18", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-17", 
                                        1
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
                                        "obj-2", 
                                        1
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
                                        "obj-21", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-22", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-21", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-30", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-22", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-57", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-25", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-22", 
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
                                        "obj-7", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-30", 
                                        2
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
                                        "obj-30", 
                                        3
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-32", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-30", 
                                        3
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-36", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-30", 
                                        3
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-39", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-32", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-22", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-33", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-22", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-36", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-22", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-38", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-32", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-39", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-33", 
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
                                        "obj-6", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-44", 
                                        1
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
                                        "obj-44", 
                                        2
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-25", 
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
                                        "obj-1", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-56", 
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
                                        "obj-2", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-8", 
                                        2
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
                                        "obj-8", 
                                        3
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-16", 
                                        0
                                    ]
                                }
                            }
                        ], 
                        "statusbarvisible": 2, 
                        "gridsnaponopen": 0, 
                        "bglocked": 0
                    }, 
                    "saved_object_attributes": {
                        "fontname": "Arial", 
                        "description": "", 
                        "tags": "", 
                        "fontface": 0, 
                        "globalpatchername": "", 
                        "fontsize": 12.0, 
                        "default_fontface": 0, 
                        "default_fontname": "Arial", 
                        "default_fontsize": 12.0, 
                        "digest": ""
                    }, 
                    "text": "p default argument parsing", 
                    "numinlets": 1, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "", 
                        "bang", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-13", 
                    "patching_rect": [
                        930.0, 
                        150.0, 
                        153.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
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
                            8.0, 
                            8.0
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
                            "revision": 7
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "outlet", 
                                    "id": "obj-3", 
                                    "patching_rect": [
                                        184.0, 
                                        536.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 0, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "inlet", 
                                    "id": "obj-23", 
                                    "patching_rect": [
                                        208.0, 
                                        56.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t l b", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        "bang"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-22", 
                                    "patching_rect": [
                                        120.0, 
                                        440.0, 
                                        32.5, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "4", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 12.0, 
                                    "id": "obj-21", 
                                    "patching_rect": [
                                        232.0, 
                                        504.0, 
                                        50.0, 
                                        18.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "outlet", 
                                    "id": "obj-19", 
                                    "patching_rect": [
                                        232.0, 
                                        536.0, 
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
                                    "id": "obj-18", 
                                    "patching_rect": [
                                        120.0, 
                                        536.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl slice", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-17", 
                                    "patching_rect": [
                                        120.0, 
                                        496.0, 
                                        47.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "int", 
                                        "bang"
                                    ], 
                                    "maxclass": "number", 
                                    "fontsize": 12.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-14", 
                                    "patching_rect": [
                                        272.0, 
                                        472.0, 
                                        50.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t b 1", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "bang", 
                                        "int"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-12", 
                                    "patching_rect": [
                                        240.0, 
                                        384.0, 
                                        34.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t s 0", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        "int"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-10", 
                                    "patching_rect": [
                                        208.0, 
                                        288.0, 
                                        33.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "counter", 
                                    "numinlets": 5, 
                                    "numoutlets": 4, 
                                    "outlettype": [
                                        "int", 
                                        "", 
                                        "", 
                                        "int"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-9", 
                                    "patching_rect": [
                                        240.0, 
                                        424.0, 
                                        73.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t l l 1", 
                                    "numinlets": 1, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "int"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-8", 
                                    "patching_rect": [
                                        208.0, 
                                        120.0, 
                                        46.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "gate", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-7", 
                                    "patching_rect": [
                                        208.0, 
                                        256.0, 
                                        34.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "regexp ^/.+", 
                                    "numinlets": 1, 
                                    "numoutlets": 5, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "", 
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-4", 
                                    "patching_rect": [
                                        208.0, 
                                        360.0, 
                                        73.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl iter 1", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        240.0, 
                                        160.0, 
                                        49.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/foo /bar /black /flag pack 0. 0. 0. 0. @as /packed", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 12.0, 
                                    "id": "obj-1", 
                                    "patching_rect": [
                                        368.0, 
                                        80.0, 
                                        271.0, 
                                        18.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            505.0, 
                            44.0, 
                            683.0, 
                            646.0
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
                                        "obj-8", 
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
                                        "obj-4", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-10", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-7", 
                                        0
                                    ], 
                                    "midpoints": [
                                        259.0, 
                                        329.0, 
                                        313.0, 
                                        288.0, 
                                        217.5, 
                                        231.0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-12", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-7", 
                                        0
                                    ], 
                                    "midpoints": [
                                        297.0, 
                                        414.0, 
                                        343.0, 
                                        381.0, 
                                        364.0, 
                                        281.0, 
                                        262.0, 
                                        227.0
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
                                        "obj-18", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-17", 
                                        1
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
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-7", 
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
                                        "obj-19", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-22", 
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
                                        "obj-22", 
                                        1
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
                                        "obj-23", 
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
                                        "obj-4", 
                                        2
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
                                        "obj-10", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-8", 
                                        1
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
                                        "obj-8", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-22", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-8", 
                                        2
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
                                        "obj-8", 
                                        2
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-9", 
                                        2
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
                                        "obj-14", 
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
                                        "obj-17", 
                                        1
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
                                        "obj-21", 
                                        1
                                    ]
                                }
                            }
                        ], 
                        "statusbarvisible": 2, 
                        "gridsnaponopen": 0, 
                        "bglocked": 0
                    }, 
                    "saved_object_attributes": {
                        "fontname": "Arial", 
                        "description": "", 
                        "tags": "", 
                        "fontface": 0, 
                        "globalpatchername": "", 
                        "fontsize": 12.0, 
                        "default_fontface": 0, 
                        "default_fontname": "Arial", 
                        "default_fontsize": 12.0, 
                        "digest": ""
                    }, 
                    "text": "p get-osc-args", 
                    "numinlets": 1, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "", 
                        "", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-4", 
                    "patching_rect": [
                        990.0, 
                        225.0, 
                        87.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "unpack f f f f f f f f f f f f f f f", 
                    "numinlets": 1, 
                    "numoutlets": 15, 
                    "outlettype": [
                        "float", 
                        "float", 
                        "float", 
                        "float", 
                        "float", 
                        "float", 
                        "float", 
                        "float", 
                        "float", 
                        "float", 
                        "float", 
                        "float", 
                        "float", 
                        "float", 
                        "float"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "varname": "unpack", 
                    "id": "obj-1", 
                    "patching_rect": [
                        105.0, 
                        315.0, 
                        208.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "t b b b", 
                    "numinlets": 1, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "bang", 
                        "bang", 
                        "bang"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-29", 
                    "patching_rect": [
                        547.0, 
                        79.0, 
                        46.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "zl slice 1", 
                    "numinlets": 2, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-28", 
                    "patching_rect": [
                        665.0, 
                        107.0, 
                        57.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "zl join", 
                    "numinlets": 2, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-27", 
                    "patching_rect": [
                        656.0, 
                        183.0, 
                        41.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "zl group", 
                    "numinlets": 2, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-26", 
                    "patching_rect": [
                        639.0, 
                        211.0, 
                        53.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "sprintf @%s", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-25", 
                    "patching_rect": [
                        618.0, 
                        144.0, 
                        75.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "sel done", 
                    "numinlets": 2, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "bang", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-14", 
                    "patching_rect": [
                        554.0, 
                        34.0, 
                        56.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "zl reg", 
                    "numinlets": 2, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-3", 
                    "patching_rect": [
                        337.0, 
                        64.0, 
                        40.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "Yes they really will be connected ", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-122", 
                    "patching_rect": [
                        22.0, 
                        13.0, 
                        239.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
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
                            "revision": 7
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "sprintf script connect oroute %d multislider[%d] 0", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-1", 
                                    "patching_rect": [
                                        90.0, 
                                        285.0, 
                                        270.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "script connect oroute 0 multislider 0, script connect multislider 0 opack 0", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 12.0, 
                                    "id": "obj-27", 
                                    "patching_rect": [
                                        45.0, 
                                        405.0, 
                                        393.0, 
                                        18.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "route 0", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-22", 
                                    "patching_rect": [
                                        45.0, 
                                        240.0, 
                                        48.0, 
                                        20.0
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
                                    "id": "obj-308", 
                                    "patching_rect": [
                                        336.0, 
                                        111.0, 
                                        20.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "0", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 12.0, 
                                    "id": "obj-306", 
                                    "patching_rect": [
                                        375.0, 
                                        100.0, 
                                        32.5, 
                                        18.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "sprintf script connect unpack %d multislider[%d] 0", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-303", 
                                    "patching_rect": [
                                        266.0, 
                                        357.0, 
                                        275.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "sprintf script connect multislider[%d] 0 opack %d", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-300", 
                                    "patching_rect": [
                                        160.0, 
                                        319.0, 
                                        268.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "int 0", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "int"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-296", 
                                    "patching_rect": [
                                        307.0, 
                                        160.0, 
                                        33.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "+ 1", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "int"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-112", 
                                    "patching_rect": [
                                        312.0, 
                                        200.0, 
                                        32.5, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 0, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "bang"
                                    ], 
                                    "maxclass": "inlet", 
                                    "id": "obj-87", 
                                    "patching_rect": [
                                        336.0, 
                                        40.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 0, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "bang"
                                    ], 
                                    "maxclass": "inlet", 
                                    "id": "obj-88", 
                                    "patching_rect": [
                                        375.0, 
                                        40.0, 
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
                                    "id": "obj-89", 
                                    "patching_rect": [
                                        157.333344, 
                                        445.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            25.0, 
                            69.0, 
                            640.0, 
                            480.0
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
                                        "obj-89", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-112", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-296", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-22", 
                                        1
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
                                        "obj-22", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-27", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-22", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-300", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-22", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-303", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-27", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-89", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-296", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-1", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-296", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-112", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-296", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-22", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-296", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-300", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-296", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-303", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-300", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-89", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-303", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-89", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-306", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-296", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-308", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-296", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-87", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-308", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-88", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-306", 
                                        0
                                    ]
                                }
                            }
                        ], 
                        "statusbarvisible": 2, 
                        "gridsnaponopen": 0, 
                        "bglocked": 0
                    }, 
                    "saved_object_attributes": {
                        "fontname": "Arial", 
                        "description": "", 
                        "tags": "", 
                        "fontface": 0, 
                        "globalpatchername": "", 
                        "fontsize": 12.0, 
                        "default_fontface": 0, 
                        "default_fontname": "Arial", 
                        "default_fontsize": 12.0, 
                        "digest": ""
                    }, 
                    "text": "p connect the multisliders to route and pack", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-90", 
                    "patching_rect": [
                        361.0, 
                        389.0, 
                        242.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
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
                            "revision": 7
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "script connect inlet 0 oroute 0, script connect opack 0 outlet 0", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 12.0, 
                                    "id": "obj-275", 
                                    "patching_rect": [
                                        50.0, 
                                        100.0, 
                                        336.0, 
                                        18.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 0, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "bang"
                                    ], 
                                    "maxclass": "inlet", 
                                    "id": "obj-84", 
                                    "patching_rect": [
                                        50.0, 
                                        40.0, 
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
                                    "id": "obj-85", 
                                    "patching_rect": [
                                        50.0, 
                                        178.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            25.0, 
                            69.0, 
                            640.0, 
                            480.0
                        ], 
                        "lines": [
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-275", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-85", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-84", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-275", 
                                        0
                                    ]
                                }
                            }
                        ], 
                        "statusbarvisible": 2, 
                        "gridsnaponopen": 0, 
                        "bglocked": 0
                    }, 
                    "saved_object_attributes": {
                        "fontname": "Arial", 
                        "description": "", 
                        "tags": "", 
                        "fontface": 0, 
                        "globalpatchername": "", 
                        "fontsize": 12.0, 
                        "default_fontface": 0, 
                        "default_fontname": "Arial", 
                        "default_fontsize": 12.0, 
                        "digest": ""
                    }, 
                    "text": "p connect pack and route to inlet and out", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-86", 
                    "patching_rect": [
                        392.0, 
                        279.0, 
                        227.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
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
                            "revision": 7
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "int 0", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "int"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        198.0, 
                                        115.0, 
                                        33.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "numinlets": 0, 
                                    "numoutlets": 0, 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        221.0, 
                                        87.0, 
                                        100.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "connect attributes to multislider", 
                                    "numinlets": 1, 
                                    "linecount": 2, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-6", 
                                    "patching_rect": [
                                        358.0, 
                                        76.0, 
                                        150.0, 
                                        34.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 0, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "inlet", 
                                    "id": "obj-4", 
                                    "patching_rect": [
                                        300.0, 
                                        48.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl join", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-3", 
                                    "patching_rect": [
                                        162.0, 
                                        466.0, 
                                        41.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "outlet", 
                                    "id": "obj-1", 
                                    "patching_rect": [
                                        71.5, 
                                        604.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl slice 1", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-209", 
                                    "patching_rect": [
                                        79.0, 
                                        164.0, 
                                        57.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "prepend @setminmax", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-195", 
                                    "patching_rect": [
                                        50.0, 
                                        299.0, 
                                        128.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl join", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-194", 
                                    "patching_rect": [
                                        92.0, 
                                        336.0, 
                                        41.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "prepend @size", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-193", 
                                    "patching_rect": [
                                        101.0, 
                                        275.0, 
                                        91.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl slice 2", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-192", 
                                    "patching_rect": [
                                        70.0, 
                                        211.0, 
                                        57.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl join", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-191", 
                                    "patching_rect": [
                                        152.0, 
                                        324.0, 
                                        41.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "prepend script newdefault message 200 100 message @bgcolor 0 0 0 0 @bgcolor2 0 0 0 0 @presentation 1 @text", 
                                    "numinlets": 1, 
                                    "maxclass": "newobj", 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "linecount": 2, 
                                    "fontsize": 12.0, 
                                    "id": "obj-180", 
                                    "patching_rect": [
                                        199.0, 
                                        510.0, 
                                        590.0, 
                                        34.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl join", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-177", 
                                    "patching_rect": [
                                        419.0, 
                                        458.0, 
                                        41.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl slice 1", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-168", 
                                    "patching_rect": [
                                        344.0, 
                                        322.0, 
                                        57.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "append 200 200 20", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-160", 
                                    "patching_rect": [
                                        371.0, 
                                        231.0, 
                                        114.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
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
                                            "revision": 7
                                        }, 
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "prepend @presentation_rect", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-138", 
                                                    "patching_rect": [
                                                        98.0, 
                                                        238.0, 
                                                        163.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "int", 
                                                    "numinlets": 2, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "int"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-15", 
                                                    "patching_rect": [
                                                        31.0, 
                                                        163.0, 
                                                        32.5, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "t b i", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 2, 
                                                    "outlettype": [
                                                        "bang", 
                                                        "int"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-14", 
                                                    "patching_rect": [
                                                        49.0, 
                                                        58.0, 
                                                        32.5, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "unpack i i i i", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 4, 
                                                    "outlettype": [
                                                        "int", 
                                                        "int", 
                                                        "int", 
                                                        "int"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-5", 
                                                    "patching_rect": [
                                                        123.0, 
                                                        44.0, 
                                                        73.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "* 1", 
                                                    "numinlets": 2, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "int"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-129", 
                                                    "patching_rect": [
                                                        67.0, 
                                                        99.0, 
                                                        32.5, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "t b i i", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 3, 
                                                    "outlettype": [
                                                        "bang", 
                                                        "int", 
                                                        "int"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-128", 
                                                    "patching_rect": [
                                                        62.0, 
                                                        127.0, 
                                                        46.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "pack i i i i", 
                                                    "numinlets": 4, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-119", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        199.0, 
                                                        60.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "comment": "", 
                                                    "numinlets": 0, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "maxclass": "inlet", 
                                                    "id": "obj-143", 
                                                    "patching_rect": [
                                                        85.0, 
                                                        6.0, 
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
                                                    "id": "obj-144", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        256.0, 
                                                        25.0, 
                                                        25.0
                                                    ]
                                                }
                                            }
                                        ], 
                                        "default_fontface": 0, 
                                        "gridonopen": 0, 
                                        "rect": [
                                            49.0, 
                                            218.0, 
                                            640.0, 
                                            480.0
                                        ], 
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-119", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-138", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-128", 
                                                        1
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-119", 
                                                        1
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-129", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-128", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-138", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-144", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-14", 
                                                        1
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-129", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-14", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-15", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-143", 
                                                        0
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
                                                        "obj-15", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-119", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-5", 
                                                        3
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-119", 
                                                        3
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-5", 
                                                        2
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-119", 
                                                        2
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-5", 
                                                        3
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-129", 
                                                        1
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
                                                        "obj-14", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-5", 
                                                        1
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-15", 
                                                        1
                                                    ]
                                                }
                                            }
                                        ], 
                                        "statusbarvisible": 2, 
                                        "gridsnaponopen": 0, 
                                        "bglocked": 0
                                    }, 
                                    "saved_object_attributes": {
                                        "fontname": "Arial", 
                                        "description": "", 
                                        "tags": "", 
                                        "fontface": 0, 
                                        "globalpatchername": "", 
                                        "fontsize": 12.0, 
                                        "default_fontface": 0, 
                                        "default_fontname": "Arial", 
                                        "default_fontsize": 12.0, 
                                        "digest": ""
                                    }, 
                                    "text": "p rectanglemaker", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-161", 
                                    "patching_rect": [
                                        387.0, 
                                        281.0, 
                                        110.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "append 0 200 20", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-154", 
                                    "patching_rect": [
                                        177.0, 
                                        222.0, 
                                        101.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
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
                                            "revision": 7
                                        }, 
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "prepend @presentation_rect", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-138", 
                                                    "patching_rect": [
                                                        98.0, 
                                                        238.0, 
                                                        163.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "int", 
                                                    "numinlets": 2, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "int"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-15", 
                                                    "patching_rect": [
                                                        31.0, 
                                                        163.0, 
                                                        32.5, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "t b i", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 2, 
                                                    "outlettype": [
                                                        "bang", 
                                                        "int"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-14", 
                                                    "patching_rect": [
                                                        49.0, 
                                                        58.0, 
                                                        32.5, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "unpack i i i i", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 4, 
                                                    "outlettype": [
                                                        "int", 
                                                        "int", 
                                                        "int", 
                                                        "int"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-5", 
                                                    "patching_rect": [
                                                        123.0, 
                                                        44.0, 
                                                        73.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "* 1", 
                                                    "numinlets": 2, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "int"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-129", 
                                                    "patching_rect": [
                                                        67.0, 
                                                        99.0, 
                                                        32.5, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "t b i i", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 3, 
                                                    "outlettype": [
                                                        "bang", 
                                                        "int", 
                                                        "int"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-128", 
                                                    "patching_rect": [
                                                        62.0, 
                                                        127.0, 
                                                        46.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "pack i i i i", 
                                                    "numinlets": 4, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-119", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        199.0, 
                                                        60.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "comment": "", 
                                                    "numinlets": 0, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "maxclass": "inlet", 
                                                    "id": "obj-143", 
                                                    "patching_rect": [
                                                        85.0, 
                                                        6.0, 
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
                                                    "id": "obj-144", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        256.0, 
                                                        25.0, 
                                                        25.0
                                                    ]
                                                }
                                            }
                                        ], 
                                        "default_fontface": 0, 
                                        "gridonopen": 0, 
                                        "rect": [
                                            25.0, 
                                            69.0, 
                                            640.0, 
                                            480.0
                                        ], 
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-119", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-138", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-128", 
                                                        1
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-119", 
                                                        1
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-129", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-128", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-138", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-144", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-14", 
                                                        1
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-129", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-14", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-15", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-143", 
                                                        0
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
                                                        "obj-15", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-119", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-5", 
                                                        3
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-119", 
                                                        3
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-5", 
                                                        2
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-119", 
                                                        2
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-5", 
                                                        3
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-129", 
                                                        1
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
                                                        "obj-14", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-5", 
                                                        1
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-15", 
                                                        1
                                                    ]
                                                }
                                            }
                                        ], 
                                        "statusbarvisible": 2, 
                                        "gridsnaponopen": 0, 
                                        "bglocked": 0
                                    }, 
                                    "saved_object_attributes": {
                                        "fontname": "Arial", 
                                        "description": "", 
                                        "tags": "", 
                                        "fontface": 0, 
                                        "globalpatchername": "", 
                                        "fontsize": 12.0, 
                                        "default_fontface": 0, 
                                        "default_fontname": "Arial", 
                                        "default_fontsize": 12.0, 
                                        "digest": ""
                                    }, 
                                    "text": "p rectanglemaker", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-145", 
                                    "patching_rect": [
                                        193.0, 
                                        271.0, 
                                        110.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "int", 
                                        "bang"
                                    ], 
                                    "maxclass": "number", 
                                    "fontsize": 12.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-116", 
                                    "patching_rect": [
                                        229.0, 
                                        179.0, 
                                        50.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "+ 1", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "int"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-112", 
                                    "patching_rect": [
                                        210.0, 
                                        138.0, 
                                        32.5, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t b l b", 
                                    "numinlets": 1, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "bang", 
                                        "", 
                                        "bang"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-111", 
                                    "patching_rect": [
                                        122.0, 
                                        100.0, 
                                        46.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "prepend script newdefault multislider 120 60 multislider @orientation 0 @presentation 1 @contdata 1", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-72", 
                                    "patching_rect": [
                                        148.0, 
                                        396.0, 
                                        547.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 0, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "inlet", 
                                    "id": "obj-260", 
                                    "patching_rect": [
                                        122.0, 
                                        40.0, 
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
                                    "id": "obj-261", 
                                    "patching_rect": [
                                        168.5, 
                                        604.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            465.0, 
                            96.0, 
                            975.0, 
                            702.0
                        ], 
                        "lines": [
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-111", 
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
                                        "obj-111", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-168", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-111", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-209", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-111", 
                                        2
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
                                        "obj-112", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-5", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-116", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-154", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-116", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-160", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-145", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-191", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-154", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-145", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-160", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-161", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-161", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-177", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-168", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-177", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-177", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-180", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-180", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-261", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-191", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-194", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-192", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-193", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-192", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-195", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-193", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-191", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-194", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-72", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-195", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-194", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-209", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-192", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-260", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-111", 
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
                                        "obj-261", 
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
                                        "obj-3", 
                                        1
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
                                        "obj-112", 
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
                                        "obj-116", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-72", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-3", 
                                        0
                                    ]
                                }
                            }
                        ], 
                        "statusbarvisible": 2, 
                        "gridsnaponopen": 0, 
                        "bglocked": 0
                    }, 
                    "saved_object_attributes": {
                        "fontname": "Arial", 
                        "description": "", 
                        "tags": "", 
                        "fontface": 0, 
                        "globalpatchername": "", 
                        "fontsize": 12.0, 
                        "default_fontface": 0, 
                        "default_fontname": "Arial", 
                        "default_fontsize": 12.0, 
                        "digest": ""
                    }, 
                    "text": "p build labels and multisliders", 
                    "numinlets": 2, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "bang", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-262", 
                    "patching_rect": [
                        343.0, 
                        321.0, 
                        167.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "comment": "", 
                    "varname": "outlet", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "outlet", 
                    "id": "obj-259", 
                    "patching_rect": [
                        83.0, 
                        536.0, 
                        25.0, 
                        25.0
                    ]
                }
            }, 
            {
                "box": {
                    "comment": "", 
                    "varname": "inlet", 
                    "numinlets": 0, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "inlet", 
                    "id": "obj-258", 
                    "patching_rect": [
                        76.0, 
                        60.0, 
                        25.0, 
                        25.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
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
                            "revision": 7
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "clear", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 12.0, 
                                    "id": "obj-8", 
                                    "patching_rect": [
                                        427.0, 
                                        118.0, 
                                        37.0, 
                                        18.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "m", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-6", 
                                    "patching_rect": [
                                        343.0, 
                                        69.0, 
                                        150.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "outlet", 
                                    "id": "obj-4", 
                                    "patching_rect": [
                                        25.0, 
                                        377.0, 
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
                                    "id": "obj-1", 
                                    "patching_rect": [
                                        117.0, 
                                        422.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t b b b b b", 
                                    "numinlets": 1, 
                                    "numoutlets": 5, 
                                    "outlettype": [
                                        "bang", 
                                        "bang", 
                                        "bang", 
                                        "bang", 
                                        "bang"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-77", 
                                    "patching_rect": [
                                        53.0, 
                                        80.0, 
                                        73.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "prepend script newdefault oroute 200 80 o.route", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-72", 
                                    "patching_rect": [
                                        326.0, 
                                        195.0, 
                                        266.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl group", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-71", 
                                    "patching_rect": [
                                        307.0, 
                                        131.0, 
                                        53.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "prepend script newdefault opack 200 300 o.pack", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-69", 
                                    "patching_rect": [
                                        50.0, 
                                        192.0, 
                                        269.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "append 0.", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-63", 
                                    "patching_rect": [
                                        165.0, 
                                        100.0, 
                                        64.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl group", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-46", 
                                    "patching_rect": [
                                        84.0, 
                                        129.0, 
                                        53.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 0, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "bang"
                                    ], 
                                    "maxclass": "inlet", 
                                    "id": "obj-80", 
                                    "patching_rect": [
                                        84.0, 
                                        40.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 0, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "inlet", 
                                    "id": "obj-81", 
                                    "patching_rect": [
                                        165.0, 
                                        40.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            417.0, 
                            77.0, 
                            884.0, 
                            678.0
                        ], 
                        "lines": [
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-46", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-69", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-63", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-46", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-69", 
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
                                        "obj-71", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-72", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-72", 
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
                                        "obj-77", 
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
                                        "obj-77", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-46", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-77", 
                                        2
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-71", 
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
                                        "obj-46", 
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
                                        "obj-71", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-80", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-77", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-81", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-63", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-81", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-71", 
                                        0
                                    ]
                                }
                            }
                        ], 
                        "statusbarvisible": 2, 
                        "gridsnaponopen": 0, 
                        "bglocked": 0
                    }, 
                    "saved_object_attributes": {
                        "fontname": "Arial", 
                        "description": "", 
                        "tags": "", 
                        "fontface": 0, 
                        "globalpatchername": "", 
                        "fontsize": 12.0, 
                        "default_fontface": 0, 
                        "default_fontname": "Arial", 
                        "default_fontsize": 12.0, 
                        "digest": ""
                    }, 
                    "text": "p build o.build and o.route", 
                    "numinlets": 2, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "bang", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-83", 
                    "patching_rect": [
                        419.0, 
                        207.0, 
                        149.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/a 2 /b 3", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 12.0, 
                    "id": "obj-65", 
                    "patching_rect": [
                        260.0, 
                        17.0, 
                        54.0, 
                        18.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
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
                            "revision": 7
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "b 2", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "bang", 
                                        "bang"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-10", 
                                    "patching_rect": [
                                        225.0, 
                                        60.0, 
                                        32.5, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/left/radius /left/pluck -1. 1.", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 12.0, 
                                    "id": "obj-41", 
                                    "patching_rect": [
                                        75.0, 
                                        105.0, 
                                        151.0, 
                                        18.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t b l zlclear", 
                                    "numinlets": 1, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "bang", 
                                        "", 
                                        "zlclear"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-40", 
                                    "patching_rect": [
                                        225.0, 
                                        30.0, 
                                        68.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.collect", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-35", 
                                    "patching_rect": [
                                        345.0, 
                                        150.0, 
                                        82.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t l b", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        "bang"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-34", 
                                    "patching_rect": [
                                        330.0, 
                                        90.0, 
                                        32.5, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl group", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-31", 
                                    "patching_rect": [
                                        345.0, 
                                        120.0, 
                                        53.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl iter 1", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-27", 
                                    "patching_rect": [
                                        315.0, 
                                        30.0, 
                                        49.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "regexp ^/.+", 
                                    "numinlets": 1, 
                                    "numoutlets": 5, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "", 
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-29", 
                                    "patching_rect": [
                                        315.0, 
                                        60.0, 
                                        73.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "outlet", 
                                    "id": "obj-18", 
                                    "patching_rect": [
                                        287.0, 
                                        529.5, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t b b", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "bang", 
                                        "bang"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-17", 
                                    "patching_rect": [
                                        346.0, 
                                        254.0, 
                                        34.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "outlet", 
                                    "id": "obj-7", 
                                    "patching_rect": [
                                        420.0, 
                                        519.5, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t b l b", 
                                    "numinlets": 1, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "bang", 
                                        "", 
                                        "bang"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        434.0, 
                                        281.0, 
                                        46.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl slice 1", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-3", 
                                    "patching_rect": [
                                        430.0, 
                                        317.0, 
                                        57.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/left/radius,\n/left/pluck : [-1, 1]", 
                                    "numinlets": 2, 
                                    "maxclass": "o.message", 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "linecount": 2, 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-4", 
                                    "patching_rect": [
                                        447.0, 
                                        203.0, 
                                        178.0, 
                                        35.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.atomize", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-6", 
                                    "patching_rect": [
                                        435.0, 
                                        254.0, 
                                        61.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t b l b", 
                                    "numinlets": 1, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "bang", 
                                        "", 
                                        "bang"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-44", 
                                    "patching_rect": [
                                        153.0, 
                                        291.0, 
                                        46.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl reg", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-39", 
                                    "patching_rect": [
                                        373.0, 
                                        415.0, 
                                        40.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "0. 1.", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 12.0, 
                                    "id": "obj-38", 
                                    "patching_rect": [
                                        257.0, 
                                        397.0, 
                                        34.0, 
                                        18.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl reg", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-36", 
                                    "patching_rect": [
                                        310.0, 
                                        403.0, 
                                        40.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl join 1", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-33", 
                                    "patching_rect": [
                                        287.0, 
                                        451.0, 
                                        51.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl join", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-32", 
                                    "patching_rect": [
                                        231.0, 
                                        424.0, 
                                        41.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t b l l l", 
                                    "numinlets": 1, 
                                    "numoutlets": 4, 
                                    "outlettype": [
                                        "bang", 
                                        "", 
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-30", 
                                    "patching_rect": [
                                        188.0, 
                                        355.0, 
                                        59.5, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "0. 1. 1", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 12.0, 
                                    "id": "obj-25", 
                                    "patching_rect": [
                                        185.0, 
                                        416.0, 
                                        44.0, 
                                        18.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl join", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-22", 
                                    "patching_rect": [
                                        134.0, 
                                        453.0, 
                                        41.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl slice 1", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-21", 
                                    "patching_rect": [
                                        149.0, 
                                        327.0, 
                                        57.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "select 0 1 2 3", 
                                    "numinlets": 5, 
                                    "numoutlets": 5, 
                                    "outlettype": [
                                        "bang", 
                                        "bang", 
                                        "bang", 
                                        "bang", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-14", 
                                    "patching_rect": [
                                        267.0, 
                                        340.0, 
                                        82.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zl len", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-13", 
                                    "patching_rect": [
                                        223.0, 
                                        327.0, 
                                        39.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t b l b l", 
                                    "numinlets": 1, 
                                    "numoutlets": 4, 
                                    "outlettype": [
                                        "bang", 
                                        "", 
                                        "bang", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-11", 
                                    "patching_rect": [
                                        225.0, 
                                        150.0, 
                                        59.5, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/left/radius,\n/left/pluck : [-1, 1]", 
                                    "numinlets": 2, 
                                    "maxclass": "o.message", 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "linecount": 2, 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        120.0, 
                                        210.0, 
                                        178.0, 
                                        35.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.atomize", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-1", 
                                    "patching_rect": [
                                        154.0, 
                                        264.0, 
                                        61.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 0, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "inlet", 
                                    "id": "obj-56", 
                                    "patching_rect": [
                                        140.0, 
                                        12.0, 
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
                                    "id": "obj-57", 
                                    "patching_rect": [
                                        134.0, 
                                        537.5, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            432.0, 
                            44.0, 
                            968.0, 
                            606.0
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
                                        "obj-44", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-10", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-31", 
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
                                        "obj-35", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-11", 
                                        2
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
                                        "obj-11", 
                                        3
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
                                        "obj-11", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-5", 
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
                                        "obj-5", 
                                        0
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
                                        "obj-14", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-14", 
                                        3
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-36", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-14", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-38", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-14", 
                                        2
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-39", 
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
                                        "obj-18", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-17", 
                                        1
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
                                        "obj-2", 
                                        1
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
                                        "obj-21", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-22", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-21", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-30", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-22", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-57", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-25", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-22", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-27", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-29", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-29", 
                                        3
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-31", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-29", 
                                        2
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-34", 
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
                                        "obj-7", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-30", 
                                        2
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
                                        "obj-30", 
                                        3
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-32", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-30", 
                                        3
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-36", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-30", 
                                        3
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-39", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-31", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-35", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-32", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-22", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-33", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-22", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-34", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-31", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-34", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-31", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-35", 
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
                                        "obj-36", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-22", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-38", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-32", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-39", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-33", 
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
                                        "obj-6", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-40", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-10", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-40", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-27", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-40", 
                                        2
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-31", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-41", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-40", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-44", 
                                        1
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
                                        "obj-44", 
                                        2
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-25", 
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
                                        "obj-1", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-56", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-40", 
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
                                        "obj-2", 
                                        0
                                    ]
                                }
                            }
                        ], 
                        "statusbarvisible": 2, 
                        "gridsnaponopen": 0, 
                        "bglocked": 0
                    }, 
                    "saved_object_attributes": {
                        "fontname": "Arial", 
                        "description": "", 
                        "tags": "", 
                        "fontface": 0, 
                        "globalpatchername": "", 
                        "fontsize": 12.0, 
                        "default_fontface": 0, 
                        "default_fontname": "Arial", 
                        "default_fontsize": 12.0, 
                        "digest": ""
                    }, 
                    "text": "p default argument parsing", 
                    "numinlets": 1, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "", 
                        "bang", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-59", 
                    "patching_rect": [
                        319.0, 
                        118.0, 
                        153.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "distribute attributes to sliders  (eventually pull off attributes I care about", 
                    "numinlets": 1, 
                    "linecount": 3, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-54", 
                    "patching_rect": [
                        665.0, 
                        48.0, 
                        150.0, 
                        47.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "t b l b", 
                    "numinlets": 1, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "bang", 
                        "", 
                        "bang"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-50", 
                    "patching_rect": [
                        331.0, 
                        90.0, 
                        46.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "patcherargs", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-2", 
                    "patching_rect": [
                        354.0, 
                        34.0, 
                        74.0, 
                        20.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            156.0, 
            44.0, 
            436.0, 
            476.0
        ], 
        "lines": [
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-14", 
                        1
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-28", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-14", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-29", 
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
                        "obj-14", 
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
                        "obj-3", 
                        1
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-25", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-27", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-26", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-262", 
                        1
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-262", 
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
                        "obj-262", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-90", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-27", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-26", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-28", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-25", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-28", 
                        1
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-27", 
                        1
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-29", 
                        2
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-26", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-29", 
                        1
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
                        "obj-3", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-50", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-50", 
                        1
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-59", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-50", 
                        2
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-90", 
                        1
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-59", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-262", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-59", 
                        2
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-83", 
                        1
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-59", 
                        1
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-83", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-65", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-50", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-83", 
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
                        "obj-83", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-86", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-86", 
                        0
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
                        "obj-90", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-5", 
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
                "type": "iLaX", 
                "name": "o.atomize.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.message.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.collect.mxo"
            }
        ]
    }
}