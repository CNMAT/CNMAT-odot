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
            "revision": 7
        }, 
        "boxes": [
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /ctldata/out", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-9", 
                    "patching_rect": [
                        133.0, 
                        400.0, 
                        108.0, 
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
                    "id": "obj-8", 
                    "patching_rect": [
                        106.0, 
                        340.0, 
                        42.0, 
                        20.0
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
                    "id": "obj-7", 
                    "patching_rect": [
                        182.0, 
                        340.0, 
                        49.0, 
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
                        "default_fontsize": 9.0, 
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
                            "revision": 7
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "<-- \"tethered on\" message", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 9.0, 
                                    "id": "obj-4", 
                                    "patching_rect": [
                                        538.0, 
                                        189.0, 
                                        150.0, 
                                        17.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "<-- \"standalone off\" message", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 9.0, 
                                    "id": "obj-3", 
                                    "patching_rect": [
                                        538.0, 
                                        142.0, 
                                        150.0, 
                                        17.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "del 250", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "bang"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 9.0, 
                                    "id": "obj-27", 
                                    "patching_rect": [
                                        50.0, 
                                        142.0, 
                                        40.0, 
                                        17.0
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
                                    "fontsize": 9.0, 
                                    "id": "obj-26", 
                                    "patching_rect": [
                                        50.0, 
                                        100.0, 
                                        64.5, 
                                        17.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "sxformat 240 0 27 72 122 1 0 0 0 0 0 0 0 0 0 0 0 1 0 9 0 11 43 58 0 16 3 0 0 0 0 0 0 0 0 80 7 0 0 0 0 2 247", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "int"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 9.0, 
                                    "id": "obj-8", 
                                    "patching_rect": [
                                        95.5, 
                                        142.0, 
                                        432.0, 
                                        17.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "sxformat 240 0 27 72 122 1 0 0 0 0 0 0 0 0 0 0 0 1 0 9 0 11 43 58 0 16 4 1 0 0 0 0 0 0 0 47 126 0 0 0 0 2 247", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "int"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 9.0, 
                                    "id": "obj-7", 
                                    "patching_rect": [
                                        50.0, 
                                        189.0, 
                                        442.0, 
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
                                        "bang"
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
                                        264.0, 
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
                            719.0, 
                            339.0
                        ], 
                        "lines": [
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
                                    "disabled": 0, 
                                    "source": [
                                        "obj-26", 
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
                                        "obj-27", 
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
                                        "obj-33", 
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
                                        "obj-7", 
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
                                        "obj-8", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-34", 
                                        0
                                    ], 
                                    "midpoints": [
                                        105.0, 
                                        172.0, 
                                        510.0, 
                                        172.0, 
                                        510.0, 
                                        223.0, 
                                        59.5, 
                                        223.0
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
                        "fontsize": 9.0, 
                        "default_fontface": 0, 
                        "default_fontname": "Arial", 
                        "default_fontsize": 9.0, 
                        "digest": ""
                    }, 
                    "text": "p sysex_data->raw_output", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "int"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-5", 
                    "patching_rect": [
                        30.0, 
                        285.0, 
                        153.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "t b s s", 
                    "numinlets": 1, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "bang", 
                        "", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-4", 
                    "patching_rect": [
                        30.0, 
                        240.0, 
                        171.0, 
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
                    "id": "obj-1", 
                    "patching_rect": [
                        106.0, 
                        370.0, 
                        100.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "SSCOM", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 12.0, 
                    "id": "obj-2", 
                    "patching_rect": [
                        133.0, 
                        190.0, 
                        55.0, 
                        18.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "onebang 1", 
                    "numinlets": 2, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "bang", 
                        "bang"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-16", 
                    "patching_rect": [
                        30.0, 
                        150.0, 
                        67.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "onebang 1", 
                    "numinlets": 2, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "bang", 
                        "bang"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-14", 
                    "patching_rect": [
                        133.0, 
                        150.0, 
                        67.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.route /system", 
                    "numinlets": 2, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-13", 
                    "patching_rect": [
                        30.0, 
                        75.0, 
                        93.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "sel macintosh windows", 
                    "numinlets": 3, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "bang", 
                        "bang", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-15", 
                    "patching_rect": [
                        30.0, 
                        105.0, 
                        225.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "\"SSCOM Port 1\"", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 12.0, 
                    "id": "obj-27", 
                    "patching_rect": [
                        30.0, 
                        190.0, 
                        98.0, 
                        18.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/system : \"windows\"", 
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
                    "id": "obj-10", 
                    "patching_rect": [
                        154.0, 
                        75.0, 
                        150.0, 
                        20.0
                    ]
                }
            }, 
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
                    "id": "obj-6", 
                    "patching_rect": [
                        30.0, 
                        30.0, 
                        87.0, 
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
                    "id": "obj-34", 
                    "patching_rect": [
                        133.0, 
                        475.0, 
                        25.0, 
                        25.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            58.0, 
            106.0, 
            361.0, 
            595.0
        ], 
        "lines": [
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-1", 
                        2
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
                        "obj-15", 
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
                        "obj-14", 
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
                        "obj-27", 
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
                        "obj-4", 
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
                        "obj-4", 
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
                        "obj-4", 
                        2
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
                        "obj-4", 
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
                        "obj-5", 
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
                        "obj-6", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-10", 
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
                        "obj-13", 
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
                        "obj-34", 
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
                "patcherrelativepath": "../..", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.maxplatform.maxpat", 
                "bootpath": "/Users/jml/Documents/git_repositories/CNMAT-odot/abstractions"
            }, 
            {
                "type": "iLaF", 
                "name": "o.pack.mxe"
            }, 
            {
                "type": "iLaF", 
                "name": "o.message.mxe"
            }, 
            {
                "type": "iLaF", 
                "name": "o.route.mxe"
            }
        ]
    }
}