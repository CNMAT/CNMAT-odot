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
                    "text": "Example output", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-18", 
                    "patching_rect": [
                        605.0, 
                        184.0, 
                        150.0, 
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
                    "id": "obj-15", 
                    "patching_rect": [
                        236.0, 
                        600.0, 
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
                    "id": "obj-13", 
                    "patching_rect": [
                        157.0, 
                        609.0, 
                        20.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.route /button/*/pressed /button/*/released", 
                    "numinlets": 3, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "", 
                        "", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-10", 
                    "patching_rect": [
                        137.0, 
                        518.0, 
                        239.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/button/North/down : false,\n/button/North/up : true,\n/button/South/down : false,\n/button/South/up : true,\n/button/East/down : false,\n/button/East/up : true,\n/button/West/down : false,\n/button/West/up : true,\n/button/Northeast/down : false,\n/button/Northeast/up : true,\n/button/Southeast/down : false,\n/button/Southeast/up : true,\n/button/Southwest/down : false,\n/button/Southwest/up : true,\n/button/Northwest/down : false,\n/button/Northwest/up : true,\n/button/1/down : false,\n/button/1/up : true,\n/button/2/down : false,\n/button/2/up : true,\n/button/3/down : false,\n/button/3/up : true,\n/button/4/down : false,\n/button/4/up : true,\n/button/left/2/down : false,\n/button/left/2/up : true,\n/button/right/2/down : false,\n/button/right/2/up : true,\n/button/left/1/down : false,\n/button/left/1/up : true,\n/button/right/1/down : false,\n/button/right/1/up : true,\n/button/left/paddle/down : false,\n/button/left/paddle/up : true,\n/button/right/paddle/down : false,\n/button/right/paddle/up : true,\n/button/SELECT/down : false,\n/button/SELECT/up : true,\n/button/START/down : false,\n/button/START/up : true,\n/left/paddle/vertical : 0.00392157,\n/left/paddle/horizontal : 0.0196078,\n/right/paddle/vertical : 0.00392157,\n/right/paddle/hoirizontal : 0.00392157,\n/Instruction : \"Press Analog button for continuous Joystick data\",\n/Manufacturer : \"Unknown\",\n/Product : \"C-Junction\"", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 47, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-2", 
                    "patching_rect": [
                        685.0, 
                        214.0, 
                        474.0, 
                        637.0
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
                                    "text": "o.collect", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-32", 
                                    "patching_rect": [
                                        9.0, 
                                        517.0, 
                                        55.0, 
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
                                    "id": "obj-31", 
                                    "patching_rect": [
                                        6.0, 
                                        41.0, 
                                        32.5, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.io.helper.buttonstate /12 /button/SELECT", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-27", 
                                    "patching_rect": [
                                        40.0, 
                                        423.0, 
                                        239.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.io.helper.buttonstate /13 /button/START", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-28", 
                                    "patching_rect": [
                                        36.0, 
                                        465.0, 
                                        230.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.io.helper.buttonstate /14 /button/left/paddle", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-24", 
                                    "patching_rect": [
                                        36.0, 
                                        363.0, 
                                        247.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.io.helper.buttonstate /15 /button/right/paddle", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-25", 
                                    "patching_rect": [
                                        32.0, 
                                        397.0, 
                                        255.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.io.helper.buttonstate /10 /button/left/1", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-18", 
                                    "patching_rect": [
                                        36.0, 
                                        305.0, 
                                        218.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.io.helper.buttonstate /11 /button/right/1", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-19", 
                                    "patching_rect": [
                                        38.0, 
                                        337.0, 
                                        224.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.io.helper.buttonstate /8 /button/left/2", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-21", 
                                    "patching_rect": [
                                        39.0, 
                                        249.0, 
                                        211.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.io.helper.buttonstate /9 /button/right/2", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-22", 
                                    "patching_rect": [
                                        37.0, 
                                        274.0, 
                                        219.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.io.helper.buttonstate /6 /button/3", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-15", 
                                    "patching_rect": [
                                        41.0, 
                                        178.0, 
                                        192.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.io.helper.buttonstate /7 /button/4", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-16", 
                                    "patching_rect": [
                                        41.0, 
                                        220.0, 
                                        192.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.io.helper.buttonstate /4 /button/1", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-14", 
                                    "patching_rect": [
                                        48.0, 
                                        99.0, 
                                        192.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.io.helper.buttonstate /5 /button/2", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-8", 
                                    "patching_rect": [
                                        43.0, 
                                        147.0, 
                                        192.0, 
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
                                                    "text": "o.route /22", 
                                                    "numinlets": 2, 
                                                    "numoutlets": 2, 
                                                    "outlettype": [
                                                        "", 
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-30", 
                                                    "patching_rect": [
                                                        96.0, 
                                                        65.0, 
                                                        68.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.io.helper.buttonstate /SW /button/Southwest", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-18", 
                                                    "patching_rect": [
                                                        114.0, 
                                                        356.0, 
                                                        254.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.io.helper.buttonstate /NW /button/Northwest", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-19", 
                                                    "patching_rect": [
                                                        53.0, 
                                                        392.0, 
                                                        253.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.io.helper.buttonstate /NE /button/Northeast", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-21", 
                                                    "patching_rect": [
                                                        82.0, 
                                                        289.0, 
                                                        247.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.io.helper.buttonstate /SE /button/Southeast", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-22", 
                                                    "patching_rect": [
                                                        105.0, 
                                                        325.0, 
                                                        249.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.io.helper.buttonstate /E /button/East", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-15", 
                                                    "patching_rect": [
                                                        141.0, 
                                                        223.0, 
                                                        211.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.io.helper.buttonstate /W /button/West", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-16", 
                                                    "patching_rect": [
                                                        44.0, 
                                                        259.0, 
                                                        217.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.io.helper.buttonstate /N /button/North", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-14", 
                                                    "patching_rect": [
                                                        70.0, 
                                                        130.0, 
                                                        217.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.io.helper.buttonstate /S /button/South", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-8", 
                                                    "patching_rect": [
                                                        116.0, 
                                                        193.0, 
                                                        218.0, 
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
                                                                    "text": "/N : 0,\n/S : 0,\n/W : 0,\n/E : 0,\n/NW : 0,\n/NE : 0,\n/SW : 0,\n/SE : 0", 
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
                                                                        315.0, 
                                                                        116.0, 
                                                                        150.0, 
                                                                        114.0
                                                                    ]
                                                                }
                                                            }, 
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial", 
                                                                    "text": "/NW : 1", 
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
                                                                        313.0, 
                                                                        309.0, 
                                                                        150.0, 
                                                                        20.0
                                                                    ]
                                                                }
                                                            }, 
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial", 
                                                                    "text": "/W : 1", 
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
                                                                    "id": "obj-19", 
                                                                    "patching_rect": [
                                                                        262.0, 
                                                                        366.0, 
                                                                        150.0, 
                                                                        20.0
                                                                    ]
                                                                }
                                                            }, 
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial", 
                                                                    "text": "/SW : 1", 
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
                                                                    "id": "obj-21", 
                                                                    "patching_rect": [
                                                                        232.0, 
                                                                        390.0, 
                                                                        150.0, 
                                                                        20.0
                                                                    ]
                                                                }
                                                            }, 
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial", 
                                                                    "text": "/S : 1", 
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
                                                                    "id": "obj-22", 
                                                                    "patching_rect": [
                                                                        132.0, 
                                                                        292.0, 
                                                                        150.0, 
                                                                        20.0
                                                                    ]
                                                                }
                                                            }, 
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial", 
                                                                    "text": "/SE : 1", 
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
                                                                    "id": "obj-17", 
                                                                    "patching_rect": [
                                                                        64.0, 
                                                                        451.0, 
                                                                        150.0, 
                                                                        20.0
                                                                    ]
                                                                }
                                                            }, 
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial", 
                                                                    "text": "/E : 1", 
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
                                                                    "id": "obj-16", 
                                                                    "patching_rect": [
                                                                        60.0, 
                                                                        413.0, 
                                                                        150.0, 
                                                                        20.0
                                                                    ]
                                                                }
                                                            }, 
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial", 
                                                                    "text": "/NE : 1", 
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
                                                                    "id": "obj-15", 
                                                                    "patching_rect": [
                                                                        56.0, 
                                                                        370.0, 
                                                                        150.0, 
                                                                        20.0
                                                                    ]
                                                                }
                                                            }, 
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial", 
                                                                    "text": "/N : 1", 
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
                                                                        50.0, 
                                                                        320.0, 
                                                                        150.0, 
                                                                        20.0
                                                                    ]
                                                                }
                                                            }, 
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial", 
                                                                    "text": "select 0 1 2 3 4 5 6 7 15", 
                                                                    "numinlets": 10, 
                                                                    "numoutlets": 10, 
                                                                    "outlettype": [
                                                                        "bang", 
                                                                        "bang", 
                                                                        "bang", 
                                                                        "bang", 
                                                                        "bang", 
                                                                        "bang", 
                                                                        "bang", 
                                                                        "bang", 
                                                                        "bang", 
                                                                        ""
                                                                    ], 
                                                                    "maxclass": "newobj", 
                                                                    "fontsize": 9.0, 
                                                                    "id": "obj-64", 
                                                                    "patching_rect": [
                                                                        71.0, 
                                                                        100.0, 
                                                                        131.0, 
                                                                        17.0
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
                                                                        71.0, 
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
                                                                    "id": "obj-5", 
                                                                    "patching_rect": [
                                                                        159.888885, 
                                                                        531.0, 
                                                                        25.0, 
                                                                        25.0
                                                                    ]
                                                                }
                                                            }
                                                        ], 
                                                        "default_fontface": 0, 
                                                        "gridonopen": 0, 
                                                        "rect": [
                                                            37.0, 
                                                            480.0, 
                                                            679.0, 
                                                            722.0
                                                        ], 
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "disabled": 0, 
                                                                    "source": [
                                                                        "obj-15", 
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
                                                                        "obj-16", 
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
                                                                        "obj-17", 
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
                                                                        "obj-18", 
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
                                                                        "obj-19", 
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
                                                                        "obj-2", 
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
                                                                        "obj-21", 
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
                                                                        "obj-22", 
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
                                                                        "obj-3", 
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
                                                                        "obj-4", 
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
                                                                        "obj-64", 
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
                                                                        "obj-64", 
                                                                        2
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
                                                                        "obj-64", 
                                                                        3
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
                                                                        "obj-64", 
                                                                        7
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
                                                                        "obj-64", 
                                                                        6
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
                                                                        "obj-64", 
                                                                        5
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
                                                                        "obj-64", 
                                                                        4
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
                                                                        "obj-64", 
                                                                        8
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
                                                    "text": "p compass points", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-6", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        100.0, 
                                                        104.0, 
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
                                                    "id": "obj-62", 
                                                    "patching_rect": [
                                                        71.0, 
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
                                                    "id": "obj-63", 
                                                    "patching_rect": [
                                                        141.125, 
                                                        531.0, 
                                                        25.0, 
                                                        25.0
                                                    ]
                                                }
                                            }
                                        ], 
                                        "default_fontface": 0, 
                                        "gridonopen": 0, 
                                        "rect": [
                                            584.0, 
                                            82.0, 
                                            649.0, 
                                            623.0
                                        ], 
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-14", 
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
                                                        "obj-16", 
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
                                                        "obj-21", 
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
                                                        "obj-19", 
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
                                                        "obj-63", 
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
                                                        "obj-22", 
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
                                                        "obj-30", 
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
                                                        "obj-30", 
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
                                                        "obj-6", 
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
                                                        "obj-62", 
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
                                                        "obj-8", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-15", 
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
                                    "text": "p Navigation button (NSEW)", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-66", 
                                    "patching_rect": [
                                        49.0, 
                                        73.0, 
                                        168.0, 
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
                                        9.0, 
                                        3.0, 
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
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        13.0, 
                                        569.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            40.0, 
                            86.0, 
                            421.0, 
                            617.0
                        ], 
                        "lines": [
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-14", 
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
                                        "obj-16", 
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
                                        "obj-21", 
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
                                        "obj-19", 
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
                                        "obj-24", 
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
                                        "obj-31", 
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
                                        "obj-22", 
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
                                        "obj-24", 
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
                                        "obj-31", 
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
                                        "obj-31", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-66", 
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
                                        "obj-5", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-66", 
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
                                        "obj-8", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-15", 
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
                    "text": "p Buttons", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-9", 
                    "patching_rect": [
                        71.0, 
                        107.0, 
                        61.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "Adrian Freed 2013", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-3", 
                    "patching_rect": [
                        284.0, 
                        23.0, 
                        150.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "Self Description", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-86", 
                    "patching_rect": [
                        537.0, 
                        66.0, 
                        150.0, 
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
                                    "presentation_rect": [
                                        702.0, 
                                        120.0, 
                                        0.0, 
                                        0.0
                                    ], 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "float", 
                                        "bang"
                                    ], 
                                    "maxclass": "flonum", 
                                    "fontsize": 12.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-14", 
                                    "patching_rect": [
                                        702.0, 
                                        120.0, 
                                        50.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "presentation_rect": [
                                        490.0, 
                                        137.0, 
                                        0.0, 
                                        0.0
                                    ], 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "float", 
                                        "bang"
                                    ], 
                                    "maxclass": "flonum", 
                                    "fontsize": 12.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-13", 
                                    "patching_rect": [
                                        490.0, 
                                        137.0, 
                                        50.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "presentation_rect": [
                                        335.0, 
                                        140.0, 
                                        0.0, 
                                        0.0
                                    ], 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "float", 
                                        "bang"
                                    ], 
                                    "maxclass": "flonum", 
                                    "fontsize": 12.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-12", 
                                    "patching_rect": [
                                        335.0, 
                                        140.0, 
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
                                    "id": "obj-11", 
                                    "patching_rect": [
                                        120.0, 
                                        127.0, 
                                        50.0, 
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
                                    "id": "obj-1", 
                                    "patching_rect": [
                                        172.0, 
                                        134.0, 
                                        100.0, 
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
                                    "id": "obj-10", 
                                    "patching_rect": [
                                        28.0, 
                                        51.0, 
                                        32.5, 
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
                                    "fontsize": 12.0, 
                                    "id": "obj-7", 
                                    "patching_rect": [
                                        584.0, 
                                        127.0, 
                                        33.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "scale 0 255 -1. 1.", 
                                    "numinlets": 6, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-8", 
                                    "patching_rect": [
                                        584.0, 
                                        156.0, 
                                        103.0, 
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
                                    "fontsize": 12.0, 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        397.0, 
                                        117.0, 
                                        33.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "scale 0 255 -1. 1.", 
                                    "numinlets": 6, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-6", 
                                    "patching_rect": [
                                        417.0, 
                                        160.0, 
                                        103.0, 
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
                                    "fontsize": 12.0, 
                                    "id": "obj-3", 
                                    "patching_rect": [
                                        273.0, 
                                        130.0, 
                                        33.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "scale 0 255 -1. 1.", 
                                    "numinlets": 6, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-4", 
                                    "patching_rect": [
                                        273.0, 
                                        159.0, 
                                        103.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route /dummy", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        46.0, 
                                        284.0, 
                                        94.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route /18 /19 /20 /21", 
                                    "numinlets": 5, 
                                    "numoutlets": 5, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "", 
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-79", 
                                    "patching_rect": [
                                        46.0, 
                                        83.0, 
                                        128.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pack /dummy /left/paddle/vertical 0. /left/paddle/horizontal 0. /right/paddle/vertical 0. /right/paddle/hoirizontal 0.", 
                                    "numinlets": 5, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-75", 
                                    "patching_rect": [
                                        7.0, 
                                        240.0, 
                                        718.0, 
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
                                    "id": "obj-80", 
                                    "patching_rect": [
                                        41.0, 
                                        17.0, 
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
                                    "id": "obj-82", 
                                    "patching_rect": [
                                        69.0, 
                                        435.0, 
                                        25.0, 
                                        25.0
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
                                    "fontsize": 12.0, 
                                    "id": "obj-34", 
                                    "patching_rect": [
                                        66.0, 
                                        127.0, 
                                        33.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "scale 0 255 -1. 1.", 
                                    "numinlets": 6, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-31", 
                                    "patching_rect": [
                                        133.0, 
                                        156.0, 
                                        103.0, 
                                        20.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            154.0, 
                            314.0, 
                            1197.0, 
                            548.0
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
                                        "obj-75", 
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
                                        "obj-79", 
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
                                        "obj-82", 
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
                                        "obj-31", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-75", 
                                        1
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
                                        "obj-11", 
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
                                        "obj-4", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-75", 
                                        2
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
                                        "obj-13", 
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
                                        "obj-6", 
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
                                        "obj-75", 
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
                                        "obj-8", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-75", 
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
                                        "obj-79", 
                                        1
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
                                        "obj-79", 
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
                                        "obj-79", 
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
                                        "obj-79", 
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
                                        "obj-79", 
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
                                        "obj-79", 
                                        3
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
                                        "obj-79", 
                                        4
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-82", 
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
                                        "obj-75", 
                                        4
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
                    "text": "p continuous controllers and orientation sensors", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-83", 
                    "patching_rect": [
                        71.0, 
                        149.0, 
                        265.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.change", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-14", 
                    "patching_rect": [
                        41.0, 
                        340.0, 
                        60.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/Instruction : \"Press Analog button for continuous Joystick data\",\n/Manufacturer : \"Unknown\",\n/Product : \"C-Junction\"", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 3, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-11", 
                    "patching_rect": [
                        355.0, 
                        102.0, 
                        486.0, 
                        47.0
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
                    "id": "obj-6", 
                    "patching_rect": [
                        42.0, 
                        306.0, 
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
                    "id": "obj-8", 
                    "patching_rect": [
                        460.0, 
                        56.0, 
                        60.0, 
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
                    "id": "obj-7", 
                    "patching_rect": [
                        460.0, 
                        24.0, 
                        20.0, 
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
                    "id": "obj-50", 
                    "patching_rect": [
                        39.0, 
                        63.0, 
                        32.5, 
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
                        67.0, 
                        464.0, 
                        15.0, 
                        15.0
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
                    "fontsize": 9.0, 
                    "id": "obj-20", 
                    "patching_rect": [
                        43.0, 
                        265.0, 
                        55.0, 
                        17.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.hid \"Generic   USB  Joystick  \"", 
                    "numinlets": 0, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-33", 
                    "patching_rect": [
                        70.0, 
                        24.0, 
                        194.0, 
                        20.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            119.0, 
            71.0, 
            1209.0, 
            703.0
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
                        "obj-13", 
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
                        "obj-14", 
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
                        "obj-14", 
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
                        "obj-14", 
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
                        "obj-20", 
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
                        "obj-33", 
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
                        0
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
                        "obj-50", 
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
                        "obj-6", 
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
                        "obj-7", 
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
                        "obj-11", 
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
                        "obj-20", 
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
                        "obj-83", 
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
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.helper.buttonstate.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/io"
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
                "name": "o.union.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.change.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.pack.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.route.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.prepend.mxo"
            }
        ]
    }
}