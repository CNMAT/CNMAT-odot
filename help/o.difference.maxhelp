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
        "showontab": 0, 
        "showrootpatcherontab": 0, 
        "enablehscroll": 1, 
        "description": "", 
        "tags": "", 
        "enablevscroll": 1, 
        "appversion": {
            "major": 6, 
            "architecture": "x64", 
            "minor": 1, 
            "revision": 6
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
                            8.0, 
                            8.0
                        ], 
                        "openinpresentation": 0, 
                        "showontab": 1, 
                        "enablehscroll": 1, 
                        "description": "", 
                        "tags": "", 
                        "enablevscroll": 1, 
                        "appversion": {
                            "major": 6, 
                            "architecture": "x64", 
                            "minor": 1, 
                            "revision": 6
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.display", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-13", 
                                    "patching_rect": [
                                        78.0, 
                                        368.0, 
                                        150.0, 
                                        34.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/foo : [\"a\", \"r\", \"s\", \"t\"],\n/bloo : [\"o\", \"i\", \"e\", \"n\"]", 
                                    "numinlets": 2, 
                                    "maxclass": "o.compose", 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "linecount": 2, 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        160.0, 
                                        267.0, 
                                        117.0, 
                                        37.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/foo : [1, 2, 3],\n/bar : [4, 5, 6]", 
                                    "numinlets": 2, 
                                    "maxclass": "o.compose", 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "linecount": 2, 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-7", 
                                    "patching_rect": [
                                        78.0, 
                                        267.0, 
                                        72.0, 
                                        37.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.difference", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-11", 
                                    "patching_rect": [
                                        78.0, 
                                        326.0, 
                                        101.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "see also:", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-12", 
                                    "patching_rect": [
                                        444.0, 
                                        327.0, 
                                        150.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.helpfilehelper @obj o.difference", 
                                    "numinlets": 0, 
                                    "numoutlets": 4, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "hidden": 1, 
                                    "id": "obj-10", 
                                    "patching_rect": [
                                        387.0, 
                                        246.0, 
                                        189.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.difference takes two bundles and forms a new bundle that contains the messages with addresses that are not common to both bundles", 
                                    "numinlets": 1, 
                                    "linecount": 2, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-9", 
                                    "patching_rect": [
                                        30.0, 
                                        167.0, 
                                        602.0, 
                                        33.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "Output a bundle containing the difference between two bundles.", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-8", 
                                    "patching_rect": [
                                        30.0, 
                                        119.0, 
                                        600.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.difference", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 72.0, 
                                    "id": "obj-6", 
                                    "patching_rect": [
                                        30.0, 
                                        30.0, 
                                        600.0, 
                                        87.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "items": [
                                        "o.union", 
                                        ",", 
                                        "o.intersection"
                                    ], 
                                    "numinlets": 1, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "int", 
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "umenu", 
                                    "fontsize": 12.0, 
                                    "parameter_enable": 0, 
                                    "id": "obj-1", 
                                    "patching_rect": [
                                        444.0, 
                                        349.0, 
                                        132.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "pcontrol", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "hidden": 1, 
                                    "id": "obj-3", 
                                    "patching_rect": [
                                        444.0, 
                                        408.0, 
                                        53.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "sprintf load %s.maxhelp", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "hidden": 1, 
                                    "id": "obj-4", 
                                    "patching_rect": [
                                        444.0, 
                                        384.0, 
                                        138.0, 
                                        20.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            140.0, 
                            111.0, 
                            661.0, 
                            460.0
                        ], 
                        "lines": [
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-1", 
                                        1
                                    ], 
                                    "hidden": 1, 
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
                                        "obj-10", 
                                        3
                                    ], 
                                    "hidden": 1, 
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
                                        "obj-10", 
                                        0
                                    ], 
                                    "hidden": 1, 
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
                                        "obj-10", 
                                        1
                                    ], 
                                    "hidden": 1, 
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
                                        "obj-10", 
                                        2
                                    ], 
                                    "hidden": 1, 
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
                                        "obj-11", 
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
                                    "hidden": 1, 
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
                                        "obj-5", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-11", 
                                        1
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
                                        "obj-11", 
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
                    "text": "p basic", 
                    "numinlets": 0, 
                    "numoutlets": 0, 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-6", 
                    "patching_rect": [
                        50.0, 
                        120.0, 
                        71.0, 
                        20.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            140.0, 
            85.0, 
            661.0, 
            486.0
        ], 
        "lines": [], 
        "statusbarvisible": 2, 
        "gridsnaponopen": 0, 
        "bglocked": 0, 
        "dependency_cache": [
            {
                "type": "iLaX", 
                "name": "o.difference.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.compose.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.display.mxo"
            }
        ]
    }
}