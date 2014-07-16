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
            "minor": 0, 
            "revision": 8
        }, 
        "boxes": [
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "route float FullPacket", 
                    "numinlets": 3, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "", 
                        "", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-12", 
                    "patching_rect": [
                        171.0, 
                        59.0, 
                        198.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 20.0, 
                    "id": "obj-15", 
                    "patching_rect": [
                        513.0, 
                        159.0, 
                        50.0, 
                        27.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "+ 0.000001", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "float"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-10", 
                    "patching_rect": [
                        348.0, 
                        84.0, 
                        111.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/in : \"$1\"", 
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
                    "id": "obj-5", 
                    "patching_rect": [
                        971.0, 
                        560.0, 
                        150.0, 
                        29.0
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
                    "fontsize": 20.0, 
                    "id": "obj-2", 
                    "patching_rect": [
                        920.0, 
                        592.0, 
                        76.0, 
                        29.0
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
                    "fontsize": 20.0, 
                    "id": "obj-1", 
                    "patching_rect": [
                        525.0, 
                        70.0, 
                        49.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "comment": "", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "outlet", 
                    "id": "obj-76", 
                    "patching_rect": [
                        847.0, 
                        676.0, 
                        25.0, 
                        25.0
                    ]
                }
            }, 
            {
                "box": {
                    "numinlets": 2, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "", 
                        ""
                    ], 
                    "maxclass": "gswitch2", 
                    "parameter_enable": 0, 
                    "id": "obj-72", 
                    "patching_rect": [
                        73.0, 
                        298.0, 
                        39.0, 
                        32.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "t 0 i 1 i b", 
                    "numinlets": 1, 
                    "numoutlets": 5, 
                    "outlettype": [
                        "int", 
                        "int", 
                        "int", 
                        "int", 
                        "bang"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-69", 
                    "patching_rect": [
                        166.0, 
                        429.0, 
                        86.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/between : \"$1\"", 
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
                    "id": "obj-64", 
                    "patching_rect": [
                        934.0, 
                        523.0, 
                        150.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "% 1.", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "int"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-63", 
                    "patching_rect": [
                        187.0, 
                        189.0, 
                        51.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/increasing : \"$1\"", 
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
                    "id": "obj-62", 
                    "patching_rect": [
                        1032.0, 
                        434.0, 
                        154.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/decreasing : \"$1\"", 
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
                    "id": "obj-61", 
                    "patching_rect": [
                        334.0, 
                        500.0, 
                        231.0, 
                        29.0
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
                    "fontsize": 20.0, 
                    "id": "obj-57", 
                    "patching_rect": [
                        101.0, 
                        663.0, 
                        76.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "abs 0.", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "float"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-53", 
                    "patching_rect": [
                        665.0, 
                        583.0, 
                        65.0, 
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
                    "id": "obj-52", 
                    "patching_rect": [
                        569.0, 
                        509.0, 
                        20.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "float", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "float"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-50", 
                    "patching_rect": [
                        690.0, 
                        510.0, 
                        48.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "select -1 1", 
                    "numinlets": 3, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "bang", 
                        "bang", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-49", 
                    "patching_rect": [
                        451.0, 
                        399.0, 
                        103.0, 
                        29.0
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
                    "fontsize": 20.0, 
                    "id": "obj-48", 
                    "patching_rect": [
                        494.0, 
                        466.0, 
                        32.5, 
                        29.0
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
                    "fontsize": 20.0, 
                    "id": "obj-47", 
                    "patching_rect": [
                        397.0, 
                        467.0, 
                        32.5, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /change /rate /speed /in", 
                    "numinlets": 4, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-45", 
                    "patching_rect": [
                        101.0, 
                        586.0, 
                        284.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "- 0.", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "float"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-44", 
                    "patching_rect": [
                        399.0, 
                        84.0, 
                        39.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "unpack f f i s", 
                    "numinlets": 1, 
                    "numoutlets": 4, 
                    "outlettype": [
                        "float", 
                        "float", 
                        "int", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-43", 
                    "patching_rect": [
                        321.0, 
                        43.0, 
                        123.0, 
                        29.0
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
                    "fontsize": 20.0, 
                    "id": "obj-42", 
                    "patching_rect": [
                        435.0, 
                        8.0, 
                        116.0, 
                        29.0
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
                    "id": "obj-30", 
                    "patching_rect": [
                        181.0, 
                        19.0, 
                        25.0, 
                        25.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "t b f f b", 
                    "numinlets": 1, 
                    "numoutlets": 4, 
                    "outlettype": [
                        "bang", 
                        "float", 
                        "float", 
                        "bang"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-27", 
                    "patching_rect": [
                        813.0, 
                        325.0, 
                        72.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "- 0.", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "float"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-28", 
                    "patching_rect": [
                        759.0, 
                        404.0, 
                        39.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "-0.007246", 
                    "numinlets": 2, 
                    "maxclass": "message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 3, 
                    "fontsize": 20.0, 
                    "id": "obj-29", 
                    "patching_rect": [
                        761.0, 
                        456.0, 
                        50.0, 
                        72.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "0.818841", 
                    "numinlets": 2, 
                    "maxclass": "message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 3, 
                    "fontsize": 20.0, 
                    "id": "obj-26", 
                    "patching_rect": [
                        497.0, 
                        256.0, 
                        50.0, 
                        72.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/ 11.", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "float"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-25", 
                    "patching_rect": [
                        396.0, 
                        170.0, 
                        48.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "t b i i b", 
                    "numinlets": 1, 
                    "numoutlets": 4, 
                    "outlettype": [
                        "bang", 
                        "int", 
                        "int", 
                        "bang"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-23", 
                    "patching_rect": [
                        331.0, 
                        418.0, 
                        69.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "-", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "int"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-19", 
                    "patching_rect": [
                        615.0, 
                        412.0, 
                        32.5, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "1", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 20.0, 
                    "id": "obj-13", 
                    "patching_rect": [
                        617.0, 
                        464.0, 
                        50.0, 
                        27.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "9", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 20.0, 
                    "id": "obj-11", 
                    "patching_rect": [
                        273.0, 
                        450.0, 
                        50.0, 
                        27.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "change", 
                    "numinlets": 1, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "", 
                        "int", 
                        "int"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-9", 
                    "patching_rect": [
                        346.0, 
                        332.0, 
                        76.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "9", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 20.0, 
                    "id": "obj-8", 
                    "patching_rect": [
                        419.0, 
                        288.0, 
                        50.0, 
                        27.0
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
                    "fontsize": 20.0, 
                    "id": "obj-7", 
                    "patching_rect": [
                        328.0, 
                        230.0, 
                        32.5, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "9.007246", 
                    "numinlets": 2, 
                    "maxclass": "message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 3, 
                    "fontsize": 20.0, 
                    "id": "obj-6", 
                    "patching_rect": [
                        239.0, 
                        242.0, 
                        50.0, 
                        72.0
                    ]
                }
            }, 
            {
                "box": {
                    "numoutlets": 2, 
                    "numinlets": 1, 
                    "contdata": 1, 
                    "outlettype": [
                        "", 
                        ""
                    ], 
                    "maxclass": "multislider", 
                    "parameter_enable": 0, 
                    "setminmax": [
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-4", 
                    "patching_rect": [
                        120.0, 
                        63.0, 
                        20.0, 
                        140.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "scale 0. 1. 0 11", 
                    "numinlets": 6, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-3", 
                    "patching_rect": [
                        278.0, 
                        124.0, 
                        146.0, 
                        29.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            590.0, 
            209.0, 
            1262.0, 
            773.0
        ], 
        "lines": [
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
                        "obj-3", 
                        2
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
                        "obj-3", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-19", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-13", 
                        1
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-19", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-49", 
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
                        "obj-76", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-23", 
                        2
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
                        "obj-23", 
                        1
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-19", 
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
                        "obj-26", 
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
                        "obj-27", 
                        2
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
                        "obj-27", 
                        1
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-28", 
                        1
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
                        "obj-29", 
                        1
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
                        "obj-50", 
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
                        "obj-25", 
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
                        "obj-63", 
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
                        "obj-4", 
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
                        "obj-42", 
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
                        "obj-42", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-43", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-43", 
                        1
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
                        "obj-43", 
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
                        "obj-43", 
                        2
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
                        "obj-44", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-25", 
                        1
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-44", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-3", 
                        4
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-45", 
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
                        "obj-47", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-61", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-48", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-62", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-49", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-47", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-49", 
                        1
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-48", 
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
                        "obj-2", 
                        1
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-50", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-45", 
                        1
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-50", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-53", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-52", 
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
                        "obj-53", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-45", 
                        2
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-57", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-76", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-61", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-57", 
                        1
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-62", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-57", 
                        1
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
                        "obj-72", 
                        1
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-64", 
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
                        "obj-69", 
                        1
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-45", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-69", 
                        2
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
                        "obj-69", 
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
                        "obj-7", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-45", 
                        3
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
                        "obj-5", 
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
                        "obj-8", 
                        1
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
                        "obj-64", 
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
                        "obj-11", 
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
                        "obj-23", 
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
                        "obj-47", 
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
                        "obj-48", 
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
                        "obj-52", 
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
                        "obj-69", 
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
                "name": "o.pack.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.union.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.message.mxo"
            }
        ]
    }
}