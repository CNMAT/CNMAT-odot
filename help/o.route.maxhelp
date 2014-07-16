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
            "revision": 5
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
                            5.0, 
                            5.0
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
                            "revision": 5
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "See the OSC-route help file for an overview of the OSC pattern matching syntax", 
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
                                    "id": "obj-22", 
                                    "patching_rect": [
                                        55.0, 
                                        74.0, 
                                        436.0, 
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
                                            8.0, 
                                            8.0
                                        ], 
                                        "openinpresentation": 0, 
                                        "enablehscroll": 1, 
                                        "description": "", 
                                        "tags": "", 
                                        "enablevscroll": 1, 
                                        "appversion": {
                                            "major": 6, 
                                            "minor": 0, 
                                            "revision": 5
                                        }, 
                                        "boxes": [
                                            {
                                                "box": {
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "bang"
                                                    ], 
                                                    "maxclass": "button", 
                                                    "id": "obj-13", 
                                                    "patching_rect": [
                                                        64.0, 
                                                        316.0, 
                                                        20.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "Here, since o.route received all of the messages bundled together, it can dispatch them through the outlets in right to left order observing normal Max convention.", 
                                                    "numinlets": 1, 
                                                    "linecount": 5, 
                                                    "numoutlets": 0, 
                                                    "maxclass": "comment", 
                                                    "frgb": [
                                                        0.0, 
                                                        0.0, 
                                                        0.0, 
                                                        1.0
                                                    ], 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-14", 
                                                    "patching_rect": [
                                                        178.0, 
                                                        400.0, 
                                                        238.0, 
                                                        75.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "/gain 1.", 
                                                    "numinlets": 2, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "maxclass": "message", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-15", 
                                                    "patching_rect": [
                                                        112.0, 
                                                        340.0, 
                                                        50.0, 
                                                        18.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "/freq 440.", 
                                                    "numinlets": 2, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "maxclass": "message", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-16", 
                                                    "patching_rect": [
                                                        88.0, 
                                                        316.0, 
                                                        61.0, 
                                                        18.0
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
                                                    "id": "obj-17", 
                                                    "patching_rect": [
                                                        64.0, 
                                                        488.0, 
                                                        36.0, 
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
                                                    "id": "obj-18", 
                                                    "patching_rect": [
                                                        64.0, 
                                                        456.0, 
                                                        72.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.route /gain /freq", 
                                                    "numinlets": 3, 
                                                    "numoutlets": 3, 
                                                    "outlettype": [
                                                        "", 
                                                        "", 
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-19", 
                                                    "patching_rect": [
                                                        64.0, 
                                                        400.0, 
                                                        105.0, 
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
                                                    "id": "obj-21", 
                                                    "patching_rect": [
                                                        64.0, 
                                                        368.0, 
                                                        82.0, 
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
                                                    "id": "obj-12", 
                                                    "patching_rect": [
                                                        178.0, 
                                                        55.0, 
                                                        20.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "In this case, the order that OSC-route will dispatch its messages will be determined by the order in which the messages were added to the OSC bundle.  In many cases this is not a problem, however, it is not always possible to ensure that the contents of the bundle will be in the order you want them in.  ", 
                                                    "numinlets": 1, 
                                                    "linecount": 10, 
                                                    "numoutlets": 0, 
                                                    "maxclass": "comment", 
                                                    "frgb": [
                                                        0.0, 
                                                        0.0, 
                                                        0.0, 
                                                        1.0
                                                    ], 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-10", 
                                                    "patching_rect": [
                                                        230.0, 
                                                        36.0, 
                                                        204.0, 
                                                        144.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "/gain 1.", 
                                                    "numinlets": 2, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "maxclass": "message", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-9", 
                                                    "patching_rect": [
                                                        117.0, 
                                                        55.0, 
                                                        50.0, 
                                                        18.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "/freq 440.", 
                                                    "numinlets": 2, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "maxclass": "message", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-8", 
                                                    "patching_rect": [
                                                        53.0, 
                                                        55.0, 
                                                        61.0, 
                                                        18.0
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
                                                    "id": "obj-6", 
                                                    "patching_rect": [
                                                        101.0, 
                                                        239.0, 
                                                        36.0, 
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
                                                    "id": "obj-5", 
                                                    "patching_rect": [
                                                        101.0, 
                                                        207.0, 
                                                        72.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "OSC-route /freq /gain", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 3, 
                                                    "outlettype": [
                                                        "", 
                                                        "", 
                                                        ""
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-4", 
                                                    "patching_rect": [
                                                        101.0, 
                                                        151.0, 
                                                        125.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "OpenSoundControl", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 3, 
                                                    "outlettype": [
                                                        "", 
                                                        "", 
                                                        "OSCTimeTag"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-3", 
                                                    "patching_rect": [
                                                        53.0, 
                                                        119.0, 
                                                        113.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "OpenSoundControl", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 3, 
                                                    "outlettype": [
                                                        "", 
                                                        "", 
                                                        "OSCTimeTag"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-1", 
                                                    "patching_rect": [
                                                        53.0, 
                                                        87.0, 
                                                        113.0, 
                                                        20.0
                                                    ]
                                                }
                                            }
                                        ], 
                                        "default_fontface": 0, 
                                        "gridonopen": 0, 
                                        "rect": [
                                            93.0, 
                                            110.0, 
                                            532.0, 
                                            577.0
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
                                                        "obj-3", 
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
                                                        "obj-1", 
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
                                                        "obj-21", 
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
                                                        "obj-21", 
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
                                                        "obj-21", 
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
                                                        "obj-17", 
                                                        1
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-19", 
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
                                                        "obj-21", 
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
                                                        "obj-3", 
                                                        1
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
                                                        1
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-6", 
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
                                                        "obj-6", 
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
                                                        "obj-1", 
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
                                                "type": "iLaX", 
                                                "name": "OpenSoundControl.mxo"
                                            }, 
                                            {
                                                "type": "iLaX", 
                                                "name": "OSC-route.mxo"
                                            }, 
                                            {
                                                "type": "iLaX", 
                                                "name": "o.collect.mxo"
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
                                        "fontface": 0, 
                                        "globalpatchername": "", 
                                        "fontsize": 12.0, 
                                        "default_fontsize": 12.0, 
                                        "default_fontname": "Arial", 
                                        "default_fontface": 0, 
                                        "digest": ""
                                    }, 
                                    "text": "p who_cares?", 
                                    "numinlets": 0, 
                                    "numoutlets": 0, 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-20", 
                                    "patching_rect": [
                                        195.0, 
                                        211.0, 
                                        85.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route behaves like OSC-route except that it has the ability to operate on the contents of OSC bundles. it can be used as a drop in replacement for OSC-route.", 
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
                                    "id": "obj-19", 
                                    "patching_rect": [
                                        55.0, 
                                        124.0, 
                                        436.0, 
                                        48.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            0.0, 
                            26.0, 
                            690.0, 
                            637.0
                        ], 
                        "lines": [], 
                        "statusbarvisible": 2, 
                        "gridsnaponopen": 0, 
                        "bglocked": 0, 
                        "dependency_cache": [
                            {
                                "type": "iLaX", 
                                "name": "OpenSoundControl.mxo"
                            }, 
                            {
                                "type": "iLaX", 
                                "name": "OSC-route.mxo"
                            }, 
                            {
                                "type": "iLaX", 
                                "name": "o.collect.mxo"
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
                        "fontface": 0, 
                        "globalpatchername": "", 
                        "fontsize": 12.0, 
                        "default_fontsize": 12.0, 
                        "default_fontname": "Arial", 
                        "default_fontface": 0, 
                        "digest": ""
                    }, 
                    "text": "p \"Compare to OSC-route\"", 
                    "numinlets": 0, 
                    "numoutlets": 0, 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-21", 
                    "patching_rect": [
                        141.0, 
                        198.0, 
                        152.0, 
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
                            "revision": 5
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
                                    "id": "obj-27", 
                                    "patching_rect": [
                                        307.5, 
                                        517.0, 
                                        83.0, 
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
                                    "id": "obj-26", 
                                    "patching_rect": [
                                        162.5, 
                                        517.0, 
                                        83.0, 
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
                                    "id": "obj-24", 
                                    "patching_rect": [
                                        39.5, 
                                        454.0, 
                                        83.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route strips off the portion of the address that matched", 
                                    "numinlets": 1, 
                                    "linecount": 2, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "fontsize": 12.0, 
                                    "id": "obj-23", 
                                    "patching_rect": [
                                        249.5, 
                                        349.0, 
                                        161.0, 
                                        34.0
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
                                    "id": "obj-17", 
                                    "patching_rect": [
                                        283.5, 
                                        249.0, 
                                        50.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/mysynth/*/freq : \"$1\",\n/mysynth/*/gain : 0.5,\n/nada : \"rien\"", 
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
                                    "id": "obj-18", 
                                    "patching_rect": [
                                        283.5, 
                                        279.0, 
                                        138.0, 
                                        48.0
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
                                        338.5, 
                                        591.0, 
                                        50.0, 
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
                                    "id": "obj-16", 
                                    "patching_rect": [
                                        283.5, 
                                        591.0, 
                                        50.0, 
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
                                    "id": "obj-14", 
                                    "patching_rect": [
                                        194.5, 
                                        591.0, 
                                        50.0, 
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
                                    "id": "obj-13", 
                                    "patching_rect": [
                                        139.5, 
                                        591.0, 
                                        50.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "unmatched (delegation)", 
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
                                    "id": "obj-11", 
                                    "patching_rect": [
                                        249.5, 
                                        406.0, 
                                        172.0, 
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
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        169.5, 
                                        406.0, 
                                        71.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route /freq /gain", 
                                    "numinlets": 3, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        283.5, 
                                        561.0, 
                                        129.0, 
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
                                        139.5, 
                                        249.0, 
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
                                    "id": "obj-19", 
                                    "patching_rect": [
                                        139.5, 
                                        279.0, 
                                        125.0, 
                                        48.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route /freq /gain", 
                                    "numinlets": 3, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-20", 
                                    "patching_rect": [
                                        139.5, 
                                        561.0, 
                                        129.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route /1 /2", 
                                    "numinlets": 3, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-21", 
                                    "patching_rect": [
                                        139.5, 
                                        454.0, 
                                        307.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route /mysynth", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-22", 
                                    "patching_rect": [
                                        139.5, 
                                        356.0, 
                                        99.0, 
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
                                    "text": "o.helpfilehelper @obj o.route", 
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
                                        164.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route does pattern matching on addresses contained in OSC packets.  All messages in a bundle with addresses that match an address specified as an argument to o.route are bundled together and sent out the corresponding outlet with the portion of the address that match removed.", 
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
                                    "text": "Dispatch OSC messages according to an address hierarchy stripping off the portion of the address that matched.", 
                                    "numinlets": 1, 
                                    "linecount": 2, 
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
                                        34.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route", 
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
                                        "o.select", 
                                        ",", 
                                        "o.atomize", 
                                        ",", 
                                        "OSC-route", 
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
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            751.0, 
                            165.0, 
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
                                        "obj-17", 
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
                                        "obj-22", 
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
                                        "obj-22", 
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
                                        "obj-13", 
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
                                        "obj-14", 
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
                                        "obj-20", 
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
                                        "obj-26", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-21", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-27", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-21", 
                                        1
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
                                        "obj-22", 
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
                                        "obj-22", 
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
                                        "obj-22", 
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
                                        1
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
                                        "obj-5", 
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
                                        "obj-7", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-19", 
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
                        "default_fontsize": 12.0, 
                        "default_fontname": "Arial", 
                        "default_fontface": 0, 
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
            751.0, 
            139.0, 
            690.0, 
            663.0
        ], 
        "lines": [], 
        "statusbarvisible": 2, 
        "gridsnaponopen": 0, 
        "bglocked": 0, 
        "dependency_cache": [
            {
                "patcherrelativepath": "../../../../../../../../../MMJ5-dev/odot/overview", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.helpfilehelper.maxpat", 
                "bootpath": "/Users/john/MMJ5-dev/odot/overview"
            }, 
            {
                "type": "iLaX", 
                "name": "o.route.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.message.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "OpenSoundControl.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "OSC-route.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.collect.mxo"
            }
        ]
    }
}