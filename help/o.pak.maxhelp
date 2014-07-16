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
            "minor": 0, 
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
                            "minor": 0, 
                            "revision": 3
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "a bundle sent in to one of the inlets will become a nested bundle", 
                                    "numinlets": 1, 
                                    "maxclass": "comment", 
                                    "numoutlets": 0, 
                                    "linecount": 2, 
                                    "fontsize": 12.0, 
                                    "id": "obj-16", 
                                    "patching_rect": [
                                        141.0, 
                                        422.0, 
                                        198.0, 
                                        34.0
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
                                    "id": "obj-14", 
                                    "patching_rect": [
                                        53.0, 
                                        513.0, 
                                        117.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/bloo : [1, 2, 3],\n/blob : [4, 5, 6]", 
                                    "numinlets": 2, 
                                    "maxclass": "o.message", 
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
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        53.0, 
                                        422.0, 
                                        72.0, 
                                        35.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pak /foo /bar a b c", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        53.0, 
                                        469.0, 
                                        117.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "sploo", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 12.0, 
                                    "id": "obj-13", 
                                    "patching_rect": [
                                        447.0, 
                                        286.0, 
                                        39.0, 
                                        18.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "default arguments can be placed after OSC addresses", 
                                    "numinlets": 1, 
                                    "maxclass": "comment", 
                                    "numoutlets": 0, 
                                    "linecount": 2, 
                                    "fontsize": 12.0, 
                                    "id": "obj-7", 
                                    "patching_rect": [
                                        533.0, 
                                        323.0, 
                                        186.0, 
                                        34.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "123", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 12.0, 
                                    "id": "obj-11", 
                                    "patching_rect": [
                                        507.0, 
                                        286.0, 
                                        32.5, 
                                        18.0
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
                                    "id": "obj-15", 
                                    "patching_rect": [
                                        383.0, 
                                        286.0, 
                                        50.0, 
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
                                    "id": "obj-17", 
                                    "patching_rect": [
                                        383.0, 
                                        362.0, 
                                        96.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pak /foo bloo /bar 7 8 9", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-18", 
                                    "patching_rect": [
                                        383.0, 
                                        332.0, 
                                        143.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "fontsize": 12.0, 
                                    "id": "obj-19", 
                                    "patching_rect": [
                                        543.0, 
                                        286.0, 
                                        87.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "left inlet triggers output, since all inlets are active", 
                                    "numinlets": 1, 
                                    "maxclass": "comment", 
                                    "numoutlets": 0, 
                                    "linecount": 3, 
                                    "fontsize": 12.0, 
                                    "id": "obj-20", 
                                    "patching_rect": [
                                        159.0, 
                                        316.0, 
                                        138.0, 
                                        48.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "1 2 3", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 12.0, 
                                    "id": "obj-21", 
                                    "patching_rect": [
                                        121.0, 
                                        286.0, 
                                        37.0, 
                                        18.0
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
                                    "id": "obj-22", 
                                    "patching_rect": [
                                        53.0, 
                                        286.0, 
                                        50.0, 
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
                                    "id": "obj-23", 
                                    "patching_rect": [
                                        53.0, 
                                        346.0, 
                                        71.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pak /foo /bar", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-24", 
                                    "patching_rect": [
                                        53.0, 
                                        316.0, 
                                        87.0, 
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
                                    "fontsize": 12.0, 
                                    "id": "obj-12", 
                                    "patching_rect": [
                                        520.5, 
                                        469.0, 
                                        150.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.helpfilehelper @obj o.pak /foo", 
                                    "numinlets": 0, 
                                    "numoutlets": 4, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "", 
                                        "clear"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "hidden": 1, 
                                    "id": "obj-10", 
                                    "patching_rect": [
                                        496.5, 
                                        231.0, 
                                        180.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pak takes a OSC addresses as arguments and creates an inlet for each one.  Anything sent into an inlet is bound to the corresponding address and the OSC packet is output with all other addresses bound to their most recent values.", 
                                    "numinlets": 1, 
                                    "maxclass": "comment", 
                                    "numoutlets": 0, 
                                    "linecount": 3, 
                                    "fontsize": 12.0, 
                                    "id": "obj-9", 
                                    "patching_rect": [
                                        30.0, 
                                        167.0, 
                                        600.0, 
                                        48.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "Bind data to addresses.", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
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
                                    "text": "o.pak", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "fontsize": 72.0, 
                                    "id": "obj-6", 
                                    "patching_rect": [
                                        30.0, 
                                        30.0, 
                                        600.0, 
                                        89.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "items": [
                                        "o.pack", 
                                        ",", 
                                        "pack", 
                                        ",", 
                                        "pak"
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
                                        520.5, 
                                        491.0, 
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
                                        520.5, 
                                        550.0, 
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
                                        520.5, 
                                        526.0, 
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
                            754.0, 
                            636.0
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
                                        "obj-18", 
                                        1
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
                                        "obj-18", 
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
                                        "obj-18", 
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
                                        "obj-17", 
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
                                        "obj-24", 
                                        1
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
                                        "obj-23", 
                                        1
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
                                        "obj-14", 
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
                                "implicit": 1, 
                                "type": "JSON", 
                                "name": "o.helpfilehelper.maxpat", 
                                "bootpath": "/Users/john/Development/cnmat/trunk/max/externals/odot/patches/overview"
                            }, 
                            {
                                "type": "iLaX", 
                                "name": "o.pak.mxo"
                            }, 
                            {
                                "type": "iLaX", 
                                "name": "o.route.mxo"
                            }, 
                            {
                                "type": "iLaX", 
                                "name": "o.message.mxo"
                            }
                        ]
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
            754.0, 
            662.0
        ], 
        "lines": [], 
        "statusbarvisible": 2, 
        "gridsnaponopen": 0, 
        "bglocked": 0, 
        "dependency_cache": [
            {
                "patcherrelativepath": "../patches/overview", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.helpfilehelper.maxpat", 
                "bootpath": "/Users/john/Development/cnmat/trunk/max/externals/odot/patches/overview"
            }, 
            {
                "type": "iLaX", 
                "name": "o.pak.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.route.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.message.mxo"
            }
        ]
    }
}