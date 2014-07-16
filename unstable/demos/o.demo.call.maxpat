{
    "patcher": {
        "gridsize": [
            15.0, 
            15.0
        ], 
        "defrect": [
            0.0, 
            44.0, 
            683.0, 
            430.0
        ], 
        "fileversion": 1, 
        "openinpresentation": 0, 
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-16", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-1", 
                        1
                    ], 
                    "midpoints": []
                }
            }, 
            {
                "patchline": {
                    "source": [
                        "obj-2", 
                        1
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-16", 
                        1
                    ], 
                    "midpoints": []
                }
            }, 
            {
                "patchline": {
                    "source": [
                        "obj-2", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-16", 
                        0
                    ], 
                    "midpoints": []
                }
            }, 
            {
                "patchline": {
                    "source": [
                        "obj-19", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-14", 
                        0
                    ], 
                    "midpoints": []
                }
            }, 
            {
                "patchline": {
                    "source": [
                        "obj-19", 
                        1
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-26", 
                        1
                    ], 
                    "midpoints": []
                }
            }, 
            {
                "patchline": {
                    "source": [
                        "obj-16", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-20", 
                        0
                    ], 
                    "midpoints": []
                }
            }, 
            {
                "patchline": {
                    "source": [
                        "obj-20", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-19", 
                        0
                    ], 
                    "midpoints": []
                }
            }
        ], 
        "enablevscroll": 1, 
        "default_fontface": 0, 
        "devicewidth": 0.0, 
        "gridonopen": 0, 
        "imprint": 0, 
        "boxanimatetime": 200, 
        "boxes": [
            {
                "box": {
                    "fontname": "Arial", 
                    "presentation_rect": [
                        303.0, 
                        153.0, 
                        0.0, 
                        0.0
                    ], 
                    "text": "/midi/pitch : 50,\n/frequency : 146.832,\n/midi/velocity : 43,\n/velocity : 0.338583", 
                    "numinlets": 2, 
                    "linecount": 4, 
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
                        377.0, 
                        153.0, 
                        189.0, 
                        62.0
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
                    "id": "obj-26", 
                    "patching_rect": [
                        240.0, 
                        227.0, 
                        107.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.callpatch /frequency * 2.", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-20", 
                    "patching_rect": [
                        88.0, 
                        153.0, 
                        119.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "patcher": {
                        "gridsize": [
                            15.0, 
                            15.0
                        ], 
                        "defrect": [
                            25.0, 
                            69.0, 
                            640.0, 
                            480.0
                        ], 
                        "fileversion": 1, 
                        "openinpresentation": 0, 
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "obj-12", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-18", 
                                        0
                                    ], 
                                    "midpoints": []
                                }
                            }, 
                            {
                                "patchline": {
                                    "source": [
                                        "obj-17", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-8", 
                                        0
                                    ], 
                                    "midpoints": []
                                }
                            }, 
                            {
                                "patchline": {
                                    "source": [
                                        "obj-10", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-12", 
                                        0
                                    ], 
                                    "midpoints": []
                                }
                            }, 
                            {
                                "patchline": {
                                    "source": [
                                        "obj-8", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-10", 
                                        0
                                    ], 
                                    "midpoints": []
                                }
                            }, 
                            {
                                "patchline": {
                                    "source": [
                                        "obj-8", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-12", 
                                        1
                                    ], 
                                    "midpoints": []
                                }
                            }, 
                            {
                                "patchline": {
                                    "source": [
                                        "obj-8", 
                                        2
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-1", 
                                        0
                                    ], 
                                    "midpoints": []
                                }
                            }
                        ], 
                        "enablevscroll": 1, 
                        "default_fontface": 0, 
                        "devicewidth": 0.0, 
                        "gridonopen": 0, 
                        "imprint": 0, 
                        "boxanimatetime": 200, 
                        "boxes": [
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "outlet", 
                                    "id": "obj-1", 
                                    "patching_rect": [
                                        253.0, 
                                        246.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "*~ 0.", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "signal"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-12", 
                                    "patching_rect": [
                                        50.0, 
                                        167.0, 
                                        121.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "cycle~ 440.", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "signal"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-10", 
                                    "patching_rect": [
                                        50.0, 
                                        134.0, 
                                        73.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route /frequency /velocity", 
                                    "numinlets": 3, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-8", 
                                    "patching_rect": [
                                        50.0, 
                                        100.0, 
                                        223.0, 
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
                                    "id": "obj-17", 
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
                                    "id": "obj-18", 
                                    "patching_rect": [
                                        50.0, 
                                        247.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }
                        ], 
                        "gridsnaponopen": 0, 
                        "bglocked": 0, 
                        "enablehscroll": 1, 
                        "openrect": [
                            0.0, 
                            0.0, 
                            0.0, 
                            0.0
                        ], 
                        "toolbarvisible": 1, 
                        "default_fontname": "Arial", 
                        "default_fontsize": 12.0, 
                        "rect": [
                            25.0, 
                            69.0, 
                            640.0, 
                            480.0
                        ]
                    }, 
                    "saved_object_attributes": {
                        "fontname": "Arial", 
                        "fontsize": 12.0, 
                        "globalpatchername": "", 
                        "fontface": 0, 
                        "default_fontface": 0, 
                        "default_fontname": "Arial", 
                        "default_fontsize": 12.0
                    }, 
                    "text": "p Simple Sinusoidal OSC synth", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "signal", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-19", 
                    "patching_rect": [
                        88.0, 
                        186.0, 
                        177.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "patcher": {
                        "gridsize": [
                            15.0, 
                            15.0
                        ], 
                        "defrect": [
                            25.0, 
                            69.0, 
                            640.0, 
                            480.0
                        ], 
                        "fileversion": 1, 
                        "openinpresentation": 0, 
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "obj-4", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-15", 
                                        0
                                    ], 
                                    "midpoints": []
                                }
                            }, 
                            {
                                "patchline": {
                                    "source": [
                                        "obj-7", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-4", 
                                        3
                                    ], 
                                    "midpoints": []
                                }
                            }, 
                            {
                                "patchline": {
                                    "source": [
                                        "obj-6", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-4", 
                                        2
                                    ], 
                                    "midpoints": []
                                }
                            }, 
                            {
                                "patchline": {
                                    "source": [
                                        "obj-5", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-4", 
                                        1
                                    ], 
                                    "midpoints": []
                                }
                            }, 
                            {
                                "patchline": {
                                    "source": [
                                        "obj-3", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-4", 
                                        0
                                    ], 
                                    "midpoints": []
                                }
                            }, 
                            {
                                "patchline": {
                                    "source": [
                                        "obj-4", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-1", 
                                        1
                                    ], 
                                    "midpoints": []
                                }
                            }, 
                            {
                                "patchline": {
                                    "source": [
                                        "obj-11", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-6", 
                                        0
                                    ], 
                                    "midpoints": []
                                }
                            }, 
                            {
                                "patchline": {
                                    "source": [
                                        "obj-9", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-3", 
                                        0
                                    ], 
                                    "midpoints": []
                                }
                            }, 
                            {
                                "patchline": {
                                    "source": [
                                        "obj-6", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-7", 
                                        0
                                    ], 
                                    "midpoints": []
                                }
                            }, 
                            {
                                "patchline": {
                                    "source": [
                                        "obj-3", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-5", 
                                        0
                                    ], 
                                    "midpoints": []
                                }
                            }
                        ], 
                        "enablevscroll": 1, 
                        "default_fontface": 0, 
                        "devicewidth": 0.0, 
                        "gridonopen": 0, 
                        "imprint": 0, 
                        "boxanimatetime": 200, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/midi/pitch : 50,\n/frequency : 146.832,\n/midi/velocity : 43,\n/velocity : 0.338583", 
                                    "numinlets": 2, 
                                    "linecount": 4, 
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
                                        126.0, 
                                        230.0, 
                                        153.0, 
                                        62.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/ 127.", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "float"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-7", 
                                    "patching_rect": [
                                        379.0, 
                                        145.0, 
                                        46.0, 
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
                                    "id": "obj-6", 
                                    "patching_rect": [
                                        268.0, 
                                        107.0, 
                                        129.5, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "mtof", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        160.0, 
                                        131.0, 
                                        34.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pack /midi/pitch 69 /frequency 440. /midi/velocity 0 /velocity 0.", 
                                    "numinlets": 4, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-4", 
                                    "patching_rect": [
                                        50.0, 
                                        175.0, 
                                        348.0, 
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
                                    "id": "obj-3", 
                                    "patching_rect": [
                                        52.0, 
                                        100.0, 
                                        126.5, 
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
                                    "id": "obj-9", 
                                    "patching_rect": [
                                        52.0, 
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
                                    "id": "obj-11", 
                                    "patching_rect": [
                                        268.0, 
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
                                    "id": "obj-15", 
                                    "patching_rect": [
                                        50.0, 
                                        352.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }
                        ], 
                        "gridsnaponopen": 0, 
                        "bglocked": 0, 
                        "enablehscroll": 1, 
                        "openrect": [
                            0.0, 
                            0.0, 
                            0.0, 
                            0.0
                        ], 
                        "toolbarvisible": 1, 
                        "default_fontname": "Arial", 
                        "default_fontsize": 12.0, 
                        "rect": [
                            25.0, 
                            69.0, 
                            640.0, 
                            480.0
                        ]
                    }, 
                    "saved_object_attributes": {
                        "fontname": "Arial", 
                        "fontsize": 12.0, 
                        "globalpatchername": "", 
                        "fontface": 0, 
                        "default_fontface": 0, 
                        "default_fontname": "Arial", 
                        "default_fontsize": 12.0
                    }, 
                    "text": "p Keyboard to OSC Bundle", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-16", 
                    "patching_rect": [
                        88.0, 
                        115.0, 
                        155.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "numoutlets": 0, 
                    "maxclass": "ezdac~", 
                    "id": "obj-14", 
                    "numinlets": 2, 
                    "patching_rect": [
                        86.0, 
                        224.0, 
                        45.0, 
                        45.0
                    ]
                }
            }, 
            {
                "box": {
                    "presentation_rect": [
                        15.0, 
                        15.0, 
                        180.0, 
                        53.0
                    ], 
                    "numinlets": 2, 
                    "range": 25, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "int", 
                        "int"
                    ], 
                    "maxclass": "kslider", 
                    "id": "obj-2", 
                    "patching_rect": [
                        87.0, 
                        51.0, 
                        180.0, 
                        53.0
                    ]
                }
            }
        ], 
        "gridsnaponopen": 0, 
        "bglocked": 0, 
        "enablehscroll": 1, 
        "openrect": [
            0.0, 
            0.0, 
            0.0, 
            0.0
        ], 
        "toolbarvisible": 1, 
        "default_fontname": "Arial", 
        "default_fontsize": 12.0, 
        "rect": [
            0.0, 
            44.0, 
            683.0, 
            430.0
        ]
    }
}