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
                            "revision": 4
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "presentation_rect": [
                                        362.0, 
                                        465.0, 
                                        0.0, 
                                        0.0
                                    ], 
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
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        362.0, 
                                        463.0, 
                                        120.0, 
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
                                    "id": "obj-31", 
                                    "patching_rect": [
                                        215.0, 
                                        463.0, 
                                        120.0, 
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
                                    "id": "obj-30", 
                                    "patching_rect": [
                                        62.0, 
                                        463.0, 
                                        121.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.select /mysynth/2/freq /mysynth/2/gain", 
                                    "numinlets": 3, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-28", 
                                    "patching_rect": [
                                        164.0, 
                                        402.0, 
                                        225.0, 
                                        20.0
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
                                    "id": "obj-7", 
                                    "patching_rect": [
                                        164.0, 
                                        259.0, 
                                        50.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/mysynth/2/freq : \"$1\",\n/mysynth/2/gain : 0.5,\n/nada : \"rien\"", 
                                    "numinlets": 2, 
                                    "maxclass": "o.message", 
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
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        164.0, 
                                        289.0, 
                                        123.0, 
                                        48.0
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
                                    "frgb": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "fontsize": 12.0, 
                                    "id": "obj-12", 
                                    "patching_rect": [
                                        498.0, 
                                        372.0, 
                                        150.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.helpfilehelper @obj o.select", 
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
                                        483.5, 
                                        263.0, 
                                        168.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.select does pattern matching on addresses contained in OSC packets.  All messages in a bundle with addresses that match an address specified as an argument to o.select are bundled together and sent out the corresponding outlet with their addresses kept in tact.", 
                                    "numinlets": 1, 
                                    "linecount": 3, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
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
                                    "text": "Dispatch OSC messages according to an address hierarchy preserving the address.", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
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
                                    "text": "o.select", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
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
                                        "o.route", 
                                        ",", 
                                        "o.atomize", 
                                        ",", 
                                        "OSC-route", 
                                        ",", 
                                        "route", 
                                        ",", 
                                        "routepass"
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
                                        498.0, 
                                        394.0, 
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
                                        498.0, 
                                        453.0, 
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
                                        498.0, 
                                        429.0, 
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
                            688.0, 
                            554.0
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
                                        "obj-28", 
                                        2
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
                                        "obj-28", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-30", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-28", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-31", 
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
                                        "obj-28", 
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
                                        "obj-5", 
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
                                "implicit": 1, 
                                "type": "JSON", 
                                "name": "o.helpfilehelper.maxpat", 
                                "bootpath": "/Users/john/MMJ5-dev/odot/overview"
                            }, 
                            {
                                "type": "iLaX", 
                                "name": "o.select.mxo"
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
                        "fontsize": 12.0, 
                        "globalpatchername": "", 
                        "fontface": 0, 
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
            688.0, 
            580.0
        ], 
        "lines": [], 
        "statusbarvisible": 2, 
        "gridsnaponopen": 0, 
        "bglocked": 0, 
        "dependency_cache": [
            {
                "patcherrelativepath": "../../../../../../../MMJ5-dev/odot/overview", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.helpfilehelper.maxpat", 
                "bootpath": "/Users/john/MMJ5-dev/odot/overview"
            }, 
            {
                "type": "iLaX", 
                "name": "o.select.mxo"
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