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
                    "text": "o.out @name device", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-19", 
                    "patching_rect": [
                        388.0, 
                        60.0, 
                        121.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.in @name device", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-13", 
                    "patching_rect": [
                        375.0, 
                        19.5, 
                        113.0, 
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
                    "id": "obj-11", 
                    "patching_rect": [
                        27.0, 
                        56.0, 
                        105.0, 
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
                    "id": "obj-7", 
                    "patching_rect": [
                        184.0, 
                        655.0, 
                        112.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "Kork Nanopad\n\nAdrian Freed 2014", 
                    "numinlets": 1, 
                    "linecount": 3, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-3", 
                    "patching_rect": [
                        546.0, 
                        131.5, 
                        150.0, 
                        47.0
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
                            "revision": 6
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.gather /pad/1/released /pad/2/released /pad/3/released /pad/4/released /pad/5/released /pad/6/released /pad/7/released /pad/8/released /pad/9/released /pad/10/released /pad/11/released /pad/12/released", 
                                    "numinlets": 1, 
                                    "maxclass": "newobj", 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "FullPacket", 
                                        "FullPacket"
                                    ], 
                                    "linecount": 2, 
                                    "fontsize": 12.0, 
                                    "id": "obj-27", 
                                    "patching_rect": [
                                        50.0, 
                                        137.5, 
                                        574.0, 
                                        33.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.gather /pad/1/pressed /pad/2/pressed /pad/3/pressed /pad/4/pressed /pad/5/pressed /pad/6/pressed /pad/7/pressed /pad/8/pressed /pad/9/pressed /pad/10/pressed /pad/11/pressed /pad/12/pressed", 
                                    "numinlets": 1, 
                                    "maxclass": "newobj", 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "FullPacket", 
                                        "FullPacket"
                                    ], 
                                    "linecount": 2, 
                                    "fontsize": 12.0, 
                                    "id": "obj-26", 
                                    "patching_rect": [
                                        60.0, 
                                        100.0, 
                                        554.0, 
                                        33.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "outlet", 
                                    "id": "obj-32", 
                                    "patching_rect": [
                                        605.0, 
                                        230.5, 
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
                                        "obj-26", 
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
                                        "obj-27", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-32", 
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
                    "text": "p in case patterns are deprecated on o.route above", 
                    "numinlets": 0, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-33", 
                    "patching_rect": [
                        470.0, 
                        654.0, 
                        283.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.timetag /timestamp", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-31", 
                    "patching_rect": [
                        138.0, 
                        72.0, 
                        122.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.route /pad/*/pressed /pad/*/released", 
                    "numinlets": 3, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "", 
                        "", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-30", 
                    "patching_rect": [
                        505.0, 
                        619.0, 
                        213.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/position/pad/horizontal = (/pitch/bend / 127.0 * 2) - 1; \ndelete(/pitch/bend);", 
                    "numinlets": 1, 
                    "maxclass": "o.expr.codebox", 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "linecount": 2, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-18", 
                    "patching_rect": [
                        158.333344, 
                        131.5, 
                        302.0, 
                        46.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/position/pad/touched = /value !=0;", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "maxclass": "o.expr.codebox", 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-16", 
                    "patching_rect": [
                        196.333344, 
                        464.0, 
                        199.0, 
                        33.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "delete(/controller); delete(/value);", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "maxclass": "o.expr.codebox", 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-9", 
                    "patching_rect": [
                        24.000015, 
                        534.0, 
                        199.0, 
                        33.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.if /controller==16", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-8", 
                    "patching_rect": [
                        196.333344, 
                        435.5, 
                        110.0, 
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
                    "id": "obj-4", 
                    "patching_rect": [
                        36.833344, 
                        14.5, 
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
                    "id": "obj-29", 
                    "patching_rect": [
                        812.0, 
                        72.0, 
                        60.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/Manufacturer,\n/Device,\n/Instructions : \"Reset by holding down HOLD FLAM AND ROLL during power up\",\n/timestamp,\n/pad/1/down : false,\n/pad/2/down : false,\n/pad/3/down : false,\n/pad/4/down : false,\n/pad/5/down : false,\n/pad/6/down : false,\n/pad/7/down : false,\n/pad/8/down : false,\n/pad/9/down : false,\n/pad/10/down : false,\n/pad/11/down : false,\n/pad/12/down : false,\n/pad/1/up : true,\n/pad/2/up : true,\n/pad/3/up : true,\n/pad/4/up : true,\n/pad/5/up : true,\n/pad/6/up : true,\n/pad/7/up : true,\n/pad/8/up : true,\n/pad/9/up : true,\n/pad/10/up : true,\n/pad/11/up : true,\n/pad/12/up : true,\n/pad/1/velocity,\n/pad/2/velocity,\n/pad/3/velocity,\n/pad/4/velocity,\n/pad/5/velocity,\n/pad/6/velocity,\n/pad/7velocity,\n/pad/8/velocity,\n/pad/9/velocity,\n/pad/10/velocity,\n/pad/11/velocity,\n/pad/12/velocity,\n/scene : 1,\n/position/pad/horizontal : 0,\n/position/pad/vertical : 0,\n/position/pad/touched", 
                    "numinlets": 1, 
                    "maxclass": "o.compose", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 46, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-28", 
                    "patching_rect": [
                        812.0, 
                        95.5, 
                        218.0, 
                        627.0
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
                    "id": "obj-24", 
                    "patching_rect": [
                        464.0, 
                        588.5, 
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
                            "revision": 6
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/Manufacturer = \"Korg\";\n/Device= \"nanoPAD\";\ndelete(/sysex);", 
                                    "numinlets": 1, 
                                    "maxclass": "o.expr.codebox", 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "FullPacket", 
                                        "FullPacket"
                                    ], 
                                    "linecount": 3, 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-27", 
                                    "patching_rect": [
                                        73.0, 
                                        132.5, 
                                        276.0, 
                                        60.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.if /sysex == [240\\, 66 \\, 80\\, 1\\,0\\, 1 \\,3\\, 1 \\,0 \\,0 \\,40 \\,0 \\,0\\,0 \\,247]", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "FullPacket", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-25", 
                                    "patching_rect": [
                                        84.0, 
                                        100.0, 
                                        328.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.if butlast(butlast(/sysex)) == [240\\, 66 \\,64\\, 0\\, 1 \\,3 \\,0 \\,95 \\,79]", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "FullPacket", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-16", 
                                    "patching_rect": [
                                        63.0, 
                                        219.5, 
                                        331.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/scene = last(butlast(/sysex)) +1;  delete(/sysex);", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "FullPacket", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "o.expr.codebox", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-7", 
                                    "patching_rect": [
                                        50.0, 
                                        256.0, 
                                        276.0, 
                                        33.0
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
                                    "id": "obj-21", 
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
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "outlet", 
                                    "id": "obj-22", 
                                    "patching_rect": [
                                        50.0, 
                                        349.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            50.0, 
                            94.0, 
                            640.0, 
                            480.0
                        ], 
                        "lines": [
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-16", 
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
                                        "obj-21", 
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
                                        1
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
                                        "obj-22", 
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
                                        "obj-22", 
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
                    "text": "p sysex", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-23", 
                    "patching_rect": [
                        -0.166656, 
                        131.5, 
                        55.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/padnumber =  (/key>=60) ? (1+ (/key % 12)):0;\n/padnumber =  (/key==39) ? 1: /padnumber;\n/padnumber =  (/key==48) ? 2: /padnumber;\n/padnumber =  (/key==45) ? 3: /padnumber;\n/padnumber =  (/key==43) ? 4: /padnumber;\n/padnumber =  (/key==51) ? 5: /padnumber;\n/padnumber =  (/key==49) ? 6: /padnumber;\n/padnumber =  (/key==36) ? 7: /padnumber;\n/padnumber =  (/key==38) ? 8: /padnumber;\n/padnumber =  (/key==40) ? 9: /padnumber;\n/padnumber =  (/key==42) ? 10: /padnumber;\n/padnumber =  (/key==44) ? 11: /padnumber;\n/padnumber =  (/key==46) ? 12: /padnumber;\n/padname =  \"/pad/\" + string(/padnumber);\nassign(/padname +\n     ((/velocity != 0) ? \"/pressed\":\"/released\"), true); \ndelete(/key);\nassign(/padname + \"/down\",  exists(/padname +\"/pressed\"));\nassign(/padname + \"/up\", exists(/padname +\"/released\"));\nassign(/padname + \"/velocity\", /velocity / 127.0);\ndelete(/padname); delete(/velocity); delete(/padnumber);", 
                    "numinlets": 1, 
                    "maxclass": "o.expr.codebox", 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "linecount": 21, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-15", 
                    "patching_rect": [
                        464.0, 
                        243.0, 
                        336.0, 
                        301.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.select /sysex /channel /pitch/bend /timestamp", 
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
                    "id": "obj-20", 
                    "patching_rect": [
                        36.833344, 
                        95.5, 
                        262.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.if /controller==1", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-17", 
                    "patching_rect": [
                        72.000015, 
                        377.5, 
                        143.333328, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/value / = 127;", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "maxclass": "o.expr.codebox", 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-14", 
                    "patching_rect": [
                        24.000015, 
                        226.5, 
                        88.0, 
                        33.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/position/pad/vertical = (/value / 127.0 * 2) - 1;", 
                    "numinlets": 1, 
                    "maxclass": "o.expr.codebox", 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "linecount": 2, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-12", 
                    "patching_rect": [
                        51.333344, 
                        435.5, 
                        134.0, 
                        46.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.if /controller==2", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-10", 
                    "patching_rect": [
                        24.000015, 
                        265.0, 
                        191.333328, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/position/pad/horizontal = (/value / 127.0 * 2) - 1;", 
                    "numinlets": 1, 
                    "maxclass": "o.expr.codebox", 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "linecount": 2, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-6", 
                    "patching_rect": [
                        24.000015, 
                        298.5, 
                        168.0, 
                        46.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.route /control/change /note", 
                    "numinlets": 3, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "", 
                        "", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-1", 
                    "patching_rect": [
                        24.000015, 
                        191.0, 
                        163.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.midi", 
                    "numinlets": 2, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-5", 
                    "patching_rect": [
                        163.5, 
                        19.5, 
                        55.0, 
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
                        965.5, 
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
                    "id": "obj-37", 
                    "patching_rect": [
                        965.5, 
                        60.0, 
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
                        72.000015, 
                        680.5, 
                        25.0, 
                        25.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            378.0, 
            -999.0, 
            1117.0, 
            757.0
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
                        "obj-14", 
                        0
                    ]
                }
            }, 
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
                    ], 
                    "midpoints": [
                        105.500015, 
                        222.0, 
                        473.5, 
                        222.0
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
                        "obj-17", 
                        0
                    ], 
                    "midpoints": [
                        205.833344, 
                        285.0, 
                        201.0, 
                        285.0, 
                        201.0, 
                        354.0, 
                        81.500015, 
                        354.0
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
                        "obj-6", 
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
                        "obj-5", 
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
                        "obj-5", 
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
                        "obj-10", 
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
                        "obj-24", 
                        0
                    ], 
                    "midpoints": [
                        473.5, 
                        534.0, 
                        473.5, 
                        534.0
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
                        "obj-12", 
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
                        "obj-8", 
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
                        "obj-24", 
                        0
                    ], 
                    "midpoints": [
                        167.833344, 
                        186.0, 
                        198.0, 
                        186.0, 
                        198.0, 
                        252.0, 
                        450.0, 
                        252.0, 
                        450.0, 
                        573.0, 
                        473.5, 
                        573.0
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
                        "obj-37", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-20", 
                        4
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-1", 
                        0
                    ], 
                    "midpoints": [
                        289.333344, 
                        117.0, 
                        144.0, 
                        117.0, 
                        144.0, 
                        177.0, 
                        33.500015, 
                        177.0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-20", 
                        2
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
                        "obj-23", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-20", 
                        3
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-24", 
                        0
                    ], 
                    "midpoints": [
                        228.583344, 
                        117.0, 
                        450.0, 
                        117.0, 
                        450.0, 
                        573.0, 
                        473.5, 
                        573.0
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
                        "obj-24", 
                        0
                    ], 
                    "midpoints": [
                        9.333344, 
                        177.0, 
                        9.0, 
                        177.0, 
                        9.0, 
                        585.0, 
                        473.5, 
                        585.0
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
                        "obj-30", 
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
                        "obj-7", 
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
                        "obj-24", 
                        1
                    ], 
                    "midpoints": [
                        821.5, 
                        723.0, 
                        788.0, 
                        723.0, 
                        788.0, 
                        537.0, 
                        504.5, 
                        537.0
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
                        "obj-28", 
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
                        "obj-24", 
                        1
                    ], 
                    "midpoints": [
                        708.5, 
                        639.0, 
                        729.0, 
                        639.0, 
                        729.0, 
                        585.0, 
                        504.5, 
                        585.0
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
                        "obj-20", 
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
                        "obj-24", 
                        1
                    ], 
                    "midpoints": [
                        479.5, 
                        693.0, 
                        767.0, 
                        693.0, 
                        767.0, 
                        573.0, 
                        504.5, 
                        573.0
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
                        "obj-13", 
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
                        "obj-5", 
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
                        "obj-6", 
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
                        "obj-7", 
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
                        "obj-8", 
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
                        "obj-9", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-24", 
                        0
                    ], 
                    "midpoints": [
                        33.500015, 
                        585.0, 
                        473.5, 
                        585.0
                    ]
                }
            }
        ], 
        "statusbarvisible": 2, 
        "gridsnaponopen": 0, 
        "bglocked": 0, 
        "dependency_cache": [
            {
                "patcherrelativepath": "../../experimental/io", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.midi.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/experimental/io"
            }, 
            {
                "patcherrelativepath": "../core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.righttoleft.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core"
            }, 
            {
                "patcherrelativepath": "../core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.in.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core"
            }, 
            {
                "patcherrelativepath": "../core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.port.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core"
            }, 
            {
                "patcherrelativepath": "../aspect", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.aspect.joinpoint.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/aspect"
            }, 
            {
                "patcherrelativepath": "../core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.out.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core"
            }, 
            {
                "patcherrelativepath": "../namespace", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.gather.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/namespace"
            }, 
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
                "name": "o.if.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.select.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.context.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.collect.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.route.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.var.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.pak.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.prepend.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.cond.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.compose.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.expr.codebox.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.message.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.timetag.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.intersection.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.difference.mxo"
            }
        ]
    }
}