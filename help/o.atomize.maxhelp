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
                                    "text": "print right", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-13", 
                                    "patching_rect": [
                                        422.5, 
                                        404.0, 
                                        61.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "print middle", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-11", 
                                    "patching_rect": [
                                        289.0, 
                                        404.0, 
                                        73.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "print left", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        155.5, 
                                        404.0, 
                                        53.0, 
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
                                        498.0, 
                                        150.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.helpfilehelper @obj o.atomize", 
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
                                        581.0, 
                                        261.0, 
                                        179.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.atomize does pattern matching on addresses contained in OSC packets.  All messages in a bundle with addresses that match an address specified as an argument to o.atomize are bundled together and sent out the corresponding outlet with their addresses kept in tact and as Max messages.  With no arguments, o.atomize simply iterates over the messages in a bundle sending them out as Max messages.", 
                                    "numinlets": 1, 
                                    "linecount": 4, 
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
                                        62.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "Dispatch OSC messages according to an address hierarchy and convert them to Max messages.", 
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
                                    "text": "o.atomize", 
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
                                        "o.select", 
                                        ",", 
                                        "OSC-route", 
                                        ",", 
                                        "OpenSoundControl", 
                                        ",", 
                                        "route"
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
                                        520.0, 
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
                                        579.0, 
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
                                        555.0, 
                                        138.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "with no arguments, o.atomize unpacks the bundle and outputs each message as a Max message in the order they appear in the bundle.", 
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
                                    "id": "obj-43", 
                                    "patching_rect": [
                                        189.0, 
                                        492.0, 
                                        280.0, 
                                        48.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "print", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-42", 
                                    "patching_rect": [
                                        55.5, 
                                        575.0, 
                                        34.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/mysynth/2/freq : 440.,\n/mysynth/2/gain : 0.5,\n/nada : \"rien\"", 
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
                                    "id": "obj-41", 
                                    "patching_rect": [
                                        55.5, 
                                        485.0, 
                                        124.0, 
                                        48.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.atomize", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-40", 
                                    "patching_rect": [
                                        55.5, 
                                        545.0, 
                                        61.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.atomize /mysynth/2/freq /mysynth/2/gain", 
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
                                        155.5, 
                                        369.0, 
                                        286.0, 
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
                                        155.5, 
                                        263.0, 
                                        50.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/mysynth/2/freq : 440,\n/mysynth/2/gain : \"$1\",\n/nada : \"rien\"", 
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
                                        155.5, 
                                        293.0, 
                                        125.0, 
                                        48.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            140.0, 
                            111.0, 
                            690.0, 
                            637.0
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
                                        1
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
                                        "obj-28", 
                                        2
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
                                        "obj-28", 
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
                                        "obj-40", 
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
                                        "obj-41", 
                                        0
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
                                "name": "o.message.mxo"
                            }, 
                            {
                                "type": "iLaX", 
                                "name": "o.atomize.mxo"
                            }, 
                            {
                                "type": "iLaX", 
                                "name": "o.route.mxo"
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
            690.0, 
            663.0
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
                "name": "o.message.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.atomize.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.route.mxo"
            }
        ]
    }
}