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
            10.0, 
            10.0
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
                    "text": "tiny LED on esplora, next to reset button", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-32", 
                    "patching_rect": [
                        50.0, 
                        141.5, 
                        225.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "name": "o.io.esplora.display.maxpat", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "bpatcher", 
                    "offset": [
                        -24.0, 
                        -5.0
                    ], 
                    "id": "obj-4", 
                    "patching_rect": [
                        504.0, 
                        405.0, 
                        522.0, 
                        235.0
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
                    "id": "obj-26", 
                    "patching_rect": [
                        70.0, 
                        240.0, 
                        20.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /connector/orange/left", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-27", 
                    "patching_rect": [
                        70.0, 
                        270.0, 
                        165.0, 
                        20.0
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
                    "id": "obj-21", 
                    "patching_rect": [
                        43.0, 
                        270.0, 
                        20.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /connector/orange/right", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-12", 
                    "patching_rect": [
                        43.0, 
                        301.0, 
                        173.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /led", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-7", 
                    "patching_rect": [
                        30.0, 
                        168.5, 
                        69.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /led/rgb", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-2", 
                    "patching_rect": [
                        30.0, 
                        98.0, 
                        89.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/tone/off", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "o.compose", 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-25", 
                    "patching_rect": [
                        569.0, 
                        204.0, 
                        102.0, 
                        24.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/tone : 220.", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "o.compose", 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-17", 
                    "patching_rect": [
                        569.0, 
                        168.5, 
                        102.0, 
                        24.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/tone : 440", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "o.compose", 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-15", 
                    "patching_rect": [
                        569.0, 
                        130.0, 
                        102.0, 
                        24.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/tone : [200, 200]", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "o.compose", 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-14", 
                    "patching_rect": [
                        569.0, 
                        96.0, 
                        102.0, 
                        24.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/Manufacturer : \"Arduino\",\n/Device : \"Esplora\",\n/UniqueID : \"usbmodemOSCes421\",\n/Sequence/Number : 3076,\n/acceleration/x : 0.181641,\n/acceleration/y : 0.0507812,\n/acceleration/z : 0.21875,\n/photoresistor : 0.922776,\n/slider/horizontal : 0.,\n/connector/white/right : 0.943304,\n/connector/orange/left : true,\n/connector/orange/right : false,\n/units/temperature : \"Celsius\",\n/temperature/celsius : 20.,\n/microphone/loudness : 0.,\n/led/rgb : [0, 0, 0],\n/joystick/horizontal : 0.00585938,\n/joystick/vertical : 0.00976562,\n/connector/white/left : 0.501466,\n/joystick/button/down : false,\n/joystick/button/up : true,\n/joystick/forward/button/down : false,\n/joystick/forward/button/up : true,\n/joystick/left/button/down : false,\n/joystick/left/button/up : true,\n/joystick/right/button/down : false,\n/joystick/right/button/up : true,\n/joystick/backward/button/down : false,\n/joystick/backward/button/up : true,\n/diamond/backward/button/down : false,\n/diamond/backward/button/up : true,\n/diamond/left/button/down : false,\n/diamond/left/button/up : true,\n/diamond/right/button/down : false,\n/diamond/right/button/up : true,\n/diamond/forward/button/down : false,\n/diamond/forward/button/up : true,\n/microseconds : 106588028", 
                    "numinlets": 1, 
                    "maxclass": "o.display", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 38, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-13", 
                    "patching_rect": [
                        180.0, 
                        405.0, 
                        267.0, 
                        530.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/port : \"usbmodemOSCes421\",\n/rate/output : 40,\n/rate/input : 0,\n/mediansize/received : 288,\n/baud", 
                    "numinlets": 1, 
                    "maxclass": "o.display", 
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
                    "id": "obj-3", 
                    "patching_rect": [
                        707.5, 
                        249.0, 
                        239.0, 
                        88.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "Adrian Freed, Jeff Lubow 2014", 
                    "numinlets": 1, 
                    "linecount": 2, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-33", 
                    "patching_rect": [
                        600.0, 
                        31.5, 
                        150.0, 
                        33.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "On Macintosh look for your Esplora named like this: \nusbmodemXXXX\n", 
                    "numinlets": 1, 
                    "linecount": 3, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-8", 
                    "patching_rect": [
                        382.5, 
                        168.5, 
                        170.0, 
                        47.0
                    ]
                }
            }, 
            {
                "box": {
                    "name": "o.io.serial.display.maxpat", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "bpatcher", 
                    "offset": [
                        3.0, 
                        0.0
                    ], 
                    "id": "obj-16", 
                    "patching_rect": [
                        382.5, 
                        232.0, 
                        164.0, 
                        24.0
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
                            10.0, 
                            10.0
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
                                    "text": "/tone", 
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
                                    "id": "obj-42", 
                                    "patching_rect": [
                                        150.0, 
                                        230.0, 
                                        150.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "del 50", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "bang"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-41", 
                                    "patching_rect": [
                                        160.0, 
                                        190.0, 
                                        43.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/tone : \"$1\"", 
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
                                    "id": "obj-39", 
                                    "patching_rect": [
                                        74.0, 
                                        192.0, 
                                        64.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "220., 2200. 1000", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 12.0, 
                                    "id": "obj-37", 
                                    "patching_rect": [
                                        74.0, 
                                        100.0, 
                                        102.0, 
                                        18.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "line 0. 30", 
                                    "numinlets": 3, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-32", 
                                    "patching_rect": [
                                        74.0, 
                                        147.0, 
                                        59.0, 
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
                                    "id": "obj-49", 
                                    "patching_rect": [
                                        74.0, 
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
                                    "id": "obj-50", 
                                    "patching_rect": [
                                        57.0, 
                                        272.0, 
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
                                        "obj-32", 
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
                                        "obj-32", 
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
                                        "obj-37", 
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
                                        "obj-50", 
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
                                        "obj-42", 
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
                                        "obj-50", 
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
                    "text": "p sweep_tone", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-51", 
                    "patching_rect": [
                        590.0, 
                        279.0, 
                        85.0, 
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
                        590.0, 
                        249.0, 
                        20.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "numinlets": 3, 
                    "id": "obj-29", 
                    "numoutlets": 2, 
                    "outlettype": [
                        "", 
                        "float"
                    ], 
                    "maxclass": "swatch", 
                    "parameter_enable": 0, 
                    "compatibility": 1, 
                    "patching_rect": [
                        30.0, 
                        7.666664, 
                        195.0, 
                        88.666672
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/led/rgb : [0, 0, 0]", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "o.compose", 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-24", 
                    "patching_rect": [
                        360.0, 
                        40.0, 
                        102.0, 
                        24.0
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
                    "id": "obj-20", 
                    "patching_rect": [
                        30.0, 
                        141.5, 
                        20.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/led/green : 200", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "o.compose", 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-11", 
                    "patching_rect": [
                        230.0, 
                        7.666664, 
                        99.0, 
                        24.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/led/blue : 200", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "o.compose", 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-10", 
                    "patching_rect": [
                        230.0, 
                        72.333336, 
                        99.0, 
                        24.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/led/red : 100", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "o.compose", 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-9", 
                    "patching_rect": [
                        230.0, 
                        40.0, 
                        99.0, 
                        24.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/led/rgb : [200, 0, 0]", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "o.compose", 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-6", 
                    "patching_rect": [
                        360.0, 
                        7.666664, 
                        102.0, 
                        24.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.esplora /port usbmodemOSCes421", 
                    "numinlets": 2, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-1", 
                    "patching_rect": [
                        328.5, 
                        364.0, 
                        221.0, 
                        20.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            100.0, 
            100.0, 
            1076.0, 
            773.0
        ], 
        "lines": [
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "disabled": 0, 
                    "hidden": 0, 
                    "destination": [
                        "obj-13", 
                        0
                    ], 
                    "source": [
                        "obj-1", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "destination": [
                        "obj-3", 
                        0
                    ], 
                    "disabled": 0, 
                    "source": [
                        "obj-1", 
                        1
                    ], 
                    "midpoints": [
                        540.0, 
                        384.0, 
                        693.0, 
                        384.0, 
                        693.0, 
                        246.0, 
                        717.0, 
                        246.0
                    ], 
                    "hidden": 0
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "disabled": 0, 
                    "hidden": 0, 
                    "destination": [
                        "obj-4", 
                        0
                    ], 
                    "source": [
                        "obj-1", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "destination": [
                        "obj-1", 
                        0
                    ], 
                    "disabled": 0, 
                    "source": [
                        "obj-10", 
                        0
                    ], 
                    "midpoints": [
                        239.5, 
                        99.666672, 
                        338.0, 
                        99.666672
                    ], 
                    "hidden": 0
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "destination": [
                        "obj-1", 
                        0
                    ], 
                    "disabled": 0, 
                    "source": [
                        "obj-11", 
                        0
                    ], 
                    "midpoints": [
                        239.5, 
                        35.333328, 
                        338.0, 
                        35.333328
                    ], 
                    "hidden": 0
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "destination": [
                        "obj-1", 
                        0
                    ], 
                    "disabled": 0, 
                    "source": [
                        "obj-12", 
                        0
                    ], 
                    "midpoints": [
                        52.5, 
                        325.0, 
                        338.0, 
                        325.0
                    ], 
                    "hidden": 0
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "destination": [
                        "obj-1", 
                        0
                    ], 
                    "disabled": 0, 
                    "source": [
                        "obj-14", 
                        0
                    ], 
                    "midpoints": [
                        578.5, 
                        124.0, 
                        564.0, 
                        124.0, 
                        564.0, 
                        351.0, 
                        338.0, 
                        351.0
                    ], 
                    "hidden": 0
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "destination": [
                        "obj-1", 
                        0
                    ], 
                    "disabled": 0, 
                    "source": [
                        "obj-15", 
                        0
                    ], 
                    "midpoints": [
                        578.5, 
                        158.0, 
                        564.0, 
                        158.0, 
                        564.0, 
                        351.0, 
                        338.0, 
                        351.0
                    ], 
                    "hidden": 0
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "disabled": 0, 
                    "hidden": 0, 
                    "destination": [
                        "obj-1", 
                        1
                    ], 
                    "source": [
                        "obj-16", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "destination": [
                        "obj-1", 
                        0
                    ], 
                    "disabled": 0, 
                    "source": [
                        "obj-17", 
                        0
                    ], 
                    "midpoints": [
                        578.5, 
                        198.0, 
                        564.0, 
                        198.0, 
                        564.0, 
                        351.0, 
                        338.0, 
                        351.0
                    ], 
                    "hidden": 0
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "destination": [
                        "obj-1", 
                        0
                    ], 
                    "disabled": 0, 
                    "source": [
                        "obj-2", 
                        0
                    ], 
                    "midpoints": [
                        39.5, 
                        121.5, 
                        338.0, 
                        121.5
                    ], 
                    "hidden": 0
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
                        "obj-12", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "destination": [
                        "obj-1", 
                        0
                    ], 
                    "disabled": 0, 
                    "source": [
                        "obj-24", 
                        0
                    ], 
                    "midpoints": [
                        369.5, 
                        68.0, 
                        338.0, 
                        68.0
                    ], 
                    "hidden": 0
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "destination": [
                        "obj-1", 
                        0
                    ], 
                    "disabled": 0, 
                    "source": [
                        "obj-25", 
                        0
                    ], 
                    "midpoints": [
                        578.5, 
                        233.0, 
                        563.0, 
                        233.0, 
                        563.0, 
                        351.0, 
                        338.0, 
                        351.0
                    ], 
                    "hidden": 0
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
                        "obj-27", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "destination": [
                        "obj-1", 
                        0
                    ], 
                    "disabled": 0, 
                    "source": [
                        "obj-27", 
                        0
                    ], 
                    "midpoints": [
                        79.5, 
                        294.5, 
                        338.0, 
                        294.5
                    ], 
                    "hidden": 0
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
                        "obj-2", 
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
                        "obj-51", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "destination": [
                        "obj-1", 
                        0
                    ], 
                    "disabled": 0, 
                    "source": [
                        "obj-51", 
                        0
                    ], 
                    "midpoints": [
                        599.5, 
                        356.0, 
                        338.0, 
                        356.0
                    ], 
                    "hidden": 0
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "destination": [
                        "obj-1", 
                        0
                    ], 
                    "disabled": 0, 
                    "source": [
                        "obj-6", 
                        0
                    ], 
                    "midpoints": [
                        369.5, 
                        33.0, 
                        338.0, 
                        33.0
                    ], 
                    "hidden": 0
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "destination": [
                        "obj-1", 
                        0
                    ], 
                    "disabled": 0, 
                    "source": [
                        "obj-7", 
                        0
                    ], 
                    "midpoints": [
                        39.5, 
                        192.75, 
                        338.0, 
                        192.75
                    ], 
                    "hidden": 0
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "destination": [
                        "obj-1", 
                        0
                    ], 
                    "disabled": 0, 
                    "source": [
                        "obj-9", 
                        0
                    ], 
                    "midpoints": [
                        239.5, 
                        67.5, 
                        338.0, 
                        67.5
                    ], 
                    "hidden": 0
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
                "name": "o.io.esplora.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/io/esplora"
            }, 
            {
                "patcherrelativepath": "..", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.slipserial.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/io"
            }, 
            {
                "patcherrelativepath": "../..", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.arguments.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers"
            }, 
            {
                "patcherrelativepath": "../../core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.righttoleft.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core"
            }, 
            {
                "patcherrelativepath": "../../core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.in.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core"
            }, 
            {
                "patcherrelativepath": "../../core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.port.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core"
            }, 
            {
                "patcherrelativepath": "../../aspect", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.aspect.joinpoint.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/aspect"
            }, 
            {
                "patcherrelativepath": "../../core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.out.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/core"
            }, 
            {
                "patcherrelativepath": "..", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.serial.display.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/io"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.esplora.display.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/io/esplora"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "c.esplora.buttonui.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/io/esplora"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "c.esplora.buttonhelper.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/io/esplora"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "c.lcd.xydraw.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/io/esplora"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "c.lcd.circle.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/io/esplora"
            }, 
            {
                "patcherrelativepath": "../../namespace", 
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
                "name": "o.route.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.union.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.collect.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.if.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.var.mxo"
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
                "name": "o.validate.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.print.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.slip.encode.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.slip.decode.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.timetag.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.downcast.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.compose.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.message.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.display.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.expr.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.intersection.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.difference.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.expr.codebox.mxo"
            }
        ]
    }
}