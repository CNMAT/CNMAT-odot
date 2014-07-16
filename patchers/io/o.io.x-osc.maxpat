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
                    "text": "loadmess maxqueuesize 1024", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-22", 
                    "patching_rect": [
                        941.0, 
                        36.0, 
                        173.0, 
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
                    "id": "obj-21", 
                    "patching_rect": [
                        26.0, 
                        101.0, 
                        60.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "maxqueuesize 1024, maxpacketsize 64000", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 13.0, 
                    "id": "obj-13", 
                    "patching_rect": [
                        13.0, 
                        135.0, 
                        260.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.var", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-46", 
                    "patching_rect": [
                        704.0, 
                        258.0, 
                        37.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.var", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-45", 
                    "patching_rect": [
                        649.0, 
                        258.0, 
                        37.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.var", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-41", 
                    "patching_rect": [
                        596.0, 
                        259.0, 
                        37.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.var", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-40", 
                    "patching_rect": [
                        529.0, 
                        262.0, 
                        37.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.var", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-38", 
                    "patching_rect": [
                        313.0, 
                        450.0, 
                        37.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.var", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-28", 
                    "patching_rect": [
                        345.0, 
                        319.0, 
                        37.0, 
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
                    "id": "obj-24", 
                    "patching_rect": [
                        331.0, 
                        509.0, 
                        55.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "t b b l b clear", 
                    "numinlets": 1, 
                    "numoutlets": 5, 
                    "outlettype": [
                        "bang", 
                        "bang", 
                        "", 
                        "bang", 
                        "clear"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-20", 
                    "patching_rect": [
                        445.0, 
                        183.0, 
                        79.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.var", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-19", 
                    "patching_rect": [
                        612.0, 
                        561.0, 
                        37.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/imu : [-2.68293, 1.64634, -0.243902, -0.0932617, -0.00195312, 1.03125, -0.274359, -0.474359, -0.505128, 55.6382]", 
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
                    "id": "obj-16", 
                    "patching_rect": [
                        1012.0, 
                        99.0, 
                        150.0, 
                        74.0
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
                        1024.0, 
                        187.0, 
                        20.0, 
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
                    "id": "obj-12", 
                    "patching_rect": [
                        1061.0, 
                        266.0, 
                        100.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "udpsend 255.255.255.255 9000", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-7", 
                    "patching_rect": [
                        104.0, 
                        233.0, 
                        180.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "imu higher rate than anything else", 
                    "numinlets": 1, 
                    "linecount": 2, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-11", 
                    "patching_rect": [
                        83.0, 
                        557.0, 
                        150.0, 
                        33.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.expr /unique/id = \\\"mac:\\\" + /ping[[1]]", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-44", 
                    "patching_rect": [
                        384.0, 
                        588.0, 
                        214.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.expr /device/time=gettimetag()", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-43", 
                    "patching_rect": [
                        441.0, 
                        155.0, 
                        182.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "transforming \"send on change\"  semantics to stateless (RESTful) semantics", 
                    "numinlets": 1, 
                    "linecount": 2, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-42", 
                    "patching_rect": [
                        32.0, 
                        450.0, 
                        258.0, 
                        33.0
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
                                    "text": "/led/clear", 
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
                                    "id": "obj-12", 
                                    "patching_rect": [
                                        103.0, 
                                        134.0, 
                                        150.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/led/set : [100, 50, 200]", 
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
                                    "id": "obj-11", 
                                    "patching_rect": [
                                        50.0, 
                                        100.0, 
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
                                    "id": "obj-38", 
                                    "patching_rect": [
                                        71.5, 
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
                                        "obj-11", 
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
                                        "obj-12", 
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
                    "text": "p test", 
                    "numinlets": 0, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-39", 
                    "patching_rect": [
                        161.0, 
                        38.0, 
                        40.0, 
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
                                    "text": "prepend xosc-msgsize-bug", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-28", 
                                    "patching_rect": [
                                        15.0, 
                                        15.0, 
                                        155.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/input/analog/2, bang", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 12.0, 
                                    "id": "obj-24", 
                                    "patching_rect": [
                                        214.0, 
                                        105.0, 
                                        123.0, 
                                        18.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "resetallthewaymode", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 9.0, 
                                    "id": "obj-16", 
                                    "patching_rect": [
                                        207.0, 
                                        126.0, 
                                        99.0, 
                                        15.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/ping, bang", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 12.0, 
                                    "id": "obj-15", 
                                    "patching_rect": [
                                        50.0, 
                                        100.0, 
                                        119.0, 
                                        18.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "opensoundcontrol", 
                                    "numinlets": 1, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "OSCTimeTag"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-13", 
                                    "patching_rect": [
                                        74.0, 
                                        129.0, 
                                        106.0, 
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
                                        "obj-15", 
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
                                        "obj-16", 
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
                                        "obj-24", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-13", 
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
                    "text": "p oldway", 
                    "numinlets": 0, 
                    "numoutlets": 0, 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-37", 
                    "patching_rect": [
                        942.0, 
                        649.0, 
                        58.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "Units", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-34", 
                    "patching_rect": [
                        677.0, 
                        437.0, 
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
                    "id": "obj-35", 
                    "patching_rect": [
                        453.0, 
                        2.0, 
                        20.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "loadmess 1", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-31", 
                    "patching_rect": [
                        453.0, 
                        26.0, 
                        72.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "qmetro 500", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "bang"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-9", 
                    "patching_rect": [
                        432.0, 
                        51.0, 
                        71.0, 
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
                    "id": "obj-8", 
                    "patching_rect": [
                        713.0, 
                        328.0, 
                        20.0, 
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
                    "id": "obj-2", 
                    "patching_rect": [
                        674.0, 
                        372.0, 
                        60.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/units/rotations : \"degrees/second\",\n/units/accelerations : \"g\",\n/units/orientations : \"Ga\",\n/units/temperature : \"Celsius\",\n/units/battery : \"Volts\"", 
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
                    "id": "obj-32", 
                    "patching_rect": [
                        636.0, 
                        462.0, 
                        291.0, 
                        74.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.expr /rotations = [/imu[[0]]\\, /imu[[1]]\\, /imu[[2]]]\\; /accelerations = [/imu[[3]]\\, /imu[[4]]\\, /imu[[5]]]\\; /orientations = [/imu[[6]]\\, /imu[[7]]\\, /imu[[8]]]\\; /temperature= /imu[[9]]\\;", 
                    "numinlets": 1, 
                    "maxclass": "newobj", 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "linecount": 2, 
                    "fontsize": 12.0, 
                    "id": "obj-14", 
                    "patching_rect": [
                        65.0, 
                        349.0, 
                        586.0, 
                        33.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.route /imu /t /inputs/analogue", 
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
                    "id": "obj-26", 
                    "patching_rect": [
                        378.0, 
                        618.0, 
                        175.0, 
                        20.0
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
                    "maxclass": "o.message", 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-25", 
                    "patching_rect": [
                        764.0, 
                        168.0, 
                        150.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.timetag /received/time", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-17", 
                    "patching_rect": [
                        441.0, 
                        126.0, 
                        138.0, 
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
                    "id": "obj-33", 
                    "patching_rect": [
                        535.0, 
                        649.0, 
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
                        "FullPacket"
                    ], 
                    "maxclass": "inlet", 
                    "id": "obj-30", 
                    "patching_rect": [
                        60.0, 
                        50.0, 
                        25.0, 
                        25.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.validate", 
                    "numinlets": 1, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-29", 
                    "patching_rect": [
                        565.0, 
                        96.0, 
                        62.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/ping", 
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
                        208.0, 
                        110.0, 
                        150.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.iterate", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-18", 
                    "patching_rect": [
                        150.0, 
                        163.0, 
                        54.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "udpsend 169.254.1.1 9000", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-10", 
                    "patching_rect": [
                        141.0, 
                        197.0, 
                        153.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.expr /t = /inputs/analogue\\; /analog/a = /t[[0]]\\; /analog/b = /t[[1]]\\; /analog/c = /t[[2]]\\; /analog/d = /t[[3]]\\; /analog/e = /t[[4]]\\; /analog/f= /t[[5]]\\; /analog/g = /t[[6]]\\; /analog/h = /t[[7]]\\; /analog/i = /t[[8]]\\; /analog/j = /t[[9]]\\; /analog/k = /t[[10]]\\; /analog/l= /t[[11]]\\; /analog/m = /t[[12]]\\; /analog/n = /t[[13]]\\; /analog/o = /t[[14]]\\; /analog/p = /t[[15]]\\;", 
                    "numinlets": 1, 
                    "maxclass": "newobj", 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "linecount": 3, 
                    "fontsize": 12.0, 
                    "id": "obj-6", 
                    "patching_rect": [
                        431.0, 
                        285.0, 
                        600.0, 
                        47.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.select /imu /inputs/analogue /battery /inputs/digital /ping", 
                    "numinlets": 6, 
                    "numoutlets": 6, 
                    "outlettype": [
                        "", 
                        "", 
                        "", 
                        "", 
                        "", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-3", 
                    "patching_rect": [
                        398.0, 
                        223.0, 
                        315.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "udpreceive 8000 CNMAT", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-1", 
                    "patching_rect": [
                        733.0, 
                        50.0, 
                        144.0, 
                        20.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            74.0, 
            133.0, 
            1280.0, 
            648.0
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
                        "obj-29", 
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
                        "obj-38", 
                        1
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
                        "obj-43", 
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
                        "obj-10", 
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
                        "obj-32", 
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
                        "obj-19", 
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
                        "obj-24", 
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
                        "obj-28", 
                        0
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
                        "obj-3", 
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
                        "obj-38", 
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
                        "obj-40", 
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
                        "obj-41", 
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
                        "obj-45", 
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
                        "obj-46", 
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
                        "obj-13", 
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
                        "obj-1", 
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
                        "obj-44", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-26", 
                        3
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
                        "obj-28", 
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
                        "obj-29", 
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
                        "obj-29", 
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
                        "obj-29", 
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
                        "obj-29", 
                        2
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
                        "obj-3", 
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
                        "obj-3", 
                        2
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-40", 
                        1
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-3", 
                        3
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-41", 
                        1
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-3", 
                        4
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
                        "obj-3", 
                        5
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-46", 
                        1
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
                        "obj-6", 
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
                        "obj-18", 
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
                        "obj-9", 
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
                        "obj-19", 
                        1
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
                        "obj-31", 
                        0
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
                        "obj-24", 
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
                        "obj-18", 
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
                        "obj-18", 
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
                        "obj-24", 
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
                        "obj-24", 
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
                        "obj-20", 
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
                        "obj-26", 
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
                        "obj-24", 
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
                        "obj-8", 
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
    }
}