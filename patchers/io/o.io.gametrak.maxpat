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
            "revision": 3
        }, 
        "boxes": [
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "Gametrak accepts no HID control data", 
                    "numinlets": 1, 
                    "linecount": 2, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-20", 
                    "patching_rect": [
                        85.649879, 
                        19.534182, 
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
                    "id": "obj-16", 
                    "patching_rect": [
                        91.660423, 
                        495.116425, 
                        50.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/left/x : -0.955067,\n/left/y : 0.238095,\n/left/z : 0.99243,\n/right/x : 0.482784,\n/right/y : 1.,\n/right/z : 0.990965,\n/footswitch : 0", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 7, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-15", 
                    "patching_rect": [
                        21.788124, 
                        392.937592, 
                        150.0, 
                        100.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/max = (/system==\"Windows\")?65535:4095;\n/left/x = scale(/left/x, 0, /max, -1., 1.);\n/left/y = scale(/left/y, 0,  /max, -1., 1.); \n/left/z = scale(/left/z, 0,  /max, 0., 1.);\n/right/x = scale(/right/x, 0,  /max, -1., 1.);\n/right/y = scale(/right/y, 0, /max, -1., 1.);\n/right/z = scale(/right/z, 0, /max, 0., 1.);\ndelete(/system); delete(/max)", 
                    "numinlets": 1, 
                    "maxclass": "o.expr.codebox", 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "linecount": 8, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-12", 
                    "patching_rect": [
                        24.915855, 
                        229.20285, 
                        260.0, 
                        114.0
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
                                    "text": "o.maxplatform", 
                                    "numinlets": 0, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-9", 
                                    "patching_rect": [
                                        111.649155, 
                                        32.723511, 
                                        87.0, 
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
                                    "id": "obj-8", 
                                    "patching_rect": [
                                        62.0, 
                                        79.0, 
                                        50.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route /15 /16 /17 /18 /19 /20 /3 /system", 
                                    "numinlets": 9, 
                                    "numoutlets": 9, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "", 
                                        "", 
                                        "", 
                                        "", 
                                        "", 
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 11.595187, 
                                    "id": "obj-15", 
                                    "patching_rect": [
                                        323.0, 
                                        144.0, 
                                        219.0, 
                                        19.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.if /system == \\\"Windows\\\"", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "FullPacket", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-1", 
                                    "patching_rect": [
                                        62.0, 
                                        116.0, 
                                        156.0, 
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
                                        "int"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 11.595187, 
                                    "id": "obj-24", 
                                    "patching_rect": [
                                        375.0, 
                                        231.0, 
                                        32.5, 
                                        19.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pack /left/x /left/y /left/z /right/x /right/y /right/z /footswitch 0 /system", 
                                    "numinlets": 8, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 11.595187, 
                                    "id": "obj-16", 
                                    "patching_rect": [
                                        62.0, 
                                        283.0, 
                                        362.0, 
                                        19.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route /0 /4 /8 /12 /16 /20 /48 /system", 
                                    "numinlets": 9, 
                                    "numoutlets": 9, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "", 
                                        "", 
                                        "", 
                                        "", 
                                        "", 
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        42.0, 
                                        152.0, 
                                        213.0, 
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
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        60.0, 
                                        27.0, 
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
                                    "id": "obj-3", 
                                    "patching_rect": [
                                        62.0, 
                                        378.0, 
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
                                        478.0, 
                                        323.0, 
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
                        "boxanimatetime": 200, 
                        "lines": [
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-1", 
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
                                        "obj-1", 
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
                                        7
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-16", 
                                        7
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-15", 
                                        5
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-16", 
                                        5
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-15", 
                                        4
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-16", 
                                        4
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-15", 
                                        3
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-16", 
                                        3
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-15", 
                                        2
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-16", 
                                        2
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
                                        "obj-16", 
                                        1
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
                                        "obj-16", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-15", 
                                        6
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
                                        "obj-15", 
                                        8
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
                                        "obj-16", 
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
                                        "obj-24", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-16", 
                                        6
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-5", 
                                        7
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-16", 
                                        7
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-5", 
                                        5
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-16", 
                                        5
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-5", 
                                        4
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-16", 
                                        4
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
                                        "obj-16", 
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
                                        "obj-16", 
                                        2
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
                                        "obj-16", 
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
                                        "obj-16", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-5", 
                                        6
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
                                        "obj-8", 
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
                                        "obj-9", 
                                        0
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
                    "text": "p Situate", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-13", 
                    "patching_rect": [
                        24.164541, 
                        175.752838, 
                        58.0, 
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
                    "id": "obj-14", 
                    "patching_rect": [
                        260.25769, 
                        495.220856, 
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
                    "id": "obj-9", 
                    "patching_rect": [
                        384.556763, 
                        182.30957, 
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
                    "id": "obj-7", 
                    "patching_rect": [
                        21.460558, 
                        18.222383, 
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
                    "id": "obj-10", 
                    "patching_rect": [
                        150.694992, 
                        112.120956, 
                        25.0, 
                        25.0
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
                    "id": "obj-8", 
                    "patching_rect": [
                        300.175049, 
                        202.1698, 
                        60.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/vendor : \"Madcatz\",\n/product/name : \"Gametrak\",\n/left/x : 0.,\n/left/y : 0.,\n/left/z : 0.,\n/right/x : 0.,\n/right/y : 0.,\n/right/z : 0.,\n/footswitch : 0", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 9, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-2", 
                    "patching_rect": [
                        300.175049, 
                        226.1698, 
                        355.0, 
                        127.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.hid \"Game-Trak V1.3\"", 
                    "numinlets": 2, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.595187, 
                    "id": "obj-30", 
                    "patching_rect": [
                        24.446297, 
                        144.597321, 
                        145.0, 
                        19.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            223.0, 
            44.0, 
            944.0, 
            693.0
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
                        "obj-30", 
                        1
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
                        "obj-15", 
                        1
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
                        "obj-16", 
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
                        "obj-12", 
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
                        "obj-9", 
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
                        "obj-16", 
                        1
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
                        1
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
                        "obj-8", 
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
        "bglocked": 0, 
        "dependency_cache": [
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.hid.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/io"
            }, 
            {
                "patcherrelativepath": "..", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.maxplatform.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions"
            }, 
            {
                "type": "iLaX", 
                "name": "o.collect.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.message.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.route.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.pack.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.if.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.union.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.expr.codebox.mxo"
            }
        ]
    }
}