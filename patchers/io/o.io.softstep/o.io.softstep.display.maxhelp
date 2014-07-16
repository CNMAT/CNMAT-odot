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
            "revision": 4
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
                            "revision": 4
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "the ui outputs the \"fake input\" of the controller, which is the 4 raw midi controller values for each pad, which represent the pressure sensors on the corners of each pad.", 
                                    "numinlets": 1, 
                                    "linecount": 4, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        130.0, 
                                        40.0, 
                                        315.0, 
                                        60.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/6/rawlist : [3, 112, 1, 8]", 
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
                                    "id": "obj-7", 
                                    "patching_rect": [
                                        50.0, 
                                        140.0, 
                                        380.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.select /6", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-6", 
                                    "patching_rect": [
                                        50.0, 
                                        100.0, 
                                        65.0, 
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
                                        "FullPacket"
                                    ], 
                                    "maxclass": "inlet", 
                                    "id": "obj-15", 
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
                            85.0, 
                            327.0, 
                            485.0, 
                            194.0
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
                                        "obj-7", 
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
                    "text": "p selecting_data_ui", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-16", 
                    "patching_rect": [
                        180.0, 
                        250.0, 
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
                            "revision": 4
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/6/rawlist : [0, 0, 0, 0],\n/6/normlist : [0., 0., 0., 0.],\n/6/xy : [0., 0.],\n/6/pressure : 0.,\n/6/horizontal : 0.,\n/6/vertical : 0.,\n/6/button : [false, false, false, false]", 
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
                                    "id": "obj-4", 
                                    "patching_rect": [
                                        50.0, 
                                        140.0, 
                                        380.0, 
                                        101.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.select /6", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        50.0, 
                                        100.0, 
                                        65.0, 
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
                                    "id": "obj-10", 
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
                            454.0, 
                            269.0
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
                                        "obj-5", 
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
                    "text": "p selecting_data_softstep", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-12", 
                    "patching_rect": [
                        180.0, 
                        60.0, 
                        147.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "example output", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-13", 
                    "patching_rect": [
                        720.0, 
                        10.0, 
                        93.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/6/rawlist : [0, 0, 0, 0],\n/6/normlist : [0., 0., 0., 0.],\n/6/xy : [0., 0.],\n/6/pressure : 0.,\n/6/horizontal : 0.,\n/6/vertical : 0.,\n/6/button : [false, false, false, false],\n/1/rawlist : [0, 0, 0, 0],\n/1/normlist : [0., 0., 0., 0.],\n/1/xy : [0., 0.],\n/1/pressure : 0.,\n/1/horizontal : 0.,\n/1/vertical : 0.,\n/1/button : [false, false, false, false],\n/10/rawlist : [0, 0, 0, 0],\n/10/normlist : [0., 0., 0., 0.],\n/10/xy : [0., 0.],\n/10/pressure : 0.,\n/10/horizontal : 0.,\n/10/vertical : 0.,\n/10/button : [false, false, false, false],\n/9/rawlist : [0, 0, 0, 0],\n/9/normlist : [0., 0., 0., 0.],\n/9/xy : [0., 0.],\n/9/pressure : 0.,\n/9/horizontal : 0.,\n/9/vertical : 0.,\n/9/button : [false, false, false, false],\n/8/rawlist : [0, 0, 0, 0],\n/8/normlist : [0., 0., 0., 0.],\n/8/xy : [0., 0.],\n/8/pressure : 0.,\n/8/horizontal : 0.,\n/8/vertical : 0.,\n/8/button : [false, false, false, false],\n/7/rawlist : [0, 0, 0, 0],\n/7/normlist : [0., 0., 0., 0.],\n/7/xy : [0., 0.],\n/7/pressure : 0.,\n/7/horizontal : 0.,\n/7/vertical : 0.,\n/7/button : [false, false, false, false],\n/3/rawlist : [0, 0, 0, 0],\n/3/normlist : [0., 0., 0., 0.],\n/3/xy : [0., 0.],\n/3/pressure : 0.,\n/3/horizontal : 0.,\n/3/vertical : 0.,\n/3/button : [false, false, false, false],\n/2/rawlist : [0, 0, 0, 0],\n/2/normlist : [0., 0., 0., 0.],\n/2/xy : [0., 0.],\n/2/pressure : 0.,\n/2/horizontal : 0.,\n/2/vertical : 0.,\n/2/button : [false, false, false, false],\n/4/rawlist : [0, 0, 0, 0],\n/4/normlist : [0., 0., 0., 0.],\n/4/xy : [0., 0.],\n/4/pressure : 0.,\n/4/horizontal : 0.,\n/4/vertical : 0.,\n/4/button : [false, false, false, false],\n/pedal : 0.0495868,\n/5/rawlist : [0, 0, 0, 0],\n/5/normlist : [0., 0., 0., 0.],\n/5/xy : [0., 0.],\n/5/horizontal : 0.,\n/5/vertical : 0.,\n/5/button : [false, false, false, false],\n/diamond/left/button : 0.,\n/diamond/right/pressure : 0.,\n/diamond/forward/pressure : 0.,\n/diamond/backward/pressure : 0.,\n/diamond/backward/button : \"released\",\n/diamond/right/button : \"released\",\n/diamond/forward/button : \"released\",\n/diamond/left/pressure : \"released\",\n/Instruction : \"Push on 4 corners of any pad for corresponding data\",\n/Manufacturer : \"Keith McMillen Instruments\",\n/Product : \"SoftStep\"", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 81, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-8", 
                    "patching_rect": [
                        720.0, 
                        50.0, 
                        380.0, 
                        1093.0
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
                            "revision": 4
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/7/rawlist : [0, 0, 0, 0],\n/7/normlist : [0., 0., 0., 0.],\n/7/xy : [0., 0.],\n/7/pressure : 0.,\n/7/horizontal : 0.,\n/7/vertical : 0.,\n/7/button : [false, false, false, false],\n/6/rawlist : [0, 0, 0, 0],\n/6/normlist : [0., 0., 0., 0.],\n/6/xy : [0., 0.],\n/6/pressure : 0.,\n/6/horizontal : 0.,\n/6/vertical : 0.,\n/6/button : [false, false, false, false],\n/1/rawlist : [0, 0, 0, 0],\n/1/normlist : [0., 0., 0., 0.],\n/1/xy : [0., 0.],\n/1/pressure : 0.,\n/1/horizontal : 0.,\n/1/vertical : 0.,\n/1/button : [false, false, false, false],\n/3/rawlist : [0, 0, 0, 0],\n/3/normlist : [0., 0., 0., 0.],\n/3/xy : [0., 0.],\n/3/pressure : 0.,\n/3/horizontal : 0.,\n/3/vertical : 0.,\n/3/button : [false, false, false, false],\n/2/rawlist : [0, 0, 0, 0],\n/2/normlist : [0., 0., 0., 0.],\n/2/xy : [0., 0.],\n/2/pressure : 0.,\n/2/horizontal : 0.,\n/2/vertical : 0.,\n/2/button : [false, false, false, false],\n/4/rawlist : [0, 0, 0, 0],\n/4/normlist : [0., 0., 0., 0.],\n/4/xy : [0., 0.],\n/4/pressure : 0.,\n/4/horizontal : 0.,\n/4/vertical : 0.,\n/4/button : [false, false, false, false],\n/9/rawlist : [0, 0, 0, 0],\n/9/normlist : [0., 0., 0., 0.],\n/9/xy : [0., 0.],\n/9/pressure : 0.,\n/9/horizontal : 0.,\n/9/vertical : 0.,\n/9/button : [false, false, false, false],\n/8/rawlist : [0, 0, 0, 0],\n/8/normlist : [0., 0., 0., 0.],\n/8/xy : [0., 0.],\n/8/pressure : 0.,\n/8/horizontal : 0.,\n/8/vertical : 0.,\n/8/button : [false, false, false, false],\n/pedal : 0.0495868,\n/10/rawlist : [0, 0, 0, 0],\n/10/normlist : [0., 0., 0., 0.],\n/10/xy : [0., 0.],\n/10/horizontal : 0.,\n/10/vertical : 0.,\n/10/button : [false, false, false, false],\n/5/rawlist : [0, 0, 0, 0],\n/5/normlist : [0., 0., 0., 0.],\n/5/xy : [0., 0.],\n/5/horizontal : 0.,\n/5/vertical : 0.,\n/5/button : [false, false, false, false],\n/diamond/left/button : 0.,\n/diamond/right/pressure : 0.,\n/diamond/forward/pressure : 0.,\n/diamond/backward/pressure : 0.,\n/diamond/backward/button : \"released\",\n/diamond/right/button : \"released\",\n/diamond/forward/button : \"released\",\n/diamond/left/pressure : \"released\",\n/Instruction : \"Push on 4 corners of any pad for corresponding data\",\n/Manufacturer : \"Keith McMillen Instruments\",\n/Product : \"SoftStep\"", 
                                    "numinlets": 2, 
                                    "maxclass": "o.message", 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "linecount": 80, 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-7", 
                                    "patching_rect": [
                                        30.0, 
                                        50.0, 
                                        380.0, 
                                        1080.0
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
                                    "id": "obj-1", 
                                    "patching_rect": [
                                        30.0, 
                                        10.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            48.0, 
                            81.0, 
                            485.0, 
                            844.0
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
                                        "obj-7", 
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
                    "text": "p fullbundle", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-14", 
                    "patching_rect": [
                        340.0, 
                        60.0, 
                        72.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/kmi/softstep/8/rawlist : [7, 82, 5, 30]", 
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
                        30.0, 
                        510.0, 
                        383.0, 
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
                    "id": "obj-9", 
                    "patching_rect": [
                        80.0, 
                        270.0, 
                        20.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "name": "o.io.softstep.display.maxpat", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "bpatcher", 
                    "id": "obj-3", 
                    "patching_rect": [
                        30.0, 
                        320.0, 
                        657.0, 
                        155.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.softstep", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-2", 
                    "patching_rect": [
                        30.0, 
                        20.0, 
                        75.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "name": "o.io.softstep.display.maxpat", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "bpatcher", 
                    "id": "obj-1", 
                    "patching_rect": [
                        30.0, 
                        90.0, 
                        657.0, 
                        155.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            21.0, 
            58.0, 
            1208.0, 
            587.0
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
                        "obj-16", 
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
                        "obj-3", 
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
                        "obj-9", 
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
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-12", 
                        0
                    ], 
                    "midpoints": [
                        39.5, 
                        49.5, 
                        189.5, 
                        49.5
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
                        "obj-14", 
                        0
                    ], 
                    "midpoints": [
                        39.5, 
                        49.5, 
                        349.5, 
                        49.5
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
                        1
                    ], 
                    "midpoints": [
                        39.5, 
                        44.5, 
                        1090.5, 
                        44.5
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
                        "obj-11", 
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
                "name": "o.io.softstep.display.maxpat", 
                "bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/git/CNMAT-odot/abstractions/io/o.io.softstep"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "PNG ", 
                "name": "keithmcmillen_softstep.png", 
                "bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/git/CNMAT-odot/abstractions/io/o.io.softstep"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "c.softstep.paddisp.maxpat", 
                "bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/git/CNMAT-odot/abstractions/io/o.io.softstep"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "c.softstep.rbfiw.maxpat", 
                "bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/git/CNMAT-odot/abstractions/io/o.io.softstep"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "c.softstep.pad.maxpat", 
                "bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/git/CNMAT-odot/abstractions/io/o.io.softstep"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "TEXT", 
                "name": "o.io.softstep.maxpat", 
                "bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/git/CNMAT-odot/abstractions/io/o.io.softstep"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "c.softstep.navbutton.maxpat", 
                "bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/git/CNMAT-odot/abstractions/io/o.io.softstep"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "c.softstep.led.maxpat", 
                "bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/git/CNMAT-odot/abstractions/io/o.io.softstep"
            }, 
            {
                "patcherrelativepath": "..", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.collectwithtimeout.maxpat", 
                "bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/git/CNMAT-odot/abstractions/io"
            }, 
            {
                "type": "iLaX", 
                "name": "rbfi.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.route.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.prepend.mxo"
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
                "name": "o.pack.mxo"
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
                "name": "o.select.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "ss.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.collect.mxo"
            }
        ]
    }
}