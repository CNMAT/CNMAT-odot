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
                    "text": "Dave DeFilippo \nAdrian Freed  2014", 
                    "numinlets": 1, 
                    "linecount": 2, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-10", 
                    "patching_rect": [
                        348.5, 
                        556.0, 
                        150.0, 
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
                            "revision": 3
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "join", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-29", 
                                    "patching_rect": [
                                        253.5, 
                                        226.730957, 
                                        78.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route /controller /value", 
                                    "numinlets": 3, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        253.5, 
                                        192.0, 
                                        137.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "join", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-28", 
                                    "patching_rect": [
                                        120.5, 
                                        226.730957, 
                                        76.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route /key /pressure", 
                                    "numinlets": 3, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-27", 
                                    "patching_rect": [
                                        120.5, 
                                        194.631836, 
                                        133.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "join", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-24", 
                                    "patching_rect": [
                                        50.0, 
                                        200.631836, 
                                        71.75, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route /key /velocity", 
                                    "numinlets": 3, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-23", 
                                    "patching_rect": [
                                        50.0, 
                                        166.900879, 
                                        124.5, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route /note /polykey/pressure /control/change /program/change /aftertouch /pitch/bend /channel", 
                                    "numinlets": 8, 
                                    "numoutlets": 8, 
                                    "outlettype": [
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
                                    "id": "obj-18", 
                                    "patching_rect": [
                                        50.0, 
                                        100.0, 
                                        536.0, 
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
                                    "id": "obj-33", 
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
                                    "id": "obj-34", 
                                    "patching_rect": [
                                        50.0, 
                                        306.730957, 
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
                                    "id": "obj-35", 
                                    "patching_rect": [
                                        120.5, 
                                        306.730957, 
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
                                    "id": "obj-36", 
                                    "patching_rect": [
                                        239.5, 
                                        306.730957, 
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
                                        291.0, 
                                        306.730957, 
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
                                        345.0, 
                                        306.730957, 
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
                                    "id": "obj-39", 
                                    "patching_rect": [
                                        419.0, 
                                        306.730957, 
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
                                        493.0, 
                                        306.730957, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            608.0, 
                            79.0, 
                            640.0, 
                            480.0
                        ], 
                        "lines": [
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-18", 
                                        2
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
                                        "obj-18", 
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
                                        "obj-18", 
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
                                        "obj-18", 
                                        3
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
                                        "obj-18", 
                                        4
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
                                        "obj-18", 
                                        5
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
                                        "obj-18", 
                                        6
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
                                        "obj-2", 
                                        1
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
                                        "obj-2", 
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
                                        "obj-23", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-24", 
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
                                        "obj-24", 
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
                                        "obj-34", 
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
                                        "obj-35", 
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
                                        "obj-36", 
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
                                        "obj-18", 
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
                    "text": "p decode", 
                    "numinlets": 1, 
                    "numoutlets": 7, 
                    "outlettype": [
                        "", 
                        "", 
                        "", 
                        "", 
                        "", 
                        "", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-41", 
                    "patching_rect": [
                        20.5, 
                        223.594757, 
                        100.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "midiformat", 
                    "numinlets": 7, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "int"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-8", 
                    "patching_rect": [
                        20.5, 
                        253.0, 
                        100.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "sysexin", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "int"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-17", 
                    "patching_rect": [
                        316.166687, 
                        356.368164, 
                        51.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "prepend port", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-14", 
                    "patching_rect": [
                        117.285706, 
                        140.0, 
                        79.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "prepend port", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-13", 
                    "patching_rect": [
                        197.166687, 
                        296.0, 
                        79.0, 
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
                    "id": "obj-12", 
                    "patching_rect": [
                        20.5, 
                        18.0, 
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
                    "id": "obj-11", 
                    "patching_rect": [
                        378.0, 
                        276.599121, 
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
                                                    "text": "o.righttoleft", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 8, 
                                                    "outlettype": [
                                                        "FullPacket", 
                                                        "FullPacket", 
                                                        "FullPacket", 
                                                        "FullPacket", 
                                                        "FullPacket", 
                                                        "FullPacket", 
                                                        "FullPacket", 
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-1", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        100.0, 
                                                        100.0, 
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
                                                    "id": "obj-2", 
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
                                                    "id": "obj-3", 
                                                    "patching_rect": [
                                                        119.0, 
                                                        180.0, 
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
                                                        131.0, 
                                                        180.0, 
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
                                                        "obj-1", 
                                                        6
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
                                                        7
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
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-1", 
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
                                    "text": "p splitter", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "FullPacket", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-6", 
                                    "patching_rect": [
                                        93.75, 
                                        314.599976, 
                                        100.0, 
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
                                                    "comment": "", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 0, 
                                                    "maxclass": "outlet", 
                                                    "id": "obj-6", 
                                                    "patching_rect": [
                                                        47.0, 
                                                        102.0, 
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
                                                    "id": "obj-11", 
                                                    "patching_rect": [
                                                        84.0, 
                                                        102.0, 
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
                                                    "id": "obj-14", 
                                                    "patching_rect": [
                                                        47.0, 
                                                        7.0, 
                                                        25.0, 
                                                        25.0
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
                                                    "id": "obj-18", 
                                                    "patching_rect": [
                                                        47.0, 
                                                        54.0, 
                                                        38.0, 
                                                        20.0
                                                    ]
                                                }
                                            }
                                        ], 
                                        "default_fontface": 0, 
                                        "gridonopen": 0, 
                                        "rect": [
                                            68.0, 
                                            44.0, 
                                            158.0, 
                                            153.0
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
                                                        "obj-18", 
                                                        0
                                                    ], 
                                                    "source": [
                                                        "obj-14", 
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
                                                    "disabled": 0, 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-11", 
                                                        0
                                                    ], 
                                                    "source": [
                                                        "obj-18", 
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
                                                        "obj-6", 
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
                                    "text": "p pacesetter", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "bang", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        20.25, 
                                        100.0, 
                                        92.5, 
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
                                                    "text": "/from/device/input/port : \"unspecified\",\n/output/port/to/device : \"unspecified\"", 
                                                    "numinlets": 1, 
                                                    "maxclass": "o.compose", 
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
                                                    "id": "obj-7", 
                                                    "patching_rect": [
                                                        269.0, 
                                                        163.0, 
                                                        193.0, 
                                                        47.0
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
                                                    "id": "obj-5", 
                                                    "patching_rect": [
                                                        269.0, 
                                                        56.0, 
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
                                                    "id": "obj-1", 
                                                    "patching_rect": [
                                                        257.0, 
                                                        97.0, 
                                                        100.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "assumed resting state", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 0, 
                                                    "maxclass": "comment", 
                                                    "frgb": 0.0, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-2", 
                                                    "patching_rect": [
                                                        582.0, 
                                                        136.0, 
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
                                                        285.0, 
                                                        634.0, 
                                                        25.0, 
                                                        25.0
                                                    ]
                                                }
                                            }
                                        ], 
                                        "default_fontface": 0, 
                                        "gridonopen": 0, 
                                        "rect": [
                                            156.0, 
                                            44.0, 
                                            695.0, 
                                            680.0
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
                                                        "obj-7", 
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
                                    "text": "p starter", 
                                    "numinlets": 0, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-142", 
                                    "patching_rect": [
                                        124.75, 
                                        9.289978, 
                                        55.0, 
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
                                                    "id": "obj-132", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        100.0, 
                                                        166.47168, 
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
                                                    "id": "obj-77", 
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
                                                    "numinlets": 0, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "inlet", 
                                                    "id": "obj-84", 
                                                    "patching_rect": [
                                                        197.0, 
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
                                                        1024.0, 
                                                        25.0, 
                                                        25.0
                                                    ]
                                                }
                                            }
                                        ], 
                                        "default_fontface": 0, 
                                        "gridonopen": 0, 
                                        "rect": [
                                            756.0, 
                                            63.0, 
                                            640.0, 
                                            480.0
                                        ], 
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-132", 
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
                                                        "obj-77", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-132", 
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
                                                        "obj-132", 
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
                                    "text": "p container", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-86", 
                                    "patching_rect": [
                                        14.75, 
                                        362.599976, 
                                        179.0, 
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
                                    "id": "obj-131", 
                                    "patching_rect": [
                                        93.75, 
                                        263.289978, 
                                        50.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "varname": "u040001577", 
                                    "numinlets": 0, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "inlet", 
                                    "id": "obj-43", 
                                    "patching_rect": [
                                        20.25, 
                                        60.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "varname": "u656001576", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "outlet", 
                                    "id": "obj-44", 
                                    "patching_rect": [
                                        93.75, 
                                        460.536072, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            541.0, 
                            93.0, 
                            241.0, 
                            509.0
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
                                        "obj-6", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-131", 
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
                                    "disabled": 0, 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-131", 
                                        1
                                    ], 
                                    "source": [
                                        "obj-142", 
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
                                    "disabled": 0, 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-5", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-43", 
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
                                    "disabled": 0, 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-131", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-5", 
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
                                        "obj-86", 
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
                                    "disabled": 0, 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-44", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-6", 
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
                                    "disabled": 0, 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-86", 
                                        1
                                    ], 
                                    "source": [
                                        "obj-6", 
                                        1
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
                                        "obj-131", 
                                        1
                                    ], 
                                    "disabled": 0, 
                                    "source": [
                                        "obj-86", 
                                        0
                                    ], 
                                    "midpoints": [
                                        24.25, 
                                        401.599976, 
                                        217.0, 
                                        401.599976, 
                                        217.0, 
                                        207.289978, 
                                        134.25, 
                                        207.289978
                                    ], 
                                    "hidden": 0
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
                    "text": "p cache state", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-45", 
                    "patching_rect": [
                        378.0, 
                        243.599121, 
                        91.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.route /output/port/to/device /from/device/input/port", 
                    "numinlets": 3, 
                    "maxclass": "newobj", 
                    "numoutlets": 3, 
                    "outlettype": [
                        "", 
                        "", 
                        "FullPacket"
                    ], 
                    "linecount": 2, 
                    "fontsize": 12.0, 
                    "id": "obj-7", 
                    "patching_rect": [
                        117.285706, 
                        98.929199, 
                        175.0, 
                        33.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.righttoleft", 
                    "numinlets": 1, 
                    "numoutlets": 8, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket", 
                        "FullPacket", 
                        "FullPacket", 
                        "FullPacket", 
                        "FullPacket", 
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-6", 
                    "patching_rect": [
                        189.0, 
                        54.0, 
                        112.0, 
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
                    "id": "obj-1", 
                    "patching_rect": [
                        189.0, 
                        18.0, 
                        25.0, 
                        25.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "midiout", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-22", 
                    "patching_rect": [
                        20.5, 
                        362.368164, 
                        49.0, 
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
                    "id": "obj-9", 
                    "patching_rect": [
                        189.0, 
                        511.599121, 
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
                                    "text": "o.union", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-30", 
                                    "patching_rect": [
                                        469.963562, 
                                        377.0, 
                                        100.0, 
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
                                    "id": "obj-27", 
                                    "patching_rect": [
                                        963.0, 
                                        162.0, 
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
                                    "id": "obj-23", 
                                    "patching_rect": [
                                        790.0, 
                                        244.0, 
                                        20.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
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
                                    "id": "obj-28", 
                                    "patching_rect": [
                                        848.0, 
                                        289.0, 
                                        25.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/sysex = [/sysex?? list(), /b];", 
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
                                    "id": "obj-21", 
                                    "patching_rect": [
                                        932.0, 
                                        273.0, 
                                        167.0, 
                                        36.0
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
                                        817.0, 
                                        244.0, 
                                        20.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.righttoleft", 
                                    "numinlets": 1, 
                                    "numoutlets": 8, 
                                    "outlettype": [
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-8", 
                                    "patching_rect": [
                                        790.0, 
                                        212.0, 
                                        113.5, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.if /b==247", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "FullPacket", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-12", 
                                    "patching_rect": [
                                        844.5, 
                                        170.0, 
                                        74.0, 
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
                                    "id": "obj-14", 
                                    "patching_rect": [
                                        817.0, 
                                        328.0, 
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
                                    "id": "obj-18", 
                                    "patching_rect": [
                                        932.0, 
                                        244.0, 
                                        50.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
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
                                    "id": "obj-19", 
                                    "patching_rect": [
                                        963.0, 
                                        198.0, 
                                        25.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.righttoleft", 
                                    "numinlets": 1, 
                                    "numoutlets": 8, 
                                    "outlettype": [
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-20", 
                                    "patching_rect": [
                                        895.5, 
                                        133.0, 
                                        113.5, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.if /b!=240", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "FullPacket", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-22", 
                                    "patching_rect": [
                                        844.5, 
                                        101.0, 
                                        70.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pack /b", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-24", 
                                    "patching_rect": [
                                        842.0, 
                                        67.513, 
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
                                        "int"
                                    ], 
                                    "maxclass": "inlet", 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        842.0, 
                                        24.0, 
                                        25.0, 
                                        25.0
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
                                    "fontsize": 12.0, 
                                    "id": "obj-1", 
                                    "patching_rect": [
                                        312.25, 
                                        60.0, 
                                        46.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pack /controller /value", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        312.25, 
                                        89.928223, 
                                        144.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pack /note", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-66", 
                                    "patching_rect": [
                                        27.5, 
                                        133.0, 
                                        76.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pack /channel", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-59", 
                                    "patching_rect": [
                                        742.0, 
                                        133.0, 
                                        95.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pack /pitch/bend", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-58", 
                                    "patching_rect": [
                                        631.963562, 
                                        133.0, 
                                        109.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pack /aftertouch", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-57", 
                                    "patching_rect": [
                                        525.963562, 
                                        133.0, 
                                        106.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pack /program/change", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-56", 
                                    "patching_rect": [
                                        387.463562, 
                                        133.0, 
                                        141.0, 
                                        20.0
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
                                    "fontsize": 12.0, 
                                    "id": "obj-55", 
                                    "patching_rect": [
                                        152.25, 
                                        60.0, 
                                        46.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pack /key /pressure", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-54", 
                                    "patching_rect": [
                                        152.25, 
                                        89.928223, 
                                        125.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pack /polykey/pressure", 
                                    "numinlets": 1, 
                                    "maxclass": "newobj", 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "linecount": 3, 
                                    "fontsize": 12.0, 
                                    "id": "obj-53", 
                                    "patching_rect": [
                                        152.25, 
                                        119.5, 
                                        61.0, 
                                        47.0
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
                                    "fontsize": 12.0, 
                                    "id": "obj-49", 
                                    "patching_rect": [
                                        27.5, 
                                        45.0, 
                                        46.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pack /key /velocity", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-48", 
                                    "patching_rect": [
                                        27.5, 
                                        89.928223, 
                                        118.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pack /control/change", 
                                    "numinlets": 1, 
                                    "maxclass": "newobj", 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "linecount": 3, 
                                    "fontsize": 12.0, 
                                    "id": "obj-33", 
                                    "patching_rect": [
                                        312.25, 
                                        143.0, 
                                        68.0, 
                                        47.0
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
                                        27.5, 
                                        12.0, 
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
                                    "id": "obj-6", 
                                    "patching_rect": [
                                        152.25, 
                                        28.0, 
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
                                    "id": "obj-9", 
                                    "patching_rect": [
                                        312.25, 
                                        18.0, 
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
                                    "id": "obj-10", 
                                    "patching_rect": [
                                        452.963562, 
                                        12.0, 
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
                                    "id": "obj-11", 
                                    "patching_rect": [
                                        513.963562, 
                                        12.0, 
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
                                    "id": "obj-13", 
                                    "patching_rect": [
                                        631.963562, 
                                        12.0, 
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
                                    "id": "obj-16", 
                                    "patching_rect": [
                                        742.0, 
                                        9.487, 
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
                                    "id": "obj-17", 
                                    "patching_rect": [
                                        469.963562, 
                                        440.513, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            221.0, 
                            161.0, 
                            1219.0, 
                            489.0
                        ], 
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
                                        "obj-2", 
                                        1
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
                                        "obj-2", 
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
                                        "obj-56", 
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
                                        "obj-57", 
                                        0
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
                                        "obj-18", 
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
                                        "obj-8", 
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
                                        "obj-58", 
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
                                        "obj-17", 
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
                                        "obj-14", 
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
                                        "obj-59", 
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
                                        "obj-21", 
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
                                        "obj-18", 
                                        1
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
                                        "obj-33", 
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
                                        "obj-12", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-20", 
                                        5
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
                                        "obj-21", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-14", 
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
                                        "obj-18", 
                                        1
                                    ], 
                                    "midpoints": [
                                        941.5, 
                                        341.0, 
                                        1122.5, 
                                        341.0, 
                                        1122.5, 
                                        240.0, 
                                        972.5, 
                                        240.0
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
                                        "obj-12", 
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
                                        "obj-24", 
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
                                        "obj-27", 
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
                                        "obj-28", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-14", 
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
                                        "obj-49", 
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
                                        "obj-17", 
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
                                    "disabled": 0, 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-30", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-33", 
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
                                        "obj-66", 
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
                                        "obj-24", 
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
                                    "disabled": 0, 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-30", 
                                        0
                                    ], 
                                    "source": [
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
                                        "obj-55", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-54", 
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
                                        "obj-54", 
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
                                    "disabled": 0, 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-30", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-56", 
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
                                    "disabled": 0, 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-30", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-57", 
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
                                    "disabled": 0, 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-30", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-58", 
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
                                    "disabled": 0, 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-30", 
                                        1
                                    ], 
                                    "source": [
                                        "obj-59", 
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
                                        "obj-55", 
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
                                    "disabled": 0, 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-30", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-66", 
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
                                        "obj-15", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-8", 
                                        6
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
                                        "obj-8", 
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
                                        "obj-1", 
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
                    "text": "p encode", 
                    "numinlets": 8, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-19", 
                    "patching_rect": [
                        189.0, 
                        438.273407, 
                        146.166687, 
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
                    "fontsize": 12.0, 
                    "id": "obj-5", 
                    "patching_rect": [
                        189.0, 
                        404.368164, 
                        128.0, 
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
                    "id": "obj-4", 
                    "patching_rect": [
                        189.0, 
                        356.368164, 
                        43.0, 
                        20.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            213.0, 
            92.0, 
            503.0, 
            597.0
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
                        "obj-6", 
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
                    "disabled": 0, 
                    "hidden": 0, 
                    "destination": [
                        "obj-41", 
                        0
                    ], 
                    "source": [
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
                        "obj-13", 
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
                        "obj-14", 
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
                        "obj-17", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-19", 
                        7
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
                    "disabled": 0, 
                    "hidden": 0, 
                    "destination": [
                        "obj-9", 
                        0
                    ], 
                    "source": [
                        "obj-19", 
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
                        "obj-5", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-41", 
                        6
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-8", 
                        6
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-41", 
                        5
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-8", 
                        5
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-41", 
                        4
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-8", 
                        4
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-41", 
                        3
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-8", 
                        3
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-41", 
                        2
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-8", 
                        2
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-41", 
                        1
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
                        "obj-41", 
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
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "disabled": 0, 
                    "hidden": 0, 
                    "destination": [
                        "obj-11", 
                        0
                    ], 
                    "source": [
                        "obj-45", 
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
                        "obj-19", 
                        6
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
                        "obj-19", 
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
                        "obj-19", 
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
                        "obj-19", 
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
                        "obj-19", 
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
                        "obj-19", 
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
                        "obj-19", 
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
                    "disabled": 0, 
                    "hidden": 0, 
                    "destination": [
                        "obj-45", 
                        0
                    ], 
                    "source": [
                        "obj-6", 
                        7
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
                    "disabled": 0, 
                    "hidden": 0, 
                    "destination": [
                        "obj-7", 
                        0
                    ], 
                    "source": [
                        "obj-6", 
                        6
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-7", 
                        1
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
                        "obj-7", 
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
                        "obj-22", 
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