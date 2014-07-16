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
            "revision": 3
        }, 
        "boxes": [
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.prepend /button", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-30", 
                    "patching_rect": [
                        149.333328, 
                        505.0, 
                        105.0, 
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
                    "id": "obj-29", 
                    "patching_rect": [
                        106.0, 
                        541.0, 
                        50.0, 
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
                    "id": "obj-28", 
                    "patching_rect": [
                        106.0, 
                        452.0, 
                        50.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/button/id/3/press : 0,\n/button/id/3/x : 0,\n/button/id/3/y : 5,\n/button/id/3/xyt : [0, 5, 0],\n/button/id/3/5/0 : 0,\n/buttons : 3,\n/button/press : 0,\n/button/x : 0,\n/button/y : 5,\n/button/xyt : [0, 5, 0],\n/button/5/0 : 0", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 11, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-19", 
                    "patching_rect": [
                        229.0, 
                        605.0, 
                        150.0, 
                        154.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/buttons : 3", 
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
                    "id": "obj-18", 
                    "patching_rect": [
                        433.0, 
                        275.5, 
                        150.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /buttons", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-14", 
                    "patching_rect": [
                        410.0, 
                        216.0, 
                        92.0, 
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
                        "float", 
                        "bang"
                    ], 
                    "maxclass": "flonum", 
                    "fontsize": 12.0, 
                    "parameter_enable": 0, 
                    "id": "obj-11", 
                    "patching_rect": [
                        340.0, 
                        263.0, 
                        50.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "t b l", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "bang", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-87", 
                    "patching_rect": [
                        167.333328, 
                        343.0, 
                        32.5, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/button/id/3/press : 0,\n/button/id/3/x : 0,\n/button/id/3/y : 5,\n/button/id/3/xyt : [0, 5, 0],\n/button/id/3/5/0 : 0", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 5, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-9", 
                    "patching_rect": [
                        327.333313, 
                        452.0, 
                        150.0, 
                        74.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.prepend", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-8", 
                    "patching_rect": [
                        106.0, 
                        380.0, 
                        65.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "meessed this up///\n", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-3", 
                    "patching_rect": [
                        245.0, 
                        84.0, 
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
                    "id": "obj-39", 
                    "patching_rect": [
                        106.0, 
                        742.0, 
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
                            "revision": 3
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route /tog", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-91", 
                                    "patching_rect": [
                                        183.0, 
                                        655.5, 
                                        71.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "if ($i1 == 0) && ($i2 == 0) && ($i3 == 1) then bang", 
                                    "numinlets": 3, 
                                    "maxclass": "newobj", 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "linecount": 2, 
                                    "fontsize": 12.0, 
                                    "id": "obj-88", 
                                    "patching_rect": [
                                        50.0, 
                                        696.5, 
                                        152.0, 
                                        33.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "0 1", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 12.0, 
                                    "id": "obj-67", 
                                    "patching_rect": [
                                        183.0, 
                                        615.5, 
                                        50.0, 
                                        18.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/tog : 0", 
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
                                    "id": "obj-55", 
                                    "patching_rect": [
                                        183.0, 
                                        572.5, 
                                        82.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route /x /y /xy", 
                                    "numinlets": 4, 
                                    "numoutlets": 4, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-51", 
                                    "patching_rect": [
                                        50.0, 
                                        541.5, 
                                        92.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "pack up row, col values and on/off", 
                                    "numinlets": 1, 
                                    "linecount": 3, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-163", 
                                    "patching_rect": [
                                        113.0, 
                                        217.5, 
                                        98.0, 
                                        47.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.prepend /zone", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-83", 
                                    "patching_rect": [
                                        50.0, 
                                        183.0, 
                                        97.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/zone/grid : {\n\t/row : 3,\n\t/col : 0,\n\t/state : 0\n},\n/zone/top : {\n\t/col : 2,\n\t/state : 0\n},\n/zone/right : {\n\t/row : 3,\n\t/state : 0\n}", 
                                    "numinlets": 2, 
                                    "maxclass": "o.message", 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "linecount": 13, 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-82", 
                                    "patching_rect": [
                                        61.0, 
                                        304.0, 
                                        150.0, 
                                        181.0
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
                                    "id": "obj-81", 
                                    "patching_rect": [
                                        50.0, 
                                        257.0, 
                                        55.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t b s", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "bang", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-80", 
                                    "patching_rect": [
                                        157.0, 
                                        100.0, 
                                        33.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t b s", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "bang", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-79", 
                                    "patching_rect": [
                                        96.5, 
                                        100.0, 
                                        33.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t b s", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "bang", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-78", 
                                    "patching_rect": [
                                        50.0, 
                                        100.0, 
                                        33.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t b s", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "bang", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-77", 
                                    "patching_rect": [
                                        50.0, 
                                        213.0, 
                                        33.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pack /grid /top /right", 
                                    "numinlets": 3, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-76", 
                                    "patching_rect": [
                                        50.0, 
                                        152.0, 
                                        126.0, 
                                        20.0
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
                                        "obj-51", 
                                        3
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-55", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-51", 
                                        2
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-67", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-51", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-88", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-51", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-88", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-51", 
                                        3
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-91", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-76", 
                                        0
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
                                        "obj-77", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-81", 
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
                                        "obj-81", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-78", 
                                        1
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
                                        "obj-78", 
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
                                        "obj-79", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-76", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-79", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-76", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-80", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-76", 
                                        2
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
                                        "obj-76", 
                                        2
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
                                        "obj-82", 
                                        1
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
                                        "obj-77", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-91", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-88", 
                                        2
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
                    "text": "p sparkly_bits", 
                    "numinlets": 0, 
                    "numoutlets": 0, 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-37", 
                    "patching_rect": [
                        37.0, 
                        24.5, 
                        84.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/press : 0,\n/x : 0,\n/y : 5,\n/xyt : [0, 5, 0],\n/5/0 : 0", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 5, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-58", 
                    "patching_rect": [
                        410.0, 
                        350.0, 
                        150.0, 
                        74.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "patcher": {
                        "fileversion": 1, 
                        "imprint": 0, 
                        "visible": 1, 
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
                            "revision": 3
                        }, 
                        "boxes": [
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
                                            "revision": 3
                                        }, 
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 0, 
                                                    "maxclass": "outlet", 
                                                    "id": "obj-15", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        606.0, 
                                                        25.0, 
                                                        25.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /arm = /8/8", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-14", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        567.0, 
                                                        105.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /solo = /7/8", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-13", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        536.0, 
                                                        106.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /trk/on = /6/8", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-12", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        509.0, 
                                                        114.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /stop = /5/8", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-11", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        475.0, 
                                                        107.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /snd/b = /4/8", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-10", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        442.0, 
                                                        114.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /snd/a = /3/8", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-9", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        412.0, 
                                                        114.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /pan = /2/8", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-8", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        384.0, 
                                                        104.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /vol = /1/8", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-6", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        358.0, 
                                                        100.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /mixer = /0/7", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-7", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        313.0, 
                                                        114.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /user/2 = /0/6", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-4", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        282.0, 
                                                        118.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /user/1 = /0/5", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-5", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        251.0, 
                                                        118.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "assign button values to names\n", 
                                                    "numinlets": 1, 
                                                    "linecount": 2, 
                                                    "numoutlets": 0, 
                                                    "maxclass": "comment", 
                                                    "frgb": 0.0, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-3", 
                                                    "patching_rect": [
                                                        249.0, 
                                                        55.0, 
                                                        110.0, 
                                                        33.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "/5/0 : 0", 
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
                                                        179.0, 
                                                        632.0, 
                                                        150.0, 
                                                        33.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /session = /0/4", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-35", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        219.0, 
                                                        125.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /page/right = /0/3", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-34", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        188.0, 
                                                        138.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /page/left = /0/2", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-33", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        159.0, 
                                                        130.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /view = /0/1", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-32", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        129.0, 
                                                        108.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /learn = /0/0", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-28", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        100.0, 
                                                        111.0, 
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
                                                    "id": "obj-36", 
                                                    "patching_rect": [
                                                        50.0, 
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
                                            25.0, 
                                            69.0, 
                                            754.0, 
                                            643.0
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
                                                        "obj-11", 
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
                                                        "obj-12", 
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
                                                        "obj-13", 
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
                                                        "obj-28", 
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
                                                        "obj-32", 
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
                                                        "obj-33", 
                                                        0
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
                                                        "obj-34", 
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
                                                        "obj-35", 
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
                                                        "obj-36", 
                                                        0
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
                                                        "obj-4", 
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
                                                        "obj-5", 
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
                                                        "obj-6", 
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
                                                        "obj-7", 
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
                                    "text": "p named_buttons", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-37", 
                                    "patching_rect": [
                                        229.0, 
                                        544.0, 
                                        103.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/0/0 : 0,\n/learn : 0", 
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
                                    "id": "obj-31", 
                                    "patching_rect": [
                                        426.0, 
                                        603.0, 
                                        150.0, 
                                        33.0
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
                                    "id": "obj-27", 
                                    "patching_rect": [
                                        168.0, 
                                        687.0, 
                                        50.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "t l l", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-26", 
                                    "patching_rect": [
                                        199.0, 
                                        494.0, 
                                        32.5, 
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
                                    "id": "obj-25", 
                                    "patching_rect": [
                                        168.0, 
                                        536.0, 
                                        50.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "sprintf set /%i", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-23", 
                                    "patching_rect": [
                                        426.0, 
                                        266.25, 
                                        83.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "$1", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 12.0, 
                                    "id": "obj-24", 
                                    "patching_rect": [
                                        426.0, 
                                        231.0, 
                                        32.5, 
                                        18.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.prepend /$1/", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-22", 
                                    "patching_rect": [
                                        199.0, 
                                        398.0, 
                                        88.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "sprintf set /%i", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-9", 
                                    "patching_rect": [
                                        344.0, 
                                        309.0, 
                                        83.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/5/0 : 0", 
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
                                    "id": "obj-8", 
                                    "patching_rect": [
                                        261.25, 
                                        444.0, 
                                        150.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pack /$1/", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-4", 
                                    "patching_rect": [
                                        199.0, 
                                        349.0, 
                                        69.0, 
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
                                    "id": "obj-3", 
                                    "patching_rect": [
                                        143.0, 
                                        231.0, 
                                        20.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "pak 0 0 0", 
                                    "numinlets": 3, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-1", 
                                    "patching_rect": [
                                        271.0, 
                                        214.0, 
                                        60.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "buddy 3", 
                                    "numinlets": 3, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-6", 
                                    "patching_rect": [
                                        179.333328, 
                                        172.0, 
                                        53.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.print", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-21", 
                                    "patching_rect": [
                                        667.0, 
                                        301.0, 
                                        44.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "$1", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 12.0, 
                                    "id": "obj-20", 
                                    "patching_rect": [
                                        344.0, 
                                        273.75, 
                                        32.5, 
                                        18.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/press : 0,\n/x : 0,\n/y : 5,\n/xyt : [0, 5, 0]", 
                                    "numinlets": 2, 
                                    "maxclass": "o.message", 
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
                                    "id": "obj-18", 
                                    "patching_rect": [
                                        495.0, 
                                        309.0, 
                                        150.0, 
                                        60.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "sprintf set /%i", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-53", 
                                    "patching_rect": [
                                        481.0, 
                                        100.0, 
                                        83.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pack /press /x /y /xyt", 
                                    "numinlets": 4, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-38", 
                                    "patching_rect": [
                                        179.333328, 
                                        273.75, 
                                        129.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "Format: on/of, row, col, voice", 
                                    "numinlets": 1, 
                                    "linecount": 2, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        55.333328, 
                                        185.0, 
                                        124.0, 
                                        33.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "float", 
                                        "bang"
                                    ], 
                                    "maxclass": "flonum", 
                                    "fontsize": 12.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-56", 
                                    "patching_rect": [
                                        17.666626, 
                                        152.5, 
                                        50.0, 
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
                                            "revision": 3
                                        }, 
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "buddy", 
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
                                                        -1.666626, 
                                                        208.0, 
                                                        43.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "t 0 i", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 2, 
                                                    "outlettype": [
                                                        "int", 
                                                        "int"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-17", 
                                                    "patching_rect": [
                                                        4.25, 
                                                        74.0, 
                                                        32.5, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "top col", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 0, 
                                                    "maxclass": "comment", 
                                                    "frgb": 0.0, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-149", 
                                                    "patching_rect": [
                                                        8.333374, 
                                                        163.19873, 
                                                        51.166626, 
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
                                                    "id": "obj-148", 
                                                    "patching_rect": [
                                                        69.5, 
                                                        163.19873, 
                                                        50.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "- 104", 
                                                    "numinlets": 2, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "int"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-144", 
                                                    "patching_rect": [
                                                        69.5, 
                                                        117.0, 
                                                        38.0, 
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
                                                        "float", 
                                                        "bang"
                                                    ], 
                                                    "maxclass": "flonum", 
                                                    "fontsize": 12.0, 
                                                    "parameter_enable": 0, 
                                                    "id": "obj-19", 
                                                    "patching_rect": [
                                                        224.166626, 
                                                        18.0, 
                                                        50.0, 
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
                                                        "float", 
                                                        "bang"
                                                    ], 
                                                    "maxclass": "flonum", 
                                                    "fontsize": 12.0, 
                                                    "parameter_enable": 0, 
                                                    "id": "obj-18", 
                                                    "patching_rect": [
                                                        56.0, 
                                                        8.0, 
                                                        50.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "if ($i1 == 9999) then 104 else out2 $i1", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 2, 
                                                    "outlettype": [
                                                        "", 
                                                        ""
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-15", 
                                                    "patching_rect": [
                                                        22.25, 
                                                        -44.0, 
                                                        213.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "64", 
                                                    "numinlets": 2, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "maxclass": "message", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-8", 
                                                    "patching_rect": [
                                                        241.25, 
                                                        121.0, 
                                                        50.0, 
                                                        18.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "if ($i1 > 103) && ($i1 < 112) then $i1 else out2 $i1", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 2, 
                                                    "outlettype": [
                                                        "", 
                                                        ""
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-3", 
                                                    "patching_rect": [
                                                        4.25, 
                                                        36.0, 
                                                        274.0, 
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
                                                    "id": "obj-2", 
                                                    "patching_rect": [
                                                        172.333252, 
                                                        132.0, 
                                                        32.5, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "print toprow", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 0, 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-11", 
                                                    "patching_rect": [
                                                        509.666626, 
                                                        380.0, 
                                                        73.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "print topcol", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 0, 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-10", 
                                                    "patching_rect": [
                                                        426.166626, 
                                                        380.0, 
                                                        69.0, 
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
                                                        241.25, 
                                                        428.0, 
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
                                                    "id": "obj-6", 
                                                    "patching_rect": [
                                                        190.25, 
                                                        428.0, 
                                                        25.0, 
                                                        25.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "top row", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 0, 
                                                    "maxclass": "comment", 
                                                    "frgb": 0.0, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-155", 
                                                    "patching_rect": [
                                                        411.166626, 
                                                        180.19873, 
                                                        51.166626, 
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
                                                    "id": "obj-154", 
                                                    "patching_rect": [
                                                        465.166626, 
                                                        180.19873, 
                                                        50.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "t b 0", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 2, 
                                                    "outlettype": [
                                                        "bang", 
                                                        "int"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-152", 
                                                    "patching_rect": [
                                                        450.166626, 
                                                        100.0, 
                                                        34.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "col w/o top", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 0, 
                                                    "maxclass": "comment", 
                                                    "frgb": 0.0, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-143", 
                                                    "patching_rect": [
                                                        202.166626, 
                                                        203.19873, 
                                                        78.0, 
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
                                                            "revision": 3
                                                        }, 
                                                        "boxes": [
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
                                                                    "id": "obj-119", 
                                                                    "patching_rect": [
                                                                        50.0, 
                                                                        134.0, 
                                                                        32.5, 
                                                                        20.0
                                                                    ]
                                                                }
                                                            }, 
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial", 
                                                                    "text": "/ 16", 
                                                                    "numinlets": 2, 
                                                                    "numoutlets": 1, 
                                                                    "outlettype": [
                                                                        "int"
                                                                    ], 
                                                                    "maxclass": "newobj", 
                                                                    "fontsize": 12.0, 
                                                                    "id": "obj-116", 
                                                                    "patching_rect": [
                                                                        50.0, 
                                                                        100.0, 
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
                                                                        "int"
                                                                    ], 
                                                                    "maxclass": "inlet", 
                                                                    "id": "obj-140", 
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
                                                                    "id": "obj-141", 
                                                                    "patching_rect": [
                                                                        50.0, 
                                                                        214.0, 
                                                                        25.0, 
                                                                        25.0
                                                                    ]
                                                                }
                                                            }
                                                        ], 
                                                        "default_fontface": 0, 
                                                        "gridonopen": 0, 
                                                        "rect": [
                                                            796.0, 
                                                            44.0, 
                                                            640.0, 
                                                            480.0
                                                        ], 
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "disabled": 0, 
                                                                    "source": [
                                                                        "obj-116", 
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
                                                                        "obj-119", 
                                                                        0
                                                                    ], 
                                                                    "hidden": 0, 
                                                                    "destination": [
                                                                        "obj-141", 
                                                                        0
                                                                    ]
                                                                }
                                                            }, 
                                                            {
                                                                "patchline": {
                                                                    "disabled": 0, 
                                                                    "source": [
                                                                        "obj-140", 
                                                                        0
                                                                    ], 
                                                                    "hidden": 0, 
                                                                    "destination": [
                                                                        "obj-116", 
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
                                                    "text": "p getRow", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "int"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-142", 
                                                    "patching_rect": [
                                                        130.5, 
                                                        177.0, 
                                                        61.0, 
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
                                                            "revision": 3
                                                        }, 
                                                        "boxes": [
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
                                                                    "id": "obj-131", 
                                                                    "patching_rect": [
                                                                        213.0, 
                                                                        171.19873, 
                                                                        50.0, 
                                                                        20.0
                                                                    ]
                                                                }
                                                            }, 
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial", 
                                                                    "text": "expr $i1 - 16", 
                                                                    "numinlets": 1, 
                                                                    "numoutlets": 1, 
                                                                    "outlettype": [
                                                                        ""
                                                                    ], 
                                                                    "maxclass": "newobj", 
                                                                    "fontsize": 12.0, 
                                                                    "id": "obj-127", 
                                                                    "patching_rect": [
                                                                        213.0, 
                                                                        139.19873, 
                                                                        77.0, 
                                                                        20.0
                                                                    ]
                                                                }
                                                            }, 
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial", 
                                                                    "text": "if ($i1 < 9) then $i1 else out2 $i1", 
                                                                    "numinlets": 1, 
                                                                    "numoutlets": 2, 
                                                                    "outlettype": [
                                                                        "", 
                                                                        ""
                                                                    ], 
                                                                    "maxclass": "newobj", 
                                                                    "fontsize": 12.0, 
                                                                    "id": "obj-124", 
                                                                    "patching_rect": [
                                                                        50.0, 
                                                                        105.19873, 
                                                                        182.0, 
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
                                                                        "int"
                                                                    ], 
                                                                    "maxclass": "inlet", 
                                                                    "id": "obj-137", 
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
                                                                    "id": "obj-138", 
                                                                    "patching_rect": [
                                                                        50.0, 
                                                                        251.19873, 
                                                                        25.0, 
                                                                        25.0
                                                                    ]
                                                                }
                                                            }
                                                        ], 
                                                        "default_fontface": 0, 
                                                        "gridonopen": 0, 
                                                        "rect": [
                                                            671.0, 
                                                            44.0, 
                                                            640.0, 
                                                            480.0
                                                        ], 
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "disabled": 0, 
                                                                    "source": [
                                                                        "obj-124", 
                                                                        1
                                                                    ], 
                                                                    "hidden": 0, 
                                                                    "destination": [
                                                                        "obj-127", 
                                                                        0
                                                                    ]
                                                                }
                                                            }, 
                                                            {
                                                                "patchline": {
                                                                    "disabled": 0, 
                                                                    "source": [
                                                                        "obj-124", 
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
                                                                        "obj-127", 
                                                                        0
                                                                    ], 
                                                                    "hidden": 0, 
                                                                    "destination": [
                                                                        "obj-124", 
                                                                        0
                                                                    ]
                                                                }
                                                            }, 
                                                            {
                                                                "patchline": {
                                                                    "disabled": 0, 
                                                                    "source": [
                                                                        "obj-127", 
                                                                        0
                                                                    ], 
                                                                    "hidden": 0, 
                                                                    "destination": [
                                                                        "obj-131", 
                                                                        0
                                                                    ]
                                                                }
                                                            }, 
                                                            {
                                                                "patchline": {
                                                                    "disabled": 0, 
                                                                    "source": [
                                                                        "obj-137", 
                                                                        0
                                                                    ], 
                                                                    "hidden": 0, 
                                                                    "destination": [
                                                                        "obj-124", 
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
                                                    "text": "p getCol", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-139", 
                                                    "patching_rect": [
                                                        224.166626, 
                                                        177.0, 
                                                        55.0, 
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
                                                    "id": "obj-125", 
                                                    "patching_rect": [
                                                        216.166626, 
                                                        223.19873, 
                                                        50.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "row w/o top", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 0, 
                                                    "maxclass": "comment", 
                                                    "frgb": 0.0, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-123", 
                                                    "patching_rect": [
                                                        106.5, 
                                                        203.19873, 
                                                        78.0, 
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
                                                    "id": "obj-121", 
                                                    "patching_rect": [
                                                        120.5, 
                                                        223.19873, 
                                                        50.0, 
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
                                                    "id": "obj-190", 
                                                    "patching_rect": [
                                                        62.666626, 
                                                        -90.0, 
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
                                                    "id": "obj-191", 
                                                    "patching_rect": [
                                                        387.166626, 
                                                        18.0, 
                                                        25.0, 
                                                        25.0
                                                    ]
                                                }
                                            }
                                        ], 
                                        "default_fontface": 0, 
                                        "gridonopen": 0, 
                                        "rect": [
                                            767.0, 
                                            44.0, 
                                            640.0, 
                                            480.0
                                        ], 
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-13", 
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
                                                        "obj-13", 
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
                                                        "obj-139", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-125", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-139", 
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
                                                        "obj-142", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-121", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-142", 
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
                                                        "obj-144", 
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
                                                        "obj-144", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-148", 
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
                                                        "obj-18", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-15", 
                                                        1
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
                                                        "obj-15", 
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
                                                        "obj-15", 
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
                                                        "obj-152", 
                                                        1
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
                                                        "obj-17", 
                                                        1
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
                                                        "obj-190", 
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
                                                        "obj-2", 
                                                        1
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-139", 
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
                                                        "obj-142", 
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
                                                        "obj-3", 
                                                        1
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-8", 
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
                                    "text": "p row_col", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "int", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-194", 
                                    "patching_rect": [
                                        174.0, 
                                        100.0, 
                                        66.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "if $i1 == 127 then 1 else 0", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-172", 
                                    "patching_rect": [
                                        17.666626, 
                                        100.0, 
                                        149.0, 
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
                                    "id": "obj-51", 
                                    "patching_rect": [
                                        174.0, 
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
                                    "id": "obj-54", 
                                    "patching_rect": [
                                        221.0, 
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
                                        "int"
                                    ], 
                                    "maxclass": "inlet", 
                                    "id": "obj-55", 
                                    "patching_rect": [
                                        481.0, 
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
                                        "int"
                                    ], 
                                    "maxclass": "inlet", 
                                    "id": "obj-57", 
                                    "patching_rect": [
                                        17.666626, 
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
                                    "id": "obj-58", 
                                    "patching_rect": [
                                        168.0, 
                                        741.5, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            694.0, 
                            44.0, 
                            742.0, 
                            746.0
                        ], 
                        "boxanimatetime": 200, 
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
                                        "obj-38", 
                                        3
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-172", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-56", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-172", 
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
                                        "obj-194", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-6", 
                                        2
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
                                        "obj-6", 
                                        1
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
                                        "obj-9", 
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
                                        "obj-26", 
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
                                        "obj-8", 
                                        1
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
                                        "obj-22", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-24", 
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
                                        "obj-25", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-26", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-37", 
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
                                        "obj-58", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-37", 
                                        0
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
                                        "obj-38", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-18", 
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
                                        "obj-25", 
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
                                        "obj-22", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-51", 
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
                                        "obj-54", 
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
                                        "obj-55", 
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
                                        "obj-57", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-172", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-6", 
                                        2
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
                                        "obj-6", 
                                        1
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
                                        "obj-6", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-1", 
                                        2
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-6", 
                                        2
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-20", 
                                        0
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
                                        "obj-24", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-6", 
                                        2
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-38", 
                                        1
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
                                        "obj-38", 
                                        2
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
                                        "obj-38", 
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
                                        "obj-4", 
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
                                        "obj-4", 
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
                    "text": "p OSCpacking(x\\, y)", 
                    "numinlets": 4, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-60", 
                    "patching_rect": [
                        112.0, 
                        275.5, 
                        113.0, 
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
                            "revision": 3
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "if ($i1 == 104) then 9999 else $i1", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-46", 
                                    "patching_rect": [
                                        68.0, 
                                        373.0, 
                                        186.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "printit", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-38", 
                                    "patching_rect": [
                                        382.0, 
                                        88.0, 
                                        40.0, 
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
                                    "id": "obj-37", 
                                    "patching_rect": [
                                        273.0, 
                                        140.0, 
                                        50.0, 
                                        18.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "voice", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-36", 
                                    "patching_rect": [
                                        641.833252, 
                                        719.0, 
                                        57.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "pitch", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-35", 
                                    "patching_rect": [
                                        496.5, 
                                        733.0, 
                                        57.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "voice\n", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-34", 
                                    "patching_rect": [
                                        229.708252, 
                                        737.5, 
                                        57.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "off\n", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-8", 
                                    "patching_rect": [
                                        154.333313, 
                                        758.0, 
                                        25.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "pitch\n", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-7", 
                                    "patching_rect": [
                                        334.583252, 
                                        733.0, 
                                        52.5, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "zeroes from both input streams are agregated.", 
                                    "numinlets": 1, 
                                    "linecount": 2, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        180.0, 
                                        350.0, 
                                        161.0, 
                                        33.0
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
                                    "fontsize": 13.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-208", 
                                    "patching_rect": [
                                        501.583252, 
                                        463.5, 
                                        53.0, 
                                        21.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "Voice Allocation Number. Use this as an index to refer to a note when storing the other information from Borax", 
                                    "numinlets": 1, 
                                    "linecount": 2, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 13.0, 
                                    "textcolor": [
                                        0.501961, 
                                        0.501961, 
                                        0.501961, 
                                        1.0
                                    ], 
                                    "id": "obj-209", 
                                    "patching_rect": [
                                        461.833252, 
                                        644.75, 
                                        357.0, 
                                        36.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "borax", 
                                    "numinlets": 3, 
                                    "numoutlets": 9, 
                                    "outlettype": [
                                        "int", 
                                        "int", 
                                        "int", 
                                        "int", 
                                        "int", 
                                        "int", 
                                        "int", 
                                        "int", 
                                        "int"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 13.0, 
                                    "id": "obj-210", 
                                    "patching_rect": [
                                        382.333252, 
                                        350.0, 
                                        178.0, 
                                        21.0
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
                                    "fontsize": 13.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-211", 
                                    "patching_rect": [
                                        382.333252, 
                                        681.0, 
                                        53.0, 
                                        21.0
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
                                    "fontsize": 13.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-212", 
                                    "patching_rect": [
                                        402.208252, 
                                        644.75, 
                                        53.0, 
                                        21.0
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
                                    "fontsize": 13.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-213", 
                                    "patching_rect": [
                                        422.083252, 
                                        608.5, 
                                        53.0, 
                                        21.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "Number of notes currently held down", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 13.0, 
                                    "textcolor": [
                                        0.501961, 
                                        0.501961, 
                                        0.501961, 
                                        1.0
                                    ], 
                                    "id": "obj-214", 
                                    "patching_rect": [
                                        481.708252, 
                                        608.5, 
                                        227.0, 
                                        21.0
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
                                    "fontsize": 13.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-215", 
                                    "patching_rect": [
                                        441.958252, 
                                        572.25, 
                                        53.0, 
                                        21.0
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
                                    "fontsize": 13.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-216", 
                                    "patching_rect": [
                                        461.833252, 
                                        536.0, 
                                        53.0, 
                                        21.0
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
                                    "fontsize": 13.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-217", 
                                    "patching_rect": [
                                        481.708252, 
                                        499.75, 
                                        53.0, 
                                        21.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "Velocity of incoming note (0 for note-off)", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 13.0, 
                                    "textcolor": [
                                        0.501961, 
                                        0.501961, 
                                        0.501961, 
                                        1.0
                                    ], 
                                    "id": "obj-218", 
                                    "patching_rect": [
                                        521.458252, 
                                        536.0, 
                                        245.0, 
                                        21.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "Pitch of incoming note", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 13.0, 
                                    "textcolor": [
                                        0.501961, 
                                        0.501961, 
                                        0.501961, 
                                        1.0
                                    ], 
                                    "id": "obj-219", 
                                    "patching_rect": [
                                        501.583252, 
                                        572.25, 
                                        140.0, 
                                        21.0
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
                                    "fontsize": 13.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-28", 
                                    "patching_rect": [
                                        541.333252, 
                                        391.0, 
                                        53.0, 
                                        21.0
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
                                    "fontsize": 13.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-220", 
                                    "patching_rect": [
                                        521.458252, 
                                        427.25, 
                                        53.0, 
                                        21.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "Event number associated with delta-time report", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 13.0, 
                                    "textcolor": [
                                        0.501961, 
                                        0.501961, 
                                        0.501961, 
                                        1.0
                                    ], 
                                    "id": "obj-30", 
                                    "patching_rect": [
                                        582.333252, 
                                        427.25, 
                                        288.0, 
                                        21.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "Event number associated with pitch and velocity report", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 13.0, 
                                    "textcolor": [
                                        0.501961, 
                                        0.501961, 
                                        0.501961, 
                                        1.0
                                    ], 
                                    "id": "obj-31", 
                                    "patching_rect": [
                                        441.958252, 
                                        681.0, 
                                        332.0, 
                                        21.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "Delta-time between note-ons", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 13.0, 
                                    "textcolor": [
                                        0.501961, 
                                        0.501961, 
                                        0.501961, 
                                        1.0
                                    ], 
                                    "id": "obj-32", 
                                    "patching_rect": [
                                        600.833252, 
                                        391.0, 
                                        180.0, 
                                        21.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "Event number associated with duration report", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 13.0, 
                                    "textcolor": [
                                        0.501961, 
                                        0.501961, 
                                        0.501961, 
                                        1.0
                                    ], 
                                    "id": "obj-33", 
                                    "patching_rect": [
                                        541.333252, 
                                        499.75, 
                                        278.0, 
                                        21.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "Duration value (sent out with note-off)", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 13.0, 
                                    "textcolor": [
                                        0.501961, 
                                        0.501961, 
                                        0.501961, 
                                        1.0
                                    ], 
                                    "id": "obj-221", 
                                    "patching_rect": [
                                        554.833252, 
                                        466.0, 
                                        231.0, 
                                        21.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "outlet", 
                                    "id": "obj-39", 
                                    "patching_rect": [
                                        303.583252, 
                                        747.0, 
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
                                    "id": "obj-40", 
                                    "patching_rect": [
                                        595.458252, 
                                        719.0, 
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
                                    "id": "obj-41", 
                                    "patching_rect": [
                                        189.666626, 
                                        758.0, 
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
                                    "id": "obj-42", 
                                    "patching_rect": [
                                        461.833252, 
                                        733.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "MIDI chan", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 13.0, 
                                    "textcolor": [
                                        0.501961, 
                                        0.501961, 
                                        0.501961, 
                                        1.0
                                    ], 
                                    "id": "obj-29", 
                                    "patching_rect": [
                                        710.0, 
                                        274.0, 
                                        70.0, 
                                        21.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "picth bend", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 13.0, 
                                    "textcolor": [
                                        0.501961, 
                                        0.501961, 
                                        0.501961, 
                                        1.0
                                    ], 
                                    "id": "obj-27", 
                                    "patching_rect": [
                                        608.5, 
                                        274.0, 
                                        72.0, 
                                        21.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "after touch", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 13.0, 
                                    "textcolor": [
                                        0.501961, 
                                        0.501961, 
                                        0.501961, 
                                        1.0
                                    ], 
                                    "id": "obj-26", 
                                    "patching_rect": [
                                        498.5, 
                                        274.0, 
                                        72.0, 
                                        21.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "Pgm Change", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 13.0, 
                                    "textcolor": [
                                        0.501961, 
                                        0.501961, 
                                        0.501961, 
                                        1.0
                                    ], 
                                    "id": "obj-25", 
                                    "patching_rect": [
                                        388.833252, 
                                        274.0, 
                                        86.0, 
                                        21.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "Control Change", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 13.0, 
                                    "textcolor": [
                                        0.501961, 
                                        0.501961, 
                                        0.501961, 
                                        1.0
                                    ], 
                                    "id": "obj-24", 
                                    "patching_rect": [
                                        278.666626, 
                                        274.0, 
                                        102.0, 
                                        21.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "Poly Pressure", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 13.0, 
                                    "textcolor": [
                                        0.501961, 
                                        0.501961, 
                                        0.501961, 
                                        1.0
                                    ], 
                                    "id": "obj-9", 
                                    "patching_rect": [
                                        168.666626, 
                                        274.0, 
                                        91.0, 
                                        21.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "Note On/Off", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 13.0, 
                                    "textcolor": [
                                        0.501961, 
                                        0.501961, 
                                        0.501961, 
                                        1.0
                                    ], 
                                    "id": "obj-10", 
                                    "patching_rect": [
                                        58.5, 
                                        274.0, 
                                        80.0, 
                                        21.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "unjoin", 
                                    "numinlets": 1, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 13.0, 
                                    "id": "obj-11", 
                                    "patching_rect": [
                                        58.5, 
                                        207.0, 
                                        46.0, 
                                        21.0
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
                                    "fontsize": 13.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-12", 
                                    "patching_rect": [
                                        58.5, 
                                        234.0, 
                                        38.0, 
                                        21.0
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
                                    "id": "obj-13", 
                                    "patching_rect": [
                                        49.5, 
                                        263.0, 
                                        20.0, 
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
                                    "fontsize": 13.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-14", 
                                    "patching_rect": [
                                        95.5, 
                                        234.0, 
                                        38.0, 
                                        21.0
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
                                    "fontsize": 13.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-15", 
                                    "patching_rect": [
                                        205.666626, 
                                        234.0, 
                                        38.0, 
                                        21.0
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
                                    "fontsize": 13.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-16", 
                                    "patching_rect": [
                                        168.666626, 
                                        234.0, 
                                        38.0, 
                                        21.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "unjoin", 
                                    "numinlets": 1, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 13.0, 
                                    "id": "obj-17", 
                                    "patching_rect": [
                                        168.666626, 
                                        207.0, 
                                        46.0, 
                                        21.0
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
                                    "fontsize": 13.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-18", 
                                    "patching_rect": [
                                        315.666626, 
                                        234.0, 
                                        38.0, 
                                        21.0
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
                                    "fontsize": 13.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-19", 
                                    "patching_rect": [
                                        278.666626, 
                                        234.0, 
                                        38.0, 
                                        21.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "unjoin", 
                                    "numinlets": 1, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 13.0, 
                                    "id": "obj-20", 
                                    "patching_rect": [
                                        278.666626, 
                                        207.0, 
                                        46.0, 
                                        21.0
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
                                    "fontsize": 13.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-21", 
                                    "patching_rect": [
                                        388.5, 
                                        219.0, 
                                        53.0, 
                                        21.0
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
                                    "id": "obj-22", 
                                    "patching_rect": [
                                        388.5, 
                                        255.0, 
                                        20.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "midiparse", 
                                    "numinlets": 1, 
                                    "numoutlets": 7, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "", 
                                        "int", 
                                        "int", 
                                        "int", 
                                        "int"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 13.0, 
                                    "id": "obj-23", 
                                    "patching_rect": [
                                        58.5, 
                                        179.0, 
                                        679.0, 
                                        21.0
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
                                    "fontsize": 13.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-1", 
                                    "patching_rect": [
                                        718.5, 
                                        219.0, 
                                        53.0, 
                                        21.0
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
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        718.5, 
                                        255.0, 
                                        20.0, 
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
                                    "fontsize": 13.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-3", 
                                    "patching_rect": [
                                        608.5, 
                                        219.0, 
                                        53.0, 
                                        21.0
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
                                    "id": "obj-43", 
                                    "patching_rect": [
                                        608.5, 
                                        255.0, 
                                        20.0, 
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
                                    "id": "obj-44", 
                                    "patching_rect": [
                                        498.5, 
                                        255.0, 
                                        20.0, 
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
                                    "fontsize": 13.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-45", 
                                    "patching_rect": [
                                        498.5, 
                                        219.0, 
                                        53.0, 
                                        21.0
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
                                    "id": "obj-47", 
                                    "patching_rect": [
                                        168.666626, 
                                        255.0, 
                                        20.0, 
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
                                    "id": "obj-6", 
                                    "patching_rect": [
                                        259.666626, 
                                        255.0, 
                                        20.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "loadmess Launchpad", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-48", 
                                    "patching_rect": [
                                        58.5, 
                                        46.0, 
                                        125.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "midiin", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "int"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-49", 
                                    "patching_rect": [
                                        58.5, 
                                        82.0, 
                                        42.0, 
                                        20.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            371.0, 
                            44.0, 
                            1065.0, 
                            764.0
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
                                        "obj-2", 
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
                                        "obj-12", 
                                        0
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
                                        "obj-14", 
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
                                        "obj-13", 
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
                                        "obj-210", 
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
                                        "obj-46", 
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
                                        "obj-210", 
                                        1
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
                                        "obj-41", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-16", 
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
                                        "obj-17", 
                                        1
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
                                        "obj-17", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-16", 
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
                                        "obj-210", 
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
                                        "obj-41", 
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
                                        "obj-210", 
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
                                        "obj-39", 
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
                                        "obj-6", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-20", 
                                        1
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
                                        "obj-20", 
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
                                        "obj-210", 
                                        6
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-208", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-210", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-211", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-210", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-212", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-210", 
                                        2
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-213", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-210", 
                                        3
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-215", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-210", 
                                        4
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-216", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-210", 
                                        5
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-217", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-210", 
                                        7
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-220", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-210", 
                                        8
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
                                        "obj-212", 
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
                                        "obj-23", 
                                        6
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
                                        "obj-23", 
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
                                        "obj-23", 
                                        1
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
                                        "obj-23", 
                                        2
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-20", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-23", 
                                        3
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
                                        5
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
                                        "obj-23", 
                                        4
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
                                        "obj-3", 
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
                                        "obj-45", 
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
                                        "obj-46", 
                                        0
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
                                        "obj-48", 
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
                                        "obj-49", 
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
                                        "obj-49", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-37", 
                                        1
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
                                        "obj-38", 
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
                    "text": "p Midi_parsing", 
                    "numinlets": 0, 
                    "numoutlets": 4, 
                    "outlettype": [
                        "int", 
                        "", 
                        "", 
                        "int"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-43", 
                    "patching_rect": [
                        118.333328, 
                        112.5, 
                        89.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "Midi Messages in", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-4", 
                    "patching_rect": [
                        112.0, 
                        79.5, 
                        102.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "sprintf set /button/id/%i", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-116", 
                    "patching_rect": [
                        351.541565, 
                        152.0, 
                        132.0, 
                        20.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            83.0, 
            44.0, 
            642.0, 
            803.0
        ], 
        "lines": [
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-116", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-87", 
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
                        "obj-18", 
                        1
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
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-29", 
                        0
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
                        "obj-29", 
                        0
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
                        "obj-30", 
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
                        "obj-43", 
                        3
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
                        "obj-43", 
                        3
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
                        "obj-43", 
                        3
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
                        "obj-43", 
                        3
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-60", 
                        3
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
                        "obj-60", 
                        2
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
                        "obj-60", 
                        1
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
                        "obj-60", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-60", 
                        0
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
                        "obj-60", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-58", 
                        1
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-60", 
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
                        "obj-8", 
                        0
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
                        "obj-8", 
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
                        "obj-87", 
                        1
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
                        "obj-87", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-8", 
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
                "name": "printit.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.pack.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.message.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.print.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.prepend.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.union.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.expr.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.collect.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.route.mxo"
            }
        ]
    }
}