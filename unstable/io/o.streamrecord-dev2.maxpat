{
    "patcher": {
        "fileversion": 1, 
        "imprint": 0, 
        "boxanimatetime": 200, 
        "devicewidth": 0.0, 
        "default_fontsize": 11.0, 
        "toolbarvisible": 1, 
        "default_fontname": "Arial", 
        "digest": "", 
        "gridsize": [
            5.0, 
            5.0
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
                    "text": "loadmess 0", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-121", 
                    "patching_rect": [
                        829.5, 
                        145.0, 
                        100.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "stop playback", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 11.0, 
                    "id": "obj-120", 
                    "patching_rect": [
                        501.5, 
                        500.5, 
                        78.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "<< open gate for input", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 11.0, 
                    "id": "obj-119", 
                    "patching_rect": [
                        170.5, 
                        31.0, 
                        118.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "clear before playing >>", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 11.0, 
                    "id": "obj-118", 
                    "patching_rect": [
                        110.5, 
                        594.0, 
                        122.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "recall/play named recording", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 11.0, 
                    "id": "obj-116", 
                    "patching_rect": [
                        829.5, 
                        359.0, 
                        167.0, 
                        19.0
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
                    "fontsize": 11.0, 
                    "parameter_enable": 0, 
                    "id": "obj-115", 
                    "patching_rect": [
                        869.0, 
                        385.0, 
                        50.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "sprintf phrase-%i", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-114", 
                    "patching_rect": [
                        869.0, 
                        415.0, 
                        100.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "sprintf phrase-%i", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-113", 
                    "patching_rect": [
                        758.0, 
                        212.5, 
                        100.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "read/write", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 11.0, 
                    "id": "obj-99", 
                    "patching_rect": [
                        1040.0, 
                        403.0, 
                        140.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "consolodate recording into one bundle with the following id:", 
                    "numinlets": 1, 
                    "linecount": 3, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 11.0, 
                    "id": "obj-97", 
                    "patching_rect": [
                        670.0, 
                        145.0, 
                        123.0, 
                        43.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "playback last recording", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 11.0, 
                    "id": "obj-96", 
                    "patching_rect": [
                        552.0, 
                        110.0, 
                        123.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "start recording", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 11.0, 
                    "id": "obj-95", 
                    "patching_rect": [
                        457.0, 
                        110.0, 
                        81.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "stop rec", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 11.0, 
                    "id": "obj-94", 
                    "patching_rect": [
                        385.5, 
                        110.0, 
                        50.0, 
                        19.0
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
                    "id": "obj-88", 
                    "patching_rect": [
                        655.0, 
                        468.0, 
                        20.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/horizontal : 749,\n/vertical : 0,\n/delta/horizontal : -4,\n/delta/vertical : 0,\n/screenDim : [1680, 1050],\n/middle : [840, 525],\n/x : -91,\n/y : 525,\n/distance : 532.828,\n/angle : 99.8336,\n/delta/distance : 4.,\n/delta/angle : 180.,\n/button/is : \"up\",\n/shift : \"up\",\n/capslock : \"up\",\n/option : \"up\",\n/control : \"up\",\n/command : \"up\"", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 18, 
                    "fontsize": 11.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-86", 
                    "patching_rect": [
                        27.0, 
                        212.5, 
                        150.0, 
                        228.0
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
                    "id": "obj-85", 
                    "patching_rect": [
                        415.5, 
                        131.0, 
                        20.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "t 0", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "int"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-84", 
                    "patching_rect": [
                        415.5, 
                        160.0, 
                        23.0, 
                        19.0
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
                    "id": "obj-83", 
                    "patching_rect": [
                        469.5, 
                        131.0, 
                        20.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "t 1 b", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "int", 
                        "bang"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-81", 
                    "patching_rect": [
                        469.5, 
                        160.0, 
                        32.5, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "int"
                    ], 
                    "maxclass": "toggle", 
                    "parameter_enable": 0, 
                    "id": "obj-80", 
                    "patching_rect": [
                        428.0, 
                        200.0, 
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
                    "id": "obj-77", 
                    "patching_rect": [
                        681.0, 
                        188.0, 
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
                    "id": "obj-76", 
                    "patching_rect": [
                        591.0, 
                        131.0, 
                        20.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "t dump 1", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "dump", 
                        "int"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-74", 
                    "patching_rect": [
                        591.0, 
                        276.0, 
                        62.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "t b dump 2", 
                    "numinlets": 1, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "bang", 
                        "dump", 
                        "int"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-73", 
                    "patching_rect": [
                        681.0, 
                        276.0, 
                        62.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "read /users/rama/desktop/test2.txt", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 11.0, 
                    "id": "obj-72", 
                    "patching_rect": [
                        1033.0, 
                        468.0, 
                        178.0, 
                        17.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/stop", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "o.message", 
                    "fontsize": 11.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-71", 
                    "patching_rect": [
                        533.5, 
                        518.0, 
                        35.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.route /key", 
                    "numinlets": 2, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-68", 
                    "patching_rect": [
                        681.0, 
                        518.0, 
                        100.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "write /users/rama/desktop/test2.txt", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 11.0, 
                    "id": "obj-67", 
                    "patching_rect": [
                        1033.0, 
                        434.0, 
                        178.0, 
                        17.0
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
                    "fontsize": 11.0, 
                    "id": "obj-57", 
                    "patching_rect": [
                        681.0, 
                        403.0, 
                        52.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.table @key /frame", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-58", 
                    "patching_rect": [
                        428.0, 
                        328.0, 
                        110.0, 
                        19.0
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
                    "fontsize": 11.0, 
                    "id": "obj-5", 
                    "patching_rect": [
                        428.0, 
                        234.0, 
                        34.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "gate 2", 
                    "numinlets": 2, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-59", 
                    "patching_rect": [
                        634.0, 
                        374.0, 
                        41.0, 
                        19.0
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
                        "default_fontsize": 11.0, 
                        "toolbarvisible": 1, 
                        "default_fontname": "Arial", 
                        "digest": "", 
                        "gridsize": [
                            5.0, 
                            5.0
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
                                    "text": "o.route /stop", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 11.0, 
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        104.0, 
                                        60.0, 
                                        100.0, 
                                        19.0
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
                                    "fontsize": 11.0, 
                                    "id": "obj-11", 
                                    "patching_rect": [
                                        185.0, 
                                        100.0, 
                                        100.0, 
                                        19.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route /*", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 11.0, 
                                    "id": "obj-72", 
                                    "patching_rect": [
                                        185.0, 
                                        158.0, 
                                        55.0, 
                                        19.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.expr /scheduleTime = /playtime + /startdelta", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 11.0, 
                                    "id": "obj-45", 
                                    "patching_rect": [
                                        185.0, 
                                        219.0, 
                                        233.0, 
                                        19.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.timetag /playtime", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 11.0, 
                                    "id": "obj-48", 
                                    "patching_rect": [
                                        331.25, 
                                        138.0, 
                                        103.0, 
                                        19.0
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
                                    "fontsize": 11.0, 
                                    "id": "obj-49", 
                                    "patching_rect": [
                                        185.0, 
                                        191.0, 
                                        165.25, 
                                        19.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.schedule /scheduleTime @queuesize 500000", 
                                    "numinlets": 1, 
                                    "maxclass": "newobj", 
                                    "numoutlets": 4, 
                                    "outlettype": [
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket"
                                    ], 
                                    "linecount": 2, 
                                    "fontsize": 11.0, 
                                    "id": "obj-60", 
                                    "patching_rect": [
                                        185.0, 
                                        278.0, 
                                        142.0, 
                                        31.0
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
                                    "id": "obj-15", 
                                    "patching_rect": [
                                        104.0, 
                                        22.0, 
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
                                    "id": "obj-16", 
                                    "patching_rect": [
                                        185.0, 
                                        329.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }, 
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
                                    "fontsize": 11.0, 
                                    "id": "obj-1", 
                                    "patching_rect": [
                                        104.0, 
                                        240.0, 
                                        34.0, 
                                        17.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            34.0, 
                            69.0, 
                            619.0, 
                            465.0
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
                                        "obj-60", 
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
                                        "obj-48", 
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
                                        "obj-72", 
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
                                        "obj-2", 
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
                                        1
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
                                        "obj-45", 
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
                                        "obj-48", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-49", 
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
                                        "obj-45", 
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
                                        "obj-16", 
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
                                        "obj-49", 
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
                        "fontsize": 11.0, 
                        "default_fontface": 0, 
                        "default_fontname": "Arial", 
                        "default_fontsize": 11.0, 
                        "digest": ""
                    }, 
                    "text": "p player", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-60", 
                    "patching_rect": [
                        634.0, 
                        594.0, 
                        51.0, 
                        19.0
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
                        "default_fontsize": 11.0, 
                        "toolbarvisible": 1, 
                        "default_fontname": "Arial", 
                        "digest": "", 
                        "gridsize": [
                            5.0, 
                            5.0
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
                                    "text": "t l b", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        "bang"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 11.0, 
                                    "id": "obj-6", 
                                    "patching_rect": [
                                        298.0, 
                                        152.0, 
                                        122.0, 
                                        19.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "onebang", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "bang", 
                                        "bang"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 11.0, 
                                    "id": "obj-1", 
                                    "patching_rect": [
                                        401.0, 
                                        193.0, 
                                        53.0, 
                                        19.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route /start", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 11.0, 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        245.0, 
                                        111.0, 
                                        72.0, 
                                        19.0
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
                                    "fontsize": 11.0, 
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        245.0, 
                                        164.0, 
                                        32.5, 
                                        19.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route /packFrame", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 11.0, 
                                    "id": "obj-65", 
                                    "patching_rect": [
                                        311.5, 
                                        497.0, 
                                        106.0, 
                                        19.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pack /foo", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 11.0, 
                                    "id": "obj-63", 
                                    "patching_rect": [
                                        298.0, 
                                        524.0, 
                                        64.0, 
                                        19.0
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
                                    "fontsize": 11.0, 
                                    "id": "obj-62", 
                                    "patching_rect": [
                                        298.0, 
                                        442.0, 
                                        32.5, 
                                        19.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.expr /packFrame = [set\\, quote(/) + /frame]", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 11.0, 
                                    "id": "obj-61", 
                                    "patching_rect": [
                                        311.5, 
                                        469.0, 
                                        223.0, 
                                        19.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.expr /startdelta = /time - /starttime", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 11.0, 
                                    "id": "obj-43", 
                                    "patching_rect": [
                                        298.0, 
                                        416.0, 
                                        184.0, 
                                        19.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.timetag /starttime", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 11.0, 
                                    "id": "obj-44", 
                                    "patching_rect": [
                                        401.0, 
                                        254.0, 
                                        104.0, 
                                        19.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.timetag /time", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 11.0, 
                                    "id": "obj-53", 
                                    "patching_rect": [
                                        298.0, 
                                        390.0, 
                                        100.0, 
                                        19.0
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
                                    "fontsize": 11.0, 
                                    "id": "obj-54", 
                                    "patching_rect": [
                                        298.0, 
                                        328.0, 
                                        122.0, 
                                        19.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.expr /frame++", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 11.0, 
                                    "id": "obj-55", 
                                    "patching_rect": [
                                        401.0, 
                                        355.0, 
                                        88.0, 
                                        19.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/frame : 0", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.message", 
                                    "fontsize": 11.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-57", 
                                    "patching_rect": [
                                        401.0, 
                                        221.0, 
                                        52.0, 
                                        19.0
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
                                    "fontsize": 11.0, 
                                    "id": "obj-59", 
                                    "patching_rect": [
                                        298.0, 
                                        299.0, 
                                        122.0, 
                                        19.0
                                    ]
                                }
                            }, 
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
                                    "fontsize": 11.0, 
                                    "id": "obj-68", 
                                    "patching_rect": [
                                        258.5, 
                                        543.0, 
                                        34.0, 
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
                                    "id": "obj-3", 
                                    "patching_rect": [
                                        245.0, 
                                        39.0, 
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
                                    "id": "obj-4", 
                                    "patching_rect": [
                                        298.0, 
                                        599.5, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            347.0, 
                            116.0, 
                            1093.0, 
                            842.0
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
                                        "obj-57", 
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
                                        "obj-1", 
                                        1
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
                                        "obj-68", 
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
                                        "obj-43", 
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
                                        "obj-44", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-59", 
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
                                        "obj-2", 
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
                                        "obj-6", 
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
                                        "obj-43", 
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
                                        "obj-53", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-54", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-55", 
                                        0
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
                                        "obj-59", 
                                        1
                                    ], 
                                    "midpoints": [
                                        410.5, 
                                        382.0, 
                                        502.5, 
                                        382.0, 
                                        502.5, 
                                        289.0, 
                                        410.5, 
                                        289.0
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
                                        "obj-44", 
                                        0
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
                                        "obj-54", 
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
                                        "obj-59", 
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
                                        "obj-65", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-62", 
                                        1
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
                                        "obj-62", 
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
                                        "obj-63", 
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
                                        "obj-65", 
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
                                        "obj-68", 
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
                        "fontsize": 11.0, 
                        "default_fontface": 0, 
                        "default_fontname": "Arial", 
                        "default_fontsize": 11.0, 
                        "digest": ""
                    }, 
                    "text": "p format-and-timestamp", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-61", 
                    "patching_rect": [
                        428.0, 
                        276.0, 
                        127.0, 
                        19.0
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
                        "default_fontsize": 11.0, 
                        "toolbarvisible": 1, 
                        "default_fontname": "Arial", 
                        "digest": "", 
                        "gridsize": [
                            5.0, 
                            5.0
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
                                    "text": "o.route /xy", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 11.0, 
                                    "id": "obj-21", 
                                    "patching_rect": [
                                        50.0, 
                                        183.0, 
                                        62.0, 
                                        19.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.expr /xy = [/norm/horizontal\\, /norm/vertical]", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 11.0, 
                                    "id": "obj-22", 
                                    "patching_rect": [
                                        50.0, 
                                        157.0, 
                                        228.0, 
                                        19.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.expr /norm/vertical = 1. - (/vertical / float32(/screenDim[[1]]))", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 11.0, 
                                    "id": "obj-23", 
                                    "patching_rect": [
                                        50.0, 
                                        125.0, 
                                        310.0, 
                                        19.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.expr /norm/horizontal = /horizontal / float32(/screenDim[[0]])", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 11.0, 
                                    "id": "obj-24", 
                                    "patching_rect": [
                                        50.0, 
                                        100.0, 
                                        310.0, 
                                        19.0
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
                                    "id": "obj-37", 
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
                                    "id": "obj-38", 
                                    "patching_rect": [
                                        50.0, 
                                        262.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            0.0, 
                            0.0, 
                            640.0, 
                            480.0
                        ], 
                        "lines": [
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-21", 
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
                                        "obj-22", 
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
                                        "obj-37", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-24", 
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
                        "fontsize": 11.0, 
                        "default_fontface": 0, 
                        "default_fontname": "Arial", 
                        "default_fontsize": 11.0, 
                        "digest": ""
                    }, 
                    "text": "p display", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-39", 
                    "patching_rect": [
                        386.0, 
                        652.0, 
                        55.0, 
                        19.0
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
                    "fontsize": 11.0, 
                    "parameter_enable": 0, 
                    "id": "obj-31", 
                    "patching_rect": [
                        758.0, 
                        188.0, 
                        50.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /key", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-26", 
                    "patching_rect": [
                        758.0, 
                        244.0, 
                        67.0, 
                        19.0
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
                    "fontsize": 11.0, 
                    "id": "obj-19", 
                    "patching_rect": [
                        681.0, 
                        434.0, 
                        96.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.table @key /key", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-17", 
                    "patching_rect": [
                        681.0, 
                        486.5, 
                        101.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/start", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "o.message", 
                    "fontsize": 11.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-3", 
                    "patching_rect": [
                        483.0, 
                        234.0, 
                        36.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "m158.o.io.mouse", 
                    "numinlets": 0, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-36", 
                    "patching_rect": [
                        158.0, 
                        51.0, 
                        120.0, 
                        19.0
                    ]
                }
            }, 
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
                    "fontsize": 11.0, 
                    "id": "obj-28", 
                    "patching_rect": [
                        229.0, 
                        594.0, 
                        51.0, 
                        17.0
                    ]
                }
            }, 
            {
                "box": {
                    "patching_rect": [
                        386.0, 
                        721.0, 
                        330.0, 
                        216.0
                    ], 
                    "fontname": "Arial", 
                    "color": [
                        1.0, 
                        1.0, 
                        1.0, 
                        1.0
                    ], 
                    "numinlets": 1, 
                    "numoutlets": 4, 
                    "outlettype": [
                        "", 
                        "", 
                        "", 
                        ""
                    ], 
                    "maxclass": "xydisplay", 
                    "fontsize": 11.0, 
                    "parameter_enable": 0, 
                    "id": "obj-1", 
                    "connect_points": 1
                }
            }, 
            {
                "box": {
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "int"
                    ], 
                    "maxclass": "toggle", 
                    "parameter_enable": 0, 
                    "id": "obj-20", 
                    "patching_rect": [
                        143.0, 
                        31.0, 
                        20.0, 
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
                    "fontsize": 11.0, 
                    "id": "obj-18", 
                    "patching_rect": [
                        143.0, 
                        84.0, 
                        34.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.cond /delta/distance > 0", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-9", 
                    "patching_rect": [
                        143.0, 
                        145.0, 
                        137.0, 
                        19.0
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
                    "fontsize": 11.0, 
                    "id": "obj-7", 
                    "patching_rect": [
                        143.0, 
                        113.0, 
                        57.0, 
                        19.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            151.0, 
            44.0, 
            1289.0, 
            956.0
        ], 
        "lines": [
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-113", 
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
                        "obj-114", 
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
                        "obj-115", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-114", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-121", 
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
                        "obj-17", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-68", 
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
                        "obj-7", 
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
                        "obj-17", 
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
                        "obj-88", 
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
                        "obj-18", 
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
                        "obj-19", 
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
                        "obj-1", 
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
                        "obj-61", 
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
                        "obj-113", 
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
                        "obj-18", 
                        1
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
                        "obj-1", 
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
                        "obj-39", 
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
                        "obj-61", 
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
                        "obj-19", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-58", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-59", 
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
                        "obj-57", 
                        0
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
                        "obj-39", 
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
                        "obj-58", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-67", 
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
                        "obj-68", 
                        1
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
                        "obj-71", 
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
                        "obj-72", 
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
                        "obj-73", 
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
                        "obj-73", 
                        1
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
                        "obj-73", 
                        2
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
                        "obj-74", 
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
                        "obj-74", 
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
                        "obj-76", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-74", 
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
                        "obj-73", 
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
                        "obj-5", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-81", 
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
                        "obj-81", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-80", 
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
                        "obj-81", 
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
                        "obj-80", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-85", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-84", 
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
                        "obj-5", 
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
                        "obj-86", 
                        1
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
                "name": "m158.o.io.mouse.maxpat", 
                "bootpath": "/Users/ilyarostovtsev/Documents/Creative Coding/odot/_full_build_trunk/CNMAT-odot/experimental/io"
            }, 
            {
                "type": "iLaX", 
                "name": "o.change.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.cond.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "xydisplay.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.pack.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.pak.mxo"
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
                "name": "o.var.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.message.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.table.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.route.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.timetag.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.schedule.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.collect.mxo"
            }
        ]
    }
}